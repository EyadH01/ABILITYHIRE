# ABILITYHIRE

**ABILITYHIRE** is a comprehensive, inclusive job platform specifically designed for people with disabilities. Our mission is to bridge the gap between talented job seekers with disabilities and forward-thinking employers who value diversity and inclusion in the workplace.

## 🌟 What Makes ABILITYHIRE Special

ABILITYHIRE stands out by providing a fully accessible, user-friendly platform that caters specifically to the needs of people with disabilities. We combine cutting-edge technology with inclusive design principles to create an empowering job search experience.

### Key Features

- **🎯 Personalized Job Matching**: Advanced algorithms match job seekers with opportunities based on their skills, location, disability type, and career preferences
- **♿ Accessibility First**: Built with accessibility standards in mind, supporting screen readers, keyboard navigation, and multiple disability accommodations
- **🌍 Multi-Language Support**: Full English and Arabic language support with RTL (Right-to-Left) text direction
- **📱 Responsive Design**: Seamless experience across desktop, tablet, and mobile devices
- **🔔 Real-Time Notifications**: Instant updates on job applications, interviews, and new opportunities
- **⭐ Favorites System**: Save and organize preferred jobs for easy access
- **🔍 Advanced Search & Filters**: Find jobs by location, salary range, disability accommodations, and more
- **🗺️ Accessibility Map**: Interactive map showing accessible locations and workplace accommodations
- **👥 Dual Dashboard System**: Separate interfaces for job seekers and employers with tailored features

## 🚀 Technology Stack

- **Backend**: Flask (Python web framework)
- **Database**: MySQL with Flask-MySQLdb connector
- **Frontend**: HTML5, CSS3, JavaScript (ES6+)
- **Internationalization**: Flask-Babel for multi-language support
- **CORS**: Flask-CORS for cross-origin requests
- **Deployment**: Render (with Gunicorn WSGI server)
- **Version Control**: Git with GitHub
- **Environment Management**: python-dotenv for secure configuration

## 📋 Prerequisites

Before running ABILITYHIRE locally, ensure you have:

- Python 3.11.9 or higher
- MySQL 8.0 or higher
- Git
- Virtual environment (recommended)

## 🛠️ Installation & Setup

### 1. Clone the Repository
```bash
git clone https://github.com/YOUR_USERNAME/ABILITYHIRE.git
cd ABILITYHIRE
```

### 2. Create Virtual Environment
```bash
python -m venv venv
source venv/bin/activate  # On Windows: venv\Scripts\activate
```

### 3. Install Dependencies
```bash
pip install -r requirements.txt
```

### 4. Environment Configuration
```bash
cp .env.example .env
# Edit .env with your database credentials and secret key
```

### 5. Database Setup
Create a MySQL database named `abilityhire` and ensure the following tables exist:
- `jobseeker`
- `jobpublisher`
- `job`
- `applyto`
- `favorites`
- `notifications`
- `user_settings`
- `accessible_locations`

### 6. Run the Application
```bash
python main.py
```
Visit `http://localhost:5000` to access ABILITYHIRE.

## 🌐 Deployment to Render

### Automated Deployment
1. **Connect Repository**: Link your GitHub repository to Render
2. **Configure Service**:
   - Runtime: Python 3
   - Build Command: `pip install -r requirements.txt`
   - Start Command: `gunicorn wsgi:app --workers 3 --bind 0.0.0.0:$PORT`
3. **Environment Variables**: Set database credentials and secret key
4. **Deploy**: Render handles the rest automatically

### Manual Deployment
Follow the detailed deployment guide in our documentation for step-by-step instructions.

## 📚 API Documentation

### Core Endpoints

#### Health Check
- `GET /health` - Application health status

#### Cities API
- `GET /api/cities` - Retrieve list of cities from job seekers

#### Accessible Locations
- `GET /api/accessible_locations` - Get accessible locations
- `POST /api/accessible_locations` - Add new accessible location
- `PUT /api/accessible_locations` - Update accessible location
- `DELETE /api/accessible_locations` - Delete accessible location

#### Notifications
- `GET /notifications/count` - Get unread notification count
- `GET /notifications` - Get user notifications
- `POST /notifications/mark_all_read` - Mark all notifications as read

## 🤝 Contributing

We welcome contributions from the community! Here's how you can help:

