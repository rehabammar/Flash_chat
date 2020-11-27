import 'package:flutter/material.dart';

class TasksListTile extends StatelessWidget {
  TasksListTile(
      {this.taskName, this.isChecked, this.checkboxCallback, this.onLongPress});
  final String taskName;
  final bool isChecked;
  final Function checkboxCallback;
  final Function onLongPress;

  @override
  Widget build(BuildContext context) {
    return ListTile(
      title: Text(
        taskName,
        style: TextStyle(
          decoration: isChecked ? TextDecoration.lineThrough : null,
        ),
      ),
      trailing: Checkbox(
        activeColor: Colors.lightBlueAccent,
        value: isChecked,
        onChanged: checkboxCallback,
      ),
      onLongPress: onLongPress,
    );
  }
}

//class TaskCheckBox extends StatelessWidget {
//  TaskCheckBox({this.checkboxState, this.togglecheckboxState});
//  final bool checkboxState;
//  final Function togglecheckboxState;
//  @override
//  Widget build(BuildContext context) {
//    return ;
//  }
//}
