import 'package:flutter/material.dart';

class ReturnButton extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return OutlinedButton(
      onPressed: () {
        // Ação do botão "Return"
        Navigator.pop(context); // Retorna para a tela anterior
      },
      child: Text(
        'return',
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