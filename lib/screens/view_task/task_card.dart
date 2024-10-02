import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart'; // Importa o pacote SVG
import 'package:web2_project/screens/view_task/task_screen/editbuttons/edit_button.dart';
import 'package:web2_project/repository/task_repository.dart';
import 'package:web2_project/models/task.dart';

class TaskCardWidget extends StatelessWidget {
  final Task task;

  TaskCardWidget({required this.task});

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
              task.title, // Exibe o título da tarefa
              style: TextStyle(
                fontSize: 18,
                fontWeight: FontWeight.bold,
              ),
            ),
            SizedBox(height: 8),
            Text(
              task.importance, // Exibe a importância da tarefa
              style: TextStyle(
                fontSize: 14,
              ),
            ),
            SizedBox(height: 16),
            Text(
              task.description, // Exibe a descrição da tarefa
              style: TextStyle(
                fontSize: 16,
              ),
            ),
            SizedBox(height: 16),
            Row(
              mainAxisAlignment: MainAxisAlignment.end,
              children: [
                // Botão de editar
                EditButton(task: task),
                SizedBox(width: 8),
                // Botão de deletar com SVG
                IconButton(
                  icon: SvgPicture.asset(
                    'assets/ic_delete.svg', // Caminho do ícone SVG
                    color: Colors.red, // Cor do ícone
                    width: 24, // Largura do ícone
                    height: 24, // Altura do ícone
                  ),
                  onPressed: () async {
                    // Confirmação antes de deletar a tarefa
                    bool? shouldDelete = await showDialog(
                      context: context,
                      builder: (context) => AlertDialog(
                        title: Text('Deletar Tarefa'),
                        content: Text('Tem certeza que deseja deletar a tarefa "${task.title}"?'),
                        actions: [
                          TextButton(
                            onPressed: () => Navigator.of(context).pop(false),
                            child: Text('Cancelar'),
                          ),
                          TextButton(
                            onPressed: () => Navigator.of(context).pop(true),
                            child: Text('Deletar'),
                          ),
                        ],
                      ),
                    );

                    if (shouldDelete == true) {
                      await TaskRepository.delete(task.id!); // Deleta a tarefa pelo ID
                      // Atualiza a lista ou navega para outra página
                      Navigator.pushReplacementNamed(context, '/listpage');
                    }
                  },
                ),
              ],
            ),
          ],
        ),
      ),
    );
  }
}
