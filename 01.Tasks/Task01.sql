/* Задача 1
Создайте таблицу с мобильными телефонами, используя графический интерфейс. Необходимые поля таблицы: 
product_name (название товара), manufacturer (производитель), product_count (количество), price (цена). 
Заполните БД произвольными данными.
*/
-- создание таблиц
CREATE TABLE mobile_phones (
    id INT PRIMARY KEY,
    product_name VARCHAR(25),
    manufacturer VARCHAR(25),
    product_count INT,
    price INT
);
-- наполнение нужными данными
INSERT INTO mobile_phones (id, product_name, manufacturer, product_count, price)
VALUES (1, 'iPhone X', 'Apple', 3, 77000),
       (2, 'iPhone 8', 'Apple', 2, 52000),
       (3, 'Galaxy S9', 'Samsung', 2, 55000),
       (4, 'Galaxy S8', 'Samsung', 1, 42000),
       (5, 'P20 Pro', 'Huawei', 5, 37000);

/* Задача 2
Напишите SELECT-запрос, который выводит название товара, производителя и цену для товаров,
количество которых превышает 2 */
-- выборки данных
SELECT product_name, manufacturer, price FROM mobile_phones WHERE product_count > 2;

/* Задача 3
Выведите SELECT-запросом весь ассортимент товаров марки “Samsung” */
-- выборки данных
SELECT * FROM mobile_phones WHERE manufacturer = 'Samsung';

/* Задача 4 
С помощью SELECT-запроса с оператором LIKE / REGEXP найти: */
-- 4.1. Товары, в которых есть упоминание “Iphone”:
-- выборки данных
SELECT * FROM mobile_phones WHERE product_name LIKE '%Iphone%';

-- 4.2. Товары, в которых есть упоминание “Samsung”:
-- выборки данных
SELECT * FROM mobile_phones WHERE CONCAT_WS(' ', product_name, manufacturer) LIKE '%Samsung%';

-- 4.3. Товары, в названии которых есть ЦИФРЫ
-- выборки данных
SELECT * FROM mobile_phones WHERE product_name REGEXP '[0-9]';

-- 4.4. Товары, названии в которых есть ЦИФРА “8”
-- выборки данных
SELECT * FROM mobile_phones WHERE product_name LIKE '%8%';