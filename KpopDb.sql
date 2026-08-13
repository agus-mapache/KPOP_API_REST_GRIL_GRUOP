create database KpopDb;
use KpopDb;
-- Tabla de Grupos
CREATE TABLE Grupo (
    Id INT AUTO_INCREMENT PRIMARY KEY,
    Name VARCHAR(100) NOT NULL,
    Agency VARCHAR(100) NOT NULL
);

-- Tabla de Artistas (Miembros)
CREATE TABLE  Artists (
    Id INT AUTO_INCREMENT PRIMARY KEY,
    Name VARCHAR(100) NOT NULL,
    Role VARCHAR(100) NOT NULL,
    GroupId INT NOT NULL,
    FOREIGN KEY (GroupId) REFERENCES Grupo(Id) ON DELETE CASCADE
);

-- Agregar columna de imagen a Grupos
ALTER TABLE Grupo ADD COLUMN ImageUrl VARCHAR(255);

-- Agregar columna de imagen a Artistas
ALTER TABLE Artists ADD COLUMN ImageUrl VARCHAR(255);
-- Insertar Grupos
INSERT INTO Grupo (Id, Name, Agency) VALUES 
(1, 'IVE', 'Starship Entertainment'),
(2, 'BLACKPINK', 'YG Entertainment'),
(3, 'TWICE', 'JYP Entertainment'),
(4, 'aespa', 'SM Entertainment');

-- Insertar Artistas (Miembros de IVE) - GroupId = 1
INSERT INTO Artists (Name, Role, GroupId) VALUES 
('Yujin', 'Líder / Vocalista', 1),
('Gaeul', 'Rapera / Bailarina', 1),
('Rei', 'Rapera / Vocalista', 1),
('Wonyoung', 'Vocalista / Visual', 1),
('Liz', 'Vocalista Principal', 1),
('Leeseo', 'Maknae / Vocalista', 1);

-- Insertar Artistas (Miembros de BLACKPINK) - GroupId = 2
INSERT INTO Artists (Name, Role, GroupId) VALUES 
('Jisoo', 'Vocalista / Visual', 2),
('Jennie', 'Rapera Principal / Vocalista', 2),
('Rosé', 'Vocalista Principal / Bailarina', 2),
('Lisa', 'Bailarina Principal / Rapera', 2);

-- Insertar Artistas (Miembros de TWICE) - GroupId = 3
INSERT INTO Artists (Name, Role, GroupId) VALUES 
('Nayeon', 'Vocalista / Centro', 3),
('Jeongyeon', 'Vocalista Líder', 3),
('Momo', 'Bailarina Principal / Rapera', 3),
('Sana', 'Vocalista / Bailarina', 3),
('Jihyo', 'Líder / Vocalista Principal', 3),
('Mina', 'Bailarina / Vocalista', 3),
('Dahyun', 'Rapera Principal', 3),
('Chaeyoung', 'Rapera Principal / Vocalista', 3),
('Tzuyu', 'Maknae / Visual', 3);

-- Insertar Artistas (Miembros de aespa) - GroupId = 4
INSERT INTO Artists (Name, Role, GroupId) VALUES 
('Karina', 'Líder / Bailarina Principal', 4),
('Giselle', 'Rapera Principal', 4),
('Winter', 'Vocalista Principal / Bailarina', 4),
('Ningning', 'Vocalista Principal / Maknae', 4);


UPDATE Grupo SET ImageUrl = 'https://static.wikia.nocookie.net/drama/images/5/5e/IVE_1.jpg/revision/latest/scale-to-width-down/1200?cb=20211125151106&path-prefix=es' WHERE Id = 1; -- IVE (Ejemplo)
UPDATE Grupo SET ImageUrl = 'https://upload.wikimedia.org/wikipedia/commons/thumb/1/18/20240809_Blackpink_Pink_Carpet_09.png/1280px-20240809_Blackpink_Pink_Carpet_09.png?utm_source=en.wikipedia.org&utm_campaign=index&utm_content=thumbnail' WHERE Id = 2; -- BLACKPINK
UPDATE Grupo SET ImageUrl = 'https://cloudfront-us-east-1.images.arcpublishing.com/copesa/YV7ZSDLKMJC5JKPIOXVTMWVFBQ.jpg' WHERE Id = 3; -- TWICE
UPDATE Grupo SET ImageUrl = 'https://upload.wikimedia.org/wikipedia/commons/thumb/0/0e/Aespa_Love_Your_W_2025_1.jpg/1280px-Aespa_Love_Your_W_2025_1.jpg?utm_source=es.wikipedia.org&utm_campaign=index&utm_content=thumbnail' WHERE Id = 4; -- aespa

