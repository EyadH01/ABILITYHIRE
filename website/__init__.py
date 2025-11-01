from flask import Flask, request
from flask_mysqldb import MySQL
from flask_babel import Babel
from flask_cors import CORS
import os
from dotenv import load_dotenv

# Load environment variables
load_dotenv()

mysql = MySQL()

def create_app():
    app = Flask(__name__)
    app.secret_key = os.environ.get('SECRET_KEY', 'supersecret-key-123')
    app.config['SESSION_PERMANENT'] = True
    app.config['PERMANENT_SESSION_LIFETIME'] = 3600

    # Database configuration - use environment variables for production
    database_url = os.environ.get('DATABASE_URL')
    if database_url:
        # Parse DATABASE_URL for external MySQL (e.g., PlanetScale)
        # Expected format: mysql+pymysql://USER:PASS@HOST:PORT/DB?ssl=true
        import urllib.parse
        parsed = urllib.parse.urlparse(database_url)
        app.config['MYSQL_HOST'] = parsed.hostname
        app.config['MYSQL_USER'] = parsed.username
        app.config['MYSQL_PASSWORD'] = parsed.password
        app.config['MYSQL_DB'] = parsed.path.lstrip('/')
        app.config['MYSQL_PORT'] = parsed.port or 3306
        # Enable SSL if specified
        if 'ssl=true' in database_url:
            app.config['MYSQL_SSL'] = {'ca': None, 'cert': None, 'key': None}
    else:
        # Local development fallback
        app.config['MYSQL_HOST'] = os.environ.get('MYSQL_HOST', 'localhost')
        app.config['MYSQL_USER'] = os.environ.get('MYSQL_USER', 'root')
        app.config['MYSQL_PASSWORD'] = os.environ.get('MYSQL_PASSWORD', '1234')
        app.config['MYSQL_DB'] = os.environ.get('MYSQL_DB', 'abilityhire')

    # Babel configuration
    app.config['BABEL_DEFAULT_LOCALE'] = 'en'
    app.config['BABEL_SUPPORTED_LOCALES'] = ['en', 'ar']

    babel = Babel(app)

    def get_locale():
        # Try to get locale from query parameter, then from Accept-Language header
        lang = request.args.get('lang')
        if lang and lang in app.config['BABEL_SUPPORTED_LOCALES']:
            return lang
        return request.accept_languages.best_match(app.config['BABEL_SUPPORTED_LOCALES'])

    babel.locale_selector_func = get_locale

    mysql.init_app(app)

    # Enable CORS for production domain (update with your Render URL)
    CORS(app, resources={r"/*": {"origins": ["https://your-app-name.onrender.com"]}})

    from .auth import auth
    from .views import views

    app.register_blueprint(auth)
    app.register_blueprint(views)

    # Add health check endpoint
    @app.route('/health')
    def health():
        return {'status': 'ok'}, 200

    return app
