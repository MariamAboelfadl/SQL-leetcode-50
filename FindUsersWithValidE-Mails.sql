select * from users 
where mail like '[a-zA-Z]%@leetcode.com' and
 mail NOT LIKE '%[^a-zA-Z0-9_.-]%@leetcode.com'
