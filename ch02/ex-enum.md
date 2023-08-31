# 2.5 Using an Enum

## Example Code: Enum 

The values property of an enum returns an array of all the values of the enum. 
In this case, the enum Day has three values: sun, mon, and tues.
The enum keyword is used to create an enumerated type in Dart. 
Enumerated types are a way of creating a set of named constants.

A breakdown of the code:

* The first line declares an enum called Day with three values: sun, mon, and tues.
* The second line prints the value of the values property of the Day enum to the console.


```dart
enum Day { sun, mon, tues }

void main() {
  print('$Day.values');
}

```

## Example Output:

The result of the print statement is shown below:
```dart
[sun, mon, tues]
```


## Example Code: Index zero

The values property of an enum returns an array of all the values of the enum, starting from index 0. 
In this case, the enum Day has three values: sun, mon, and tues. 
The index 0 refers to the first value, which is sun.

A breakdown of the code:

* The first line declares an enum called Day with three values: sun, mon, and tues.
* The second line prints the value of the values property of the Day enum at index 0 to the console.

```dart
enum Day { sun, mon, tues }

void main() {
  print('${Day.values[0]}');
}

```


## Example Output:

The result of the print statement is shown below:
```dart
sun
```


## Example Code: Values.byName 

The byName() method of the EnumByName extension on enums returns the enum value with the specified name. In this case, the name mon refers to the enum value Day.mon.

The EnumByName extension is a built-in extension in Dart that allows you to access enum values by name.

A breakdown of the code:

* The first line declares an enum called Day with three values: sun, mon, and tues.
* The second line prints the value of the byName() method of the values.byName on the Day enum with the name mon to the console.

```dart
enum Day { sun, mon, tues }

void main() {
  print(Day.values.byName('mon'));
}
```

## Example Output:

The result of the print statement is shown below:
```dart
mon
```
