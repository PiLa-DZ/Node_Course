import mysql from "mysql2";

const connection = mysql.createConnection({
  host: "localhost",
  user: "admin",
  password: "your_password",
  database: "arch_study",
});

connection.connect((err) => {
  if (err) {
    console.error("ERROR --> ", err.stack);
    return;
  }
  console.log("OK --> ", connection.threadId);
});

const sql = "INSERT INTO learners (name, topic) VALUES (?, ?)";
const values = ["Your Name", "MySQL & Node.js Day 1"];

connection.query(sql, values, (err, result) => {
  if (err) throw err;
  console.log("OK --> Add user data: " + result.insertId);
  connection.end();
});
