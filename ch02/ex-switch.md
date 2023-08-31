# 2.4 Using a Switch statement

# Example Code:

The variable myValue is assigned the value 1. 
The switch statement checks if the value of myValue is equal to 1, 2, or another value that is specified in a case clause. 
If the value of myValue is equal to one of the values that is specified in a case clause, the body of the case clause is executed. 
If the value of myValue is not equal to any of the values that is specified in a case clause, the body of the default clause is executed.

In this case, the value of myValue is equal to 1, so the body of the case clause with the value 1 is executed. 
The body of the case clause prints the message "Monday" to the console.

The break statement is used to terminate the execution of the switch statement. 
If the break statement is not used, the body of the next case clause will also be executed.

The default clause is used to execute a block of code if the value of the expression in the switch statement does not match any of the values that are specified in the case clauses.

```dart
void main() {
  int myValue = 1;

  switch (myValue) {
    case 1: print('Monday');
      break;
    case 2: print('Tuesday');
      break;
    default:
      print('Error: Value not defined?');
      break;
  }
}
```

## Example Output:

The result of the print statement is shown below:
```dart
Monday
```