-- Agregar columna de imagen a Artistas
ALTER TABLE Artists ADD COLUMN ImageUrl VARCHAR(255);

-- === IVE (GroupId = 1) ===
UPDATE Artists SET ImageUrl = 'https://upload.wikimedia.org/wikipedia/commons/8/88/An_Yu-jin_at_the_2024_Melon_Music_Awards.png' WHERE Name = 'Yujin' AND GroupId = 1;
UPDATE Artists SET ImageUrl = 'https://upload.wikimedia.org/wikipedia/commons/9/90/Gaeul_of_Ive_at_Senka_Pop-up_Event%2C_May_19%2C_2026_%281%29.png?utm_source=en.wikipedia.org&utm_campaign=index&utm_content=original' WHERE Name = 'Gaeul' AND GroupId = 1;
UPDATE Artists SET ImageUrl = 'https://upload.wikimedia.org/wikipedia/commons/8/8f/Ive%27s_Rei_%40_OPENING_PROJECTxSATUR_PhotoCall%2C_12_June_2025_01.png?utm_source=en.wikipedia.org&utm_campaign=index&utm_content=original' WHERE Name = 'Rei' AND GroupId = 1;
UPDATE Artists SET ImageUrl = 'https://upload.wikimedia.org/wikipedia/commons/3/37/Jang_Won-young_at_the_Dyson_Launch_Event%2C_April_23%2C_2026_%284%29.png?utm_source=es.wikipedia.org&utm_campaign=index&utm_content=original' WHERE Name = 'Wonyoung' AND GroupId = 1;
UPDATE Artists SET ImageUrl = 'https://static.wikia.nocookie.net/ive/images/0/00/IVE_Liz_Revive%2B_concept_photo_26.png/revision/latest/scale-to-width-down/1200?cb=20260208211432' WHERE Name = 'Liz' AND GroupId = 1;
UPDATE Artists SET ImageUrl = 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQYdCmST7w6mlrJM8IDaost9hlao-kKyvm7u7OvEZXHTSyGgmH8D98YXKKc&s=10' WHERE Name = 'Leeseo' AND GroupId = 1;

-- === BLACKPINK (GroupId = 2) ===
UPDATE Artists SET ImageUrl = 'https://upload.wikimedia.org/wikipedia/commons/2/2e/Jisoo_at_Boyfriend_on_Demand_press_conference_on_26022026_%2812%29.png?utm_source=es.wikipedia.org&utm_campaign=index&utm_content=original' WHERE Name = 'Jisoo' AND GroupId = 2;
UPDATE Artists SET ImageUrl = 'https://upload.wikimedia.org/wikipedia/commons/thumb/1/1b/Kim_Jennie_%28%EA%B9%80%EC%A0%9C%EB%8B%88%29_05.jpg/250px-Kim_Jennie_%28%EA%B9%80%EC%A0%9C%EB%8B%88%29_05.jpg' WHERE Name = 'Jennie' AND GroupId = 2;
UPDATE Artists SET ImageUrl = 'https://upload.wikimedia.org/wikipedia/commons/b/b3/Blackpink_Ros%C3%A9_Rimowa_1.jpg' WHERE Name = 'Rosé' AND GroupId = 2;
UPDATE Artists SET ImageUrl = 'https://upload.wikimedia.org/wikipedia/commons/thumb/a/ae/20240314_Lisa_Manoban_07.jpg/250px-20240314_Lisa_Manoban_07.jpg?utm_source=es.wikipedia.org&utm_campaign=parser&utm_content=thumbnail' WHERE Name = 'Lisa' AND GroupId = 2;

