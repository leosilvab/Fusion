unit Fusion.View.CadastroPadrao;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, System.ImageList, Vcl.ImgList, Fusiosn.Model.Conexao,
  Vcl.StdCtrls, Vcl.ExtCtrls, Vcl.ComCtrls, Data.DB, Vcl.WinXPanels, Vcl.Grids,
  Vcl.DBGrids, Vcl.Imaging.pngimage, Vcl.Buttons, Vcl.DBCtrls;

type
  TfrmCadastroPadrao = class(TForm)
    PnlHeader: TPanel;
    PnlBody: TPanel;
    PnlBotoes: TPanel;
    CardPadrao: TCardPanel;
    CadastroPadrao: TCard;
    PesquisaPadrao: TCard;
    Panel3: TPanel;
    Panel4: TPanel;
    Panel5: TPanel;
    gdUsuario: TDBGrid;
    NomeText: TEdit;
    ImageList1: TImageList;
    PnlTitle: TPanel;
    iconCadUsuario: TImage;
    LblTitle: TLabel;
    Label2: TLabel;
    PnlContent: TPanel;
    PnlBtns: TPanel;
    btnAdicionar: TPanel;
    Shape2: TShape;
    Label4: TLabel;
    SpeedButton2: TSpeedButton;
    btnFechar: TPanel;
    Shape6: TShape;
    Label8: TLabel;
    SpeedButton6: TSpeedButton;
    btnCancelar: TPanel;
    Shape4: TShape;
    Label6: TLabel;
    SpeedButton4: TSpeedButton;
    Image3: TImage;
    Image4: TImage;
    Image6: TImage;
    Panel2: TPanel;
    btnAdd: TPanel;
    Shape1: TShape;
    Label3: TLabel;
    SpeedButton1: TSpeedButton;
    Image2: TImage;
    btnAlterar: TPanel;
    spAlterar: TShape;
    Label7: TLabel;
    SpeedButton5: TSpeedButton;
    Image7: TImage;
    Shape7: TShape;
    Label9: TLabel;
    SpeedButton7: TSpeedButton;
    Image8: TImage;
    Label1: TLabel;
    Label5: TLabel;
    btnClose: TPanel;
    dsGlobal: TDataSource;
    Image1: TImage;
    procedure btnFecharClick(Sender: TObject);
    procedure SpeedButton5Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure SpeedButton6Click(Sender: TObject);
  private
    procedure HabilitarBotoes;
  public
    procedure LimpaCampos;
  protected
      procedure Pesquisar; virtual;
  end;

var
  frmCadastroPadrao: TfrmCadastroPadrao;

implementation

{$R *.dfm}

procedure TfrmCadastroPadrao.btnFecharClick(Sender: TObject);
begin
  Close;
end;

procedure TfrmCadastroPadrao.FormShow(Sender: TObject);
begin
  CardPadrao.ActiveCard := PesquisaPadrao;
  Pesquisar;
end;

procedure TfrmCadastroPadrao.HabilitarBotoes;
begin
  btnAlterar.Enabled := not dsGlobal.DataSet.IsEmpty;
  if dsGlobal.DataSet.IsEmpty then
  begin
     spAlterar.Brush.Color := clSilver;
  end
  else
  begin
    spAlterar.Brush.Color := $004F4715;
  end;

end;

procedure TfrmCadastroPadrao.LimpaCampos;
  var iContador : Integer;
begin
   for iContador := 0 to Pred(ComponentCount) do
   begin
      if Components[iContador] is TCustomEdit then
      TCustomEdit(Components[iContador]).Clear

      else if Components[iContador] is TRadioGroup then
      TRadioGroup(Components[iContador]).ItemIndex := -1;
   end;
end;

procedure TfrmCadastroPadrao.Pesquisar;
begin
   HabilitarBotoes;
end;

procedure TfrmCadastroPadrao.SpeedButton5Click(Sender: TObject);
begin
  CardPadrao.ActiveCard := CadastroPadrao;
end;

procedure TfrmCadastroPadrao.SpeedButton6Click(Sender: TObject);
begin
  LimpaCampos;
  CardPadrao.ActiveCard := PesquisaPadrao;
end;

end.
