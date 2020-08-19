--
	INSERT INTO Acesso (Tipo) VALUES
	('Administrador'),
	('Padrao');
--

--
	INSERT INTO Categoria(Titulo) VALUES
	('Meetup'),
	('Feira de tecnologia'),
	('Live'),
	('Workshop');
--
--
	INSERT INTO Localizacao(Logradouro,numero,complemento,bairro,cidade,UF,CEP) VALUES
	('Rua Logo Ali Perto',123,'Bem Pertinho','sao paulo','sao paulo','SP','12345-678');
--
--
	INSERT INTO Usuario (Nome,email,senha,dataNascimento,IDAcesso) VALUES
	('TESTE','TESTE@TESTE','12345678910','',1);
--