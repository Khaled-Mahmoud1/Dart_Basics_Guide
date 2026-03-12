import 'dart:io';
import 'dart:math';

void main() {
  while (true) {
    print("=== Welcome to Guessing Game! ===");
    print("Choose difficulty:");
    print("1 - Easy (1-50)");
    print("2 - Medium (1-100)");
    print("3 - Hard (1-500)");

    stdout.write("Enter choice: ");
    int? choice = int.tryParse(stdin.readLineSync() ?? "");

    int maxNumber;
    int maxAttempts;

    if (choice == 1) {
      maxNumber = 50;
      maxAttempts = 10;
    } else if (choice == 2) {
      maxNumber = 100;
      maxAttempts = 7;
    } else if (choice == 3) {
      maxNumber = 500;
      maxAttempts = 5;
    } else {
      print("Invalid choice!");
      continue;
    }

    Random random = Random();
    int secretNumber = random.nextInt(maxNumber) + 1;

    print("I'm thinking of a number between 1 and $maxNumber");
    print("You have $maxAttempts attempts!");

    int attempts = 0;

    while (attempts < maxAttempts) {
      stdout.write("Enter your guess: ");
      String? input = stdin.readLineSync();

      int? guess = int.tryParse(input ?? "");

      if (guess == null) {
        print("Please enter a valid number!");
        continue;
      }

      attempts++;

      int diff = (guess - secretNumber).abs();

      if (guess > secretNumber) {
        print("Too high!");
      } else if (guess < secretNumber) {
        print("Too low!");
      } else {
        print("Correct! You guessed it in $attempts attempts.");
        break;
      }

      if (diff <= 5) {
        print("Very close!");
      } else if (diff <= 15) {
        print("Close!");
      } else {
        print("Far!");
      }

      print("Attempts left: ${maxAttempts - attempts}");
    }

    if (attempts == maxAttempts) {
      print("You lost! The number was $secretNumber");
    }

    stdout.write("Play again? (y/n): ");
    String? answer = stdin.readLineSync();

    if (answer?.toLowerCase() != 'y') {
      print("Thanks for playing!");
      break;
    }
  }
}
