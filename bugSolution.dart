```dart
class MyClass {
  int? _value;

  MyClass(this._value);

  int get value => _value ??= 0; // Use ??= to assign default value only once

  void setValue(int newValue) {
    _value = newValue;
  }
}

void main() {
  var obj = MyClass(null);
  print(obj.value); // Prints 0
  obj.setValue(10);
  print(obj.value); // Prints 10

  var obj2 = MyClass(null);
  int value = obj2.value; // Read value (0)
  obj2.setValue(20);    // Modify _value
  print(value);         // Prints 20 (Corrected)
}
```