SELECT
    u.username,
    IF(
        COUNT(message_id) > 0,
        COUNT(message_id),
        'None'
    ) AS posts
FROM
    users AS u
LEFT JOIN messages AS m USING(user_id)
GROUP BY
    (u.user_id);
