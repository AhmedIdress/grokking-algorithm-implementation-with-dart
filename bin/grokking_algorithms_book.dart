import 'package:grokking_algorithms_book/chapter_3/recursion.dart';

void main(List<String> arguments) {
  Recursion recursion = Recursion();
  //factorial example
  print('factorial');
  print(recursion.factorial(5));
  print(recursion.factorial(10));

  // fibonacci sequence example
  print('fibonacci');
  print(recursion.fibonacciSequence(0));
  print(recursion.fibonacciSequence(1));
  print(recursion.fibonacciSequence(2));
  print(recursion.fibonacciSequence(3));
  print(recursion.fibonacciSequence(4));
}
