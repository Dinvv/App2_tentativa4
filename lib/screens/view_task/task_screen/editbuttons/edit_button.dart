import 'package:flutter/material.dart';

class EditButton extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return OutlinedButton(
      onPressed: () {
        Navigator.pushReplacementNamed(
          context,
          '/editpage'
        );
        // Ação do botão "Edit"
        // Pode abrir uma tela de edição ou algo do tipo
      },
      child: Text(
        'edit',
        style: TextStyle(
          fontSize: 16, // Tamanho da fonte
        ),
      ),
      style: OutlinedButton.styleFrom(
        padding: EdgeInsets.symmetric(horizontal: 24, vertical: 12), // Tamanho do botão
        shape: RoundedRectangleBorder(
          borderRadius: BorderRadius.circular(20), // Bordas arredondadas
        ),
        side: BorderSide(
          width: 2, // Largura da borda
        ),
      ),
    );
  }
}