void reverseList(List<int> inputList) {
  List<int> stack = [];
  for (int element in inputList) {
    stack.add(element);
  }

  while (stack.isNotEmpty) {
    print(stack.removeLast());
  }
}

void main() {
  List<int> myList = [1, 2, 3, 4, 5];
  print('Original List: $myList');
  print('Reversed List:');
  reverseList(myList);
}
