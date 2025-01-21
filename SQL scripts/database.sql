-- DROP DATABASE IF EXISTS spotify_project;

CREATE DATABASE spotify_project
    WITH
    OWNER = postgres
    ENCODING = 'UTF8'
    LC_COLLATE = 'C'
    LC_CTYPE = 'C'
    TABLESPACE = pg_default
    CONNECTION LIMIT = -1
    IS_TEMPLATE = False;

DROP TABLE Master;

CREATE TABLE Master (
  album_id VARCHAR(50),
  album_name TEXT NOT NULL,
  album_release_date DATE,
  album_album_type TEXT,
  album_available_markets TEXT,
  track_duration_ms INTEGER,
  track_id VARCHAR(50),
  track_name TEXT NOT NULL,
  track_popularity INTEGER,
  track_track_number INTEGER,
  track_available_markets TEXT,
  artists_id VARCHAR(50),
  artists_name TEXT NOT NULL,
  artists_spotify_url TEXT,
  available_markets TEXT
);
