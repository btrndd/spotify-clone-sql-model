SELECT COUNT(*) AS quantidade_musicas_no_historico
FROM SpotifyClone.users AS us
INNER JOIN SpotifyClone.users_songs AS ss
ON us.user_id = ss.user_id
WHERE us.username = 'Bill'
GROUP BY us.user_id;