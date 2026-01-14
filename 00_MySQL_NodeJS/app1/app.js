import db from "./db.js";

const workers = async () => {
  try {
    /* Show all Departments ========================================== */
    console.log(" ---> Departments <-------------------------------");
    const [departments] = await db.query("SELECT * FROM departments");
    console.table(departments);

    /* Show all Workers ============================================== */
    console.log(" ---> Workers <-----------------------------------");
    const [workers] = await db.query("SELECT * FROM employees");
    console.table(workers);

    /* Delete all Workers ============================================ */
    // await db.query("DELETE FROM employees");

    /* Add Worker ==================================================== */
    // await db.query("INSERT INTO employees (name, dept_id) VALUES (?, ?)", [
    // "Nabil",
    // 1,
    // ]);

    /* Add Worker ==================================================== */
    console.log(" ===> ALL <=======================================");
    const query = `
        SELECT e.name AS Employee_Name, d.dept_name AS Departments
        FROM employees e
        JOIN departments d ON e.dept_id = d.id
      `;
    const [result] = await db.query(query);
    console.table(result);
  } catch (err) {
    console.error("ERROR: workers --> ", err.message);
  } finally {
    process.exit();
  }
};

workers();
