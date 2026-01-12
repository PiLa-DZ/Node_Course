import mysql from "mysql2";

const connection1 = mysql.createConnection({
  host: "localhost",
  user: "admin",
  password: "your_password",
  database: "arch_study",
});

const connection2 = mysql.createConnection({
  host: "localhost",
  user: "root",
  password: "12345",
  database: "arch_study",
});

connection2.connect((err) => {
  if (err) {
    console.error("Connection Error" + err.stack);
    return;
  }
  console.log("OK: " + connection.threadId);
});
