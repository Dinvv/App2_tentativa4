import 'package:flutter/material.dart';
import 'package:web2_project/screens/create/create_page.dart';
import 'package:web2_project/screens/edit/edit_page.dart';
import 'package:web2_project/screens/list/task_list_page.dart';
import 'package:web2_project/screens/list/newscreen/newscreen_page.dart';
import 'package:web2_project/screens/view_task/task_screen/task_screen_page.dart';
import 'package:web2_project/theme.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Task List App',
      debugShowCheckedModeBanner: false,
      theme: MaterialTheme(Theme.of(context).textTheme).light(),
      darkTheme: MaterialTheme(Theme.of(context).textTheme).dark(),
      themeMode: ThemeMode.system,
      home: TaskListPage(), 
      initialRoute: '/listpage',
      routes: {
        '/listpage': (context) => TaskListPage(),
        '/newscreen': (context) => NewscreenPage(),
        '/createpage': (context) => CreatePage(),
        '/editpage': (context) => EditPage(),
        '/viewtask': (context) => TaskScreen(),
      }, // Define 'ListPage' como a tela inicial
    );
  }
}
