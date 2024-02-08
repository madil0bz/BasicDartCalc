import 'dart:io';

void main() {
double result;
stdout.writeln("Please enter the first number: ");
String? num1 = stdin.readLineSync();

 String? operator;
  while (true) {
    stdout.writeln("""Please enter the operation to perform: 
    m = multiply 
    d = divide
    a = add
    s = subtract""");
    operator = stdin.readLineSync();

    if (operator == 'm' || operator == 'd' || operator == 'a' || operator == 's') {
      break; 
    } else {
      stdout.writeln("Invalid operator. Please enter a valid operator.");
    }
  }

stdout.writeln("Please enter the second number: ");
String? num2 = stdin.readLineSync();

if (num1 != null && num2 != null && operator != null) {
    double number1 = double.parse(num1);
    double number2 = double.parse(num2);


if (operator == 'm') {
      result = number1 * number2;
      print ("$number1 x $number2 = $result");
    } else if (operator == 'd') {
      result = number1 / number2;
      print ("$number1 / $number2 = $result");
    } else if (operator == 'a') {
      result = number1 + number2;
      print("$number1 + $number2 = $result");
    } else if (operator == 's') {
      result = number1 - number2;
      print("$number1 - $number2 = $result");
    } 
  }
}