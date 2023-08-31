# 2.1 Using an If statement


## Example Code:

The variable isFootball is assigned the value true. 
The if statement checks if the value of isFootball is true. 
If it is, the body of the if statement is executed. 
The body of the if statement prints the message "Go Football!" to the console. 
If the value of isFootball is not true, the body of the if statement is not executed, and the else statement is executed. 
The else statement prints the message "Go Sports!" to the console.

The if statement is a control flow statement that allows you to execute a block of code if a condition is true. 
The else statement allows you to execute a different block of code if the condition is false.

```dart
void main() {
  bool isFootball = true;

  if (isFootball) {
    print('Go Football!');
  } else {
    print('Go Sports!');
  }
}
```

## Example Output:

The result of the print statement is shown below:
```dart
Go Football!
```

