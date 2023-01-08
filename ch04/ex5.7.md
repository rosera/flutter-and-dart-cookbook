# Printing Complex Data Types

## Example

```dart
import 'dart:convert';

void main() {
 // Create JSON value
 Map<String, dynamic> data = {
  jsonEncode('title'): json.encode('Star Wars'),
  jsonEncode('year'): json.encode(1979)
 };

 // Decode the JSON
 Map<String, dynamic> items = json.decode(data.toString());

 print(items);
 print(items['title']);
 print("This is the title: $items['title']");
 print('This is the title: ${items['title']}');
}


```
