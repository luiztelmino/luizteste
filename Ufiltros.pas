unit Ufiltros;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.ComCtrls, ppParameter,
  ppDesignLayer, ppBands, Vcl.Imaging.jpeg, Vcl.Imaging.pngimage, ppCtrls,
  ppPrnabl, ppClass, ppCache, ppProd, ppReport, ppComm, ppRelatv, ppDB, ppDBPipe;

type
  TfrmFiltros = class(TForm)
    data1: TDateTimePicker;
    Label1: TLabel;
    data2: TDateTimePicker;
    Label2: TLabel;
    tipo: TComboBox;
    Label3: TLabel;
    Button1: TButton;
    ppDBPLmovimentacao: TppDBPipeline;
    ppRELmovimentacao: TppReport;
    ppHeaderBand1: TppHeaderBand;
    ppLabel2: TppLabel;
    ppLabel3: TppLabel;
    ppLabel4: TppLabel;
    ppLabel5: TppLabel;
    ppLabel6: TppLabel;
    ppLine1: TppLine;
    ppImage1: TppImage;
    ppImage2: TppImage;
    ppDetailBand1: TppDetailBand;
    ppFooterBand1: TppFooterBand;
    ppDesignLayers1: TppDesignLayers;
    ppDesignLayer1: TppDesignLayer;
    ppParameterList1: TppParameterList;
    ppDBText1: TppDBText;
    ppDBText2: TppDBText;
    ppDBText3: TppDBText;
    ppDBText4: TppDBText;
    procedure Button1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmFiltros: TfrmFiltros;

implementation

{$R *.dfm}

uses Ucorrentista, UdmDados, Umovimentacao;

procedure TfrmFiltros.Button1Click(Sender: TObject);
var TipoAux : String;
begin
  dmDados.sp_ListarMovimentacao.Name := 'sp_ListarMovimentacao';
  dmDados.sp_ListarMovimentacao.Parameters.ParamByName('@Data1').Value          :=
    data1.Date;
  dmDados.sp_ListarMovimentacao.Parameters.ParamByName('@Data2').Value          :=
    data2.Date;
  dmDados.sp_ListarMovimentacao.Parameters.ParamByName('@IdCorrentista').Value  :=
    1;

  if tipo.ItemIndex = 1 then TipoAux := 'D' ELSE TipoAux := 'C';
  dmDados.sp_ListarMovimentacao.Parameters.ParamByName('@Tipo').Value  :=  TipoAux;

  dmDados.sp_ListarMovimentacao.Active := True;

  ppRELmovimentacao.Print;
end;

end.
