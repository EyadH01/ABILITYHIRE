import 'package:flutter/material.dart';
import '../localization/app_localizations.dart';

class SeekerProfileScreen extends StatefulWidget {
  final String userName;
  final Map<String, String> profileData;
  final Function(Locale) onLocaleChange;

  const SeekerProfileScreen({
    Key? key,
    required this.userName,
    required this.profileData,
    required this.onLocaleChange,
  }) : super(key: key);

  @override
  _SeekerProfileScreenState createState() => _SeekerProfileScreenState();
}

class _SeekerProfileScreenState extends State<SeekerProfileScreen> {
  bool _isDarkMode = false;
  double _completionPercent = 0.75; // Example completion percentage

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
            Image.asset('assets/images/abilityhire_logo.png', height: 36),
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
      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: [
            DrawerHeader(
              decoration: BoxDecoration(
                color: _isDarkMode ? Colors.grey[850] : Colors.blue,
              ),
              child: Column(
                children: [
                  CircleAvatar(
                    radius: 40,
                    backgroundImage: AssetImage('assets/images/profile_placeholder.png'),
                  ),
                  const SizedBox(height: 8),
                  Text(
                    widget.userName,
                    style: const TextStyle(color: Colors.white, fontSize: 18),
                  ),
                ],
              ),
            ),
            ListTile(
              leading: const Icon(Icons.dashboard),
              title: Text(loc.translate('dashboardLink')),
              onTap: () {
                // TODO: Navigate to dashboard screen
              },
            ),
            ListTile(
              leading: const Icon(Icons.search),
              title: Text(loc.translate('findJobsLink')),
              onTap: () {
                // TODO: Navigate to job search screen
              },
            ),
            ListTile(
              leading: const Icon(Icons.person),
              title: Text(loc.translate('profileLink')),
              selected: true,
              onTap: () {
                Navigator.pop(context);
              },
            ),
            ListTile(
              leading: const Icon(Icons.logout),
              title: Text(loc.translate('logoutLink')),
              onTap: () {
                // TODO: Implement logout
              },
            ),
          ],
        ),
      ),
      body: Directionality(
        textDirection: isRTL ? TextDirection.rtl : TextDirection.ltr,
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            children: [
              Container(
                padding: const EdgeInsets.all(16),
                decoration: BoxDecoration(
                  color: _isDarkMode ? Colors.grey[850] : Colors.white,
                  borderRadius: BorderRadius.circular(8),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.black.withOpacity(0.1),
                      blurRadius: 12,
                      offset: const Offset(0, 4),
                    ),
                  ],
                ),
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      loc.translate('profileTitle'),
                      style: Theme.of(context).textTheme.headline5?.copyWith(color: Colors.blue[700]),
                    ),
                    const SizedBox(height: 16),
                    LinearProgressIndicator(
                      value: _completionPercent,
                      minHeight: 20,
                      backgroundColor: Colors.grey[300],
                      valueColor: AlwaysStoppedAnimation<Color>(Colors.blue),
                    ),
                    const SizedBox(height: 16),
                    _ProfileField(label: loc.translate('firstNameLabel'), value: widget.profileData['firstName'] ?? ''),
                    _ProfileField(label: loc.translate('lastNameLabel'), value: widget.profileData['lastName'] ?? ''),
                    _ProfileField(label: loc.translate('emailLabel'), value: widget.profileData['email'] ?? ''),
                    _ProfileField(label: loc.translate('phoneLabel'), value: widget.profileData['phone'] ?? ''),
                    _ProfileField(label: loc.translate('genderLabel'), value: widget.profileData['gender'] ?? ''),
                    _ProfileField(label: loc.translate('cityLabel'), value: widget.profileData['city'] ?? ''),
                    // TODO: Display disability document image if available
                    ElevatedButton(
                      onPressed: () {
                        // TODO: Navigate to edit profile screen
                      },
                      child: Text(loc.translate('editProfileBtn')),
                    ),
                  ],
                ),
              ),
              const SizedBox(height: 16),
              Expanded(
                child: _ProfileRequirementsSection(loc: loc),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class _ProfileField extends StatelessWidget {
  final String label;
  final String value;

  const _ProfileField({Key? key, required this.label, required this.value}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.only(bottom: 12),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Text(label, style: const TextStyle(fontWeight: FontWeight.bold, fontSize: 16, color: Colors.blue)),
          Text(value, style: const TextStyle(fontSize: 14)),
        ],
      ),
    );
  }
}

class _ProfileRequirementsSection extends StatelessWidget {
  final AppLocalizations loc;

  const _ProfileRequirementsSection({Key? key, required this.loc}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final requirements = [
      loc.translate('req1'),
      loc.translate('req2'),
      loc.translate('req3'),
      loc.translate('req4'),
      loc.translate('req5'),
      loc.translate('req6'),
    ];

    return ListView.builder(
      itemCount: requirements.length,
      itemBuilder: (context, index) {
        return ListTile(
          leading: const Icon(Icons.check_circle, color: Colors.blue),
          title: Text(requirements[index]),
        );
      },
    );
  }
}
