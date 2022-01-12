SELECT son.name AS nome_musica,
CASE
	WHEN son.name LIKE '%Streets' THEN REPLACE(son.name, 'Streets', 'Code Review')
    WHEN son.name LIKE '%Her Own' THEN REPLACE(son.name, 'Her Own', 'Trybe')
    WHEN son.name LIKE '%Inner Fire' THEN REPLACE(son.name, 'Inner Fire', 'Project')
    WHEN son.name LIKE '%Silly' THEN REPLACE(son.name, 'Silly', 'Nice')
    WHEN son.name LIKE '%Circus' THEN REPLACE(son.name, 'Circus', 'Pull Request')
END AS novo_nome
FROM SpotifyClone.songs AS son
WHERE son.name LIKE '%streets'
OR son.name LIKE '%circus'
OR son.name LIKE '%Her Own'
OR son.name LIKE '%Inner Fire'
OR son.name LIKE '%Silly'
ORDER BY son.name;