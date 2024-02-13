import 'package:flutter/material.dart';

class FavoriteScreen extends StatelessWidget {
  const FavoriteScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("My Favorit"),
        backgroundColor: Colors.green,
      ),
      body: GridView.count(
        crossAxisCount: 2, // Menentukan jumlah kolom dalam grid
        children: <Widget>[
          _buildCategoryCard("Artist", Colors.blue),
          _buildCategoryCard("Group", Colors.red),
          // Tambahkan lebih banyak kotak kategori di sini sesuai kebutuhan
        ],
      ),
    );
  }

  Widget _buildCategoryCard(String category, Color color) {
    return Card(
      color: color,
      child: Center(
        child: Text(
          category,
          style: TextStyle(
            fontSize: 24.0,
            color: Colors.white,
          ),
        ),
      ),
    );
  }
}
