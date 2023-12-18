Node? removeAllOccurrences(Node? head, int target) {
  while (head != null && head.data == target) {
    head = head.next;
  }

  Node? current = head;

  while (current != null && current.next != null) {
    if (current.next!.data == target) {
      current.next = current.next!.next;
    } else {
      current = current.next;
    }
  }

  return head;
}

void main() {
  Node head = Node(1);
  head.next = Node(2);
  head.next!.next = Node(3);
  head.next!.next!.next = Node(2);
  head.next!.next!.next!.next = Node(4);

  int target = 2;

  print('Original List:');
  printListInReverse(head);

  Node? modifiedHead = removeAllOccurrences(head, target);

  print('\nList after removing $target:');
  printListInReverse(modifiedHead);
}
