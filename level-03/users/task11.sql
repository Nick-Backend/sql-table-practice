UPDATE users
SET is_verified = true
WHERE id IN(
    SELECT ID
    FROM users
    ORDER BY created_at DESC LIMIT 5
);
