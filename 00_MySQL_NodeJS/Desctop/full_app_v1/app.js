import database_test from "./database_test.js";
import db from "./db.js";
import express from "express";
const app = express();

/* === MidleWare ======================================== */
/* === READ   =========================================== */
app.get("/api/hunters/one/:id", async (req, res) => {
  try {
    const id = Number(req.params.id);
    const sql = "SELECT * FROM hunters WHERE id = ?";
    const params = [id];
    const [result] = await db.query(sql, params);
    if (result.length != 0) {
      res.json(result);
    } else {
      res.json({ message: `Don't find hunter with id ${id}` });
    }
  } catch (err) {
    console.log("ERROR: 500 Internal Server Error ", err.message);
  }
});
/* === CREATE =========================================== */
/* === SEARCH =========================================== */
/* === UPDATE =========================================== */
/* === DELETE =========================================== */
/* === Not Found 404 ==================================== */
app.all("*", (req, res) => {
  res.json({ message: "404 Page not found" });
});
/* === START Server ===================================== */
app.listen(3000, () => console.clear());
