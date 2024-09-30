import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class FloatingActionButtonCustom2 extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return FloatingActionButton(
      onPressed: () {
        Navigator.pushReplacementNamed(context, '/listpage');
        // Ação do FAB
      },
      child: SvgPicture.asset('assets/ic_done.svg'),
    );
  }
}
