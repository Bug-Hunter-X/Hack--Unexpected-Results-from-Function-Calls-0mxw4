```hack
function foo(x: int): int {
  return x + 1;
}

function bar(x: int): int {
  return foo(x) * 2;
}

function baz(x: int): int {
  return bar(x) + 1;
}

function main(): void {
  var x = 10;
  var y = baz(x);
  echo y; // Expected: 21, but might get unexpected result
}
```