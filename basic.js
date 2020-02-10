let a = 1;
// console.log(a);
var b = 2;
// console.log(b);

var thisIsMyVariable = 200;
let x = 1, y = 2;

function calc(x) {
  let y = x * 2
  return y + 3
}

let z = calc(10);
console.log(z);

console.log([1, 2, 3, 4, 5]);

function a1() {}
// function 1a() {}
function $foo() {}
function foo$() {}
function $() {}

function _(a, b, c) {
  return a + b * c;
}

let r = _(1, 2, 3);
console.log(r);

function bar(x) {
  return x * 2;
}

let p = bar(100);
console.log(p);

//有一個叫 concat 的 function
concat(5, 6, 7, 8); //=> "5678"