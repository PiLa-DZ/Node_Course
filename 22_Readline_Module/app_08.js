// *** Basic Readline Methods ***
// *** The Readline module provides several methods for interacting with the user. Here are the most commonly used ones: ***
// *** 5. rl.pause() and rl.resume() ***
// *** These methods allow you to temporarily pause and resume the input stream, which can be useful for controlling the flow of user input. ***
// *** Pause/Resume Example ***

const readline = require('readline');

const rl = readline.createInterface({
  input: process.stdin,
  output: process.stdout
});

let isPaused = false;

console.log('Type "pause" to pause input, "resume" to continue, or "exit" to quit');

rl.on('line', (input) => {
  const command = input.trim().toLowerCase();

  switch (command) {
    case 'pause':
      if (!isPaused) {
        console.log('Input paused. Type "resume" to continue...');
        rl.pause();
        isPaused = true;
      }
      break;

    case 'resume':
      if (isPaused) {
        console.log('Resuming input...');
        rl.resume();
        rl.prompt();
        isPaused = false;
      }
      break;

    case 'exit':
      console.log('Goodbye!');
      rl.close();
      return;

    default:
      if (!isPaused) {
        console.log(`You entered: ${input}`);
        rl.prompt();
      }
  }
});

rl.prompt();

