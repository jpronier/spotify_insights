select track_name
from track 
where track_popularity > 80;

select count(track_name)
from track 
where track_popularity > 80;

select track_name, artists_name
from track join album_artists_track using (track_id) join artists using(artists_id)
where track_popularity > 80;

select distinct artists_name
from track join album_artists_track using (track_id) join artists using(artists_id)
where track_popularity > 80;

--How many artists worked on those 13 songs?

select count(distinct artists_name)
from track join album_artists_track using (track_id) join artists using(artists_id)
where track_popularity > 80;
