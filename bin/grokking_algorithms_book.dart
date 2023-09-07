import 'dart:math';

import 'package:grokking_algorithms_book/chapter_4/quick_sort.dart';

void main(List<String> arguments) {
  List<int> randomList = List.generate(10, (index) => Random().nextInt(10));
  print(randomList);
  /*DivideAndConquer d = DivideAndConquer();
  print(d.max(randomList));
  print(d.sum(randomList));
  print(d.count(randomList));*/
  QuickSort quickSort = QuickSort<int>();
  print(
    quickSort.sort(randomList),
  );
}
