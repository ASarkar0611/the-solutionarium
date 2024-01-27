-- Top 5 Artists [Spotify SQL Interview Question]

with song_freq AS
(SELECT song_id, count(day) as freq
FROM global_song_rank
WHERE rank <= 10
GROUP BY song_id
ORDER BY count(day) DESC),

song_det AS
(SELECT sf.freq, s.song_id, s.artist_id, s.name
FROM  song_freq sf, songs s
where s.song_id = sf.song_id
ORDER BY sf.freq DESC),

song_det_agg AS
(SELECT artist_id, SUM(freq) as total_freq
FROM song_det
GROUP BY artist_id),

artist_rank AS
(SELECT * ,
dense_rank() OVER(ORDER BY total_freq desc) as artist_rank
FROM song_det_agg)

SELECT artist_name, artist_rank
FROM artist_rank ar, artists a
WHERE ar.artist_id = a.artist_id
AND ar.artist_rank <= 5
ORDER BY artist_rank, length(artist_name) DESC;
