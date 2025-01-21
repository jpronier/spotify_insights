drop table Album;
create table Album as SELECT DISTINCT album_id, album_name, album_release_date, album_album_type, album_available_markets
FROM Master;

drop table Track;
create table Track as SELECT DISTINCT track_id, track_name, track_popularity, track_duration_ms, track_available_markets
FROM Master;

drop table artists;
create table artists as SELECT DISTINCT artists_id, artists_name, artists_spotify_url
FROM Master;

drop album_artists_track;
create table album_artists_track as SELECT DISTINCT album_id, artists_id, track_id, track_track_number,available_markets
FROM Master;

ALTER TABLE album ADD PRIMARY KEY (album_id);
ALTER TABLE artists ADD PRIMARY KEY (artists_id);
ALTER TABLE track ADD PRIMARY KEY (track_id);
ALTER TABLE album_artists_track ADD PRIMARY KEY (album_id, artists_id, track_id);

ALTER TABLE album_artists_track
    ADD CONSTRAINT fk_aat_album FOREIGN KEY (album_id) REFERENCES album (album_id);
ADD CONSTRAINT fk_aat_artists FOREIGN KEY (artists_id) REFERENCES artists (artists_id),
    ADD CONSTRAINT fk_aat_track FOREIGN KEY (track_id) REFERENCES track (track_id);


DROP TABLE Master;
