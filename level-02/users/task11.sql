SELECT
    id, username, role
FROM users
WHERE role IN ('admin', 'manager');

