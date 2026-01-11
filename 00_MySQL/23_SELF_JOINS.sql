-- SELF JOIN
-- join another copy of a table to itself
-- used to compare rows of the same table
-- helps to display a heirarchy of date

-- Add column to customars
ALTER TABLE customars
ADD referral_id INT;
-- Update referral_id
UPDATE customars
SET referral_id = 1
WHERE customar_id = 2;
// ->>>>>>>>>>>>>>>>>>>>>>>>>
