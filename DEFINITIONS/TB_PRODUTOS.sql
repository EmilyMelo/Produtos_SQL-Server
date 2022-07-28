/*Criando a tabela de Produtos*/

CREATE TABLE tb_Produtos(
	idProduto INT PRIMARY KEY IDENTITY (1, 1),
	nmProduto VARCHAR(100) NOT NULL,
	qtdProduto INT NOT NULL,
	dtVencimento DATE NOT NULL,
	idFuncionario INT NOT NULL
)

/*
Adicionando uma regra CONSTRAINT
Pegando os dados da tabala tb_Funcionarios para a tabela tb_Produtos
*/

ALTER TABLE tb_Produtos
ADD CONSTRAINT FK_Funcionarios_Produtos
FOREIGN KEY (idFuncionario)
REFERENCES tb_Funcionarios (idFuncionario)