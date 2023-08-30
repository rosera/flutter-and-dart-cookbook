# 1.7 Using a Const

## Example Code 1 (Compile Time):

A compile time value is known when the application code is generated.

* The first line declares a variable called daysInYear and assigns it the type const.
* The second line assigns the value 365 to the variable daysInYear.
* The third line calls the print() function and passes the value of daysInYear as an argument.
* The print() function will then print the value of daysInYear to the console.

```dart
void main() {
  const daysInYear = 365;
  
  print ('There are $daysInYear days in a year');
}

```

## Example Output:

The result of the print statement is shown below:

```dart
There are 365 days in a year
```


## Example Code 2 (Run Time):

A run time value is known when the application is run.

* The first line declares a variable called today and assigns it the value of the current date and time.
* The second line calls the weekday() method on the today variable and passes the result to the print() function.
* The weekday() method returns an integer representing the day of the week, with 1 representing Monday, 2 representing Tuesday, and so on.
* The print() function will then print the value of the weekday() method to the console.

```dart
void main() {
  final today = DateTime.now();
  
  print ('Today is day ${today.weekday} ');
}

```

## Example Output:

The result of the print statement is shown below:

```dart
Today is day XXX
```
