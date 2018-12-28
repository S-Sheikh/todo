import 'package:flutter/material.dart';
import 'todo.dart';
import 'new_todo_dialog.dart';
import 'todo_list.dart';

class TodoListScreen extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {

    return _TodoListScreenState();
  }
}

//This will create the state
//This is the class you can mess with , the other is stays as is
class _TodoListScreenState extends State<TodoListScreen>{
     List<Todo> todos =[];

  
  _toggleTodo(Todo todo, bool isChecked) {
    setState(() {
      todo.isDone = isChecked;
    });
  }

  TextEditingController controller = new TextEditingController();

  
   
  _addTodo() async{
    final todo = await showDialog<Todo>(context: context,
    builder: (BuildContext context){
      return NewTodoDialog();
    });
  }

  @override
  Widget build(BuildContext context) {
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

