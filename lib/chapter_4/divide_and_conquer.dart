class DivideAndConquer {
  //An example to sum list with divide and conquer approach
  //Exercise 4.1
  int sum(List<int> list) {
    if (list.isEmpty) {
      return 0;
    } else if (list.length == 1) {
      return list[0];
    }
    return list.first + sum(list.sublist(1));
  }

  //This is an implementation of use divide and conquer to count list elements number
  //Exercise 4.2
  int count(List<int> list) {
    if (list.toString() == [].toString()) {
      return 0;
    }
    return 1 + count(list.sublist(1));
  }

  // Use also divide and conquer to get list maximum element.
  //Exercise 4.3
  int max(List<int> list) {
    if (list.length == 2) {
      return list[0] > list[1] ? list[0] : list[1];
    }
    int maxCallValue = max(list.sublist(1));
    return list.first > maxCallValue ? list.first : maxCallValue;
  }
}
