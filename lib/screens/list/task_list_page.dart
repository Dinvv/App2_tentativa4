import 'package:flutter/material.dart';
import 'package:web2_project/models/task.dart'; // Importe seu modelo de Task
import 'package:web2_project/repository/task_repository.dart'; // Importe o repositório
import 'package:web2_project/screens/list/floating_action_button_custom.dart'; //botão personalizado

class TaskListPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Task List'),
      ),
      body: FutureBuilder<List<Task>>(
        future: TaskRepository.findAll(), // Buscar todas as tarefas
        builder: (context, snapshot) {
          if (!snapshot.hasData) {
            return const Center(child: CircularProgressIndicator());
          }
          final tasks = snapshot.data!;
          return ListView.builder(
            itemCount: tasks.length,
            itemBuilder: (context, index) {
              final task = tasks[index];
              return Card(
                child: ListTile(
                  title: Text(task.title),
                  subtitle: Text(task.importance),
                  trailing: IconButton(
                    icon: Icon(Icons.edit),
                    onPressed: () {
                      // Navegar para a EditPage, passando a tarefa selecionada
                      Navigator.pushNamed(
                        context,
                        '/viewtask',
                        arguments: task, // Passando o objeto Task para a EditPage
                      );
                    },
                  ),
                ),
              );
            },
          );
        },
      ),
      floatingActionButton: FloatingActionButtonCustom(), // Usando botão personalizado
    );
  }
}
