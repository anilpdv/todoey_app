class Task {
  final String task;
  bool isDone;

  Task({this.task, this.isDone = false});

  void toggleIsDone() {
    isDone = !isDone;
  }
}
