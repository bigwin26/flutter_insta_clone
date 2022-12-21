import 'package:flutter/material.dart';
import 'package:instagram_clone/create/create_page.dart';

class SearchPage extends StatelessWidget {
  const SearchPage({Key? key}) : super(key: key);

  final List<String> _urls = const [
    'https://cdn.mhnse.com/news/photo/202208/134498_126052_538.jpg',
    'https://cdn.imweb.me/upload/S202207215f9bbbf5e9735/a4c1af2bfa743.jpg',
    'https://cdn.mhnse.com/news/photo/202208/134498_126052_538.jpg',
    'https://cdn.imweb.me/upload/S202207215f9bbbf5e9735/a4c1af2bfa743.jpg',
    'https://cdn.mhnse.com/news/photo/202208/134498_126052_538.jpg',
    'https://cdn.imweb.me/upload/S202207215f9bbbf5e9735/a4c1af2bfa743.jpg',
  ];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        floatingActionButton: FloatingActionButton(
          onPressed: () {
            Navigator.push(
              context,
              MaterialPageRoute(builder: (context) => const CreatePage()),
            );
          },
          child: const Icon(Icons.create),
        ),
        appBar: AppBar(
          title: const Text('Search'),
        ),
        body: GridView.builder(
          itemCount: _urls.length,
          gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
            crossAxisCount: 3,
            mainAxisSpacing: 2.0,
            crossAxisSpacing: 2.0,
          ),
          itemBuilder: (BuildContext context, int index) {
            final url = _urls[index];

            return Image.network(
              url,
              fit: BoxFit.cover,
            );
          },
        ));
  }
}
