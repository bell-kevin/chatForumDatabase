SELECT subject, body FROM messages
     WHERE MATCH (body, subject)
     AGAINST('database' IN BOOLEAN MODE);
