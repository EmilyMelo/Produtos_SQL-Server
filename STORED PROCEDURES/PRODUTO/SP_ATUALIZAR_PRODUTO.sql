/*Criando procedimento para atualizar os dados da tabela tb_Produtos*/
IF EXISTS (SELECT TOP 1 1 FROM SYS.OBJECTS WHERE TYPE = 'P' AND NAME = 'SP_ATUALIZAR_PRODUTO')
	DROP PROCEDURE SP_ATUALIZAR_PRODUTO
GO

CREATE PROCEDURE SP_ATUALIZAR_PRODUTO(@idProduto INT,
	@nmProduto VARCHAR(100) = NULL,
	@qtdProduto INT = NULL,
	@dtVencimento DATE = NULL,
	@idFuncionario INT = NULL)

AS
/*
		Nome: SP_UPDATE_PRODUTOS
		Criado em: 27/07/2022
*/
BEGIN
	
	UPDATE tb_Produtos
		SET nmProduto = ISNULL (@nmProduto,nmProduto),
			qtdProduto = ISNULL(@qtdProduto,qtdProduto),
			dtVencimento = ISNULL (@dtVencimento,dtVencimento),
			idFuncionario = ISNULL (@idFuncionario,idFuncionario)
		WHERE idProduto = @idProduto

END