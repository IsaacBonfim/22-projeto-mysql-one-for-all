SELECT art.nome AS 'artista', a.nome AS 'album', COUNT(s.id_usuario) AS 'seguidores'
FROM SpotifyClone.album AS a
LEFT JOIN SpotifyClone.artista AS art ON a.id_artista = art.id
LEFT JOIN SpotifyClone.seguindo_artista AS s ON s.id_artista = art.id
GROUP BY a.nome, art.nome
ORDER BY COUNT(s.id_usuario) DESC, art.nome, a.nome;