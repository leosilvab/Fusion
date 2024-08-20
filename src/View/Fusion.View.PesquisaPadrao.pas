unit Fusion.View.PesquisaPadrao;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Data.DB, Vcl.StdCtrls, Vcl.Grids,
  Vcl.DBGrids, Vcl.ExtCtrls, Vcl.ComCtrls, System.ImageList, Vcl.ImgList, Fusion.View.CadastroPadrao,
  Vcl.WinXPanels;

type
  TfrmPesquisaPadrao = class(TForm)
    ImageList1: TImageList;
    PnlPesquisa: TPanel;
    LbPesquisar: TLabel;
    edtPesquisar: TEdit;
    Button1: TButton;
    PnlBotoes: TPanel;
    btnFechar: TButton;
    btnAdicionar: TButton;
    btnEditar: TButton;
    btnExcluir: TButton;
    btnImprimir: TButton;
    PnlGrid: TPanel;
    DBGrid1: TDBGrid;
    CardPanel1: TCardPanel;
    PesquisaPadrao: TCard;
    CadastroPadrao: TCard;
    Panel1: TPanel;
    Panel2: TPanel;
    DBGrid2: TDBGrid;
    Panel3: TPanel;
    Button2: TButton;
    Button3: TButton;
    Button4: TButton;
    Button5: TButton;
    Button6: TButton;
    procedure btnFecharClick(Sender: TObject);
    procedure btnAdicionarClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmPesquisaPadrao: TfrmPesquisaPadrao;

implementation

{$R *.dfm}

procedure TfrmPesquisaPadrao.btnAdicionarClick(Sender: TObject);
begin
  frmCadastroPadrao.Show;
end;

procedure TfrmPesquisaPadrao.btnFecharClick(Sender: TObject);
begin
  Close;
end;

end.
