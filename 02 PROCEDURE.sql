CREATE PROCEDURE sp_ListarMovimentacao (
	@Data1 SMALLDATETIME,
	@Data2 SMALLDATETIME,
	@Tipo CHAR(1),
	@IdCorrentista INT
	
)
AS

SELECT 

	Tipo = TipoMovimentacao,
	Valor,
	DataCriacao,
	IdCorrentista 

FROM movimentacao 

WHERE TipoMovimentacao = @Tipo AND
IdCorrentista = @IdCorrentista AND
DataCriacao BETWEEN @Data1 AND @Data2 
