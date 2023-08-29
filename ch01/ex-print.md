# 1.6 Using a Print statement

## Example Code 1

```dart
void main() {
 
  print('Hello World!');
}

``` 

## Example Output:

The result of the print statement is shown below:

```dart
Hello World!
```

## Example Code 2

```dart
void main() {

  int intVariable  = 10;
  var boolVariable = true;

  print(intVariable);
  print('$intVariable');
  print('The bool variable is $boolVariable');
}

```


## Example Output:

The result of the print statement is shown below:

```dart
10
10
The bool variable is true
```

## Example Code 3

```dart
import 'dart:convert';

void main() {
  // Create JSON value
  Map<String, dynamic> data = {
    jsonEncode('title'): json.encode('Star Wars'),
    jsonEncode('year'): json.encode(1979)
  };

  // Decode the JSON
  Map<String, dynamic>  items = json.decode(data.toString());

  print(items);
  print(items['title']);
  print("This is the title: $items['title']");
  print('This is the title: ${items['title']}');
}
```


## Example Output:

The result of the print statement is shown below:

```dart
{title: Star Wars, year: 1979}
Star Wars
This is the title: {title: Star Wars, year: 1979}['title']
This is the title: Star Wars
```
