# 1.8 Using Final
 
## Example Code

Use final when the variable value is defined at runtime.

The code first creates a variable called today and assigns it the value of the current date and time. 
Then, it calls the weekday() method on the today variable and passes the result to the print() function. 
The weekday() method returns an integer representing the day of the week, with 0 representing Sunday, 1 representing Monday, and so on.

```dart
void main() {
  final today = DateTime.now();

  print('Today is day ${today.weekday}');
}
```

## Example Output:

The result of the print statement is shown below:

```dart
Today is day 2 
```

Note: As the today variable is determined at runtime, a different value may be shown.
