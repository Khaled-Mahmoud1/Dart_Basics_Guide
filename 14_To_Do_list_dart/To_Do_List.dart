import 'dart:io';

void menu() {
  print("===== To-Do List =====");
  print("1. Add task");
  print("2. View tasks");
  print("3. Edit task");
  print("4. Delete task");
  print("5. Exit");
}

void addTask(List<String> tasks) {
  stdout.write("Add a new task: ");
  String? task = stdin.readLineSync();

  if (task != null && task.trim().isNotEmpty) {
    tasks.add(task);
    print("Task added successfully\n");
  } else {
    print("Task cannot be empty\n");
  }
}

void viewTasks(List<String> tasks) {
  if (tasks.isEmpty) {
    print("No tasks found!\n");
  } else {
    print("\nTasks:");
    for (int i = 0; i < tasks.length; i++) {
      print("${i + 1}. ${tasks[i]}");
    }
    print("");
  }
}

void editTask(List<String> tasks) {
  if (tasks.isEmpty) {
    print("No tasks to edit!\n");
    return;
  }

  viewTasks(tasks);

  stdout.write("Enter task number to edit: ");
  int? num = int.tryParse(stdin.readLineSync() ?? "");

  if (num != null && num >= 1 && num <= tasks.length) {
    stdout.write("Enter the new task: ");
    String? newTask = stdin.readLineSync();

    if (newTask != null && newTask.trim().isNotEmpty) {
      tasks[num - 1] = newTask;
      print("Task updated successfully\n");
    }
  } else {
    print("Invalid task number\n");
  }
}

void deleteTask(List<String> tasks) {
  if (tasks.isEmpty) {
    print("No tasks to delete!\n");
    return;
  }

  viewTasks(tasks);

  stdout.write("Enter task number to delete: ");
  int? num = int.tryParse(stdin.readLineSync() ?? "");

  if (num != null && num >= 1 && num <= tasks.length) {
    String deleted = tasks.removeAt(num - 1);
    print("Task deleted: $deleted\n");
  } else {
    print("Invalid task number\n");
  }
}

void main() {
  List<String> tasks = [];

  while (true) {
    menu();

    stdout.write("Enter your choice (1 to 5): ");
    String? choice = stdin.readLineSync();

    switch (choice) {
      case "1":
        addTask(tasks);
        break;

      case "2":
        viewTasks(tasks);
        break;

      case "3":
        editTask(tasks);
        break;

      case "4":
        deleteTask(tasks);
        break;

      case "5":
        print("Good-bye...");
        return;

      default:
        print("Invalid choice, try again\n");
    }
  }
}
