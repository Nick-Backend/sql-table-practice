SELECT
    id, username, last_login_at
FROM users
WHERE last_login_at BETWEEN '2026-01-01' AND '2026-01-10';
