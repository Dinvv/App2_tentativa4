import 'package:flutter/material.dart';
import 'package:web2_project/screens/view_task/task_screen/closebuttons/close_button.dart';
import 'task_screen/editbuttons/edit_button.dart';

class TaskCardWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Card(
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(16.0),
      ),
      elevation: 4,
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              'título da tarefa',
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 8),
            Text(
              'importância da tarefa',
              style: TextStyle(
                fontSize: 14,
              ),
            ),
            SizedBox(height: 16),
            Text(
              'sua tarefa',
              style: TextStyle(
                fontSize: 16,
              ),
            ),
            SizedBox(height: 16),
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                // Adiciona os Widgets dos Botões
                EditButton(),
                SizedBox(width: 8),
                CloseButtonWidget(),
              ],
            ),
          ],
        ),
      ),
    );
  }
}