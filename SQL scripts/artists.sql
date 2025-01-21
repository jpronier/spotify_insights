--Which artists have the most tracks on that playlist I extracted? Let’s look at the 3 first ones

select artists_name, count(track_id) as number_of_songs
from album_artists_track join artists using (artists_id)
group by artists_name
order by number_of_songs desc
limit 3;


--Featurings
 
select array_agg(artists_name) as featurings
from album_artists_track join artists using (artists_id) join track using (track_id)
where track_id in 
(select track_id
from album_artists_track 
group by track_id
having count(artists_id) > 1)
group by track_name;
