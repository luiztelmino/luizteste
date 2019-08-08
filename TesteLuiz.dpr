program TesteLuiz;

uses
  Vcl.Forms,
  Ucorrentista in 'Ucorrentista.pas' {frmCorrentista},
  Umovimentacao in 'Umovimentacao.pas' {frmMovimentacao},
  UdmDados in 'UdmDados.pas' {dmDados: TDataModule},
  Ufiltros in 'Ufiltros.pas' {frmFiltros};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TfrmCorrentista, frmCorrentista);
  Application.CreateForm(TfrmMovimentacao, frmMovimentacao);
  Application.CreateForm(TdmDados, dmDados);
  Application.CreateForm(TfrmFiltros, frmFiltros);
  Application.Run;
end.
