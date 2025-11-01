import 'package:flutter/material.dart';
import '../localization/app_localizations.dart';

class LoginScreen extends StatefulWidget {
  final Function(Locale) onLocaleChange;

  const LoginScreen({Key? key, required this.onLocaleChange}) : super(key: key);

  @override
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final _formKey = GlobalKey<FormState>();
  final TextEditingController _emailController = TextEditingController();
  final TextEditingController _passwordController = TextEditingController();

  bool _isDarkMode = false;

  void _toggleDarkMode() {
    setState(() {
      _isDarkMode = !_isDarkMode;
    });
    // TODO: Implement actual theme switching in app
  }

  @override
  Widget build(BuildContext context) {
    final loc = AppLocalizations.of(context)!;
    final isRTL = Localizations.localeOf(context).languageCode == 'ar';

    return Scaffold(
      appBar: AppBar(
        title: Row(
          children: [
            Image.asset('assets/images/abilityhire_logo.png', height: 40),
            const SizedBox(width: 10),
            const Text('AbilityHire'),
          ],
        ),
        actions: [
          TextButton(
            onPressed: () => widget.onLocaleChange(const Locale('en')),
            child: Text('English', style: TextStyle(color: isRTL ? Colors.white70 : Colors.white)),
          ),
          TextButton(
            onPressed: () => widget.onLocaleChange(const Locale('ar')),
            child: Text('عربي', style: TextStyle(color: isRTL ? Colors.white : Colors.white70)),
          ),
          IconButton(
            icon: Icon(_isDarkMode ? Icons.brightness_7 : Icons.brightness_2),
            onPressed: _toggleDarkMode,
          ),
        ],
      ),
      body: Directionality(
        textDirection: isRTL ? TextDirection.rtl : TextDirection.ltr,
        child: Center(
          child: SingleChildScrollView(
            padding: const EdgeInsets.all(16.0),
            child: Container(
              constraints: const BoxConstraints(maxWidth: 500),
              decoration: BoxDecoration(
                color: _isDarkMode ? Colors.grey[850] : Colors.white,
                borderRadius: BorderRadius.circular(10),
                boxShadow: [
                  BoxShadow(
                    color: Colors.black.withOpacity(0.1),
                    blurRadius: 12,
                    offset: const Offset(0, 4),
                  ),
                ],
              ),
              padding: const EdgeInsets.all(24),
              child: Form(
                key: _formKey,
                child: Column(
                  children: [
                    Text(
                      loc.translate('formTitle'),
                      style: Theme.of(context).textTheme.headline5?.copyWith(color: Colors.blue[700]),
                    ),
                    const SizedBox(height: 20),
                    TextFormField(
                      controller: _emailController,
                      decoration: InputDecoration(
                        labelText: loc.translate('labelEmail'),
                        border: const OutlineInputBorder(),
                      ),
                      keyboardType: TextInputType.emailAddress,
                      validator: (value) {
                        if (value == null || value.isEmpty) {
                          return loc.translate('labelEmail') + ' is required';
                        }
                        if (!RegExp(r'^[^@]+@[^@]+\.[^@]+').hasMatch(value)) {
                          return 'Enter a valid email';
                        }
                        return null;
                      },
                    ),
                    const SizedBox(height: 16),
                    TextFormField(
                      controller: _passwordController,
                      decoration: InputDecoration(
                        labelText: loc.translate('labelPassword'),
                        border: const OutlineInputBorder(),
                      ),
                      obscureText: true,
                      validator: (value) {
                        if (value == null || value.isEmpty) {
                          return loc.translate('labelPassword') + ' is required';
                        }
                        return null;
                      },
                    ),
                    const SizedBox(height: 24),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        ElevatedButton(
                          onPressed: () {
                            if (_formKey.currentState!.validate()) {
                              // TODO: Implement login logic
                              ScaffoldMessenger.of(context).showSnackBar(
                                SnackBar(content: Text('Logging in...')),
                              );
                            }
                          },
                          child: Text(loc.translate('signinBtn')),
                        ),
                        const SizedBox(width: 16),
                        OutlinedButton(
                          onPressed: () {
                            // TODO: Implement back navigation
                            Navigator.pop(context);
                          },
                          child: Text(loc.translate('backBtn')),
                        ),
                      ],
                    ),
                  ],
                ),
              ),
            ),
          ),
        ),
      ),
    );
  }
}
