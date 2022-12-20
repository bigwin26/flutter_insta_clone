import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Instagram clone'),
      ),
      body: Center(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            const SizedBox(height: 20),
            const Text(
              'Instagram에 오신것을 환영합니다.',
              style: TextStyle(fontSize: 24),
            ),
            const SizedBox(height: 20),
            const Text('사진과 동영상을 보려면 팔로우하세요.'),
            const SizedBox(height: 20),
            Card(
              elevation: 5.0,
              child: Padding(
                padding: const EdgeInsets.all(16.0),
                child: Column(
                  children: [
                    const SizedBox(
                      width: 100,
                      height: 100,
                      child: CircleAvatar(
                        backgroundImage: NetworkImage(
                          'https://cdn.mhnse.com/news/photo/202208/134498_126052_538.jpg',
                        ),
                      ),
                    ),
                    const SizedBox(
                      height: 8,
                    ),
                    const Text('이메일'),
                    const Text('닉네임'),
                    const SizedBox(
                      height: 8,
                    ),
                    const Text('사진3개'),
                    const SizedBox(
                      height: 8,
                    ),
                    const Text('친구'),
                    const SizedBox(
                      height: 8,
                    ),
                    Row(
                      mainAxisSize: MainAxisSize.min,
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Image.network(
                          'https://cdn.mhnse.com/news/photo/202208/134498_126052_538.jpg',
                          width: 70,
                          height: 70,
                          fit: BoxFit.cover,
                        ),
                        SizedBox(width: 8.0,),
                        Image.network(
                          'https://cdn.mhnse.com/news/photo/202208/134498_126052_538.jpg',
                          width: 70,
                          height: 70,
                          fit: BoxFit.cover,
                        ),
                        SizedBox(width: 8.0,),
                        Image.network(
                          'https://cdn.mhnse.com/news/photo/202208/134498_126052_538.jpg',
                          width: 70,
                          height: 70,
                          fit: BoxFit.cover,
                        ),
                      ],
                    ),
                    const SizedBox(
                      height: 8,
                    ),
                    ElevatedButton(
                      onPressed: () {},
                      child: const Text('팔로우'),
                    )
                  ],
                ),
              ),
            )
          ],
        ),
      ),
    );
  }
}
