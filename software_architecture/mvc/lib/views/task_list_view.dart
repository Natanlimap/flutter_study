import 'package:flutter/material.dart';
import 'package:mvc/models/task_model.dart';

class TaskListView extends StatelessWidget {
  final List<TaskModel> tasks;
  final Function(TaskModel) onTaskToggle;

  TaskListView({required this.tasks, required this.onTaskToggle});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: tasks.length,
      itemBuilder: (context, index) {
        TaskModel task = tasks[index];
        return ListTile(
          title: Text(task.title),
          leading: Checkbox(
            value: task.completed,
            onChanged: (value) {
              onTaskToggle(task);
            },
          ),
        );
      },
    );
  }
}
