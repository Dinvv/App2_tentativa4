import 'package:flutter/material.dart';
import 'package:web2_project/screens/list/floating_action_button_custom.dart';
import 'package:web2_project/screens/list/task_list.dart';
import 'package:web2_project/screens/list/top_app_bar.dart';

class ListPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: TopAppBar(),
      body: Padding(
        padding: const EdgeInsets.all(16.0),
        child: TaskList(),
      ),
      floatingActionButton: FloatingActionButtonCustom(),
    );
  }
}
