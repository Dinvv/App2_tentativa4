import 'package:flutter/material.dart';

class DeleteScreenPage2Page extends StatelessWidget {
  const DeleteScreenPage2Page({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('DeleteScreenPage2Page'),
        centerTitle: true,
      ),
      body: const Center(
        child: Text(
          'DeleteScreenPage2Page is working',
          style: TextStyle(fontSize: 20),
        ),
      ),
    );
  }
}