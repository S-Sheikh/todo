import 'package:flutter/material.dart';
<<<<<<< HEAD

import 'package:todo_list/todo.dart';

typedef ToggleTodoCallback = void Function(Todo, bool);

class TodoList extends StatelessWidget {
  TodoList({@required this.todos, this.onTodoToggle});

  final List<Todo> todos;
  final ToggleTodoCallback onTodoToggle;
=======
import 'todo.dart';

typedef ToggleTodoCallback = void Function(Todo,bool);

class TodoList extends StatelessWidget {
  TodoList({@required this.todos,this.onTodoCallback});

  final List<Todo> todos;
  final ToggleTodoCallback onTodoCallback;
>>>>>>> 1aa079692c342526841de38bb79b497346e0f067

  Widget _buildItem(BuildContext context, int index) {
    final todo = todos[index];

    return CheckboxListTile(
      value: todo.isDone,
      title: Text(todo.title),
      onChanged: (bool isChecked) {
<<<<<<< HEAD
        onTodoToggle(todo, isChecked);
=======
        onTodoCallback(todo, isChecked);
>>>>>>> 1aa079692c342526841de38bb79b497346e0f067
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemBuilder: _buildItem,
      itemCount: todos.length,
    );
  }
}