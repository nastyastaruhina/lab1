DROP TABLE IF EXISTS characters;
DROP TABLE IF EXISTS users;

CREATE TABLE users (
    user_id SERIAL PRIMARY KEY,
    email VARCHAR(100) NOT NULL,
    login VARCHAR(50) NOT NULL,
    password VARCHAR(50) NOT NULL,
    nickname VARCHAR(50) NOT NULL,
    user_level INT NOT NULL
);

CREATE TABLE characters (
    character_id SERIAL PRIMARY KEY,
    user_id INT NOT NULL,
    character_name VARCHAR(50) NOT NULL,
    character_story TEXT,
    character_level INT NOT NULL,
    special_abilities TEXT,
    FOREIGN KEY (user_id) REFERENCES users (user_id)
        ON UPDATE CASCADE
        ON DELETE CASCADE
);

INSERT INTO users (email, login, password, nickname, user_level) VALUES
('ivan@mail.ru', 'ivan', '1001', 'DarkKnight', 15),
('anna@mail.ru', 'anna', '1002', 'MoonElf', 22),
('petr@mail.ru', 'petr', '1003', 'IronFist', 8),
('olga@mail.ru', 'olga', '1004', 'FireWitch', 30),
('dmitry@mail.ru', 'dmitry', '1005', 'ShadowBlade', 12),
('elena@mail.ru', 'elena', '1006', 'StarArcher', 19),
('sergey@mail.ru', 'sergey', '1007', 'StormLord', 5),
('maria@mail.ru', 'maria', '1008', 'NightRose', 27),
('alex@mail.ru', 'alex', '1009', 'GoldenWolf', 16),
('kate@mail.ru', 'kate', '1010', 'IceQueen', 21);

INSERT INTO characters (user_id, character_name, character_story, character_level, special_abilities) VALUES
(1, 'Aragorn', 'Strazh korolya', 14, 'Udar mechom'),
(2, 'Liel', 'Elfiyka iz lesa', 20, 'Lunnaya magiya'),
(3, 'Grommash', 'Voin gor', 8, 'Yarost'),
(4, 'Piro', 'Uchenica akademii', 28, 'Ognennyj shar'),
(5, 'Nox', 'Ubijca gildii', 11, 'Skrytnost'),
(6, 'Astra', 'Ohotnica', 18, 'Metkij vystrel'),
(7, 'Torn', NULL, 4, NULL),
(8, 'Rosalin', 'Celitelnica', 25, 'Voskreshenie'),
(9, 'Volk', 'Oboroten', 15, 'Prevrashenie'),
(10, 'Frost', 'Koroleva holoda', 20, 'Zamorozka');

SELECT * FROM users;
SELECT * FROM characters;