SELECT u.nome AS 'usuario', (
  CASE
		WHEN u.id = ativo.id_usuario THEN 'Usuário ativo'
    ELSE 'Usuário inativo'
  END) AS 'condicao_usuario'
FROM SpotifyClone.usuario AS u
LEFT JOIN (
  SELECT DISTINCT h.id_usuario
	FROM SpotifyClone.historico AS h
	WHERE YEAR(h.data_reproducao) >= 2021) AS ativo
ON u.id = ativo.id_usuario
ORDER BY u.nome;
