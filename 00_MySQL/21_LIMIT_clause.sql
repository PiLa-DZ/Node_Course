-- LIMIT clause is used to limit the number of records.
-- Useful if you're working with a lot of data.
-- Can be used to display a large date on ages (pagination).

-- Example 1 --------------------------
-- Print one customar -----------------
SELECT * FROM customars
LIMIT 1;

-- Example 2 ---------------------------
-- Print three customar ----------------
SELECT * FROM customars
LIMIT 3;

-- Example 3 ---------------------------
-- Sort and Print First Three Customar -
SELECT * FROM customars
ORDER BY last_name LIMIT 3;

-- Example 4 ---------------------------
-- Print From 2 to 5 customars ---------
-- (Ofset)
SELECT * FROM customars
LIMIT 1, 4;
