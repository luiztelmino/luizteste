CREATE TRIGGER TGR_AtualizaSaldoCorrentista
ON movimentacao
FOR INSERT
AS
BEGIN
    DECLARE
    @VALOR			DECIMAL(10,2),
    @IdCorrentista  INT,
	@Tipo			CHAR(1)

	SELECT 
		@VALOR			= Valor, 
		@IdCorrentista	= IdCorrentista,
		@Tipo			= TipoMovimentacao 
	FROM INSERTED
	
	IF @Tipo = 'C'
		UPDATE correntista SET SaldoFinanceiro = SaldoFinanceiro + @Valor 
		WHERE IdCorrentista = @IdCorrentista
	ELSE
		UPDATE correntista SET SaldoFinanceiro = SaldoFinanceiro - @Valor 
		WHERE IdCorrentista = @IdCorrentista
END


