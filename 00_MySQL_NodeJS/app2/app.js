import express from "express";
import db from "./db.js";
const app = express();
const port = 3000;

/* === Test ========================================== */
app.get("/", async (req, res) => {
  try {
    console.log("OK: --> ");
    res.json({ message: "OK: --> " });
  } catch (err) {
    console.error("ERROR: --> ", err.message);
  }
});

/* === READ   ======================================== */
const showAll = async () => {
  try {
    const [result] = await db.query("SELECT * FROM employees");
    return result;
  } catch (err) {
    console.error("ERROR: showAll --> ", err.message);
  }
};
app.get("/all", async (req, res) => {
  try {
    const result = await showAll();
    res.json(result);
  } catch (err) {
    console.error("ERROR: /all showAll --> ", err.message);
  }
});
/* === CREATE ======================================== */
/* === UPDATE ======================================== */
/* === DELETE ======================================== */

app.listen(port, () => {
  console.log("=".repeat(50));
  console.log(`Server listening on port ${port}...`);
});
