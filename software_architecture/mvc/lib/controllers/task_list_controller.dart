import 'package:mvc/models/task_model.dart';

class TaskListController {
  List<TaskModel> tasks = [
    TaskModel(title: 'Task 1'),
    TaskModel(title: 'Task 2'),
    TaskModel(title: 'Task 3'),
  ];

  void toggleTask(TaskModel task) {
    task.completed = !task.completed;
  }
}
