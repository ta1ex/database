-- Написать запрос который выставит isbestseller = 1 для книг, которые были взяты пользователями более 10 раз

UPDATE books b
JOIN (
	SELECT book_id, COUNT(user_id) AS count_users
	FROM users_books
	GROUP BY book_id
	HAVING count_users > 10
) AS t
ON b.id = t.book_id
SET isbestseller = 1;