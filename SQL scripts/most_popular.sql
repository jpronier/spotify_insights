select track_name
from track join album_artists_track using (track_id) join artists using(artists_id)
where track_popularity > 80
order by track_popularity desc
limit 1;

select artists_name
from track join album_artists_track using (track_id) join artists using(artists_id)
where track_popularity > 80
order by track_popularity desc
limit 1;


select count(track_id)
from album_artists_track
where artists_id = (select artists_id
from track join album_artists_track using (track_id)
where track_popularity > 80
order by track_popularity desc
limit 1);
