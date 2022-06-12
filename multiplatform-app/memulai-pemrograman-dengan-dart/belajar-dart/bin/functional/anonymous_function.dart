void main() {
  var sum = (int num1, int num2) {
    return num1 + num2;
  };

  Function printLambda = () {
    print('This is lambda function');
  };

  printLambda();
  print(sum(3, 4));

  var sum = (int num1, int num2) => num1 + num2;
  Function printLambda = () => print('This is lambda function');
}