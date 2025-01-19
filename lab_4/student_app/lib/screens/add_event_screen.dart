import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:google_maps_flutter/google_maps_flutter.dart';

class AddEventScreen extends StatefulWidget {
  @override
  _AddEventScreenState createState() => _AddEventScreenState();
}

class _AddEventScreenState extends State<AddEventScreen> {
  final _titleController = TextEditingController();
  final _timeController = TextEditingController();
  late LatLng _eventLocation;

  @override
  void initState() {
    super.initState();
    _eventLocation = LatLng(40.7128, -74.0060); // Default location
  }

  void _saveEvent() async {
    await FirebaseFirestore.instance.collection('events').add({
      'title': _titleController.text,
      'time': _timeController.text,
      'location': GeoPoint(_eventLocation.latitude, _eventLocation.longitude),
    });

    Navigator.pop(context);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Add Event')),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          children: [
            TextField(
                controller: _titleController,
                decoration: InputDecoration(labelText: 'Event Title')),
            TextField(
                controller: _timeController,
                decoration: InputDecoration(labelText: 'Event Time')),
            ElevatedButton(
              onPressed: _saveEvent,
              child: Text('Save Event'),
            ),
          ],
        ),
      ),
    );
  }
}
