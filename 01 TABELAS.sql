
CREATE DATABASE db_Luiz;

USE db_Luiz;

CREATE TABLE correntista (
	IdCorrentista	INT IDENTITY(1,1) PRIMARY KEY,
	Nome			CHAR(50) NOT NULL,
	DataCriacao		SMALLDATETIME DEFAULT GETDATE(),
	SaldoFinanceiro	DECIMAL(10,2),
);

CREATE TABLE movimentacao (
	IdMovimentacao		INT IDENTITY(1,1) PRIMARY KEY,
	IdCorrentista		INT, 
	TipoMovimentacao	CHAR(1) NOT NULL,
	Valor				DECIMAL(10,2),
	DataCriacao			SMALLDATETIME DEFAULT GETDATE(),
	FOREIGN KEY (IdCorrentista) REFERENCES correntista(IdCorrentista)
);

ALTER TABLE movimentacao ADD CONSTRAINT CHK_Tipo CHECK (TipoMovimentacao NOT IN ('C''D'));

