import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:web2_project/models/task.dart';
import 'package:web2_project/store/check_store.dart';
import 'package:web2_project/repository/task_repository.dart';
import 'package:web2_project/enums/select.dart'; // Import do enum

class CreatePage extends StatefulWidget {
  const CreatePage({super.key});

  @override
  _CreatePageState createState() => _CreatePageState();
}

class _CreatePageState extends State<CreatePage> {
  final TextEditingController _titleController = TextEditingController();
  final TextEditingController _descriptionController = TextEditingController();
  final store = CheckStore();
  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Create Task'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Form(
          key: _formKey,
          child: ListView(
            children: [
              Card(
                child: Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Text(
                        'Nome da tarefa',
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                      const SizedBox(height: 8.0),
                      TextFormField(
                        controller: _titleController,
                        decoration: const InputDecoration(
                          hintText: 'Digite o título da tarefa',
                        ),
                        validator: (value) {
                          if (value == null || value.isEmpty) {
                            return 'O título da tarefa é obrigatório';
                          }
                          return null;
                        },
                        textInputAction: TextInputAction.next,
                      ),
                    ],
                  ),
                ),
              ),
              const SizedBox(height: 16.0),
              Card(
                child: Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Text(
                        'Descrição da tarefa',
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                      const SizedBox(height: 8.0),
                      TextFormField(
                        controller: _descriptionController,
                        decoration: const InputDecoration(
                          hintText: 'Digite a descrição da tarefa',
                        ),
                        validator: (value) {
                          if (value == null || value.isEmpty) {
                            return 'A descrição da tarefa é obrigatória';
                          }
                          return null;
                        },
                        textInputAction: TextInputAction.next,
                      ),
                    ],
                  ),
                ),
              ),
              const SizedBox(height: 16.0),
              Card(
                child: Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Text(
                        'Importância da tarefa',
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                      const SizedBox(height: 8.0),
                      Observer(builder: (_) {
                        return Column(
                          children: [
                            RadioListTile<select>(
                              value: select.urgent,
                              groupValue: store.selected,
                              onChanged: (value) {
                                store.changeselectMethod(value!);
                              },
                              title: const Text('Urgente'),
                            ),
                            RadioListTile<select>(
                              value: select.important,
                              groupValue: store.selected,
                              onChanged: (value) {
                                store.changeselectMethod(value!);
                              },
                              title: const Text('Importante'),
                            ),
                            RadioListTile<select>(
                              value: select.NotImportant,
                              groupValue: store.selected,
                              onChanged: (value) {
                                store.changeselectMethod(value!);
                              },
                              title: const Text('Não importante'),
                            ),
                          ],
                        );
                      }),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: () async {
          if (_formKey.currentState!.validate()) {
            Task newTask = Task(
              title: _titleController.text,
              description: _descriptionController.text,
              importance: store.selected.toString().split('.').last, // Ajuste para converter o enum para String
            );
            await TaskRepository.insert(newTask.toMap());
            Navigator.pushReplacementNamed(context, '/listpage');
          }
        },
        child: const Icon(Icons.save),
      ),
    );
  }
}
