import 'package:flutter/material.dart';
import '../localization/app_localizations.dart';

class SeekerDashboardScreen extends StatefulWidget {
  final String userName;
  final int applicationCount;
  final List<Map<String, dynamic>> recommendedJobs;
  final List<Map<String, dynamic>> appliedJobs;
  final Set<int> favoriteJobIds;
  final Function(Locale) onLocaleChange;
  final VoidCallback toggleThemeMode;

  const SeekerDashboardScreen({
    Key? key,
    required this.userName,
    required this.applicationCount,
    required this.recommendedJobs,
    required this.appliedJobs,
    required this.favoriteJobIds,
    required this.onLocaleChange,
    required this.toggleThemeMode,
  }) : super(key: key);

  @override
  _SeekerDashboardScreenState createState() => _SeekerDashboardScreenState();
}

class _SeekerDashboardScreenState extends State<SeekerDashboardScreen> {
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
          IconButton(
            icon: const Icon(Icons.brightness_6),
            onPressed: widget.toggleThemeMode,
          ),
          TextButton(
            onPressed: () => widget.onLocaleChange(const Locale('en')),
            child: Text('English',
                style: TextStyle(color: isRTL ? Colors.white70 : Colors.white)),
          ),
          TextButton(
            onPressed: () => widget.onLocaleChange(const Locale('ar')),
            child: Text('عربي',
                style: TextStyle(color: isRTL ? Colors.white : Colors.white70)),
          ),
        ],
      ),
      drawer: Drawer(
        child: ListView(
          padding: EdgeInsets.zero,
          children: [
            DrawerHeader(
              decoration: BoxDecoration(
                color: Theme.of(context).brightness == Brightness.dark
                    ? Colors.grey[850]
                    : Colors.blue,
              ),
              child: Column(
                children: [
                  CircleAvatar(
                    radius: 40,
                    backgroundImage:
                        AssetImage('assets/images/profile_placeholder.png'),
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
              selected: true,
              onTap: () {
                Navigator.pop(context);
              },
            ),
            ListTile(
              leading: const Icon(Icons.search),
              title: Text(loc.translate('findJobsLink')),
              onTap: () {
                Navigator.pushNamed(context, '/job_search');
              },
            ),
            ListTile(
              leading: const Icon(Icons.person),
              title: Text(loc.translate('profileLink')),
              onTap: () {
                Navigator.pushNamed(context, '/seeker_profile');
              },
            ),
            ListTile(
              leading: const Icon(Icons.star),
              title: Text(loc.translate('favoritesLink')),
              onTap: () {
                Navigator.pushNamed(context, '/favorites');
              },
            ),
            ListTile(
              leading: const Icon(Icons.settings),
              title: Text(loc.translate('settingsLink')),
              onTap: () {
                Navigator.pushNamed(context, '/settings');
              },
            ),
            ListTile(
              leading: const Icon(Icons.logout),
              title: Text(loc.translate('logoutLink')),
              onTap: () {
                ScaffoldMessenger.of(context).showSnackBar(
                  SnackBar(content: Text('Logging out...')),
                );
                Navigator.pushReplacementNamed(context, '/login');
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
                  color: Theme.of(context).brightness == Brightness.dark
                      ? Colors.grey[850]
                      : Colors.white,
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
                      '${loc.translate('welcomeTitle')}, ${widget.userName}!',
                      style: Theme.of(context)
                          .textTheme
                          .headline5
                          ?.copyWith(color: Colors.blue[700]),
                    ),
                    const SizedBox(height: 8),
                    Text(loc.translate('welcomeMessage')),
                  ],
                ),
              ),
              const SizedBox(height: 16),
              Row(
                children: [
                  Expanded(
                    child: _StatCard(
                      title: loc.translate('Jobs Applied ToTitle'),
                      count: widget.applicationCount.toString(),
                    ),
                  ),
                ],
              ),
              const SizedBox(height: 16),
              Expanded(
                child: ListView(
                  children: [
                    _JobSection(
                      title: loc.translate('recommendedJobsTitle'),
                      jobs: widget.recommendedJobs,
                      favoriteJobIds: widget.favoriteJobIds,
                    ),
                    const SizedBox(height: 16),
                    _JobSection(
                      title: 'Jobs You Have Applied To',
                      jobs: widget.appliedJobs,
                      favoriteJobIds: widget.favoriteJobIds,
                    ),
                  ],
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class _StatCard extends StatelessWidget {
  final String title;
  final String count;

  const _StatCard({Key? key, required this.title, required this.count})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    final isDarkMode = Theme.of(context).brightness == Brightness.dark;
    return Container(
      padding: const EdgeInsets.all(16),
      decoration: BoxDecoration(
        color: isDarkMode ? Colors.grey[850] : Colors.white,
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
        children: [
          Text(title, style: Theme.of(context).textTheme.subtitle1),
          const SizedBox(height: 8),
          Text(count,
              style: Theme.of(context)
                  .textTheme
                  .headline5
                  ?.copyWith(color: Colors.blue[700])),
        ],
      ),
    );
  }
}

class _JobSection extends StatelessWidget {
  final String title;
  final List<Map<String, dynamic>> jobs;
  final Set<int> favoriteJobIds;

  const _JobSection(
      {Key? key,
      required this.title,
      required this.jobs,
      required this.favoriteJobIds})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    if (jobs.isEmpty) {
      return Text('No jobs found.');
    }
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text(title, style: Theme.of(context).textTheme.headline6),
        const SizedBox(height: 8),
        ...jobs
            .map((job) => _JobItem(
                job: job, isFavorite: favoriteJobIds.contains(job['jobID'])))
            .toList(),
      ],
    );
  }
}

class _JobItem extends StatelessWidget {
  final Map<String, dynamic> job;
  final bool isFavorite;

  const _JobItem({Key? key, required this.job, required this.isFavorite})
      : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: const EdgeInsets.symmetric(vertical: 6),
      child: Padding(
        padding: const EdgeInsets.all(12),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(job['jobtitle'] ?? '',
                style: Theme.of(context)
                    .textTheme
                    .subtitle1
                    ?.copyWith(fontWeight: FontWeight.bold)),
            Text(job['city'] ?? ''),
            Text('Salary: ${job['salary'] ?? ''}'),
            Text('Posted: ${job['postingdate'] ?? ''}'),
            Text('Disability Type: ${job['disability_type'] ?? ''}'),
            Row(
              children: [
                ElevatedButton(
                  onPressed: () {
                    // TODO: Implement apply job functionality
                  },
                  child: const Text('Apply Now'),
                ),
                const SizedBox(width: 8),
                IconButton(
                  icon: Icon(
                      isFavorite ? Icons.favorite : Icons.favorite_border,
                      color: Colors.red),
                  onPressed: () {
                    // TODO: Implement favorite toggle functionality
                  },
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
</create_file>
