/*Criando procedimento para buscar os dados da tabela tb_Produtos através do ID*/
IF EXISTS (SELECT TOP 1 1 FROM SYS.OBJECTS WHERE TYPE = 'P' AND NAME = 'SP_BUSCAR_PRODUTO_POR_ID')
DROP PROCEDURE SP_BUSCAR_PRODUTO_POR_ID
GO

CREATE PROCEDURE SP_BUSCAR_PRODUTO_POR_ID (@idProduto INT)

AS

BEGIN
	SELECT * FROM tb_Produtos
	WHERE idProduto = @idProduto
END