import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'package:todoey/Widgets/tasks_tile.dart';
import 'package:todoey/models/task.dart';
import 'package:todoey/models/task_data.dart';

class TasksList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Consumer<TaskData>(
      builder: (context, taskData, child) {
        return ListView.builder(
          itemBuilder: (context, index) {
            final task = taskData.tasks[index];
            return TasksListTile(
              taskName: task.name,
              isChecked: task.isDone,
              checkboxCallback: (newValue) {
                taskData.updateTask(task);
              },
              onLongPress: () {
                taskData.deletTask(task);
              },
            );
          },
          itemCount: taskData.taskCount,
        );
      },
    );
  }
}
