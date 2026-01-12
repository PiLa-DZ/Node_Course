const mysql = require("mysql2");

// 1. إعداد بيانات الاتصال
const connection = mysql.createConnection({
  host: "localhost",
  user: "admin", // اليوزر الذي أنشأته سابقاً
  password: "your_password", // كلمة المرور الخاصة بك
  database: "arch_study",
});

// 2. فتح الاتصال
connection.connect((err) => {
  if (err) {
    console.error("خطأ في الاتصال: " + err.stack);
    return;
  }
  console.log("تم الاتصال بقاعدة البيانات بنجاح كمعرف: " + connection.threadId);
});

// 3. تنفيذ أول استعلام (إضافة بيانات من Node.js)
const sql = "INSERT INTO learners (name, topic) VALUES (?, ?)";
const values = ["Your Name", "MySQL & Node.js Day 1"];

connection.query(sql, values, (err, result) => {
  if (err) throw err;
  console.log("تم إضافة سجل بنجاح! رقم المعرف: " + result.insertId);

  // غلق الاتصال بعد الانتهاء
  connection.end();
});
