

import 'package:projet_1/models/task.dart';

class TaskData {
  List<Task> _items = [
    Task(task: 'Buy Chocolate', note: 'in black beans'),
    Task(task: 'Buy Car', note: 'in black beans'),
    Task(task: 'Buy Milk', note: 'in black beans'),
    Task(task: 'Buy Phone', note: 'in black beans'),
  ];


  List<Task> get items {
    return _items;
  }

  void addTask(Task task){
    _items.add(Task(task: task.task, note: task.note));
  }
}