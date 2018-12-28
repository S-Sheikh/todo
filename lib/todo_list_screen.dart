import 'package:flutter/material.dart';
<<<<<<< HEAD
import 'package:todo_list/todo.dart';

import 'package:todo_list/new_todo_dialog.dart';
import 'package:todo_list/todo_list.dart';

class TodoListScreen extends StatefulWidget {
  @override
  _TodoListScreenState createState() => _TodoListScreenState();
}

class _TodoListScreenState extends State<TodoListScreen> {
  List<Todo> todos = [];

=======
import 'todo.dart';
import 'new_todo_dialog.dart';
import 'todo_list.dart';

class TodoListScreen extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
    // TODO: implement createState
    return _TodoListScreenState();
  }
}

//This will create the state
//This is the class you can mess with , the other is stays as is
class _TodoListScreenState extends State<TodoListScreen>{
     List<Todo> todos =[];

  
>>>>>>> 1aa079692c342526841de38bb79b497346e0f067
  _toggleTodo(Todo todo, bool isChecked) {
    setState(() {
      todo.isDone = isChecked;
    });
  }

<<<<<<< HEAD
  _addTodo() async {
    final todo = await showDialog<Todo>(
      context: context,
      builder: (BuildContext context) {
        return NewTodoDialog();
      },
    );

    if (todo != null) {
      setState(() {
        todos.add(todo);
      });
    }
=======
  TextEditingController controller = new TextEditingController();

  
   
  _addTodo() async{
    final todo = await showDialog<Todo>(context: context,
    builder: (BuildContext context){
      return NewTodoDialog();
    });
>>>>>>> 1aa079692c342526841de38bb79b497346e0f067
  }

  @override
  Widget build(BuildContext context) {
<<<<<<< HEAD
    return Scaffold(
      appBar: AppBar(title: Text('Todo List')),
      body: TodoList(
        todos: todos,
        onTodoToggle: _toggleTodo,
      ),
      floatingActionButton: FloatingActionButton(
        child: Icon(Icons.add),
        onPressed: _addTodo,
      ),
    );
  }
}
=======
    return  Scaffold(
    appBar: AppBar(title: Text('TodoList')),
    body: TodoList(
      todos: todos,
      onTodoCallback: _toggleTodo,
    ),
    floatingActionButton: FloatingActionButton(
          child: Icon(Icons.add),
          onPressed: (_addTodo()),
        ),
      );
    }
}

>>>>>>> 1aa079692c342526841de38bb79b497346e0f067
