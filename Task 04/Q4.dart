import 'dart:math';

class Box<T> {
  List<T> _items = [];

  // Method to add an item to the box
  void add(T item) {
    _items.add(item);
  }

  // Method to check if the box is empty
  bool isEmpty() {
    return _items.isEmpty;
  }

  // Method to draw a random item from the box
  T? drawItem() {
    if (isEmpty()) {
      return null;
    }
    Random random = Random();
    int index = random.nextInt(_items.length);
    return _items.removeAt(index);
  }
}

void main() {
  // Create a box for Strings
  Box<String> stringBox = Box<String>();
  stringBox.add('Alice');
  stringBox.add('Bob');
  stringBox.add('Charlie');

  // Create a box for Integers
  Box<int> intBox = Box<int>();
  intBox.add(1);
  intBox.add(2);
  intBox.add(3);

  // Draw items from the string box
  print('Drawing from string box:');
  while (!stringBox.isEmpty()) {
    print(stringBox.drawItem());
  }
  print('Attempt to draw from empty string box: ${stringBox.drawItem()}');

  // Draw items from the integer box
  print('\nDrawing from integer box:');
  while (!intBox.isEmpty()) {
    print(intBox.drawItem());
  }
  print('Attempt to draw from empty integer box: ${intBox.drawItem()}');
}
