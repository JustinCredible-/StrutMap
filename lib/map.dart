import 'package:flutter/material.dart';
import 'package:flutter_map/flutter_map.dart';
import 'package:latlong2/latlong.dart';
import 'package:url_launcher/url_launcher.dart';

class MapPage extends StatefulWidget {
  const MapPage({super.key});
  @override
  _MapPageState createState() => _MapPageState();
}

class _MapPageState extends State<MapPage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: FlutterMap(
        options: const MapOptions(
          initialCenter: LatLng(53.5288393, -113.5015544), // Edmonton
          initialZoom: 16.0,
          minZoom: 10,
        ),
        children: [
          TileLayer (
            urlTemplate: 'https://api.mapbox.com/styles/v1/justindale/clwx5r76y012g01rbamthcomp/tiles/256/{z}/{x}/{y}@2x?access_token=pk.eyJ1IjoianVzdGluZGFsZSIsImEiOiJjbHdzcXFjcWcwYWFvMmpvZWJqeGM0M3VnIn0.Txn3aDnf4GlbjvHAj5grAQ',
            userAgentPackageName: 'freewalk',
            maxNativeZoom: 22,
            maxZoom: 22,
          ),
          RichAttributionWidget (
            popupInitialDisplayDuration: const Duration(seconds: 0),
            animationConfig: const ScaleRAWA(),
            showFlutterMapAttribution: false,
            attributions: [
              TextSourceAttribution(
                'OpenStreetMap contributors',
                onTap: () async => launchUrl(
                  Uri.parse('https://openstreetmap.org/copyright'),
                ),
              ),
              const TextSourceAttribution(
                'This attribution is the same throughout this app, except '
                'where otherwise specified',
                prependCopyright: false,
              ),
            ],
          ),
        ],
      ),
    );
  }
}