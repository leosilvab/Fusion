unit Fusion.View.AtualizaSenha;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics, Fusiosn.Model.Conexao,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ExtCtrls, Vcl.StdCtrls, Fusiosn.Model.Usuarios, FireDAC.Comp.Client,
  Vcl.Imaging.pngimage, Vcl.Buttons, Utils;

type
  TfrmAtualizaSenha = class(TForm)
    pnlBG: TPanel;
    pnlDados: TPanel;
    pnl_user: TPanel;
    lbNome: TLabel;
    edtNome: TEdit;
    lineNome: TPanel;
    pnl_Senha: TPanel;
    lbSenha: TLabel;
    edtSenha: TEdit;
    lineSenha: TPanel;
    pnl_CSenha: TPanel;
    lbCSenha: TLabel;
    edtCSenha: TEdit;
    lineCSenha: TPanel;
    btnAdicionar: TPanel;
    Shape2: TShape;
    Label4: TLabel;
    SpeedButton2: TSpeedButton;
    Image3: TImage;
    lbSubTitulo: TLabel;
    Panel1: TPanel;
    imgInfo: TImage;
    lbDescricao: TLabel;
    pnlInfo: TPanel;
    imgHide: TImage;
    imgShow: TImage;
    imgHide2: TImage;
    imgShow2: TImage;
    procedure FormShow(Sender: TObject);
    procedure imgHideClick(Sender: TObject);
    procedure imgShowClick(Sender: TObject);
    procedure imgHide2Click(Sender: TObject);
    procedure imgShow2Click(Sender: TObject);
    procedure SpeedButton2Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmAtualizaSenha: TfrmAtualizaSenha;

implementation

{$R *.dfm}

procedure TfrmAtualizaSenha.FormShow(Sender: TObject);
begin
  edtNome.Text := dmUsuarios.GNomeUsuario;
  edtNome.enabled := False;
  edtSenha.SetFocus;
end;

procedure TfrmAtualizaSenha.imgHide2Click(Sender: TObject);
begin
  inherited;
  edtCSenha.PasswordChar:= '*';
  imgShow2.Visible := True;
  imgHide2.Visible := False;
end;

procedure TfrmAtualizaSenha.imgHideClick(Sender: TObject);
begin
  inherited;
  edtSenha.PasswordChar:= '*';
  imgShow.Visible := True;
  imgHide.Visible := False;
end;

procedure TfrmAtualizaSenha.imgShow2Click(Sender: TObject);
begin
  inherited;
  edtCSenha.PasswordChar:= #0;
  imgShow2.Visible := False;
  imgHide2.Visible := True;
end;

procedure TfrmAtualizaSenha.imgShowClick(Sender: TObject);
begin
  inherited;
  edtSenha.PasswordChar:= #0;
  imgShow.Visible := False;
  imgHide.Visible := True;
end;

procedure TfrmAtualizaSenha.SpeedButton2Click(Sender: TObject);
  var qryAuxiliar : TFDQuery;
begin
  if (edtSenha.Text <> '') and (edtSenha.Text = edtCSenha.Text) and (length(edtSenha.Text) > 3) then
  begin
    qryAuxiliar := TFDQuery.Create(nil);
    try
      qryAuxiliar.Connection := dmConexao.SQLConexao;
      qryAuxiliar.SQL.Text := ' UPDATE fx_usuario SET senha = :SENHA, senha_temp = ''N'' WHERE ID = ' + dmUsuarios.GIDUsuario;
      qryAuxiliar.ParamByName('SENHA').AsString := Utils.Crypt('C', edtSenha.Text);
      qryAuxiliar.ExecSQL;
    finally
      qryAuxiliar.Close;
      qryAuxiliar.Free;
    end;
    Application.MessageBox('Senha Cadastrada com Sucesso!', 'ATENÇÃO', MB_OK + MB_ICONINFORMATION);
  end
  else
    begin
    Application.MessageBox('Senhas inconsistentes!', 'ATENÇÃO', MB_OK + MB_ICONERROR);
    end;


end;

end.
