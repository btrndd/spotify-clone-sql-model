SELECT COUNT(DISTINCT sgs.song_id) AS cancoes, 
COUNT(DISTINCT art.artist_id) AS artistas, 
COUNT(DISTINCT alb.album_id) AS albuns
FROM SpotifyClone.songs AS sgs
INNER JOIN SpotifyClone.artists AS art
INNER JOIN SpotifyClone.albuns AS alb
ON sgs.artist_id = art.artist_id
AND art.artist_id = alb.artist_id;