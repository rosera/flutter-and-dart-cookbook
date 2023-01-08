# 2.5 Using an Enum

# Example: Enum 

```dart
enum Day { sun, mon, tues }

void main() {
  print('$Day.values');
}

```


# Example: Index zero

```dart
enum Day { sun, mon, tues }

void main() {
  print('${Day.values[0]}');
}

```


# Example: Values.byName 

```dart

enum Day { sun, mon, tues }

void main() {
  print(Day.values.byName('mon'));
}
```