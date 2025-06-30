// *** Basic Usage Example ***

const os = require('os');

// Basic system information
console.log(`OS Platform:      ${os.platform()}`);
console.log(`OS Type:          ${os.type()}`);
console.log(`OS Release:       ${os.release()}`);
console.log(`CPU Architecture: ${os.arch()}`);
console.log(`Hostname:         ${os.hostname()}`);

// Memory information
const totalMemGB = (os.totalmem() / (1024 * 1024 * 1024)).toFixed(2);
const freeMemGB = (os.freemem() / (1024 * 1024 * 1024)).toFixed(2);
console.log(`Memory:           ${freeMemGB}GB free of ${totalMemGB}GB`);

// User information
const userInfo = os.userInfo();
console.log(`Current User:     ${userInfo.username}`);
console.log(`Home Directory:   ${os.homedir()}`);

/* Output:
OS Platform:      linux
OS Type:          Linux
OS Release:       6.15.2-arch1-1
CPU Architecture: x64
Hostname:         Nabil-Arch
Memory:           5.36GB free of 7.62GB
Current User:     nabil
Home Directory:   /home/nabil
*/
