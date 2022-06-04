SELECT
	COUNT(c.nome) AS 'cancoes',
  COUNT(DISTINCT art.nome) AS 'artistas',
  COUNT(DISTINCT alb.nome) AS 'albuns'
FROM SpotifyClone.cancao AS c
RIGHT JOIN SpotifyClone.album AS alb ON alb.id = c.id_album
RIGHT JOIN SpotifyClone.artista AS art ON alb.id_artista = art.id;
