# 2.6 Handling Exceptions

# Example 

```dart
void main(){
  String name = "Dart";

  try{
    print ('Name: $name');
    // The following line generates a RangeError
    name.indexOf(name[0], name.length - (name.length+2));
  } on RangeError catch (exception) {
    print ('On Exception: $exception');
  } 
    catch (exception) {
      print ('Catch Exception: $exception');
  } finally {
    print ('Mission completed!');
  }
}

```
