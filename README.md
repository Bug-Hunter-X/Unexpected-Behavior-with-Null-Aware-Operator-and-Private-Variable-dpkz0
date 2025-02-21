# Unexpected Behavior with Null-Aware Operator and Private Variable in Dart

This repository demonstrates a subtle bug in Dart related to the use of the null-aware operator (`??`) in a getter method that accesses a private variable.  The issue arises when the getter returns a copy of the value, and subsequent changes to the private variable do not reflect in the copied value.

## Bug Description
The provided Dart code showcases a scenario where a getter uses the null-aware operator to provide a default value if the private variable is null.  However, if the variable is initially null, is read via the getter, and then modified, the original value read from the getter remains unchanged, leading to unexpected behavior.

## How to Reproduce
Clone this repository and run the `bug.dart` file. Observe that the output does not reflect the changes made to the private variable after the getter has been initially called.

## Solution
The `bugSolution.dart` file offers a corrected approach to avoid this issue. This involves accessing and modifying the underlying private variable directly within the getter or returning a reference or pointer that avoids unnecessary copies.

## License
MIT