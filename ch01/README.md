# Chapter 1 Dart Essentials

- [x] How to install the Dart SDK

Follow the instructions at: [https://dart.dev/get-dart](dart.dev/get-dart)

- [x] How to run a Dart application

Command line: 
```
dart main.dart
```

- [x] How to declare variables
```
// Example: variable definitions
int    demoIntegerValue = 35;
double demoDoubleValue  = 2.99;
bool   demoBoolValue    = true;
String demoStringValue  = 'I am a string';
```

- [x] How to use the print statement
```
void main() {

  int intVariable  = 10;
  var boolVariable = true;
  
  print('$intVariable');
  print('The bool variable is $boolVariable');
}
```

- [x] How to use the If statement
```
void main() {

  bool isFootball = true;

  if (isFootball) {
    print('Go Football!');
  } else {
    print('Go Sports!');
  }
}
```

- [x] How to use while/do while

Control Flow: while loop
```
void main() {

  bool isTrue = true;
  
  while (isTrue) {
    print ('Hello');
    isTrue = false;
  }
}
```

Control Flow: do while loop
```
void main() {

  bool isTrue = true;
  
  do {
    print ('Hello');
    isTrue = false;
  } while (isTrue) ;
}
```

- [x] How to use a For statement
```
void main() {

  int maxIterations = 10;
  for (var i = 0; i < maxIterations; i++) {
    print ('Iteration: $i');
  }
}
```

- [x] How to use a Switch statement

```
void main() {
  int myValue = 1;
  
  switch (myValue) {
    case 1: print('Hello');
      break;
    case 2: print('Goodbye');
      break;
    default:
      print('Hmm did something do wrong?');
      break;
  }
}
```

- [x] How to use an Enum

```
enum day { sun, mon, tues }

void main() {
  print('$day.values');
  print('${day.values[0]}');
}
```

- [x] How to use a Const

```
void main() {
  const daysInYear = 365;
  
  print ('There are $daysInYear days in a year');
}
```

- [x] How to use a Final 

```
void main() {
  final today = DateTime.now();

  print('Today is day ${today.weekday}');
}
```
