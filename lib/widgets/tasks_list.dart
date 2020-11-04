import 'package:flutter/material.dart';
import 'package:todoey_app/models/Task.dart';
import 'package:todoey_app/widgets/task_tile.dart';

class TaskList extends StatefulWidget {
  final List<Task> tasks;

  const TaskList({Key key, this.tasks}) : super(key: key);

  @override
  _TaskListState createState() => _TaskListState();
}

class _TaskListState extends State<TaskList> {
  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: this.widget.tasks.length,
      itemBuilder: (context, index) {
        return TaskTile(
          title: this.widget.tasks[index].task,
          isChecked: this.widget.tasks[index].isDone,
          toggleCheckBox: (newValue) {
            setState(() {
              this.widget.tasks[index].toggleIsDone();
            });
          },
        );
      },
    );
  }
}
