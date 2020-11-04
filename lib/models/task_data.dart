import 'package:flutter/material.dart';
import 'package:todoey_app/models/Task.dart';

class TaskData extends ChangeNotifier {
  List<Task> tasks = [
    Task(task: 'This is todo1', isDone: false),
    Task(task: 'This is todo1', isDone: false),
    Task(task: 'This is todo1', isDone: false),
    Task(task: 'This is todo1', isDone: false),
  ];

  addTask(String task) {
    tasks.add(Task(task: task, isDone: false));
    notifyListeners();
  }
}
