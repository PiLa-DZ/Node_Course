import database_test from "./database_test.js";
import db from "./db.js";
import express from "express";
const app = express();

/* === MidleWare ======================================== */
app.use(express.json());

/* === READ   =========================================== */
app.get("/api/hunters/one/:id", async (req, res) => {
  try {
    const id = Number(req.params.id);
    if (isNaN(id)) {
      return res.status(400).json({ messag: "ID must be an INTEGER" });
    }
    const sql = "SELECT * FROM hunters WHERE id = ?";
    const params = [id];
    const [result] = await db.query(sql, params);
    if (result.length) {
      res.status(200).json(result);
    } else {
      res.status(404).json({ message: `Hunter with id ${id} not found` });
    }
  } catch (err) {
    console.log("ERROR: 500 Internal Server Error --> ", err.message);
    res.json({ messge: "ERROR: 500 Internal Server Error" });
  }
});

/* === CREATE =========================================== */
app.post("/api/hunters/create", async (req, res) => {
  try {
    const { first_name, last_name, age, skill } = req.body;
    if (isNaN(age)) {
      return res.status(400).json({ message: "Age must be an INTEGER" });
    }
    if (first_name && last_name && age && skill) {
      const [result] = await db.query(
        "INSERT INTO hunters (first_name, last_name, age, skill) VALUES (?, ?, ?, ?)",
        [first_name, last_name, age, skill],
      );
      res.status(200).json({ message: "OK: Hunter Created successfully" });
    } else {
      res.status(400).json({
        message: "You have to enter (fist_name, last_name, age, skill)",
      });
    }
  } catch (err) {
    console.error("ERROR: 500 Internal Server Error --> ", err.message);
    res.status(500).json({ massage: "ERROR: 500 Inernal Server Error" });
  }
});

/* === SEARCH =========================================== */
app.get("/api/hunters/search", async (req, res) => {
  try {
    const { name, minAge, maxAge } = req.query;

    if ((minAge && isNaN(minAge)) || (maxAge && isNaN(maxAge))) {
      return res
        .status(400)
        .json({ message: "minAge and maxAge Must To Be An INTEGER" });
    }

    let sql = "SELECT * FROM hunters WHERE 1=1";
    const params = [];

    if (name) {
      sql += " AND (first_name LIKE ? OR last_name LIKE ?)";
      params.push(`%${name}%`, `%${name}%`);
    }

    if (minAge) {
      sql += " AND age >= ?";
      params.push(minAge);
    }
    if (maxAge) {
      sql += " AND age <= ?";
      params.push(maxAge);
    }

    const [result] = await db.query(sql, params);
    res.status(200).json(result);
  } catch (err) {
    console.error("ERROR: 500 Internal Server Error --> ", err.message);
    res.status(500).json({ messge: "ERROR: 500 Internal Server Error" });
  }
});
/* === UPDATE =========================================== */
/* === DELETE =========================================== */
/* === Information About All End Points ================= */
app.get("/end", (req, res) => {
  res.json({
    Get_One_Hunter_By_ID: "/api/hunters/:id",
    Create_New_Hunter:
      "POST /api/hunters/create first_name=Gon last_name=Freecss age:=12 skill=Jajanken",
  });
});

/* === START Server ===================================== */
app.listen(3000);
