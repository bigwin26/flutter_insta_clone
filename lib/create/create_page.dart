import 'dart:io';

import 'package:flutter/material.dart';
import 'package:instagram_clone/create/create_model.dart';

class CreatePage extends StatefulWidget {
  const CreatePage({Key? key}) : super(key: key);

  @override
  State<CreatePage> createState() => _CreatePageState();
}

class _CreatePageState extends State<CreatePage> {
  final model = CreateModel();

  File? _image;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('새 게시물'),
        actions: const [
          Icon(Icons.send),
        ],
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: SingleChildScrollView(
          child: Column(
            children: [
              TextField(
                decoration: InputDecoration(
                  border: OutlineInputBorder(
                    borderRadius: BorderRadius.circular(10.0),
                  ),
                  filled: true,
                  fillColor: Colors.white60,
                  hintStyle: TextStyle(color: Colors.grey[800]),
                  hintText: "제목을 입력하세요.",
                ),
              ),
              SizedBox(
                height: 20.0,
              ),
              ElevatedButton(
                onPressed: () async {
                  _image = await model.getImage();
                  setState(() {});
                },
                child: Text('이미지 선택'),
              ),
              SizedBox(
                height: 20.0,
              ),
              if (_image != null)
                Image.file(
                  _image!,
                  width: 300,
                ),
            ],
          ),
        ),
      ),
    );
  }
}
