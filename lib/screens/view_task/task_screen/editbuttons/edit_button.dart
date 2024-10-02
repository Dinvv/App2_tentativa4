import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';
import 'package:web2_project/models/task.dart';

class EditButton extends StatelessWidget {
  final Task task; // Parâmetro task

  EditButton({required this.task}); // Construtor para receber o task

  @override
  Widget build(BuildContext context) {
    return IconButton(
      icon: SvgPicture.asset('assets/ic_icon.svg'),
      onPressed: () {
        // Implementação da lógica para edição da tarefa
        Navigator.pushNamed(context, '/editpage', arguments: task);
      },
    );
  }
}
