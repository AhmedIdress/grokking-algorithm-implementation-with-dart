class Recursion {
  // factorial as an example of recursion
  int factorial(int number) {
    if (number <= 0) {
      return 1; // base case
    }
    return number * factorial(number - 1); // recursive case
  }

  // fibonacci Sequence as an example of recursion
  int fibonacciSequence(int number) {
    if (number <= 0) {
      return 1; // base case 1
    } else if (number == 1) {
      return 1; // base case 2
    }
    return fibonacciSequence(number - 2) +
        fibonacciSequence(number - 1); //recursive case
  }
}
