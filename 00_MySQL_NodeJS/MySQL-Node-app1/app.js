// const mysql = require("mysql2");
import mysql from "mysql2";

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
