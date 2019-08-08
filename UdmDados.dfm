object dmDados: TdmDados
  OldCreateOrder = False
  Height = 337
  Width = 520
  object ADOConnection: TADOConnection
    Connected = True
    ConnectionString = 
      'Provider=SQLOLEDB.1;Integrated Security=SSPI;Persist Security In' +
      'fo=False;Initial Catalog=db_Luiz;Data Source=E-9386\SQLEXPRESS'
    LoginPrompt = False
    Provider = 'SQLOLEDB.1'
    Left = 32
    Top = 15
  end
  object movimentacao: TADOTable
    Active = True
    Connection = ADOConnection
    CursorType = ctStatic
    IndexFieldNames = 'IdCorrentista'
    MasterFields = 'IdCorrentista'
    MasterSource = dsCorrentista
    TableName = 'movimentacao'
    Left = 116
    Top = 19
    object movimentacaoIdMovimentacao: TAutoIncField
      FieldName = 'IdMovimentacao'
      ReadOnly = True
    end
    object movimentacaoIdCorrentista: TIntegerField
      FieldName = 'IdCorrentista'
    end
    object movimentacaoTipoMovimentacao: TStringField
      FieldName = 'TipoMovimentacao'
      FixedChar = True
      Size = 1
    end
    object movimentacaoValor: TBCDField
      FieldName = 'Valor'
      Precision = 10
      Size = 2
    end
    object movimentacaoDataCriacao: TDateTimeField
      FieldName = 'DataCriacao'
      EditMask = '!99/99/00;1;_'
    end
  end
  object dsMovimentacao: TDataSource
    DataSet = movimentacao
    Left = 117
    Top = 68
  end
  object correntista: TADOTable
    Active = True
    Connection = ADOConnection
    CursorType = ctStatic
    TableName = 'correntista'
    Left = 200
    Top = 16
    object correntistaIdCorrentista: TAutoIncField
      FieldName = 'IdCorrentista'
      ReadOnly = True
    end
    object correntistaNome: TStringField
      FieldName = 'Nome'
      FixedChar = True
      Size = 50
    end
    object correntistaDataCriacao: TDateTimeField
      FieldName = 'DataCriacao'
    end
    object correntistaSaldoFinanceiro: TBCDField
      FieldName = 'SaldoFinanceiro'
      Precision = 10
      Size = 2
    end
  end
  object dsCorrentista: TDataSource
    DataSet = correntista
    Left = 203
    Top = 68
  end
  object sp_ListarMovimentacao: TADOStoredProc
    Active = True
    Connection = ADOConnection
    CursorType = ctStatic
    ProcedureName = 'sp_ListarMovimentacao'
    Parameters = <
      item
        Name = '@RETURN_VALUE'
        DataType = ftInteger
        Direction = pdReturnValue
        Precision = 10
        Value = 0
      end
      item
        Name = '@Data1'
        Attributes = [paNullable]
        DataType = ftDateTime
        Value = 43684.60625d
      end
      item
        Name = '@Data2'
        Attributes = [paNullable]
        DataType = ftDateTime
        Value = 43684.60625d
      end
      item
        Name = '@Tipo'
        Attributes = [paNullable]
        DataType = ftString
        Size = 1
        Value = 'C'
      end
      item
        Name = '@IdCorrentista'
        Attributes = [paNullable]
        DataType = ftInteger
        Precision = 10
        Value = 1
      end>
    Left = 376
    Top = 72
    object sp_ListarMovimentacaoTipo: TStringField
      FieldName = 'Tipo'
      FixedChar = True
      Size = 1
    end
    object sp_ListarMovimentacaoValor: TBCDField
      FieldName = 'Valor'
      Precision = 10
      Size = 2
    end
    object sp_ListarMovimentacaoDataCriacao: TDateTimeField
      FieldName = 'DataCriacao'
    end
    object sp_ListarMovimentacaoIdCorrentista: TIntegerField
      FieldName = 'IdCorrentista'
    end
  end
  object dsSp_ListarMovimentacao: TDataSource
    DataSet = sp_ListarMovimentacao
    Left = 376
    Top = 128
  end
end
