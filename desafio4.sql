SELECT DISTINCT us.username AS usuario,
IF (MAX(YEAR(ss.play_date)) = 2021, 'Usuário ativo', 'Usuário inativo') AS condicao_usuario
FROM SpotifyClone.users AS us
INNER JOIN SpotifyClone.users_songs AS ss
ON us.user_id = ss.user_id
GROUP BY us.user_id
ORDER BY us.username;