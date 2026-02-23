UPDATE users
SET status = 'active'
WHERE id IN (
    SELECT id
    FROM users
    WHERE status = 'pending'
    LIMIT 10);