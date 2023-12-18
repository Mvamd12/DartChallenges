bool isBalancedParentheses(String input) {
  List<String> stack = [];

  for (int i = 0; i < input.length; i++) {
    if (input[i] == '(') {
      stack.add('(');
    } else if (input[i] == ')') {
      if (stack.isEmpty) {
        return false; // Unbalanced parentheses
      }
      stack.removeLast();
    }
  }

  return stack.isEmpty;
}

void main() {
  String expression = '()(())';
  print('Expression: $expression');
  print('Balanced: ${isBalancedParentheses(expression)}');
}
