DROP DATABASE IF EXISTS SpotifyClone;

CREATE DATABASE SpotifyClone;

USE SpotifyClone;

CREATE TABLE plans(
  plan_id INT PRIMARY KEY AUTO_INCREMENT, 
  name VARCHAR(50) NOT NULL,
  price decimal(5,2) NOT NULL)
ENGINE = InnoDB;

CREATE TABLE artists(
  artist_id INT PRIMARY KEY AUTO_INCREMENT,
  name VARCHAR(50) NOT NULL)
ENGINE = InnoDB;

CREATE TABLE users(
  user_id INT PRIMARY KEY AUTO_INCREMENT,
  username VARCHAR(50) NOT NULL,
  age INT NOT NULL,
  plan_id INT NOT NULL,
  sign_date DATE NOT NULL
  FOREIGN KEY (plan_id) REFERENCES plans(plan_id)
)
ENGINE = InnoDB;

CREATE TABLE albuns(
  album_id INT PRIMARY KEY AUTO_INCREMENT,
  name VARCHAR(100) NOT NULL,
  artist_id INT NOT NULL,
  year INT NOT NULL,
  FOREIGN KEY (artist_id) REFERENCES artists(artist_id)
)
ENGINE = InnoDB;

CREATE TABLE songs(
  song_id INT PRIMARY KEY AUTO_INCREMENT,
  name VARCHAR(100) NOT NULL,
  artist_id INT NOT NULL,
  album_id INT NOT NULL,
  duration_secs INT NOT NULL,
  FOREIGN KEY (artist_id) REFERENCES artists(artist_id),
  FOREIGN KEY (album_id) REFERENCES albuns(album_id)
)
ENGINE = InnoDB;

CREATE TABLE users_songs(
  user_id INT PRIMARY KEY AUTO_INCREMENT,
  song_id INT NOT NULL,
  play_date DATE NOT NULL,
  FOREIGN KEY (user_id) REFERENCES users(user_id),
  FOREIGN KEY (song_id) REFERENCES songs(song_id)
)
ENGINE = InnoDB;

CREATE TABLE users_artists(
  user_id INT PRIMARY KEY AUTO_INCREMENT,
  artist_id INT NOT NULL,
  FOREIGN KEY (user_id) REFERENCES users(user_id),
  FOREIGN KEY (artist_id) REFERENCES artists(artist_id)
)
ENGINE = InnoDB;

-- INSERT INTO tabela1 (coluna1, coluna2)
-- VALUES
--   ('exemplo de dados 1', 'exemplo de dados A'),
--   ('exemplo de dados 2', 'exemplo de dados B'),
--   ('exemplo de dados 3', 'exemplo de dados C');

-- INSERT INTO tabela2 (coluna1, coluna2)
-- VALUES
--   ('exemplo de dados 1', 'exemplo de dados X'),
--   ('exemplo de dados 2', 'exemplo de dados Y');