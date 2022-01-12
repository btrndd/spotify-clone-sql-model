SELECT art.name AS artista,
alb.name AS album,
COUNT(*) AS seguidores
FROM SpotifyClone.artists as art
INNER JOIN SpotifyClone.albuns as alb
INNER JOIN SpotifyClone.users_artists as ua
ON  art.artist_id = alb.artist_id
AND art.artist_id = ua.artist_id
GROUP BY alb.album_id
ORDER BY COUNT(*) DESC, art.name, alb.name;