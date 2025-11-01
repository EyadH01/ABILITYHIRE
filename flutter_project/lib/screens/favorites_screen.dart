import 'package:flutter/material.dart';
import '../localization/app_localizations.dart';

class FavoritesScreen extends StatefulWidget {
  final String role;
  final List<Map<String, dynamic>> favoriteJobs;
  final Function(Locale) onLocaleChange;

  const FavoritesScreen({
    Key? key,
    required this.role,
    required this.favoriteJobs,
    required this.onLocaleChange,
  }) : super(key: key);

  @override
  _FavoritesScreenState createState() => _FavoritesScreenState();
}

class _FavoritesScreenState extends State<FavoritesScreen> {
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
                    widget.role == 'seeker' ? 'Seeker' : 'Publisher',
                    style: const TextStyle(color: Colors.white, fontSize: 18),
                  ),
                ],
              ),
            ),
            ListTile(
              leading: const Icon(Icons.dashboard),
              title: Text(widget.role == 'seeker' ? 'Seeker Dashboard' : 'Publisher Dashboard'),
              onTap: () {
                // TODO: Navigate to respective dashboard
              },
            ),
            ListTile(
              leading: const Icon(Icons.settings),
              title: Text(loc.translate('settingsLink')),
              onTap: () {
                // TODO: Navigate to settings screen
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
              Align(
                alignment: Alignment.centerLeft,
                child: TextButton.icon(
                  onPressed: () {
                    // TODO: Navigate back to dashboard
                  },
                  icon: const Icon(Icons.arrow_back),
                  label: Text('Back to Dashboard'),
                ),
              ),
              Text(
                'Your Favorite Jobs',
                style: Theme.of(context).textTheme.headline5?.copyWith(color: Colors.blue[700]),
              ),
              const SizedBox(height: 16),
              Expanded(
                child: widget.favoriteJobs.isEmpty
                    ? Center(child: Text('You have no favorite jobs yet.'))
                    : ListView.builder(
                        itemCount: widget.favoriteJobs.length,
                        itemBuilder: (context, index) {
                          final job = widget.favoriteJobs[index];
                          return Card(
                            margin: const EdgeInsets.symmetric(vertical: 6),
                            child: Padding(
                              padding: const EdgeInsets.all(12),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(job['jobtitle'] ?? '', style: Theme.of(context).textTheme.subtitle1?.copyWith(fontWeight: FontWeight.bold)),
                                  Text(job['city'] ?? ''),
                                  Text('Salary: ${job['salary'] ?? ''}'),
                                  Text('Posted: ${job['postingdate'] ?? ''}'),
                                  Text('Status: ${job['status'] ?? ''}'),
                                  Text('Disability Type: ${job['disability_type'] ?? ''}'),
                                  Align(
                                    alignment: Alignment.centerRight,
                                    child: TextButton.icon(
                                      onPressed: () {
                                        // TODO: Implement remove from favorites
                                      },
                                      icon: const Icon(Icons.favorite, color: Colors.red),
                                      label: const Text('Remove'),
                                    ),
                                  ),
                                ],
                              ),
                            ),
                          );
                        },
                      ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
