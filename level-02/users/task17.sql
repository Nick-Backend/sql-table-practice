SELECT
    id, username
FROM users OFFSET (40 - 1) * 16 LIMIT 16;
