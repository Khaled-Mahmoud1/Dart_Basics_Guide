List<int> fibonacci(int n) {
  List<int> seq = [];

  if (n >= 1) seq.add(0);
  if (n >= 2) seq.add(1);

  for (int i = 2; i < n; i++) {
    seq.add(seq[i - 1] + seq[i - 2]);
  }

  return seq;
}

void main() {
  print(fibonacci(10));
}

// Output: [0, 1, 1, 2, 3, 5, 8, 13, 21, 34]
