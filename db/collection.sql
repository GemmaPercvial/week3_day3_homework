DROP TABLE IF EXISTS artists;
DROP TABLE IF EXISTS albums;

CREATE TABLE artists (
  id SERIAL4 PRIMARY KEY,
  name VARCHAR(225)
);

CREATE TABLE albums; (
  id SERIAL4 PRIMARY KEY,
  artist_name VARCHAR(225),
  album_name VARCHAR(225),
  year INT2
);
