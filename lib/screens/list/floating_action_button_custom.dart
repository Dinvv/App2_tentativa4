import 'package:flutter/material.dart';
import 'package:flutter_svg/flutter_svg.dart';

class FloatingActionButtonCustom extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return FloatingActionButton(
      onPressed: () {
        Navigator.pushNamed(context, '/createpage');
        // Ação do FAB
      },
      child: SvgPicture.asset('assets/ic_icon.svg'),
    );
  }
}
