import 'package:flutter/material.dart';
import '../localization/app_localizations.dart';

class NotificationsScreen extends StatefulWidget {
  final String role;
  final List<Map<String, dynamic>> notifications;
  final Function(Locale) onLocaleChange;

  const NotificationsScreen({
    Key? key,
    required this.role,
    required this.notifications,
    required this.onLocaleChange,
  }) : super(key: key);

  @override
  _NotificationsScreenState createState() => _NotificationsScreenState();
}

class _NotificationsScreenState extends State<NotificationsScreen> {
  bool _isDarkMode = false;

  void _toggleDarkMode() {
    setState(() {
      _isDarkMode = !_isDarkMode;
    });
    // TODO: Implement actual theme switching in app
  }

  void _markAllRead() {
    // TODO: Implement mark all as read functionality
    ScaffoldMessenger.of(context).showSnackBar(
      const SnackBar(content: Text('All notifications marked as read')),
    );
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
                    // TODO: Navigate back to home screen
                  },
                  icon: const Icon(Icons.arrow_back),
                  label: Text('Back to Home'),
                ),
              ),
              Expanded(
                child: widget.notifications.isEmpty
                    ? Center(child: Text('No notifications.'))
                    : ListView.builder(
                        itemCount: widget.notifications.length,
                        itemBuilder: (context, index) {
                          final notification = widget.notifications[index];
                          final sender = notification['sender_fname'] ??
                              notification['publisher_fname'] ??
                              'System';
                          return Card(
                            margin: const EdgeInsets.symmetric(vertical: 6),
                            child: Padding(
                              padding: const EdgeInsets.all(12),
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(notification['message'] ?? '', style: Theme.of(context).textTheme.subtitle1?.copyWith(fontWeight: FontWeight.bold)),
                                  if (notification['jobtitle'] != null)
                                    Text(notification['jobtitle']),
                                  Text(notification['timestamp'] ?? '', style: const TextStyle(fontSize: 12, color: Colors.grey)),
                                  Text('From: $sender'),
                                ],
                              ),
                            ),
                          );
                        },
                      ),
              ),
              ElevatedButton(
                onPressed: _markAllRead,
                child: const Text('Mark all as read'),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