-- === TWICE (GroupId = 3) ===
UPDATE Artists SET ImageUrl = 'https://upload.wikimedia.org/wikipedia/commons/7/72/Nayeon_251120_1.jpg?utm_source=en.wikipedia.org&utm_campaign=index&utm_content=original' WHERE Name = 'Nayeon' AND GroupId = 3;
UPDATE Artists SET ImageUrl = 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTPM7dFSCBcAF3X5R7jnYt8Tx-JCVYIvXjt58KMQpICvL0mxOXwwB46MHxz&s=10' WHERE Name = 'Jeongyeon' AND GroupId = 3;
UPDATE Artists SET ImageUrl = 'https://upload.wikimedia.org/wikipedia/commons/thumb/0/08/TWICE_MOMO_April_2024.jpg/960px-TWICE_MOMO_April_2024.jpg?utm_source=es.wikipedia.org&utm_campaign=index&utm_content=thumbnail' WHERE Name = 'Momo' AND GroupId = 3;
UPDATE Artists SET ImageUrl = 'https://upload.wikimedia.org/wikipedia/commons/9/9c/2025_Sana_Minatozaki_from_TWICE.jpg' WHERE Name = 'Sana' AND GroupId = 3;
UPDATE Artists SET ImageUrl = 'https://upload.wikimedia.org/wikipedia/commons/e/ee/TWICE_Jihyo_Fred_May_2024.jpg' WHERE Name = 'Jihyo' AND GroupId = 3;
UPDATE Artists SET ImageUrl = 'https://upload.wikimedia.org/wikipedia/commons/thumb/d/d8/Mina_Sharon_Myoui_%E5%90%8D%E4%BA%95_%E5%8D%97_2024_07.jpg/250px-Mina_Sharon_Myoui_%E5%90%8D%E4%BA%95_%E5%8D%97_2024_07.jpg' WHERE Name = 'Mina' AND GroupId = 3;
UPDATE Artists SET ImageUrl = 'https://upload.wikimedia.org/wikipedia/commons/8/85/Dahyun_at_press_conference_for_You_Are_the_Apple_of_My_Eye_02_%28cropped%29.png?utm_source=es.wikipedia.org&utm_campaign=index&utm_content=original' WHERE Name = 'Dahyun' AND GroupId = 3;
UPDATE Artists SET ImageUrl = 'https://upload.wikimedia.org/wikipedia/commons/5/5b/241204_Chaeyoung_at_Rokh_H%26M_%282%29.png' WHERE Name = 'Chaeyoung' AND GroupId = 3;
UPDATE Artists SET ImageUrl = 'https://upload.wikimedia.org/wikipedia/commons/thumb/e/e3/20240305_Chou_Tzuyu_%E5%91%A8%E5%AD%90%E7%91%9C_03.jpg/250px-20240305_Chou_Tzuyu_%E5%91%A8%E5%AD%90%E7%91%9C_03.jpg?utm_source=es.wikipedia.org&utm_campaign=parser&utm_content=thumbnail' WHERE Name = 'Tzuyu' AND GroupId = 3;

-- === aespa (GroupId = 4) ===
UPDATE Artists SET ImageUrl = 'https://upload.wikimedia.org/wikipedia/commons/thumb/2/2f/Aespa%27s_Karina_5.jpg/250px-Aespa%27s_Karina_5.jpg?utm_source=es.wikipedia.org&utm_campaign=parser&utm_content=thumbnail' WHERE Name = 'Karina' AND GroupId = 4;
UPDATE Artists SET ImageUrl = 'https://upload.wikimedia.org/wikipedia/commons/6/65/Giselle_at_Incheon_Airport_on_March_4%2C_2026_02.jpg?utm_source=es.wikipedia.org&utm_campaign=index&utm_content=original' WHERE Name = 'Giselle' AND GroupId = 4;
UPDATE Artists SET ImageUrl = 'https://static.wikia.nocookie.net/drama/images/e/e2/Winter_%28SMTOWN%29_03.jpg/revision/latest/scale-to-width-down/250?cb=20250326214432&path-prefix=es' WHERE Name = 'Winter' AND GroupId = 4;
UPDATE Artists SET ImageUrl = 'https://i.mydramalist.com/3oZDKd_5f.jpg' WHERE Name = 'Ningning' AND GroupId = 4;


