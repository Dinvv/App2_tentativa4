import 'package:flutter/material.dart';

class NewscreenPage extends StatelessWidget {
  const NewscreenPage({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('NewscreenPage'),
        centerTitle: true,
      ),
      body: const Center(
        child: Text(
          'NewscreenPage is working',
          style: TextStyle(fontSize: 20),
        ),
      ),
    );
  }
}
