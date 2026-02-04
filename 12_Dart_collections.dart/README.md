# Dart Collections: List, Map, Set 

In Dart, collections are used to store and manage groups of values.
The most common collections are:
- List
- Map
- Set

This guide explains each one with simple examples.

---

##  List

### What is a List?

A `List` is an **ordered collection** that allows **duplicate values**.

---

### Example:

```dart
void main() {
  List<int> numbers = [1, 2, 3, 3];

  numbers.add(4);
  numbers.remove(2);

  print(numbers); // [1, 3, 3, 4]

}

```
---

### Key points:

- Keeps order

- Allows duplicates

- Access elements by index

```dart
print(numbers[0]); // first element
```

---

##  Map

## What is a Map?

A Map stores data as key-value pairs.
Each key must be unique.

---

### Example:

```dart
void main() {
  Map<String, int> scores = {
    "Math": 90,
    "English": 85
  };

  scores["Science"] = 95;

  print(scores["Math"]); // 90
  print(scores);
}
```
---

### Key points:

- Keys are unique

- Values can be duplicated

- Access values using keys

---

##  Set

### What is a Set?

A Set is an unordered collection that does not allow duplicate values.

---

### Example:

```dart
void main() {
  Set<int> numbers = {1, 2, 3, 3};

  numbers.add(4);
  numbers.add(2);

  print(numbers); // {1, 2, 3, 4}
}
```
---

### Key points:

- No duplicates allowed

- Order is not guaranteed

- Useful when uniqueness matters

---

## When to use what?

### Use List when:

- Order matters

- You need indexing

### Use Map when:

- You want to relate keys to values

- You need fast lookup by key

### Use Set when:

- You need unique values only

- Order does not matter

---

### Khaled Mahmoud