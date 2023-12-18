Node? reverseLinkedList(Node? head) {
  Node? prev = null;
  Node? current = head;
  Node? nextNode;

  while (current != null) {
    nextNode = current.next;
    current.next = prev;
    prev = current;
    current = nextNode;
  }

  return prev;
}

void main() {
  Node head = Node(1);
  head.next = Node(2);
  head.next!.next = Node(3);
  head.next!.next!.next = Node(4);

  print('Original List:');
  printListInReverse(head);

  Node? reversedHead = reverseLinkedList(head);

  print('\nReversed List:');
  printListInReverse(reversedHead);
}