### Development Process
1. Fork the repository
2. Create a feature branch (`git checkout -b feature/amazing-feature`)
3. Commit your changes (`git commit -m 'Add amazing feature'`)
4. Push to the branch (`git push origin feature/amazing-feature`)
5. Open a Pull Request

### Code Standards
- Follow PEP 8 Python style guidelines
- Write comprehensive docstrings
- Ensure accessibility compliance (WCAG 2.1 AA)
- Test thoroughly before submitting

### Reporting Issues
- Use GitHub Issues for bug reports and feature requests
- Provide detailed steps to reproduce bugs
- Include browser/OS information when relevant

## 📄 License

ABILITYHIRE is licensed under the MIT License. This permissive license allows you to use, modify, and distribute the software freely, making it ideal for both open-source and commercial projects.

See the [LICENSE](LICENSE) file for the complete license text.

## 🙏 Acknowledgments

- **Inclusive Design Community**: For pioneering accessible web design
- **Flask Framework**: For providing a robust Python web framework
- **Open Source Contributors**: For their valuable contributions
- **Disability Advocacy Groups**: For their guidance and support

## 📞 Support

- **Documentation**: [Read the Docs](https://abilityhire.readthedocs.io/)
- **Issues**: [GitHub Issues](https://github.com/YOUR_USERNAME/ABILITYHIRE/issues)
- **Discussions**: [GitHub Discussions](https://github.com/YOUR_USERNAME/ABILITYHIRE/discussions)
- **Email**: support@abilityhire.com

## 🎯 Roadmap

### Version 2.0 (Coming Soon)
- [ ] AI-powered job matching
- [ ] Video interview platform
- [ ] Advanced analytics dashboard
- [ ] Mobile app (React Native)
- [ ] Integration with assistive technologies

### Version 1.5 (Current Development)
- [ ] Enhanced accessibility features
- [ ] Performance optimizations
- [ ] Additional language support
- [ ] Advanced search filters

---

**ABILITYHIRE** - Empowering careers, embracing abilities. 🌟

## Tech Stack

- **Backend**: Flask (Python)
- **Database**: MySQL
- **Frontend**: HTML, CSS, JavaScript
- **Deployment**: Render (with Gunicorn)
- **Internationalization**: Flask-Babel
- **CORS**: Flask-CORS

## Installation

1. Clone the repository:
```bash
git clone <repository-url>
cd abilityhire
```

2. Create a virtual environment:
```bash
python -m venv venv
source venv/bin/activate  # On Windows: venv\Scripts\activate
```

3. Install dependencies:
```bash
pip install -r requirements.txt
```

4. Set up environment variables:
```bash
cp .env.example .env
# Edit .env with your database credentials
```

5. Run the application:
```bash
python main.py
```

## Deployment to Render

1. Create a new Render account and connect your GitHub repository
2. Create a new Web Service
3. Configure the following settings:
   - **Runtime**: Python 3.11.9
   - **Build Command**: `pip install -r requirements.txt`
   - **Start Command**: `gunicorn wsgi:app --workers 3 --bind 0.0.0.0:$PORT`
4. Add environment variables in Render dashboard:
   - `MYSQL_HOST`: Your database host
   - `MYSQL_USER`: Database username
   - `MYSQL_PASSWORD`: Database password
   - `MYSQL_DB`: Database name
   - `SECRET_KEY`: A secure secret key
   - `FLASK_ENV`: production

## Database Setup

The application uses MySQL database. Make sure to create the following tables:
- `jobseeker`
- `jobpublisher`
- `job`
- `applyto`
- `favorites`
- `notifications`
- `user_settings`
- `accessible_locations`

## API Endpoints

### Health Check
- `GET /health` - Application health check

### Cities
- `GET /api/cities` - Get list of cities from job seekers

### Accessible Locations
- `GET /api/accessible_locations` - Get accessible locations
- `POST /api/accessible_locations` - Add new accessible location
- `PUT /api/accessible_locations` - Update accessible location
- `DELETE /api/accessible_locations` - Delete accessible location

### Notifications
- `GET /notifications/count` - Get unread notification count
- `GET /notifications` - Get user notifications
- `POST /notifications/mark_all_read` - Mark all notifications as read

## Contributing

1. Fork the repository
2. Create a feature branch
3. Make your changes
4. Test thoroughly
5. Submit a pull request

## License

This project is licensed under the MIT License.

## Support

For support or questions, please contact the development team.
