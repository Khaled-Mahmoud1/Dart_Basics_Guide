// ignore_for_file: dead_code

void main() {
  print("===== Dart Null Safety Demo =====\n");

  // ===============================
  // 1- Non-nullable variable
  // ===============================
  int age = 20;
  // age = null;  not allowed

  print("Age: $age");

  // ===============================
  // 2- Nullable variable
  // ===============================
  int? height;
  height = null; // allowed because it's nullable

  print("Height: $height");

  // ===============================
  // 3- Null check
  // ===============================
  if (height != null) {
    print("Height value: ${height + 10}");
  } else {
    print("Height is null");
  }

  // ===============================
  // 4- Null-aware operator ??
  // ===============================
  int finalHeight = height ?? 170;
  print("Final Height: $finalHeight");

  // ===============================
  // 5- Null-aware access operator ?.
  // ===============================
  String? name;
  print("Name length: ${name?.length}");

  // ===============================
  // 6- Force unwrap operator !
  // ===============================
  //String? city = "Cairo";
  // print("City length: ${city!.length}");

  // ===============================
  // 7- Late keyword
  // ===============================
  late String country; // Declared but not initialized
  country = "Egypt";
  print("Country: $country");

  // ===============================
  // 8- Function with nullable parameter
  // ===============================
  greetUser(null);
  greetUser("Khaled");

  //==============================
  // 9- Null safety with collections
  //==============================
  List<String?> names = ["Khaled", null, "Mohamed"];
  for (var n in names) {
    print("Name: ${n ?? "Unknown"}");
  }
}

// ===============================
// Function example
// ===============================
void greetUser(String? name) {
  String userName = name ?? "Guest";
  print("Hello, $userName!");
}
