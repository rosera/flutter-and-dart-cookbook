# 2.3 Using a For statement

# Example Code: For loop

The for loop iterates over the numbers from 0 to maxIterations (10), and prints the current number to the console on each iteration.

The for loop is a control flow statement that allows you to execute a block of code repeatedly. 

The for loop has three parts:

* The initializer: This is executed once, before the loop starts.
* The condition: This is evaluated before each iteration of the loop. If the condition is true, the body of the loop is executed. If the condition is false, the loop terminates.
* The increment: This is executed after each iteration of the loop. It is used to update the value of the loop variable.

In this case, the initializer assigns the value 0 to the loop variable i. 
The condition checks if i is less than maxIterations. 
If it is, the body of the loop is executed. 
The increment increments the value of i by 1.

The body of the loop prints the value of i to the console.

```dart
void main() {
  int maxIterations = 10;
  for (var i = 0; i < maxIterations; i++) {
    print ('Iteration: $i');
  }
}
```


## Example Output:

The result of the print statement is shown below:
```dart
Iteration: 0
Iteration: 1
Iteration: 2
Iteration: 3
Iteration: 4
Iteration: 5
Iteration: 6
Iteration: 7
Iteration: 8
Iteration: 9
```

# Example Code: For Each loop

The forEach method iterates over the elements of the daysOfWeek list and calls the print() function on each element.

The forEach method is a method that is defined on iterable objects in Dart. 
It takes a function as an argument, and calls that function on each element of the iterable object.

In this case, the forEach method is called on the daysOfWeek list. 
The function that is passed to the forEach method is the anonymous function print. 
An anonymous function is then used to call the print function which will output the value of the current element to the console.

```dart
void main() {
  List daysOfWeek = ['Sunday', 'Monday', 'Tuesday'];

  daysOfWeek.forEach((print));
}
``` 

## Example Output:

The result of the print statement is shown below:
```dart
Sunday
Monday
Tuesday
```

