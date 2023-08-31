# 1.6 Using a Print statement

## Example Code 1:

The print() function is used to print text to the console. 
In this case, the text that is printed is "Hello World!".

The print() function is a built-in function in Dart. 
It can be used to print any type of data, including strings, numbers, and objects.

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

## Example Code 2:

The variable intVariable is declared as an integer and is assigned the value of 10. 
The print() function will then print the value of intVariable, which is 10.

The variable boolVariable is declared as a variable and is assigned the value of true. 
The print() function will then print the value of boolVariable, which is true.

The second print() statement uses string interpolation to print the value of intVariable. 
String interpolation is a Dart feature that allows you to insert expressions into strings.

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

## Example Code 3:

The code creates a JSON value, decodes it, and then prints the results.
The first line imports the dart:convert library, which contains functions for converting between JSON and Dart objects.
The next few lines create a JSON value. 
The jsonEncode() function is used to encode a Dart object into a JSON string. 
The json.encode() function is a shorthand for jsonEncode().

The Map<String, dynamic> data structure is used to create JSON objects in Dart. 
The keys of a Map are strings, and the values can be of any type.

The data variable is created with two key-value pairs. 
The key title is encoded to the string Star Wars and the key year is encoded to the integer 1979.

The next line decodes the JSON value. 
The jsonDecode() function is used to decode a JSON string into a Dart object. 
The data.toString() function converts the data variable to a string.

The items variable is created with the decoded JSON value.
The next few lines print the results of the decoding. 
The print() function is used to print text to the console.

The first print() statement prints the entire decoded JSON object.
The second print() statement prints the value of the title key.
The third print() statement uses string interpolation to print the value of the title key. 
String interpolation is a Dart feature that allows you to insert expressions into strings.

The fourth print() statement also uses string interpolation to print the value of the title key.

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
