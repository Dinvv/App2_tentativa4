import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:web2_project/screens/view_task/task_card.dart';
import 'package:web2_project/repository/task_repository.dart';
import 'package:web2_project/models/task.dart';

class TaskScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('Task Maneger'),
      ),
      body: FutureBuilder<List<Task>>(
        future: TaskRepository.findAll(), // Busca todas as tarefas
        builder: (context, snapshot) {
          if (snapshot.connectionState == ConnectionState.waiting) {
            return Center(child: CircularProgressIndicator()); // Exibe um indicador de carregamento enquanto espera
          } else if (snapshot.hasError) {
            return Center(child: Text('Erro ao carregar tarefas.'));
          } else if (!snapshot.hasData || snapshot.data!.isEmpty) {
            return Center(child: Text('Nenhuma tarefa disponível.'));
          } else {
            final taskList = snapshot.data!;
            return ListView.builder(
              itemCount: taskList.length,
              itemBuilder: (context, index) {
                final task = taskList[index];
                return TaskCardWidget(task: task); // Passa a tarefa para o TaskCardWidget
              },
            );
          }
        },
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          Navigator.pushReplacementNamed(context, '/listpage');
        },
        child: SvgPicture.asset('assets/ic_done.svg'),
      ),
    );
  }
}
