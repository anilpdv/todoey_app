import 'package:flutter/material.dart';

class TaskTile extends StatelessWidget {
  final String title;
  final bool isChecked;
  final Function toggleCheckBox;

  TaskTile({
    @required this.isChecked,
    @required this.title,
    @required this.toggleCheckBox,
  });

  @override
  Widget build(BuildContext context) {
    return ListTile(
      hoverColor: Colors.lightBlueAccent,
      focusColor: Colors.lightBlueAccent,
      trailing: Checkbox(
        activeColor: Colors.lightBlueAccent,
        onChanged: toggleCheckBox,
        value: isChecked,
      ),
      title: Text(
        title,
        style: TextStyle(
            decoration: isChecked ? TextDecoration.lineThrough : null),
      ),
    );
  }
}
