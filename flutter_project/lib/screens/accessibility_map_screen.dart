import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

class AccessibilityMapScreen extends StatefulWidget {
  const AccessibilityMapScreen({Key? key}) : super(key: key);

  @override
  _AccessibilityMapScreenState createState() => _AccessibilityMapScreenState();
}

class _AccessibilityMapScreenState extends State<AccessibilityMapScreen> {
  late GoogleMapController mapController;

  final LatLng _center = const LatLng(31.9454, 35.9284); // Center of Jordan

  void _onMapCreated(GoogleMapController controller) {
    mapController = controller;
  }

  String _selectedCity = 'Amman';

  final Map<String, LatLng> _cityCoordinates = {
    'Amman': LatLng(31.9454, 35.9284),
    'Riyadh': LatLng(24.7136, 46.6753),
    'Cairo': LatLng(30.0444, 31.2357),
    'Dubai': LatLng(25.2048, 55.2708),
    'Doha': LatLng(25.2854, 51.5310),
    'Kuwait City': LatLng(29.3759, 47.9774),
    'Manama': LatLng(26.2235, 50.5876),
    'Muscat': LatLng(23.5880, 58.3829),
    'Beirut': LatLng(33.8938, 35.5018),
    'Jerusalem': LatLng(31.7683, 35.2137),
  };

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Accessibility Map'),
      ),
      body: Column(
        children: [
          DropdownButton<String>(
            value: _selectedCity,
            items: _cityCoordinates.keys
                .map<DropdownMenuItem<String>>((String value) {
              return DropdownMenuItem<String>(
                value: value,
                child: Text(value),
              );
            }).toList(),
            onChanged: (String? newValue) {
              setState(() {
                _selectedCity = newValue!;
                final LatLng? newCenter = _cityCoordinates[_selectedCity];
                if (newCenter != null) {
                  mapController
                      .animateCamera(CameraUpdate.newLatLng(newCenter));
                }
              });
            },
          ),
          Expanded(
            child: GoogleMap(
              onMapCreated: _onMapCreated,
              initialCameraPosition: CameraPosition(
                target: _center,
                zoom: 8.0,
              ),
              markers: {
                Marker(
                  markerId: MarkerId(_selectedCity),
                  position: _cityCoordinates[_selectedCity] ?? _center,
                ),
              },
            ),
          ),
        ],
      ),
    );
  }
}
