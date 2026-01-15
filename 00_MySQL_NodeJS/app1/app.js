import express from "express";
const app = express();

app.use(express.json());

const users = [
  { name: "Nabil", job: "BackEnd", Salory: 300, id: 1 },
  { name: "Amin", job: "FrontEnd", Salory: 40, id: 2 },
  { name: "Sara", job: "Artist", Salory: 50, id: 3 },
];

app.get("/", (req, res) => {
  res.json(users);
});

app.listen(3000, () => {
  console.log(`Server lintening on port ${3000}`);
});
