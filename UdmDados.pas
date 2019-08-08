unit UdmDados;

interface

uses
  System.SysUtils, System.Classes, Data.DB, Data.Win.ADODB;

type
  TdmDados = class(TDataModule)
    ADOConnection: TADOConnection;
    movimentacao: TADOTable;
    movimentacaoIdMovimentacao: TAutoIncField;
    movimentacaoIdCorrentista: TIntegerField;
    movimentacaoTipoMovimentacao: TStringField;
    movimentacaoValor: TBCDField;
    movimentacaoDataCriacao: TDateTimeField;
    dsMovimentacao: TDataSource;
    correntista: TADOTable;
    correntistaIdCorrentista: TAutoIncField;
    correntistaNome: TStringField;
    correntistaDataCriacao: TDateTimeField;
    correntistaSaldoFinanceiro: TBCDField;
    dsCorrentista: TDataSource;
    sp_ListarMovimentacao: TADOStoredProc;
    dsSp_ListarMovimentacao: TDataSource;
    sp_ListarMovimentacaoTipo: TStringField;
    sp_ListarMovimentacaoValor: TBCDField;
    sp_ListarMovimentacaoDataCriacao: TDateTimeField;
    sp_ListarMovimentacaoIdCorrentista: TIntegerField;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  dmDados: TdmDados;

implementation

{%CLASSGROUP 'Vcl.Controls.TControl'}

uses Ucorrentista, Umovimentacao;

{$R *.dfm}

end.
