--
	SELECT * FROM Acesso;
--
--
	SELECT * FROM Categoria;
--
--
	SELECT * FROM Convite;
--
--
	SELECT * FROM Usuario;
--
--
	SELECT * FROM Usuario
		INNER JOIN Categoria ON Evento.IDCategoria = Categoria.IDCategoria
		INNER JOIN Localizacao ON Evento.IDLocalizacao = Localizacao.IDLocalizacao
		
	;
--