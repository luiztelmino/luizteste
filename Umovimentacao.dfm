object frmMovimentacao: TfrmMovimentacao
  Left = 0
  Top = 0
  Caption = 'MOVIMENTA'#199#195'O'
  ClientHeight = 270
  ClientWidth = 313
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
    Top = 8
    Width = 38
    Height = 13
    Caption = 'ID Mov.'
    FocusControl = DBEdit1
  end
  object Label2: TLabel
    Left = 71
    Top = 8
    Width = 54
    Height = 13
    Caption = 'Correntista'
    FocusControl = DBEdit2
  end
  object Label3: TLabel
    Left = 8
    Top = 64
    Width = 20
    Height = 13
    Caption = 'Tipo'
  end
  object Label4: TLabel
    Left = 52
    Top = 64
    Width = 24
    Height = 13
    Caption = 'Valor'
    FocusControl = DBEdit4
  end
  object Label5: TLabel
    Left = 176
    Top = 8
    Width = 59
    Height = 13
    Caption = 'DataCriacao'
    FocusControl = DBEdit5
  end
  object DBNavigator1: TDBNavigator
    Left = 8
    Top = 107
    Width = 300
    Height = 25
    DataSource = dmDados.dsMovimentacao
    TabOrder = 4
  end
  object DBEdit1: TDBEdit
    Left = 8
    Top = 24
    Width = 57
    Height = 21
    TabStop = False
    DataField = 'IdMovimentacao'
    DataSource = dmDados.dsMovimentacao
    Enabled = False
    TabOrder = 0
  end
  object DBEdit2: TDBEdit
    Left = 71
    Top = 24
    Width = 57
    Height = 21
    TabStop = False
    DataField = 'IdCorrentista'
    DataSource = dmDados.dsMovimentacao
    Enabled = False
    TabOrder = 1
  end
  object DBEdit4: TDBEdit
    Left = 52
    Top = 80
    Width = 76
    Height = 21
    DataField = 'Valor'
    DataSource = dmDados.dsMovimentacao
    TabOrder = 2
  end
  object DBEdit5: TDBEdit
    Left = 176
    Top = 24
    Width = 129
    Height = 21
    TabStop = False
    DataField = 'DataCriacao'
    DataSource = dmDados.dsMovimentacao
    Enabled = False
    MaxLength = 8
    TabOrder = 3
  end
  object DBComboBox1: TDBComboBox
    Left = 8
    Top = 80
    Width = 38
    Height = 21
    DataField = 'TipoMovimentacao'
    DataSource = dmDados.dsMovimentacao
    Items.Strings = (
      'D'
      'C')
    TabOrder = 5
  end
  object DBGrid1: TDBGrid
    Left = 8
    Top = 138
    Width = 297
    Height = 124
    DataSource = dmDados.dsMovimentacao
    Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgConfirmDelete, dgCancelOnExit, dgTitleClick, dgTitleHotTrack]
    TabOrder = 6
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
  end
  object Button1: TButton
    Left = 176
    Top = 76
    Width = 129
    Height = 25
    Caption = 'Imprimir Movimenta'#231#245'es'
    TabOrder = 7
    OnClick = Button1Click
  end
end
