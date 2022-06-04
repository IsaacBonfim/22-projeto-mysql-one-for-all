SELECT u.nome AS 'usuario',
    COUNT(h.id_cancao) AS 'qtde_musicas_ouvidas',
    ROUND(SUM(c.duracao) / 60, 2) AS 'total_minutos'
FROM SpotifyClone.usuario AS u
INNER JOIN SpotifyClone.cancao AS c
INNER JOIN SpotifyClone.historico AS h ON h.id_cancao = c.id AND h.id_usuario = u.id
GROUP BY u.id
ORDER BY u.nome;
