import 'package:flutter/material.dart';

class FavoriteScreen extends StatelessWidget {
  const FavoriteScreen({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("My Favorit"),
        backgroundColor: Colors.cyan,
      ),
      body: GridView.count(
        crossAxisCount: 2, // Menentukan jumlah kolom dalam grid
        children: <Widget>[
          _buildCategoryCard(context, "Artist", Colors.yellow),
          _buildCategoryCard(context, "Group", Color.fromARGB(255, 216, 132, 180)),
          // Tambahkan lebih banyak kotak kategori di sini sesuai kebutuhan
        ],
      ),
    );
  }

  Widget _buildCategoryCard(BuildContext context, String category, Color color) {
    return InkWell(
      onTap: () {
        // Navigasi ke layar baru saat item grid ditekan
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => CategoryDetailScreen(category: category),
          ),
        );
      },
      child: Card(
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
      ),
    );
  }
}

class CategoryDetailScreen extends StatelessWidget {
  final String category;

  const CategoryDetailScreen({Key? key, required this.category}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(category),
      ),
      body: ListView.builder(
        itemCount: 10, // Ubah jumlah item sesuai kebutuhan
        itemBuilder: (context, index) {
          return ListTile(
            title: Text('$category Item ${index + 1}'),
            // Tambahkan logika untuk menampilkan detail item jika diperlukan.
          );
        },
      ),
    );
  }
}
