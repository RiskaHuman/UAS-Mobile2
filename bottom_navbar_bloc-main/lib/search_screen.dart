import 'package:flutter/material.dart';

class SearchScreen extends StatefulWidget {
  const SearchScreen({Key? key}) : super(key: key);

  @override
  _SearchScreenState createState() => _SearchScreenState();
}

class _SearchScreenState extends State<SearchScreen> {
  List<String> _artistData = [
    'Kim Minseok - EXO',
    'Jennie - BLACKPINK',
    'Momo - TWICE',
    'Park chanyeol - EXO',
    'irene - Red Velvet',
    'Mark - NCT',
    'Suga - BTS',
    'Lalisa Manoban',
    'IU',
    'Seo Yeji',
    'Oh Se Hun',
    'Rose',
    'Jihyo',
    'Mina',
    'Tzuyu',
    'Jin',
    'Jimin',
    'Nayeon',
    'J-Hope',
    'RM',
  ];

  List<String> _groupData = [
    'BTS',
    'BLACKPINK',
    'TWICE',
    'EXO',
    'Red Velvet',
    'NCT',
    'Stray Kids',
    'MAMAMOO',
    'GOT7',
    'ITZY',
    'SEVENTEEN',
    'TXT',
    'IU',
    'MONSTA X',
    'ATEEZ',
    'GFRIEND',
    'SHINee',
    'IZ*ONE',
    'BIGBANG',
    'ENHYPEN',
  ];

  List<String> _searchResult = [];

  void _filterSearchResults(String query) {
    _searchResult.clear();
    if (query.isNotEmpty) {
      _artistData.forEach((artist) {
        if (artist.toLowerCase().contains(query.toLowerCase())) {
          _searchResult.add(artist);
        }
      });

      _groupData.forEach((group) {
        if (group.toLowerCase().contains(query.toLowerCase())) {
          _searchResult.add(group);
        }
      });
    }
    setState(() {});
  }

  @override
  Widget build(BuildContext context) {
    return DefaultTabController(
      length: 2, // Jumlah tab (Artis dan Grup)
      child: Scaffold(
        appBar: AppBar(
          title: const Text("Search Screen"),
          backgroundColor: Colors.cyan,
          bottom: const TabBar(
            tabs: [
              Tab(text: 'Artis'),
              Tab(text: 'Grup'),
            ],
          ),
        ),
        body: TabBarView(
          children: [
            // Tab View untuk Artis
            _buildSearchList('Artis'),
            // Tab View untuk Grup
            _buildSearchList('Grup'),
          ],
        ),
      ),
    );
  }

  Widget _buildSearchList(String category) {
    List<String> dataList = category == 'Artis' ? _artistData : _groupData;

    return Column(
      children: [
        Padding(
          padding: const EdgeInsets.all(8.0),
          child: TextField(
            onChanged: (value) {
              _filterSearchResults(value);
            },
            decoration: InputDecoration(
              hintText: 'Cari $category Kpop...',
              prefixIcon: Icon(Icons.search),
              border: OutlineInputBorder(),
            ),
          ),
        ),
        Expanded(
          child: ListView.builder(
            itemCount: _searchResult.length,
            itemBuilder: (context, index) {
              return ListTile(
                title: Text(_searchResult[index]),
                // Tambahkan logika untuk menavigasi ke halaman detail jika diperlukan.
              );
            },
          ),
        ),
      ],
    );
  }
}
