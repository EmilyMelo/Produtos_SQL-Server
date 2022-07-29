/*
criando a tabela de Funcionarios
*/

CREATE TABLE tb_Funcionarios(
	idFuncionario INT PRIMARY KEY IDENTITY (1000001,1),
	nmFuncionario VARCHAR(50) NOT NULL,
	cpfFuncionario  CHAR(11) NOT NULL
	)