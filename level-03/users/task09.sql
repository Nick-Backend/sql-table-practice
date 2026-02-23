UPDATE users
SET login_attempts = 0
WHERE email LIKE '%test.com';