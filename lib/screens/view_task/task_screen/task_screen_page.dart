import 'package:flutter/material.dart';
import 'package:web2_project/screens/view_task/task_card.dart';
// Importação do widget TaskCardWidget

class TaskScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('List'),
        centerTitle: true,
        backgroundColor: Colors.pink[100],
      ),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            TaskCardWidget(),
          ],
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          // Ação do botão de confirmar
        },
        child: Icon(Icons.check),
      ),
    );
  }
}