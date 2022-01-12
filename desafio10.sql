SELECT son.name AS nome,
COUNT(*) AS reproducoes
FROM SpotifyClone.songs AS son
INNER JOIN SpotifyClone.users_songs AS ss
INNER JOIN SpotifyClone.users AS us
ON son.song_id = ss.song_id
AND us.user_id = ss.user_id
WHERE us.plan_id = 1 OR us.plan_id = 3
GROUP BY ss.song_id
ORDER BY son.name;