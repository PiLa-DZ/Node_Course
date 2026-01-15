import db from "./db.js";
import express from "express";
const app = express();

app.use(express.json());

/* === PERSONAL Addition =============================== */
app.use((req, res, next) => {
  res.on("finish", () => {
    console.log("=".repeat(50));
  });
  next();
});
app.get("/test", (req, res) => {
  res.json({ message: "Hi there!" });
});

/* === READ   ========================================== */
const showAll = async () => {
  try {
    const [result] = await db.query("SELECT * FROM employees");
    return result;
  } catch (err) {
    console.error("ERROR: showAll ", err.message);
  }
};
app.get("/all", async (req, res) => {
  try {
    const result = await showAll();
    console.log("OK: READ All --> ");
    console.table(result);
    res.json(result);
  } catch (err) {
    console.error("ERROR: READ All --> ", err.message);
  }
});

const showOne = async (id) => {
  try {
    const [result] = await db.query(`SELECT * FROM employees WHERE id = ${id}`);
    return result;
  } catch (err) {
    console.error("ERROR: READ One --> ", err.message);
  }
};
app.get("/one/:id", async (req, res) => {
  try {
    const id = Number(req.params.id);
    const [result] = await showOne(id);
    console.log("OK: READ One --> ");
    console.table([result]);
    res.json(result);
  } catch (err) {
    console.error("ERROR: READ One (Get method) --> ", err.message);
  }
});

/* === CREATE ========================================== */
const create = async (id, name, job) => {
  try {
    const sql = `INSERT INTO employees (id, name, job) VALUES (?, ?, ?)`;
    const values = [id, name, job];
    const [result] = await db.query(sql, values);
    console.log("OK: CREATE --> ", result.insertId);
    return result.insertId;
  } catch (err) {
    console.error("ERROR: CREATE --> ", err.message);
  }
};
app.post("/", async (req, res) => {
  try {
    const result = await create(req.body.id, req.body.name, req.body.job);
    res.json({ massage: result });
  } catch (err) {
    console.error("ERROR: CREATE POST Fuction --> ", err.message);
  }
});

/* === UPDATE ========================================== */
const update = async (id, name, job) => {
  try {
    const [user] = await showOne(id);
    const updateUser = {
      name: name || user.name,
      job: job || user.job,
    };

    await db.query(
      `UPDATE employees 
       SET name = "${updateUser.name}", job = "${updateUser.job}"
       WHERE id = ${id}`,
    );
    return await showOne(id);
  } catch (err) {
    console.error("ERROR: UPDATE --> ", err.message);
  }
};
app.put("/:id", async (req, res) => {
  try {
    const id = Number(req.params.id);
    const [result] = await update(id, req.body.name, req.body.job);
    console.log("OK: UPDATE --> ");
    console.table([result]);
    res.json(result);
  } catch (err) {
    console.error("ERROR: UPDATE PUT Method --> ", err.message);
  }
});
/* === DELETE ========================================== */
const deleteOne = async (id) => {
  try {
    await db.query(`DELETE FROM employees WHERE id = ${id}`);
  } catch (err) {
    console.error("ERROR: DELETE_ONE --> ", err.message);
  }
};
app.delete("/:id", async (req, res) => {
  try {
    const id = Number(req.params.id);
    await deleteOne(id);
    console.log("OK: DELETE_ONE --> ");
    console.table(await showAll());
    res.json({ message: "OK: DELETE_ONE --> " });
  } catch (err) {
    console.error("ERROR: DELETE_ONE DELETE Method--> ", err.message);
  }
});

/* === START Server ==================================== */
app.listen(3000, () => {
  console.clear();
  console.log(`Server lintening on port 3000...`);
  console.log("=".repeat(50));
});
