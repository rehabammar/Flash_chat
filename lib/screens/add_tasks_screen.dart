import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:todoey/models/task_data.dart';
import 'package:todoey/screens/tasks_screen.dart';
import 'package:provider/provider.dart';
import 'package:todoey/models/task_data.dart';

class AddTaskScreen extends StatelessWidget {
  String newTask;
  @override
  Widget build(BuildContext context) {
    return Container(
      color: Color(0xff757575),
      child: Container(
        padding: EdgeInsets.all(30.0),
        decoration: BoxDecoration(
            color: Colors.white,
            borderRadius: BorderRadius.only(
                topRight: Radius.circular(20.0),
                topLeft: Radius.circular(20.0))),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            Text(
              'Add Task',
              textAlign: TextAlign.center,
              style: TextStyle(
                fontSize: 30,
                color: Colors.lightBlueAccent,
              ),
            ),
            TextField(
              autofocus: true,
              textAlign: TextAlign.center,
              onChanged: (value) {
                newTask = value;
              },
            ),
            SizedBox(
              height: 20,
            ),
            FlatButton(
                color: Colors.lightBlueAccent,
                onPressed: () {
                  // addtasksCallback(newTask);
                  Provider.of<TaskData>(context, listen: false)
                      .addNewTask(newTask);
                  Navigator.pop(context);
                },
                child: Text(
                  'Add',
                  style: TextStyle(color: Colors.white),
                )),
          ],
        ),
      ),
    );
  }
}
