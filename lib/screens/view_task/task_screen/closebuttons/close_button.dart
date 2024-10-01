import 'package:flutter/material.dart';

class CloseButtonWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: () {
        // Ação do botão "Close"
        Navigator.pop(context); // Fecha a tela atual
      },
      child: Text(
        'close',
        style: TextStyle(
          fontSize: 16, // Tamanho da fonte
        ),
      ),
      style: ElevatedButton.styleFrom(
        padding: EdgeInsets.symmetric(horizontal: 24, vertical: 12), // Tamanho do botão
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(20), // Bordas arredondadas
        ),
      ),
    );
  }
}