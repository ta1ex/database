-- Написать запрос который выведет список пользователей у которых есть книга с именем "Book #45"

SELECT u.* FROM users u
JOIN users_books ub ON u.id = ub.user_id
JOIN books b ON ub.book_id = b.id
WHERE b.title = 'Book #45';