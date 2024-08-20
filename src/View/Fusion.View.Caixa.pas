unit Fusion.View.Caixa;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Fusion.View.CadastroPadrao, Data.DB,
  System.ImageList, Vcl.ImgList, Vcl.Imaging.pngimage, Vcl.ExtCtrls,
  Vcl.Buttons, Vcl.Grids, Vcl.DBGrids, Vcl.StdCtrls, Vcl.WinXPanels, Fusiosn.Model.Usuarios, Utils, Fusiosn.Model.Caixa;

type
  TfrmCaixa = class(TfrmCadastroPadrao)
    procedure Image1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  protected
  procedure Pesquisar; override;
  end;

var
  frmCaixa: TfrmCaixa;

implementation

{$R *.dfm}

{ TfrmCadastroPadrao1 }

procedure TfrmCaixa.Image1Click(Sender: TObject);
begin
  inherited;
  Pesquisar;
end;

procedure TfrmCaixa.Pesquisar;
begin
  inherited;
  dmCaixa.cdsCaixa.Close;
  dmCaixa.cdsCaixa.CommandText := 'select * from fx_caixa';
  dmCaixa.cdsCaixa.Open;
end;

end.
