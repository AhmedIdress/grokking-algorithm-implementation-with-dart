class BinarySearch<T extends Comparable> {
  int search(List<T> list, T item) {
    int low = 0; // pointer equal list first index
    int high = list.length - 1; // pointer equal list last index
    // loop on list to get item
    while (high >= low) {
      // loop run if the low pointer is lower than the high pointer
      int mid =
          ((low + high) / 2).floor().toInt(); // checkable pointer rounded down
      if (list[mid] == item) {
        // the goal
        return mid;
      } else if (list[mid].compareTo(item) > 0) {
        // select the last sub lest
        high = mid - 1;
      } else {
        // select the first sub lest
        low = mid + 1;
      }
    }
    return -1; // the item not found
  }
}
