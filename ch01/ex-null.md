# 1.9 Working with Null


## Example Code

The variable myVariable is declared as an nullable integer. 
Nullable integers can store either an integer value or the value null.

When myVariable is declared, it is not assigned a value, so it is set to the value null. 
The first print() statement will then print the value of myVariable, which is null.

The second print() statement assigns the value 10 to myVariable. 
The second print() statement will then print the value of myVariable, which is now 10.

```dart
void main(){
  int ?myVariable;
  print ('ten: $myVariable');
  
  myVariable = 10;
  print ('ten: $myVariable');
}
```

## Example Output:

The result of the print statement is shown below:

```dart
ten: null
ten: 10
```

