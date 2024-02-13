import 'package:flutter/material.dart';

class TrendScreen extends StatelessWidget {
  const TrendScreen({Key? key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("Hot Topics"),
        backgroundColor: Colors.red,
      ),
      body: SingleChildScrollView(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(
                "Hot Trending Artists",
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),
            ),
            _buildArtistList(), // Add a function to build artist list
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(
                "Hot Trending Groups",
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),
            ),
            _buildGroupList(), // Add a function to build group list
          ],
        ),
      ),
    );
  }

  Widget _buildArtistList() {
    // You can replace this with actual trending artists data
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        ListTile(
          title: Text("Artist 1"),
          subtitle: Text("Information about Artist 1"),
          onTap: () {
            // Handle tap on artist
          },
        ),
        ListTile(
          title: Text("Artist 2"),
          subtitle: Text("Information about Artist 2"),
          onTap: () {
            // Handle tap on artist
          },
        ),
        // Add more ListTile widgets for each trending artist
      ],
    );
  }

  Widget _buildGroupList() {
    // You can replace this with actual trending groups data
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        ListTile(
          title: Text("Group 1"),
          subtitle: Text("Information about Group 1"),
          onTap: () {
            // Handle tap on group
          },
        ),
        ListTile(
          title: Text("Group 2"),
          subtitle: Text("Information about Group 2"),
          onTap: () {
            // Handle tap on group
          },
        ),
        // Add more ListTile widgets for each trending group
      ],
    );
  }
}
