unit Umovimentacao;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Data.DB, Vcl.ExtCtrls, Vcl.DBCtrls,
  Vcl.StdCtrls, Vcl.Mask, Vcl.Grids, Vcl.DBGrids, ppDB, ppDBPipe, ppComm,
  ppRelatv, ppProd, ppClass, ppReport, ppCtrls, ppPrnabl, ppBands, ppCache,
  ppDesignLayer, ppParameter, Vcl.Imaging.jpeg, Vcl.Imaging.pngimage;

type
  TfrmMovimentacao = class(TForm)
    DBNavigator1: TDBNavigator;
    Label1: TLabel;
    DBEdit1: TDBEdit;
    Label2: TLabel;
    DBEdit2: TDBEdit;
    Label3: TLabel;
    Label4: TLabel;
    DBEdit4: TDBEdit;
    Label5: TLabel;
    DBEdit5: TDBEdit;
    DBComboBox1: TDBComboBox;
    DBGrid1: TDBGrid;
    Button1: TButton;
    procedure Button1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmMovimentacao: TfrmMovimentacao;

implementation

{$R *.dfm}

uses Ucorrentista, UdmDados, Ufiltros;

procedure TfrmMovimentacao.Button1Click(Sender: TObject);
begin
  frmFiltros.ShowModal;
end;

end.
