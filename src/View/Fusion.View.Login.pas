unit Fusion.View.Login;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ExtCtrls, Vcl.StdCtrls, Fusiosn.Model.Usuarios, Fusiosn.Model.Sistema,
  Vcl.Imaging.pngimage, Vcl.Buttons, Vcl.DBCtrls, Utils;

type
  TfrmLogin = class(TForm)
    PnlBG: TPanel;
    PnlDados: TPanel;
    PnlLogin: TPanel;
    lbLogin: TLabel;
    edtLogin: TEdit;
    lineLogin: TPanel;
    PnlSenha: TPanel;
    lbSenha: TLabel;
    edtSenha: TEdit;
    lineSenha: TPanel;
    PnlUsuario: TPanel;
    Image1: TImage;
    Label1: TLabel;
    chkSave: TCheckBox;
    Label2: TLabel;
    imgShow: TImage;
    imgHide: TImage;
    btnLogin: TPanel;
    Shape2: TShape;
    Label4: TLabel;
    bLogin: TSpeedButton;
    Label3: TLabel;
    lbMessage: TLabel;
    procedure imgHideClick(Sender: TObject);
    procedure imgShowClick(Sender: TObject);
    procedure Label3Click(Sender: TObject);
    procedure bLoginClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
  private
    procedure CreateParams(var Params: TCreateParams); override;
  public
    { Public declarations }
  end;

var
  frmLogin: TfrmLogin;

implementation

{$R *.dfm}

procedure TfrmLogin.CreateParams(var Params: TCreateParams);
begin
  inherited CreateParams(Params);
  Params.ExStyle := Params.ExStyle or WS_EX_APPWINDOW;
  Params.WndParent := GetDesktopWindow;
end;

procedure TfrmLogin.FormShow(Sender: TObject);
begin
  edtLogin.Text := Utils.Crypt('D', dmSistema.UsuarioUltimoAcesso);
  edtSenha.Text := Utils.Crypt('D', dmSistema.SavePassword);
  if (edtLogin.Text <> '') or (edtSenha.Text <> '') then
  begin
    chkSave.Checked := True;
  end;
  btnLogin.SetFocus;
end;

procedure TfrmLogin.imgHideClick(Sender: TObject);
begin
  edtSenha.PasswordChar:= '*';
  imgShow.Visible := True;
  imgHide.Visible := False;
end;

procedure TfrmLogin.imgShowClick(Sender: TObject);
begin
  edtSenha.PasswordChar:= #0;
  imgShow.Visible := False;
  imgHide.Visible := True;
end;

procedure TfrmLogin.Label3Click(Sender: TObject);
begin
  Close;
end;

procedure TfrmLogin.bLoginClick(Sender: TObject);
begin
  if (Trim(edtLogin.Text) = '') then
  begin
    edtLogin.SetFocus;
    lbMessage.Visible := True;
    lbMessage.Caption := 'Informe o seu usu�rio!'
  end
  else if (Trim(edtSenha.Text) = '') then
  begin
    edtLogin.SetFocus;
    lbMessage.Visible := True;
    lbMessage.Caption := 'Informe a sua senha!'
  end;

  try
    dmUsuarios.EfetuaLogin(Trim(edtLogin.Text), Trim(edtSenha.Text));
    if (chkSave.Checked) then
    begin
      dmSistema.DataUltimoAcesso(Now);
      dmSistema.UsuarioUltimoAcesso(Utils.Crypt('C', dmUsuarios.GLoginUsuario));
      dmSistema.SavePassword(Utils.Crypt('C', edtSenha.Text));
    end
    else
    begin
      dmSistema.ClearIni;
    end;
    ModalREsult := mrOk;
  except
    on Erro: Exception do
    begin
      Application.MessageBox(PwideChar(Erro.Message), 'Aten��o') ;
    end;
  end;


end;

end.
