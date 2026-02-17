import 'dart:io';
import 'dart:math';

void main() {
  print("=== Welcome to Guessing Game!===");
  print("I'm thinking of a number between 1 and 100");

  Random random = Random();
  int secretNumber = random.nextInt(100) + 1;

  int attempts = 0;

  while (true) {
    stdout.write("Enter your guess: ");
    String? input = stdin.readLineSync();

    int? guess = int.tryParse(input ?? "");

    if (guess == null) {
      print("Please enter a valid number!");
      continue;
    }

    attempts++;

    if (guess > secretNumber) {
      print("Too high!");
    } else if (guess < secretNumber) {
      print("Too low!");
    } else {
      print("Correct! You guessed in $attempts attempts.");
      break;
    }
  }

  print("Game Over - The secret number was: $secretNumber");
}
