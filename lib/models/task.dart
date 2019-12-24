
class Task {
  final String task;
  final String note;
  bool isDone;


  Task({ this.task, this.note, this.isDone = false});

  void toggleIsDone(){
    isDone = !isDone;
  }
}