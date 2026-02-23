UPDATE users
SET status = 'active'
WHERE created_at BETWEEN '2023-01-01'
AND '2023-06-30';
