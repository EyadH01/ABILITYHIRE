import 'package:flutter/material.dart';
import '../localization/app_localizations.dart';

class HomeScreen extends StatelessWidget {
  final Function(Locale) onLocaleChange;
  final VoidCallback toggleThemeMode;

  const HomeScreen(
      {Key? key, required this.onLocaleChange, required this.toggleThemeMode})
      : super(key: key);

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
            Text('AbilityHire'),
          ],
        ),
        actions: [
          TextButton(
            onPressed: () => onLocaleChange(const Locale('en')),
            child: Text('English',
                style: TextStyle(color: isRTL ? Colors.white70 : Colors.white)),
          ),
          TextButton(
            onPressed: () => onLocaleChange(const Locale('ar')),
            child: Text('عربي',
                style: TextStyle(color: isRTL ? Colors.white : Colors.white70)),
          ),
          IconButton(
            icon: const Icon(Icons.brightness_6),
            onPressed: toggleThemeMode,
          ),
        ],
      ),
      body: Directionality(
        textDirection: isRTL ? TextDirection.rtl : TextDirection.ltr,
        child: Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            children: [
              Expanded(
                child: Row(
                  children: [
                    Expanded(
                      child: Image.asset('assets/images/Home Page.png'),
                    ),
                    const SizedBox(width: 20),
                    Expanded(
                      child: Column(
                        crossAxisAlignment: CrossAxisAlignment.start,
                        children: [
                          Text(
                            loc.translate('welcomeTitle'),
                            style: Theme.of(context)
                                .textTheme
                                .titleLarge
                                ?.copyWith(color: Colors.blue[700]),
                          ),
                          const SizedBox(height: 10),
                          Text(
                            loc.translate('welcomeMsg'),
                            style: Theme.of(context).textTheme.titleMedium,
                          ),
                        ],
                      ),
                    ),
                  ],
                ),
              ),
              Container(
                color: Colors.blue,
                height: 40,
                child: Center(
                  child: SingleChildScrollView(
                    scrollDirection: Axis.horizontal,
                    child: Text(
                      loc.translate('scrollQuotes'),
                      style: const TextStyle(color: Colors.white, fontSize: 16),
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}
