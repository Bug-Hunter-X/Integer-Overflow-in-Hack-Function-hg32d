```hack
function foo(x: int): int {
  return x + 1;
}

function bar(x: int): int {
  return foo(x) * 2;
}

function baz(x: int): int {
  // Use int64 to prevent overflow
  $x64 = x as int64;
  return ($x64 + 1) * 2 - 1 as int;
}

function main(): void {
  echo baz(5);
  echo baz(INT_MAX);
}
```