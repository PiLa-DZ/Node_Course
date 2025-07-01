// *** Object and Array Comparison ***
// *** When working with objects and arrays, you'll need to use deep equality checks to compare their contents rather than just their references. ***
// *** For comparing objects and arrays, Node.js provides deep equality functions: ***
// *** assert.deepEqual(actual, expected[, message]) ***
// *** Tests for deep equality between the actual and expected parameters with loose equality (==). ***
// *** assert.deepStrictEqual(actual, expected[, message]) ***
// *** Tests for deep equality between the actual and expected parameters with strict equality (===). ***

const assert = require('assert');

// Objects with the same structure
const obj1 = { a:  1 , b: { c:  2  } };
const obj2 = { a:  1 , b: { c:  2  } };
const obj3 = { a: '1', b: { c: '2' } };

// These will pass
assert.deepEqual(obj1, obj2);
assert.deepStrictEqual(obj1, obj2);

// This will pass (loose equality)
assert.deepEqual(obj1, obj3);

try {
  // This will throw an error (strict equality)
  assert.deepStrictEqual(obj1, obj3, 'Objects are not strictly deep-equal');
} catch (err) {
  console.error(`Error: ${err.message}`);
}

// Arrays
const arr1 = [ 1 ,  2 , [ 3 ,  4 ]];
const arr2 = [ 1 ,  2 , [ 3 ,  4 ]];
const arr3 = ['1', '2', ['3', '4']];

// These will pass
assert.deepEqual(arr1, arr2);
assert.deepStrictEqual(arr1, arr2);

// This will pass (loose equality)
assert.deepEqual(arr1, arr3);

try {
  // This will throw an error (strict equality)
  assert.deepStrictEqual(arr1, arr3, 'Arrays are not strictly deep-equal');
} catch (err) {
  console.error(`Error: ${err.message}`);
}
