# 1.7 Using a Const

## Example Code 1 (Compile Time)

A compile time value is known when the application code is generated.

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


## Example Code 2 (Run Time)

A run time value is known when the application is run.
In the example, the variable today.weekday will show the day of of the week. 
The value displayed is dependent on which weekday the application is run.

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
