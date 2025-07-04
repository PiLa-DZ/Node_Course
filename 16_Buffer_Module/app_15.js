// *** Advanced Buffer Operations ***
// *** Searching in Buffers ***
// *** Buffers provide methods to search for values or sequences: ***

const buf = Buffer.from('Hello, Node.js is awesome!');

// Find the first occurrence of a value
console.log(buf.indexOf('Node')); // 7

// Check if buffer contains a value
console.log(buf.includes('awesome')); // true

// Find the last occurrence of a value
console.log(buf.lastIndexOf('e')); // 24
