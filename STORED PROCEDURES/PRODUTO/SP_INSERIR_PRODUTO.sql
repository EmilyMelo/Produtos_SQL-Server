/*Criando procedimento para inserir dados na tabela tb_Produtos*/
IF EXISTS (SELECT TOP 1 1 FROM SYS.OBJECTS WHERE TYPE = 'P' AND NAME = 'SP_INSERIR_PRODUTO')
	DROP PROCEDURE SP_INSERIR_PRODUTO
GO

CREATE PROCEDURE SP_INSERIR_PRODUTO (
	@nmProduto VARCHAR(100) ,
	@qtdProduto INT,
	@dtVencimento DATE,
	@idFuncionario INT)

AS
/*
	Nome: SP_INSERIR_PRODUTO
	Criado em: 27/07/2022
*/
BEGIN

	IF @dtVencimento >= GETDATE()
		BEGIN

			INSERT INTO tb_Produtos (
				nmProduto,
				qtdProduto,
				dtVencimento,
				idFuncionario)
			VALUES  (
				@nmProduto,
				@qtdProduto,
				@dtVencimento,
				@idFuncionario)

		END

/*
Criando erro para data.
*/
	ELSE
		BEGIN
			PRINT 'A data de vencimento deve ser maior ou igual a hoje!';
			THROW 50001, 'A data de vencimento deve ser maior ou igual a hoje!',1;
		END
	 


END

/**/