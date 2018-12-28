<<<<<<< HEAD

import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

import 'package:todo_list/todo_list_screen.dart';

void main() {
  SystemChrome.setEnabledSystemUIOverlays([]);
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
=======
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:todo_list/todo_list_screen.dart';

void main(){
  SystemChrome.setEnabledSystemUIOverlays([]);
  runApp(MyApp());
}
class MyApp extends StatelessWidget{
>>>>>>> 1aa079692c342526841de38bb79b497346e0f067
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Todo List',
      home: TodoListScreen(),
    );
  }
<<<<<<< HEAD
}
=======
}
>>>>>>> 1aa079692c342526841de38bb79b497346e0f067
