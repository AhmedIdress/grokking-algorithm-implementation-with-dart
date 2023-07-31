import 'dart:math';

import 'package:grokking_algorithms_book/chapter_2/selection_sort.dart';

void main(List<String> arguments) {
  //Selection sort test
  /*List<String> unOrderedList = [
    'c',
    'd',
    "a",
    'b',
    'g',
    'h',
    'e',
    'f',
  ];*/
  // Generate random list
  List<int> unOrderedList =
      List.generate(100, (index) => Random().nextInt(1000));
  print('sorted list is '
      '${SelectionSort<int>().sort(
    unOrderedList,
  )}');
}
