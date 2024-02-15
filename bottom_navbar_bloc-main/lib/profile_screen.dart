import 'dart:io';
import 'package:flutter/material.dart';

class ProfileScreen extends StatefulWidget {
  const ProfileScreen({Key? key}) : super(key: key);

  @override
  _ProfileScreenState createState() => _ProfileScreenState();
}

class _ProfileScreenState extends State<ProfileScreen> {
  String _newArtistName = '';
  String _newKpopGroupName = '';
  File? _image;

  final TextEditingController _artistNameController = TextEditingController();
  final TextEditingController _kpopGroupNameController = TextEditingController();

  @override
  void dispose() {
    _artistNameController.dispose();
    _kpopGroupNameController.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Profile Screen"),
        backgroundColor: Colors.cyan,
      ),
      body: Center(
        child: Text(
          'Ini halaman profile',
          style: TextStyle(fontSize: 24.0),
        ),
      ),
    );
  }
}
