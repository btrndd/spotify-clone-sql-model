SELECT us.username AS usuario,
COUNT(*) AS qtde_musicas_ouvidas,
ROUND(SUM(sgs.duration_secs) / 60, 2) AS total_minutos
FROM SpotifyClone.users AS us
INNER JOIN SpotifyClone.users_songs AS ss
INNER JOIN SpotifyClone.songs AS sgs
ON us.user_id = ss.user_id
AND ss.song_id = sgs.song_id
GROUP BY ss.user_id
ORDER BY us.username;