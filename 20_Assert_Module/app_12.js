// *** Other Assertion Methods ***
// *** assert.match(string, regexp[, message]) ***
// *** Expects the string input to match the regular expression. ***

const assert = require('assert');

// This will pass
assert.match('I love Node.js', /Node\.js/);

try {
  // This will throw an AssertionError
  assert.match('Hello World', /Node\.js/, 'String does not match the pattern');
} catch (err) {
  console.error(`Error: ${err.message}`);
}
