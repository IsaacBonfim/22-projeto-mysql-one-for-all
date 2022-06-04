SELECT art.nome AS 'artista', a.nome AS 'album'
FROM SpotifyClone.album AS a
LEFT JOIN SpotifyClone.artista AS art ON a.id_artista = art.id
WHERE art.nome = 'Walter Phoenix';
