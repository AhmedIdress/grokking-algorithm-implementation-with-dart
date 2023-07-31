class SelectionSort<T extends Comparable> {
  List<T> list = [];

  // Method to find the minimum item at the list
  T _findMini() {
    T min = list[0]; //temp variable
    for (int i = 0; i < list.length; i++) {
      if (list[i].compareTo(min) < 0) {
        min = list[i];
      }
    }
    list.remove(min);
    return min;
  }

  // Method to find the maximum item at the list
  T _findMax() {
    T max = list[0]; //temp variable
    for (int i = 0; i < list.length; i++) {
      if (list[i].compareTo(max) > 0) {
        max = list[i];
      }
    }
    list.remove(max);
    return max;
  }

  List<T> sort(
    List<T> list, {
    bool asc = true, // Ordered ASC or DSC
  }) {
    this.list = list;
    int length = list
        .length; // catch length in variable because list length change in runtime
    List<T> newList = [];
    for (int i = 0; i < length; i++) {
      // find the maximum item and add it to the new list
      // or find the minimum item and add it to the new list
      newList.add(asc ? _findMini() : _findMax());
    }
    return newList;
  }
}
