import 'dart:collection';

import 'package:flutter/foundation.dart';
import 'package:todoey/models/task.dart';

class TaskData extends ChangeNotifier {
  List<Task> _tasks = [
    Task(name: 'study '),
    Task(name: 'buy mailk'),
    Task(name: 'go to the doctor ')
  ];

  UnmodifiableListView<Task> get tasks {
    return UnmodifiableListView(_tasks);
  }

  int get taskCount {
    return _tasks.length;
  }

  void addNewTask(String newTask) {
    _tasks.add(Task(name: newTask));
    notifyListeners();
  }

  void updateTask(Task task) {
    task.toggleDone();
    notifyListeners();
  }

  void deletTask(Task task) {
    _tasks.remove(task);
    notifyListeners();
  }
}
