# 2.5 Using a Print statement

## Example 1

```dart
void main() {
 
  print('Hello World!');
}
``` 
## Example 2

```dart
void main() {

  int intVariable  = 10;
  var boolVariable = true;

  print(intVariable);
  print('$intVariable');
  print('The bool variable is $boolVariable');
}

```

## Example 3

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

