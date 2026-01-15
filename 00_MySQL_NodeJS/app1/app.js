import express from "express";
const app = express();

app.use(express.json());
app.use(express.urlencoded({ extended: false }));
app.use((req, res, next) => {
  res.on("finish", () => {
    console.clear();
    console.table(users);
  });
  next();
});

let users = [
  { name: "Nabil", job: "BackEnd", salory: 300, id: 1 },
  { name: "Amin", job: "FrontEnd", salory: 40, id: 2 },
  { name: "Sara", job: "Artist", salory: 50, id: 3 },
];

/* === End Points ========================================== */
app.get("/end", (req, res) => {
  const info = {
    GetAllUser: "/all",
    GetOneUser: "/:id",
    CreateUser: "POST / name=user_name job=job_name salory:=number",
    UpdateUser: "POT  / name=user_name job=job_name salory:=number",
    DeleteUser: "/:id",
  };
  res.json(info);
});

/* === READ   ============================================== */
// Get all users
app.get("/all", (req, res) => {
  res.json(users);
});
// Get one user by id
app.get("/:id", (req, res) => {
  const id = Number(req.params.id);
  const user = users.filter((e) => e.id === id);
  res.json(user);
});

/* === CREATE ============================================== */
app.post("/", (req, res) => {
  const user = {
    name: req.body.name,
    job: req.body.job,
    salory: req.body.salory,
    id: users.length + 1,
  };
  users.push(user);
  res.json(users);
});

/* === UPDATE ============================================== */
app.put("/:id", (req, res) => {
  const id = Number(req.params.id);
  const index = users.findIndex((e) => e.id === id);
  const updateUser = {
    name: req.body.name || users[index].name,
    job: req.body.job || users[index].job,
    salory: req.body.salory || users[index].salory,
    id: users[index].id,
  };
  users[index] = updateUser;
  res.json(users[index]);
});

/* === DELETE ============================================== */
app.delete("/:id", (req, res) => {
  const id = Number(req.params.id);
  users = users.filter((e) => e.id !== id);
  res.json(users.length);
});

app.listen(3000, () => {
  console.log(`Server lintening on port ${3000}`);
});
