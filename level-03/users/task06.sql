UPDATE users 
SET status = 'active', 
    updated_at = now()
WHERE status = 'blocked'
AND login_attempts = 0;