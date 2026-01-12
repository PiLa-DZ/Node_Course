-- ** How to INSERT rows into a TABLE ========================
-- Create Row
INSERT INTO employees
VALUES (1, "Nabil", "Dahman", 20.50, "2026-01-08");

-- Create Many Row
INSERT INTO employees
VALUES (2, "A", "a", 20.50, "2026-01-08"),
       (3, "B", "b", 21.50, "2026-01-09"),
       (4, "C", "c", 22.50, "2026-01-10"),
       (5, "D", "d", 23.50, "2026-01-11");

-- Create Rows with specific Column
INSERT INTO employees (employee_id, first_name, last_name)
VALUES (6, "E", "e");

