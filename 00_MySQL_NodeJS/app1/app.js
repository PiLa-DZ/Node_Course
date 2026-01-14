import db from "./db.js";

const workers = async () => {
  try {
    /* Delete all Workers ============================================ */
    // await db.query("DELETE FROM employees");
    /* Add Worker ==================================================== */
    // await db.query("INSERT INTO employees (name, dept_id) VALUES (?, ?)", [
    // "Nabil",
    // 1,
    // ]);
    /* Show all workers ============================================== */
    const [rows] = await db.query("SELECT * FROM employees");
    console.log("All workers --> ", rows);
  } catch (err) {
    console.error("ERROR: workers --> ", err.message);
  } finally {
    process.exit();
  }
};

workers();