INSERT INTO Grupo (Id, Name, Agency, ImageUrl) VALUES 
(5,'Red Velvet', 'SM Entertainment', 'https://i.scdn.co/image/ab6761610000e5eb02a562ea6b1dc718394010ac'),
(6,'ILLIT', 'BELIFT LAB','https://akamai.sscdn.co/uploadfile/letras/fotos/1/2/b/6/12b617258cf173c1974f004b0c007651.jpg');

INSERT INTO Artists (Name, Role, GroupId) VALUES 
-- Integrantes de Red Velvet (GroupId = 5)
('Irene', 'Líder / Rapera / Bailarina', 5),
('Seulgi', 'Bailarina Principal / Vocalista', 5),
('Wendy', 'Vocalista Principal', 5),
('Joy', 'Vocalista / Rapera', 5),
('Yeri', 'Vocalista / Bailarina / Maknae', 5),

-- Integrantes de ILLIT (GroupId = 6)
('Yunah', 'Líder / Vocalista / Bailarina', 6),
('Minju', 'Vocalista / Bailarina', 6),
('Moka', 'Bailarina / Vocalista', 6),
('Wonhee', 'Vocalista', 6),
('Iroha', 'Bailarina Principal / Maknae', 6);

-- Para las integrantes (Artists) si también llevan imagen:
UPDATE Artists SET ImageUrl = 'https://static.wikia.nocookie.net/kpop/images/9/9d/Irene_para_Cosmic_11.jpg/revision/latest?cb=20240618215705&path-prefix=es' WHERE Name = 'Irene'  AND GroupId = 5;
UPDATE Artists SET ImageUrl = 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTlfABTOCnVVh-vKlhsoWGmAmPxJJVSn-OHlNphGWktdbNTva2gamOETtQ&s=10' WHERE Name = 'Seulgi' AND GroupId = 5;
UPDATE Artists SET ImageUrl = 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcQ6KdVVBUhhz1JDko_8jIrdQB8RZgohOb_OGyYvFqrrAw&s=10' WHERE Name = 'Wendy'AND GroupId = 5;
UPDATE Artists SET ImageUrl = 'https://asianwiki.com/images/2/23/Joy_Red_Velvet-p2.jpg' WHERE Name = 'Joy' AND GroupId = 5;
UPDATE Artists SET ImageUrl = 'https://static.wikia.nocookie.net/kpop/images/1/17/Yeri_para_Cosmic_12.jpg/revision/latest?cb=20240619014122&path-prefix=es' WHERE Name = 'Yeri' AND GroupId = 5;

UPDATE Artists SET ImageUrl = 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcRVs8vzEzji_ikDaZDC5nNRJ1TRBPL2KRsrAvZUP8Vte7o687tUnMrAvK0&s=10' WHERE Name = 'Yunah'AND GroupId = 6;
UPDATE Artists SET ImageUrl = 'https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTiUyQafsXcIXJrP-EJBHwSbeNvMvRpgv4TAJ3T520RxpMehz94hWoT38h7&s=10' WHERE Name = 'Minju' AND GroupId = 6;
UPDATE Artists SET ImageUrl = 'https://legacy.kpopping.com/b5/4/250213-ILLIT-Instagram-Update-with-MOKA-documents-1.jpeg' WHERE Name = 'Moka' AND GroupId = 6;
UPDATE Artists SET ImageUrl = 'https://i.pinimg.com/736x/33/8d/b0/338db03179ddce491c7441a3a6a834f9.jpg' WHERE Name = 'Wonhee' AND GroupId = 6;
UPDATE Artists SET ImageUrl = 'https://static.wikia.nocookie.net/illit/images/6/65/I_Got_Your_Back_Concept_Photo_%28FRUiTS_Ver.%29_Iroha_%284%29.jpg/revision/latest?cb=20260715131047' WHERE Name = 'Iroha' AND GroupId = 6;