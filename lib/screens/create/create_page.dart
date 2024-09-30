import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:web2_project/enums/select.dart';
import 'package:web2_project/models/task.dart';
import 'package:web2_project/repository/database_helper.dart';
import 'package:web2_project/store/check_store.dart';

class CreatePage extends StatefulWidget {
  const CreatePage({super.key});

  @override
  _CreatePageState createState() => _CreatePageState();
}

class _CreatePageState extends State<CreatePage> {
  final TextEditingController _titleController = TextEditingController();
  final TextEditingController _questController = TextEditingController();
  final store = CheckStore(); // Store MobX para selecionar a importância
  final _formKey = GlobalKey<FormState>();

  final DatabaseHelper dbHelper = DatabaseHelper(); // Inicializar o DB Helper

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Criar Tarefa'),
      ),
      body: Padding(
        padding: const EdgeInsets.all(8.0),
        child: Form(
          key: _formKey,
          child: ListView(
            children: [
              // Campo de texto para o título
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
                      const SizedBox(height: 4.0),
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
                      const SizedBox(height: 4.0),
                      const Text('Ex: Ir ao Petshop'),
                    ],
                  ),
                ),
              ),

              // Campo de texto para o objetivo/descrição
              Card(
                child: Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      const Text(
                        'Qual o objetivo da tarefa?',
                        style: TextStyle(fontWeight: FontWeight.bold),
                      ),
                      const SizedBox(height: 4.0),
                      TextFormField(
                        controller: _questController,
                        decoration: const InputDecoration(
                          hintText: 'Digite a função dessa tarefa',
                        ),
                        validator: (value) {
                          if (value == null || value.isEmpty) {
                            return 'A descrição da tarefa é obrigatória';
                          }
                          return null;
                        },
                        textInputAction: TextInputAction.next,
                      ),
                      const SizedBox(height: 4.0),
                      const Text('Ex: Comprar ração no Petshop'),
                    ],
                  ),
                ),
              ),

              // Campo de seleção para a importância
              Card(
                child: Padding(
                  padding: const EdgeInsets.all(16.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                        'Qual a importância da sua tarefa?',
                        style: Theme.of(context).textTheme.headlineSmall,
                      ),
                      Observer(builder: (_) {
                        return Column(
                          children: [
                            RadioListTile(
                              value: select.urgent,
                              groupValue: store.selected,
                              onChanged: (value) {
                                store.changeselectMethod(value!);
                              },
                              title: const Text('Urgente'),
                            ),
                            RadioListTile(
                              value: select.important,
                              groupValue: store.selected,
                              onChanged: (value) {
                                store.changeselectMethod(value!);
                              },
                              title: const Text('Importante'),
                            ),
                            RadioListTile(
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
      floatingActionButton: FloatingActionButtonCustom2(
        onPressed: () async {
          if (_formKey.currentState!.validate()) {
            // Criar a nova tarefa
            Task newTask = Task(
              title: _titleController.text,
              objective: _questController.text,
              importance: store.selected.toString(), // Pegando a seleção da importância
            );

            // Inserir a nova tarefa no banco de dados
            await dbHelper.insertTask(newTask);

            // Redirecionar para a tela de listagem
            Navigator.pushReplacementNamed(context, '/listpage');
          }
        },
      ),
    );
  }
}

class FloatingActionButtonCustom2 extends StatelessWidget {
  final VoidCallback onPressed;

  FloatingActionButtonCustom2({required this.onPressed});

  @override
  Widget build(BuildContext context) {
    return FloatingActionButton(
      onPressed: onPressed,
      child: const Icon(Icons.save),
    );
  }
}
