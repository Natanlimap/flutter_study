import 'package:flutter/material.dart';
import 'package:mvc/controllers/task_list_controller.dart';
import 'package:mvc/models/task_model.dart';
import 'package:mvc/views/task_list_view.dart';

void main() {
  runApp(TaskApp());
}

class TaskApp extends StatefulWidget {
  @override
  State<TaskApp> createState() => _TaskAppState();
}

class _TaskAppState extends State<TaskApp> {
  final TaskListController controller = TaskListController();

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Task App',
      home: Scaffold(
        appBar: AppBar(
          title: Text('Task App'),
        ),
        body: TaskListView(
          tasks: controller.tasks,
          onTaskToggle: (TaskModel task) {
            setState(() {
              controller.toggleTask(task);
            });
          },
        ),
      ),
    );
  }
}
