import 'package:hive/hive.dart';

part 'task.g.dart'; 

@HiveType(typeId: 0)
class TaskItem {
  @HiveField(0)
  String text;

  @HiveField(1)
  bool isCompleted;

  TaskItem(this.text, {this.isCompleted = false});
}

@HiveType(typeId: 1)
class Task {
  @HiveField(0)
  String id;

  @HiveField(1)
  List<TaskItem> items;

  @HiveField(2)
  String time;

  @HiveField(3)  
  bool isExpanded;

  Task(this.id, this.items, this.time, {this.isExpanded = false});
}
