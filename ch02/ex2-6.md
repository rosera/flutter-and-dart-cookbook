# 2.6 Using a Const

## Example 1 (Compile Time)

```dart
void main() {
  const daysInYear = 365;
  
  print ('There are $daysInYear days in a year');
}

```
 
## Example 2 (Run Time)

```dart
void main() {
  final today = DateTime.now();
  
  print ('Today is day ${today.weekday} ');
}

```
