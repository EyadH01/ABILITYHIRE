import 'package:flutter/material.dart';
import '../localization/app_localizations.dart';

class PublisherDashboardScreen extends StatefulWidget {
  final String publisherName;
  final int jobCount;
  final int openJobsCount;
  final int applicationCount;
  final List<Map<String, dynamic>> jobsPosted;
  final List<Map<String, dynamic>> openJobs;
  final List<Map<String, dynamic>> applications;
  final List<Map<String, dynamic>> recentApplicants;
  final Function(Locale) onLocaleChange;

  const PublisherDashboardScreen({
    Key? key,
    required this.publisherName,
    required this.jobCount,
    required this.openJobsCount,
    required this.applicationCount,
    required this.jobsPosted,
    required this.openJobs,
    required this.applications,
    required this.recentApplicants,
    required this.onLocaleChange,
  }) : super(key: key);

  @override
  _PublisherDashboardScreenState createState() => _PublisherDashboardScreenState();
}

class _PublisherDashboardScreenState extends State<PublisherDashboardScreen> {
  bool _isDarkMode = false;
  String _visibleSection = '';

  void _toggleDarkMode() {
    setState(() {
      _isDarkMode = !_isDarkMode;
    });
    // TODO: Implement actual theme switching in app
  }

  void _toggleSection(String section) {
    setState(() {
      if (_visibleSection == section) {
        _visibleSection = '';
      } else {
        _visibleSection = section;
      }
    });
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
                    radius: 50,
                    backgroundImage: AssetImage('assets/images/profile_placeholder.png'),
                  ),
                  const SizedBox(height: 8),
                  Text(
                    widget.publisherName,
                    style: const TextStyle(color: Colors.white, fontSize: 20),
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
              leading: const Icon(Icons.post_add),
              title: Text(loc.translate('postJobsLink')),
              onTap: () {
                // TODO: Navigate to post jobs screen
              },
            ),
            ListTile(
              leading: const Icon(Icons.person),
              title: Text(loc.translate('profileLink')),
              onTap: () {
                // TODO: Navigate to profile screen
              },
            ),
            ListTile(
              leading: const Icon(Icons.favorite),
              title: Text(loc.translate('favoritesLink')),
              onTap: () {
                // TODO: Navigate to favorites screen
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
          child: ListView(
            children: [
              Container(
                padding: const EdgeInsets.all(16),
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
                child: Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(
                      '${loc.translate('welcomeTitle')}, ${widget.publisherName}',
                      style: Theme.of(context).textTheme.headline5?.copyWith(color: Colors.blue[700]),
                    ),
                    const SizedBox(height: 8),
                    Text(loc.translate('welcomeMessage')),
                  ],
                ),
              ),
              const SizedBox(height: 16),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  _StatCard(
                    title: loc.translate('totalJobsTitle'),
                    count: widget.jobCount.toString(),
                    onTap: () => _toggleSection('totalJobs'),
                  ),
                  _StatCard(
                    title: loc.translate('openJobsTitle'),
                    count: widget.openJobsCount.toString(),
                    onTap: () => _toggleSection('openJobs'),
                  ),
                  _StatCard(
                    title: loc.translate('applicationsTitle'),
                    count: widget.applicationCount.toString(),
                    onTap: () => _toggleSection('applications'),
                  ),
                ],
              ),
              const SizedBox(height: 16),
              if (_visibleSection == 'totalJobs') _JobsTable(jobs: widget.jobsPosted),
              if (_visibleSection == 'openJobs') _JobsList(jobs: widget.openJobs),
              if (_visibleSection == 'applications') _ApplicationsTable(applications: widget.applications),
              const SizedBox(height: 16),
              _RecentApplicantsList(applicants: widget.recentApplicants),
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
  final VoidCallback onTap;

  const _StatCard({Key? key, required this.title, required this.count, required this.onTap}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final isDarkMode = Theme.of(context).brightness == Brightness.dark;
    return GestureDetector(
      onTap: onTap,
      child: Container(
        width: 100,
        padding: const EdgeInsets.all(16),
        decoration: BoxDecoration(
          color: isDarkMode ? Colors.grey[850] : Colors.white,
          borderRadius: BorderRadius.circular(10),
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
            Text(count, style: Theme.of(context).textTheme.headline5?.copyWith(color: Colors.blue[700])),
          ],
        ),
      ),
    );
  }
}

class _JobsTable extends StatelessWidget {
  final List<Map<String, dynamic>> jobs;

  const _JobsTable({Key? key, required this.jobs}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    if (jobs.isEmpty) {
      return const Text('No jobs posted.');
    }
    return DataTable(
      columns: const [
        DataColumn(label: Text('Job Title')),
        DataColumn(label: Text('City')),
        DataColumn(label: Text('Salary')),
        DataColumn(label: Text('Status')),
        DataColumn(label: Text('Disability Type')),
        DataColumn(label: Text('Posting Date')),
      ],
      rows: jobs.map((job) {
        return DataRow(cells: [
          DataCell(Text(job['jobtitle'] ?? '')),
          DataCell(Text(job['city'] ?? '')),
          DataCell(Text(job['salary']?.toString() ?? '')),
          DataCell(Text(job['status'] ?? '')),
          DataCell(Text(job['disability_type'] ?? '')),
          DataCell(Text(job['postingdate'] ?? '')),
        ]);
      }).toList(),
    );
  }
}

class _JobsList extends StatelessWidget {
  final List<Map<String, dynamic>> jobs;

  const _JobsList({Key? key, required this.jobs}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    if (jobs.isEmpty) {
      return const Text('No open jobs.');
    }
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: jobs.map((job) => ListTile(
        title: Text(job['jobtitle'] ?? ''),
        subtitle: Text(job['city'] ?? ''),
      )).toList(),
    );
  }
}

class _ApplicationsTable extends StatelessWidget {
  final List<Map<String, dynamic>> applications;

  const _ApplicationsTable({Key? key, required this.applications}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    if (applications.isEmpty) {
      return const Text('No applications.');
    }
    return DataTable(
      columns: const [
        DataColumn(label: Text('Applicant')),
        DataColumn(label: Text('Job Title')),
        DataColumn(label: Text('Application Date')),
      ],
      rows: applications.map((app) {
        return DataRow(cells: [
          DataCell(Text('${app['fname']} ${app['lname']}')),
          DataCell(Text(app['jobtitle'] ?? '')),
          DataCell(Text(app['applytodate'] ?? '')),
        ]);
      }).toList(),
    );
  }
}

class _RecentApplicantsList extends StatelessWidget {
  final List<Map<String, dynamic>> applicants;

  const _RecentApplicantsList({Key? key, required this.applicants}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    if (applicants.isEmpty) {
      return const Text('No recent applicants found.');
    }
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Text('Recent Applications', style: Theme.of(context).textTheme.headline6),
        const SizedBox(height: 8),
        ...applicants.map((applicant) => ListTile(
          leading: const Icon(Icons.person),
          title: Text('${applicant['fname']} ${applicant['lname']} applied for ${applicant['jobtitle']}'),
          trailing: IconButton(
            icon: const Icon(Icons.favorite, color: Colors.red),
            onPressed: () {
              // TODO: Implement add to favorites
            },
          ),
        )).toList(),
      ],
    );
  }
}
