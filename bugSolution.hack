```hack
function foo(x: int): int {
  return x + 1;
}

function bar(x: int): int {
  return foo(x) * 2;
}

function baz(x: int): int {
  // Explicitly use variables to prevent optimization issues
  var temp1 = foo(x);
  var temp2 = bar(x);
  return temp2 + 1;
}

function main(): void {
  var x = 10;
  var y = baz(x);
  echo y; // Expected 21, and should now be consistent
}
```