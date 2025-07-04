// *** Getting Started with Events in Node.js ***

// Import the events module
const EventEmitter = require('events');

// Create an event emitter instance
const myEmitter = new EventEmitter();

// Register an event listener
myEmitter.on('greet', () => {
  console.log('Hello there!');
});

// Emit the event
myEmitter.emit('greet'); // Outputs: Hello there!
