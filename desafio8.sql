SELECT art.name AS artista,
alb.name AS album
FROM SpotifyClone.artists as art
INNER JOIN SpotifyClone.albuns as alb
INNER JOIN SpotifyClone.users_artists as ua
ON  art.artist_id = alb.artist_id
WHERE art.name = 'Walter Phoenix'
GROUP BY alb.album_id
ORDER BY alb.name;