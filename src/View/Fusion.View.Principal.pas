unit Fusion.View.Principal;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.Menus,
  System.ImageList, Vcl.ImgList, Vcl.Imaging.jpeg, Vcl.ExtCtrls, Vcl.StdCtrls,
  Vcl.Imaging.pngimage, Vcl.ComCtrls, Utils,
  Fusion.View.CadastroPadrao, Fusion.View.Usuarios, Fusion.View.Splash, Fusion.View.Login, Fusiosn.Model.Usuarios, Fusion.View.AtualizaSenha,
  Fusion.View.Caixa;

type
  TfrmPrincipal = class(TForm)
    Image1: TImage;
    pnl_Menu: TPanel;
    pnl_btnVendas: TPanel;
    Label1: TLabel;
    Image2: TImage;
    pnl_btnCompras: TPanel;
    lbCompras: TLabel;
    Image3: TImage;
    pnl_btnCadastros: TPanel;
    lbCadastro: TLabel;
    iconCadastro: TImage;
    imgLogo: TImage;
    pnl_Buttons: TPanel;
    pnl_WndApplication: TPanel;
    pnlAbaCadastro: TPanel;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    Image5: TImage;
    Image6: TImage;
    Image7: TImage;
    Timer1: TTimer;
    iconArrowDown: TImage;
    SystemBar: TStatusBar;
    procedure menuCadastroPadraoClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure pnl_btnCadastrosClick(Sender: TObject);
    procedure Timer1Timer(Sender: TObject);
    procedure lbCadastroClick(Sender: TObject);
    procedure Label4Click(Sender: TObject);
    procedure iconCadastroClick(Sender: TObject);
    procedure Label4MouseEnter(Sender: TObject);
    procedure Label4MouseLeave(Sender: TObject);
    procedure Label5MouseEnter(Sender: TObject);
    procedure Label5MouseLeave(Sender: TObject);
    procedure Label6MouseEnter(Sender: TObject);
    procedure Label6MouseLeave(Sender: TObject);
    procedure Label5Click(Sender: TObject);
  private
    FPanelVisible: Boolean;
    FTargetHeight, FStep: Integer;
    FAnimationInProgress: Boolean;
  public
    { Public declarations }
  end;

var
  frmPrincipal: TfrmPrincipal;

implementation

{$R *.dfm}

procedure TfrmPrincipal.FormCreate(Sender: TObject);
begin
  frmSplash := TFrmSplash.Create(nil);
  try
    frmSplash.ShowModal;
  finally
    FreeAndNil(frmSplash);
  end;
    frmLogin := TFrmLogin.Create(nil);
  try
    frmLogin.ShowModal;
    if frmLogin.ModalResult <> mrOk then
      Application.Terminate;
  finally
    FreeAndNil(frmLogin);
  end;


  frmAtualizaSenha := TfrmAtualizaSenha.Create(nil);
  try
    if dmUsuarios.VerificaSenhaTemp(dmUsuarios.GIDUsuario) then
    begin
      frmAtualizaSenha.ShowModal;
    end;
    finally
      FreeAndNil(frmAtualizaSenha);
  end;

  SystemBar.Panels.Items[0].Text :='   Vers�o: ' + Utils.GetFileVersion(Application.ExeName);
  SystemBar.Panels.Items[1].Text :='    Usu�rio:' + dmUsuarios.GNomeUsuario;

end;

procedure TfrmPrincipal.iconCadastroClick(Sender: TObject);
begin
  pnl_btnCadastrosClick(Sender);
end;

procedure TfrmPrincipal.lbCadastroClick(Sender: TObject);
begin
  pnl_btnCadastrosClick(Sender);
end;

procedure TfrmPrincipal.Label4Click(Sender: TObject);
begin
    SystemBar.Visible := False;
    frmCadastroUsuario.Parent := pnl_WndApplication;
    frmCadastroUsuario.Align := alClient;
    frmCadastroUsuario.BorderStyle := bsNone;
    frmCadastroUsuario.Show;
end;

procedure TfrmPrincipal.Label4MouseEnter(Sender: TObject);
begin
  Label4.Font.Color := $00D9C659;
end;

procedure TfrmPrincipal.Label4MouseLeave(Sender: TObject);
begin
  Label4.Font.Color := clWhite;
end;

procedure TfrmPrincipal.Label5Click(Sender: TObject);
begin
  SystemBar.Visible := False;
  frmCaixa.Parent := pnl_WndApplication;
  frmCaixa.Align := alClient;
  frmCaixa.BorderStyle := bsNone;
  frmCaixa.Show;
end;

procedure TfrmPrincipal.Label5MouseEnter(Sender: TObject);
begin
  Label5.Font.Color := $00D9C659;
end;

procedure TfrmPrincipal.Label5MouseLeave(Sender: TObject);
begin
  Label5.Font.Color := clWhite;
end;

procedure TfrmPrincipal.Label6MouseEnter(Sender: TObject);
begin
  Label6.Font.Color := $00D9C659;
end;

procedure TfrmPrincipal.Label6MouseLeave(Sender: TObject);
begin
  Label6.Font.Color := clWhite;
end;

procedure TfrmPrincipal.menuCadastroPadraoClick(Sender: TObject);
begin
  frmCadastroUsuario.show;
end;

procedure TfrmPrincipal.pnl_btnCadastrosClick(Sender: TObject);
begin
  FPanelVisible := not pnlAbaCadastro.Visible;
  FAnimationInProgress := True;

  if FPanelVisible then
  begin
    pnl_btnCompras.Top := 148;
    pnl_btnVendas.Top := 183;
    FTargetHeight := 100;
    FStep := 10;
    pnlAbaCadastro.Height := 0;
    pnlAbaCadastro.Visible := True;
    pnl_btncadastros.Color := $001D1A07;
    lbCadastro.Font.Color := $00D9C659;
    iconArrowDown.Visible := True;
  end
  else
  begin
    FTargetHeight := 0;
    FStep := -10;
    pnl_btncadastros.Color := $0029250B;
    lbCadastro.Font.Color := clWhite;
    iconArrowDown.Visible := False;
  end;

  Timer1.Enabled := True;
end;

procedure TfrmPrincipal.Timer1Timer(Sender: TObject);
begin
  if FPanelVisible then
  begin
    pnlAbaCadastro.Height := pnlAbaCadastro.Height + FStep;
    if pnlAbaCadastro.Height >= FTargetHeight then
    begin
      pnlAbaCadastro.Height := FTargetHeight;
      Timer1.Enabled := False;
      FAnimationInProgress := False;
    end;
  end
  else
  begin
    pnlAbaCadastro.Height := pnlAbaCadastro.Height + FStep;
    if pnlAbaCadastro.Height <= FTargetHeight then
    begin
      pnlAbaCadastro.Height := FTargetHeight;
      pnlAbaCadastro.Visible := False;
      Timer1.Enabled := False;
      FAnimationInProgress := False;

      pnl_btnCompras.Top := 50;
      pnl_btnVendas.Top := 90;
    end;
  end;
end;

end.
