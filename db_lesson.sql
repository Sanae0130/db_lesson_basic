Q1
 CREATE TABLE `departments`(
  department_id INT UNSIGNED NOT NULL AUTO_INCREMENT PRIMARY KEY,
  name VARCHAR(20) NOT NULL DEFAULT CURRENT_TIMESTAMP,
  updated_at TIMESTAMP NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
);

Q2
CREATE TABLE people (
  person_id INT(10) UNSIGNED NOT NULL AUTO_INCREMENT PRIMARY KEY,
  name VARCHAR(20) NOT NULL,
  email VARCHAR(255) UNIQUE,
  department_id INT(10) UNSIGNED NULL,
  age TINYINT(3) UNSIGNED,
  gender TINYINT(4),
  created_at TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP,
  updated_at TIMESTAMP NOT NULL DEFAULT CURRENT_TIMESTAMP ON UPDATE CURRENT_TIMESTAMP,
  );

Q3
INSERT INTO departments (department_id)
 VARCHAR
 ('営業'),
 ('開発'),
 ('経理'),
 ('人事'),
 ('情報システム');

INSERT INTO people (name, department_id, age, gender)
 VARCHAR
 ('佐藤', 1, 28, 2),
 ('佐々木', 1, 28, 2),
 ('高橋', 1, 34, 2),
 ('伊藤', 1, 18, 2),
 ('加藤', 2, 43, 1),
 ('菊池', 2, 24, 2),
 ('近藤', 2, 50, 1),
 ('斎藤', 3, 34, 1),
 ('藤堂', 4, 18, 1),
 ('原田', 5, 24, 1);

INSERT INTO reports (person_id, content)
 VARCHAR
 (7, '取引相手との打ち合わせ'),
 (8, 'ルート営業で新規開拓'),
 (9, 'マーケティング戦略の立案と市場調査'),
 (10, 'ハンバーガーサイトのWebサイト作成'),
 (11, 'カフェのホームページ作成'),
 (22, 'コマンドバトルのゲーム制作'),
 (23, '背景グラフィックの作成'),
 (24, '入出金額を記録し管理'),
 (25, '人材面談と新人指導を行う'),
 (26, 'セキュリティ対策に問題ないか確認');

Q4
UPDATE people SET department_id = 1 WHERE person_id IN (1,2,3,4,6);  

Q5
SELECT name,age FROM people WHERE gender = 1 ORDER BY age DESC;

Q6の説明
peopleテーブルから部署ID（department_id）1(営業の人)のレコードを取得して名前(neme)、メールアドレス(email)、年齢(age)のカラムを作成日時(created_at)の順番に並び替える。

Q7
SELECT name, age FROM people WHERE (age BETWEEN 20 AND 29 AND gender =2) OR (age BETWEEN 40 AND 49 AND gender =1); 

Q8
SELECT name, age FROM people WHERE department_id = 1 ORDER BY age ASC;

Q9
SELECT AVG(age) AS average_age FROM people WHERE department_id = 2 AND gender = 2; 

Q10
SELECT p.name, p.department_id, r.content FROM people p JOIN departments d ON p.department_id = d.department_id JOIN reports r ON p.person_id = r.person_id;

Q11
SELECT p.name FROM people p LEFT JOIN reports r ON p.person_id = r.person_id WHERE r.person_id IS NULL;  
