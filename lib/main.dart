import 'package:flutter/material.dart';
import 'package:todoey/models/task.dart';
import 'screens/tasks_screen.dart';
import 'package:provider/provider.dart';
import 'models/task_data.dart';
import 'package:flutter/foundation.dart';

void main() {
  runApp(Todoey());
}

class Todoey extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return ChangeNotifierProvider(
      create: (context) => TaskData(),
      child: MaterialApp(
        home: TasksScreen(),
      ),
    );
  }
}
