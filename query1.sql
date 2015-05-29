-- Написать запрос который выведет всех пользователей в возрасте от 20 до 50 с количеством книг более 10

SELECT u.*, COUNT(ub.book_id) as cnt_book
FROM users u
JOIN users_books ub ON u.id=ub.user_id
WHERE u.age BETWEEN 20 AND 50
GROUP BY u.id
HAVING cnt_book > 10;