-- 1.	Напишите запрос, который выводит фамилии всех студентов.
SELECT фамилия
FROM Студент;
-- 2. Напишите запрос, который выводит таблицу со столбцами в следующем порядке: №группы, имя, фамилия, телефон.
SELECT N_группы, имя, фамилия, телефон
FROM Студент;
-- 3.	Напишите запрос, который выводит всю информацию из таблицы Студент.
SELECT * FROM Студент;
-- 4.	Напишите запрос, который выводит все строки из таблицы «Студент», для которых номер группы = 11.
SELECT * FROM Студент
WHERE n_группы = 11;
-- 5.	Напишите запрос, который выводит записи о студентах с фамилией «Иванов».
SELECT * FROM Студент
WHERE фамилия = 'Иванов';
-- 6.	Напишите запрос, который выводит записи о студентах 11 и 12 группы.
SELECT * FROM Студент
WHERE n_группы IN (11, 12);
-- 7.	Напишите запрос, который выводит записи о студентах 11 и 12 группы, которые имеют телефон.
SELECT * FROM Студент
WHERE n_группы IN (11, 12) AND телефон IS NOT Null;
-- 8. Напишите запрос, который выводит значения номеров групп из таблицы «Студент», без каких бы то ни было повторений.\
SELECT DISTINCT n_группы
FROM Студент;
-- 9. Напишите запрос, который выводит фамилии преподавателей (фамилии должны появляться без повтора, например, если преподаватели ведут два и более предметов).
SELECT DISTINCT фамилия_преподавателя
FROM Предмет;
-- 10.	Выведите № зачеток неуспевающих студентов (у которых есть хотя бы одна двойка).
SELECT DISTINCT n_зачетки FROM Студент_предмет
WHERE оценка = 2;
-- 11.	Напишите запрос, который выводит информацию о сдаче экзаменов студентом с № зачетки = 11111
SELECT Предмет.название_предмета, Студент_предмет.оценка
FROM Предмет
JOIN Студент_предмет ON Предмет.n_предмета = Студент_предмет.n_предмета
WHERE Студент_предмет.n_зачетки = 11111;
-- 12.	Напишите запрос, который выводит № зачеток студентов, которые сдали английский на хорошо и отлично.
SELECT n_зачетки FROM Студент_предмет
WHERE Студент_предмет.N_предмета = 8 AND оценка IN (4,5);
-- 13.	Напишите запрос, который выводит информацию о сдаче экзаменов студентами с номерами зачеток 11111, 11114 и 11115. первый вариант
SELECT Студент_предмет.n_зачетки, Предмет.название_предмета, Студент_предмет.оценка
FROM Предмет
JOIN Студент_предмет ON Предмет.n_предмета = Студент_предмет.n_предмета
WHERE Студент_предмет.n_зачетки IN (11111,11114,11115);
-- 14 Напишите запрос, который выводит информацию об оценке по физике, полученной студентами с номерами зачеток 11111, 11114 и 11115.
SELECT Студент_предмет.n_зачетки, Предмет.название_предмета, Студент_предмет.оценка
FROM Предмет
JOIN Студент_предмет ON Предмет.n_предмета = Студент_предмет.n_предмета
WHERE Предмет.n_предмета = 2 AND  Студент_предмет.n_зачетки IN (11111,11114,11115);