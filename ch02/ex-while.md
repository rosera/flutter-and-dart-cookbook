# 2.2 Using While/Do While


## Example Code: While loop

The while loop iterates until the value of the variable isTrue is false. 
The body of the loop prints the message "Hello" to the console.

The while loop is a control flow statement that allows you to execute a block of code repeatedly until a condition is met. 
The while loop has two parts:

* The condition: This is evaluated before each iteration of the loop. If the condition is true, the body of the loop is executed. If the condition is false, the loop terminates.
* The body: This is executed repeatedly until the condition is false.

In this case, the condition checks if the value of isTrue is true. 

If it is, the body of the loop is executed. 
The body of the loop prints the message "Hello" to the console. 
The value of isTrue is then set to false.

The loop will continue to iterate until the value of isTrue is false. 
Once the value of isTrue is false, the loop will terminate.


```dart
void main() {

  bool isTrue = true;

  while (isTrue) {
    print ('Hello');
    isTrue = false;
  }
}

```


## Example Output:

The result of the print statement is shown below:
```dart
Hello
```

## Example Code: Do While loop

The do while loop will always execute the body of the loop at least once, even if the condition is false. 
The body of the loop prints the message "Hello" to the console.

The do while loop is a control flow statement that allows you to execute a block of code repeatedly until a condition is met. 
The do while loop has two parts:

* The body: This is executed repeatedly until the condition is false.
* The condition: This is evaluated after each iteration of the loop. If the condition is true, the body of the loop is executed again. If the condition is false, the loop terminates.

In this case, the body of the loop is executed first. 
The body of the loop prints the message "Hello" to the console. 

The condition is then evaluated. Since the value of isTrue is false, the loop terminates.


```dart
void main() {

  bool isTrue = false;

  do {
    print ('Hello');
  } while (isTrue) ;
}
```


## Example Output:

The result of the print statement is shown below:
```dart
Hello
```
