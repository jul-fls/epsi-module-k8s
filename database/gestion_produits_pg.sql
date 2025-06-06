-- Table structure for table "produits"

DROP TABLE IF EXISTS produits;

CREATE TABLE produits (
  PRO_id SERIAL PRIMARY KEY,
  PRO_lib VARCHAR(200) NOT NULL,
  PRO_prix NUMERIC(10,2) NOT NULL,
  PRO_description TEXT
);

-- Inserting data into "produits"
INSERT INTO produits (PRO_lib, PRO_prix, PRO_description) VALUES
  ('Pédales Shimano XT M8040 M/L', 74.99, 'Les pédales plates SHIMANO XT PD-M8040 sont destinées à un usage All Mountain/Enduro. Très solides grâce à leur axe en acier chromoly, elles se caractérisent notamment par leur plateforme concave, qui accueille 10 picots dévissables, qui favorisent le grip sous la semelle. Leur structure est également plus ouverte et dégagée, qui empêche la boue de s''accumuler. Ces pédales XT Deore sont proposées ici en taille ML, mieux adaptée aux chaussures dont la pointure est comprise entre 43 et 48.'),
  ('Selle FIZIK ARIONE VERSUS Rails Kium', 59.99, 'Modèle confortable avant tout, la selle FIZIK Arione Versus possède un profil tout à fait plat et très long (300 mm) qui convient aux pratiquants justifiant d''une excellente souplesse vertébrale. Sa surface présente un canal central évidé, caractéristique des selles de la ligne Versus, qui permet de réduire les points de pression sur la zone périnéale. L''Arione Versus présente des rails légers et résistants en matériau Kium, et une coque associant du carbone à du nylon, pour offrir un supplément de souplesse aux endroits où les cuisses entrent en contact avec la selle, durant la phase de pédalage.'),
  ('Chaussures VTT MAVIC CROSSMAX SL PRO THERMO Noir', 164.99, 'Les chaussures Cross Max SL Pro Thermo créées par la marque MAVIC plairont aux riders voulant profiter de leur vélo en hiver ! Elles offrent une protection optimale contre le froid et contre la pluie. Elles disposent notamment d’une grande étanchéité Clima Ride assurée par une membrane Gore-Tex® haut de gamme associée à une protection de la cheville en néoprène avec fermeture éclair étanche. Idéal pour les météos les plus rudes ! Le maintien et le confort sont quant à eux garantis par les technologies MAVIC : le serrage à molette de précision Ergo Dial® notamment, d’une grande facilité et permettant un ajustement au millimètre ! La semelle interne Ergo Fit 3D Ortholite® est ergonomique, tout en offrant un bon amorti pour un confort supérieur.'),
  ('Pack GPS GARMIN EDGE 1030 + Ceinture Cardio', 519.99, 'Le Pack GPS Edge 1030 plus la ceinture cardio de Garmin est fait pour les compétiteurs et les adeptes de performances. Cette offre ravira les cyclistes souhaitant s''entraîner efficacement pour la saison ! Conçu autour d''un superbe écran tactile de 8,9 cm de diagonale, le GPS vélo GARMIN Edge 1030 propose tout d''abord des options spécialement conçues pour la navigation. La carte préchargée Garmin Cycle Map inclut du contenu OSM (Open Street Map) avec des routes et des pistes praticables à vélo, des données d''altitude, des points d''intérêt, une fonction de recherche d''adresses ou encore la possibilité de générer un itinéraire aller-retour. Par ailleurs, l''Edge fournit un guidage vocal depuis votre smartphone');

-- Table structure for table "ressources"
DROP TABLE IF EXISTS ressources;

CREATE TABLE ressources (
  RE_id SERIAL PRIMARY KEY,
  RE_type VARCHAR(100) NOT NULL,
  RE_url VARCHAR(1000) NOT NULL,
  RE_nom VARCHAR(100),
  PRO_id INT NOT NULL,
  FOREIGN KEY (PRO_id) REFERENCES produits (PRO_id)
);

-- Inserting data into "ressources"
INSERT INTO ressources (RE_type, RE_url, RE_nom, PRO_id) VALUES
  ('img', 'uploads/1-707116622e5d4fe50dfc6391af4a5421.jpg', NULL, 1),
  ('img', 'uploads/1-7f8aacccd9c522281c58e5eb90cbb6a8.jpg', NULL, 1),
  ('img', 'uploads/1-987e17d65fb62e5fece343304d7be827.jpg', NULL, 1),
  ('img', 'uploads/2-2228cc7d3b9f647bfa31dd4ebf0f3885.jpg', NULL, 2),
  ('img', 'uploads/2-5dfd065b9d05455732d122cdc3b64e27.jpg', NULL, 2),
  ('img', 'uploads/2-7e38160b643cf0e21ff445c9594e77d7.jpg', NULL, 2),
  ('img', 'uploads/4-1cb57a6c1de5c2573679654054a2b3b0.jpg', NULL, 4),
  ('img', 'uploads/4-438b7f4eec56d20aca694793882909ac.jpg', NULL, 4),
  ('img', 'uploads/4-a21d716bdfda2004d50171559c4b1b92.jpg', NULL, 4),
  ('img', 'uploads/5-19b235d023eef2281304433f0d4438b6.jpg', NULL, 5),
  ('img', 'uploads/5-8e258524bf0f2aae28647a1aa8a77a8c.jpg', NULL, 5),
  ('img', 'uploads/5-b02cbdbc96d5c9a20526763576f56a11.jpg', NULL, 5);



-- Table structure for table "utilisateurs"
DROP TABLE IF EXISTS utilisateurs;

CREATE TABLE utilisateurs (
  US_id SERIAL PRIMARY KEY,
  US_login VARCHAR(100) NOT NULL,
  US_password VARCHAR(100) NOT NULL,
  UNIQUE (US_login)
);

-- Inserting data into "utilisateurs"
INSERT INTO utilisateurs (US_login, US_password) VALUES
  ('admin', '5e884898da28047151d0e56f8dc6292773603d0d6aabbdd62a11ef721d1542d8');
