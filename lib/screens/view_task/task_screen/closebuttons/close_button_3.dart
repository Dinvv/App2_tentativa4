import 'package:flutter/material.dart';

class CloseButtonWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: () {
        // Ação do botão Fechar
      },
      child: Text('close'),
    );
  }
}