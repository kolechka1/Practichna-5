
-- =========================================
-- SQL Practice 01
-- Table: students
-- =========================================

-- Task 1: Create table
CREATE TABLE students (
    id INTEGER PRIMARY KEY,
    full_name TEXT,
    group_name TEXT,
    course INTEGER,
    avg_grade REAL,
    is_active INTEGER,
    scholarship REAL,
    enrolled_year INTEGER
);

-- Task 1: Test data (15 records)
INSERT INTO students VALUES (1, 'Іван Петренко', 'ІПЗ-11', 1, 78, 1, 1000, 2024);
INSERT INTO students VALUES (2, 'Олег Шевченко', 'ІПЗ-11', 1, 92, 1, 2000, 2024);
INSERT INTO students VALUES (3, 'Марія Іваненко', 'ІПЗ-11', 1, 58, 1, 0, 2024);
INSERT INTO students VALUES (4, 'Анна Коваленко', 'ІПЗ-21', 2, 81, 1, 1500, 2023);
INSERT INTO students VALUES (5, 'Андрій Бондаренко', 'ІПЗ-21', 2, 67, 1, 0, 2023);
INSERT INTO students VALUES (6, 'Наталія Мельник', 'ІПЗ-21', 2, 95, 1, 2000, 2023);
INSERT INTO students VALUES (7, 'Дмитро Ткаченко', 'ІПЗ-31', 3, 73, 0, 0, 2022);
INSERT INTO students VALUES (8, 'Оксана Романенко', 'ІПЗ-31', 3, 88, 1, 1500, 2022);
INSERT INTO students VALUES (9, 'Сергій Клименко', 'ІПЗ-31', 3, 54, 1, 0, 2022);
INSERT INTO students VALUES (10, 'Юлія Савченко', 'ІПЗ-41', 4, 91, 1, 2000, 2021);
INSERT INTO students VALUES (11, 'Віктор Гриценко', 'ІПЗ-41', 4, 64, 0, 0, 2021);
INSERT INTO students VALUES (12, 'Тетяна Лисенко', 'ІПЗ-21', 2, 84, 1, 1000, 2023);
INSERT INTO students VALUES (13, 'Павло Дорошенко', 'ІПЗ-11', 1, 76, 1, 0, 2025);
INSERT INTO students VALUES (14, 'Ірина Кравченко', 'ІПЗ-31', 3, 97, 1, 2000, 2022);
INSERT INTO students VALUES (15, 'Богдан Марченко', 'ІПЗ-21', 2, 59, 1, 0, 2024);


-- =========================================
-- Task 2: SELECT
-- =========================================

-- 2.1
SELECT * FROM students;

-- 2.2
SELECT full_name, group_name, avg_grade FROM students;

-- 2.3
SELECT DISTINCT group_name FROM students;


-- =========================================
-- Task 3: WHERE
-- =========================================

-- 3.1
SELECT * FROM students
WHERE group_name = 'ІПЗ-21';

-- 3.2
SELECT * FROM students
WHERE avg_grade >= 80 AND is_active = 1;

-- 3.3
SELECT * FROM students
WHERE avg_grade BETWEEN 60 AND 80;

-- 3.4
SELECT * FROM students
WHERE is_active = 0;

-- 3.5
SELECT * FROM students
WHERE course = 2 AND avg_grade > 85;

-- 3.6
SELECT * FROM students
WHERE scholarship > 0 OR avg_grade > 90;

-- 3.7
SELECT * FROM students
WHERE enrolled_year = 2024;

-- 3.8
SELECT * FROM students
WHERE full_name LIKE '%енко%';


-- =========================================
-- Task 4: ORDER BY
-- =========================================

-- 4.1
SELECT * FROM students
ORDER BY avg_grade DESC;

-- 4.2
SELECT * FROM students
ORDER BY full_name ASC;

-- 4.3
SELECT * FROM students
WHERE group_name = 'ІПЗ-21'
ORDER BY avg_grade DESC;

-- 4.4
SELECT * FROM students
ORDER BY group_name ASC, full_name ASC;

-- 4.5
SELECT * FROM students
WHERE course = 3
ORDER BY scholarship DESC, avg_grade DESC;


-- =========================================
-- Task 5: Combined queries
-- =========================================

-- 5.1
SELECT * FROM students
WHERE is_active = 1 AND avg_grade >= 90
ORDER BY avg_grade DESC, full_name ASC;

-- 5.2
SELECT * FROM students
WHERE scholarship = 0 AND avg_grade >= 75;

-- 5.3
SELECT * FROM students
WHERE (course = 1 OR course = 2) AND avg_grade < 60
ORDER BY avg_grade ASC;

-- 5.4
SELECT * FROM students
WHERE group_name = 'ІПЗ-21' AND enrolled_year > 2023
ORDER BY enrolled_year DESC;
