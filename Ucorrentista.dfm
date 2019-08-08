object frmCorrentista: TfrmCorrentista
  Left = 0
  Top = 0
  Caption = 'CORRENTISTA'
  ClientHeight = 298
  ClientWidth = 428
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poScreenCenter
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 8
    Top = 13
    Width = 11
    Height = 13
    Caption = 'ID'
    FocusControl = DBEdit1
  end
  object Label2: TLabel
    Left = 8
    Top = 53
    Width = 27
    Height = 13
    Caption = 'Nome'
    FocusControl = DBEdit2
  end
  object Label3: TLabel
    Left = 8
    Top = 93
    Width = 59
    Height = 13
    Caption = 'DataCriacao'
    FocusControl = DBEdit3
  end
  object Label4: TLabel
    Left = 260
    Top = 93
    Width = 75
    Height = 13
    Caption = 'SaldoFinanceiro'
    FocusControl = DBEdit4
  end
  object DBEdit1: TDBEdit
    Left = 8
    Top = 26
    Width = 59
    Height = 21
    DataField = 'IdCorrentista'
    DataSource = dmDados.dsCorrentista
    Enabled = False
    TabOrder = 0
  end
  object DBEdit2: TDBEdit
    Left = 8
    Top = 67
    Width = 412
    Height = 21
    DataField = 'Nome'
    DataSource = dmDados.dsCorrentista
    TabOrder = 1
  end
  object DBEdit3: TDBEdit
    Left = 8
    Top = 107
    Width = 160
    Height = 21
    DataField = 'DataCriacao'
    DataSource = dmDados.dsCorrentista
    TabOrder = 2
  end
  object DBEdit4: TDBEdit
    Left = 260
    Top = 107
    Width = 160
    Height = 21
    DataField = 'SaldoFinanceiro'
    DataSource = dmDados.dsCorrentista
    TabOrder = 3
  end
  object Button1: TButton
    Left = 290
    Top = 26
    Width = 130
    Height = 21
    Caption = '+ MOVIMENTA'#199#195'O'
    TabOrder = 4
    OnClick = Button1Click
  end
  object DBGrid1: TDBGrid
    Left = 8
    Top = 134
    Width = 412
    Height = 120
    DataSource = dmDados.dsCorrentista
    Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgConfirmDelete, dgCancelOnExit, dgTitleClick, dgTitleHotTrack]
    TabOrder = 5
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
    Columns = <
      item
        Expanded = False
        FieldName = 'IdCorrentista'
        Title.Caption = 'ID'
        Width = 20
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'Nome'
        Width = 200
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'DataCriacao'
        Title.Caption = 'Data'
        Width = 80
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'SaldoFinanceiro'
        Title.Caption = 'Saldo'
        Width = 75
        Visible = True
      end>
  end
  object DBNavigator1: TDBNavigator
    Left = 8
    Top = 260
    Width = 400
    Height = 25
    DataSource = dmDados.dsCorrentista
    TabOrder = 6
  end
end
