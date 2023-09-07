class QuickSort<T extends Comparable> {
  List<T> sort(List<T> list) {
    //base case
    if (list.isEmpty) {
      return [];
    } else if (list.length == 1) {
      return list;
    }
    // recursive case
    // take a standard item and divide list into less than item and greater than item
    // and return conquer them
    T pivot = list[0];
    List<T> lessThan = [];
    List<T> greaterThan = [];
    for (T item in list.sublist(1)) {
      if (item.compareTo(pivot) == 1) {
        greaterThan.add(item);
      } else {
        lessThan.add(item);
      }
    }
    return sort(lessThan) + [pivot] + sort(greaterThan);
  }
}
