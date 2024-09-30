import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:web2_project/enums/select.dart';
import 'package:web2_project/store/check_store.dart';

class EditPage extends StatefulWidget {
  const EditPage({super.key});

  @override
  _EditPageState createState() => _EditPageState();
}

class _EditPageState extends State<EditPage> {
  final TextEditingController _titleController = TextEditingController();
  final TextEditingController _questController = TextEditingController();
  final store = CheckStore();
  final _formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('EditPage'),
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
                      const SizedBox(height: 4.0),
                      TextFormField(
                        controller: _titleController,
                        decoration: const InputDecoration(
                          hintText: 'Renomeie o Titulo da tarefa!',
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
                      const Text('Ex: ir a Petshop'),
                    ],
                  ),
                ),
              ),
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
                      TextField(
                        controller: _questController,
                        decoration: const InputDecoration(
                          hintText: 'Altere a função desta tarefa',
                        ),
                        style: const TextStyle(fontSize: 16),
                      ),
                      const SizedBox(height: 4.0),
                      const Text('Ex: Comprar ração no Petshop'),
                      const SizedBox(height: 16),
                      Text(
                        'Gostaria de alterar a importância da sua tarefa?',
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
        onPressed: () {
          if (_formKey.currentState!.validate()) {
            // O formulário é válido, prossiga
            Navigator.pushReplacementNamed(context, '/listpage');
          } else {
            // Tratar o caso de erro
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
      child: SvgPicture.asset('assets/ic_done.svg'),
    );
  }
}
