import 'package:flutter/material.dart';
import '../localization/app_localizations.dart';

class EditPublisherProfileScreen extends StatefulWidget {
  final Map<String, String> profileData;
  final Function(Locale) onLocaleChange;

  const EditPublisherProfileScreen({
    Key? key,
    required this.profileData,
    required this.onLocaleChange,
  }) : super(key: key);

  @override
  _EditPublisherProfileScreenState createState() => _EditPublisherProfileScreenState();
}

class _EditPublisherProfileScreenState extends State<EditPublisherProfileScreen> {
  final _formKey = GlobalKey<FormState>();
  late TextEditingController _firstNameController;
  late TextEditingController _lastNameController;
  late TextEditingController _emailController;
  late TextEditingController _phoneController;
  late TextEditingController _addressController;
  late TextEditingController _cityController;
  late TextEditingController _countryController;
  String _gender = 'Male';
  String _disabilityType = '';
  bool _isDarkMode = false;

  final List<String> _disabilityTypes = [
    "Visual impairment", "Hearing impairment", "Mobility impairment", "Cognitive disability",
    "Speech disability", "Learning disability", "Mental health condition", "Chronic illness",
    "Autism spectrum disorder", "Down syndrome", "Epilepsy", "Multiple sclerosis",
    "Cerebral palsy", "Muscular dystrophy", "Spinal cord injury", "Amputation",
    "Deafblindness", "Blindness", "Deafness", "Intellectual disability",
    "Attention deficit hyperactivity disorder", "Post-traumatic stress disorder", "Bipolar disorder",
    "Schizophrenia", "Alzheimer's disease", "Parkinson's disease", "Stroke",
    "Diabetes-related disability", "Arthritis", "Chronic fatigue syndrome", "Fibromyalgia",
    "Respiratory disability", "Heart disease", "Cancer-related disability", "Other"
  ];

  @override
  void initState() {
    super.initState();
    _firstNameController = TextEditingController(text: widget.profileData['firstName']);
    _lastNameController = TextEditingController(text: widget.profileData['lastName']);
    _emailController = TextEditingController(text: widget.profileData['email']);
    _phoneController = TextEditingController(text: widget.profileData['phone']);
    _addressController = TextEditingController(text: widget.profileData['address']);
    _cityController = TextEditingController(text: widget.profileData['city']);
    _countryController = TextEditingController(text: widget.profileData['country']);
    _gender = widget.profileData['gender'] ?? 'Male';
    _disabilityType = widget.profileData['disabilityType'] ?? '';
  }

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
      body: Directionality(
        textDirection: isRTL ? TextDirection.rtl : TextDirection.ltr,
        child: SingleChildScrollView(
          padding: const EdgeInsets.all(16.0),
          child: Container(
            constraints: const BoxConstraints(maxWidth: 600),
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
            padding: const EdgeInsets.all(24),
            child: Form(
              key: _formKey,
              child: Column(
                children: [
                  Text(
                    loc.translate('editProfileBtn'),
                    style: Theme.of(context).textTheme.headline5?.copyWith(color: Colors.blue[700]),
                  ),
                  const SizedBox(height: 20),
                  TextFormField(
                    controller: _firstNameController,
                    decoration: InputDecoration(
                      labelText: loc.translate('firstNameLabel'),
                      border: const OutlineInputBorder(),
                    ),
                    validator: (value) {
                      if (value == null || value.isEmpty) {
                        return '${loc.translate('firstNameLabel')} is required';
                      }
                      return null;
                    },
                  ),
                  const SizedBox(height: 16),
                  TextFormField(
                    controller: _lastNameController,
                    decoration: InputDecoration(
                      labelText: loc.translate('lastNameLabel'),
                      border: const OutlineInputBorder(),
                    ),
                    validator: (value) {
                      if (value == null || value.isEmpty) {
                        return '${loc.translate('lastNameLabel')} is required';
                      }
                      return null;
                    },
                  ),
                  const SizedBox(height: 16),
                  TextFormField(
                    controller: _emailController,
                    decoration: InputDecoration(
                      labelText: loc.translate('emailLabel'),
                      border: const OutlineInputBorder(),
                    ),
                    keyboardType: TextInputType.emailAddress,
                    validator: (value) {
                      if (value == null || value.isEmpty) {
                        return '${loc.translate('emailLabel')} is required';
                      }
                      if (!RegExp(r'^[^@]+@[^@]+\.[^@]+').hasMatch(value)) {
                        return 'Enter a valid email';
                      }
                      return null;
                    },
                  ),
                  const SizedBox(height: 16),
                  TextFormField(
                    controller: _phoneController,
                    decoration: InputDecoration(
                      labelText: 'Phone Number',
                      border: const OutlineInputBorder(),
                    ),
                    keyboardType: TextInputType.phone,
                  ),
                  const SizedBox(height: 16),
                  TextFormField(
                    controller: _addressController,
                    decoration: InputDecoration(
                      labelText: 'Address',
                      border: const OutlineInputBorder(),
                    ),
                  ),
                  const SizedBox(height: 16),
                  TextFormField(
                    controller: _cityController,
                    decoration: InputDecoration(
                      labelText: loc.translate('cityLabel'),
                      border: const OutlineInputBorder(),
                    ),
                  ),
                  const SizedBox(height: 16),
                  TextFormField(
                    controller: _countryController,
                    decoration: InputDecoration(
                      labelText: 'Country',
                      border: const OutlineInputBorder(),
                    ),
                  ),
                  const SizedBox(height: 16),
                  DropdownButtonFormField<String>(
                    value: _gender,
                    decoration: InputDecoration(
                      labelText: loc.translate('genderLabel'),
                      border: const OutlineInputBorder(),
                    ),
                    items: [
                      DropdownMenuItem(value: 'Male', child: Text('Male')),
                      DropdownMenuItem(value: 'Female', child: Text('Female')),
                      DropdownMenuItem(value: 'Other', child: Text('Other')),
                    ],
                    onChanged: (value) {
                      setState(() {
                        _gender = value ?? 'Male';
                      });
                    },
                  ),
                  const SizedBox(height: 16),
                  DropdownButtonFormField<String>(
                    value: _disabilityType.isEmpty ? null : _disabilityType,
                    decoration: InputDecoration(
                      labelText: 'Disability Type',
                      border: const OutlineInputBorder(),
                    ),
                    items: _disabilityTypes.map((type) {
                      return DropdownMenuItem(value: type, child: Text(type));
                    }).toList(),
                    onChanged: (value) {
                      setState(() {
                        _disabilityType = value ?? '';
                      });
                    },
                  ),
                  const SizedBox(height: 24),
                  ElevatedButton(
                    onPressed: () {
                      if (_formKey.currentState!.validate()) {
                        // TODO: Implement save changes logic
                        ScaffoldMessenger.of(context).showSnackBar(
                          SnackBar(content: Text('Saving changes...')),
                        );
                      }
                    },
                    child: Text(loc.translate('editProfileBtn')),
                  ),
                ],
              ),
            ),
          ),
        ),
      ),
    );
  }
}
