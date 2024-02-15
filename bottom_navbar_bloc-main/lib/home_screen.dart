import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  const HomeScreen({Key? key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text("K-Pop Agency"),
        backgroundColor: Colors.cyan,
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 8.0),
              child: Text(
                "K-Pop Groups",
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),
            ),
            Expanded(
              child: GridView.builder(
                gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2, // Ubah jumlah kolom sesuai kebutuhan
                  mainAxisSpacing: 8.0,
                  crossAxisSpacing: 8.0,
                  childAspectRatio: 1.0, // Proporsi lebar-ke-tinggi item
                ),
                itemCount: 4, // Jumlah grup yang ingin ditampilkan
                itemBuilder: (context, index) {
                  return Card(
                    child: ListTile(
                      leading: Image.network(
                        'https://i.pinimg.com/originals/fc/98/57/fc98576b91aacba7cddfc1d41dd753b5.jpg',
                        width: 50, // Sesuaikan ukuran gambar sesuai kebutuhan
                        height: 50,
                        fit: BoxFit.cover,
                      ),
                      title: Text('Grup K-Pop ${index + 1}'),
                      onTap: () {
                        // Navigasi ke halaman detail grup
                        Navigator.push(
                          context,
                          MaterialPageRoute(
                            builder: (context) => GroupDetailScreen(groupIndex: index),
                          ),
                        );
                      },
                    ),
                  );
                },
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(vertical: 16.0),
              child: Text(
                "K-Pop Artists",
                style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
              ),
            ),
Expanded(
  child: GridView.builder(
    gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
      crossAxisCount: 2, // Ubah jumlah kolom sesuai kebutuhan
      mainAxisSpacing: 8.0,
      crossAxisSpacing: 8.0,
      childAspectRatio: 1.0, // Proporsi lebar-ke-tinggi item
    ),
    itemCount: 20, // Ubah jumlah item sesuai kebutuhan
    itemBuilder: (context, index) {
      return Card(
        child: Column(
          children: [
            Image.network(
              'https://0.soompi.io/wp-content/uploads/2017/07/11180529/Chanyeol-6.jpg', // Ganti dengan URL gambar artis yang sesuai
              width: 100, // Sesuaikan ukuran gambar sesuai kebutuhan
              height: 100,
              fit: BoxFit.cover,
            ),
            Padding(
              padding: const EdgeInsets.all(8.0),
              child: Text(
                'Artis K-Pop ${index + 1}',
                style: TextStyle(fontSize: 16),
              ),
            ),
          ],
        ),
      );
    },
  ),
),

          ],
        ),
      ),
    );
  }
}

class GroupDetailScreen extends StatelessWidget {
  final int groupIndex;

  const GroupDetailScreen({Key? key, required this.groupIndex}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    // Di sini, Anda dapat mengatur logika untuk menampilkan detail grup.
    // Misalnya, foto grup dan daftar anggota grup.
    return Scaffold(
      appBar: AppBar(
        title: Text('Group Detail'),
      ),
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(vertical: 8.0),
            child: Text(
              "Grup K-Pop ${groupIndex + 1}",
              style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
            ),
          ),
          // Di sini, Anda dapat menambahkan foto grup dan daftar anggota grup.
          // Contoh:
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(
              "Foto Grup",
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Image.network('https://i.pinimg.com/originals/fc/98/57/fc98576b91aacba7cddfc1d41dd753b5.jpg'),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Text(
              "Anggota Grup",
              style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),
            ),
          ),
          Expanded(
            child: ListView.builder(
              itemCount: 10, // Jumlah anggota dalam grup
              itemBuilder: (context, index) {
                return ListTile(
                  title: Text('Anggota ${index + 1}'),
                  // Tambahkan logika untuk menampilkan detail anggota jika diperlukan.
                );
              },
            ),
          ),
        ],
      ),
    );
  }
}
