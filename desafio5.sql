SELECT son.name AS cancao,
COUNT(*) AS reproducoes
FROM SpotifyClone.songs AS son
INNER JOIN SpotifyClone.users_songs AS us
ON son.song_id = us.song_id
GROUP BY son.song_id
ORDER BY COUNT(*) DESC, son.name
LIMIT 2;