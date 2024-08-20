unit Fusion.View.Usuarios;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Fusion.View.CadastroPadrao, Data.DB,
  System.ImageList, Vcl.ImgList, Vcl.Grids, Vcl.DBGrids, Vcl.StdCtrls,
  Vcl.ExtCtrls, Vcl.WinXPanels, Fusiosn.Model.Usuarios, Vcl.Imaging.pngimage, Utils,
  Vcl.DBCtrls, Vcl.Buttons;

type
  TfrmCadastroUsuario = class(TfrmCadastroPadrao)
    lbSubTitulo: TLabel;
    Panel1: TPanel;
    pnl_user: TPanel;
    lbNome: TLabel;
    edtNome: TEdit;
    lineNome: TPanel;
    pnl_Email: TPanel;
    lbEmail: TLabel;
    edtEmail: TEdit;
    lineEmail: TPanel;
    pnl_Login: TPanel;
    lbLogin: TLabel;
    edtLogin: TEdit;
    lineLogin: TPanel;
    pnl_Senha: TPanel;
    lbSenha: TLabel;
    edtSenha: TEdit;
    lineSenha: TPanel;
    PnlDados: TPanel;
    rgStatus: TRadioGroup;
    lbStatus: TLabel;
    lbAtivo: TLabel;
    lbInativo: TLabel;
    PnlStatus: TPanel;
    imgHide: TImage;
    imgShow: TImage;
    lbl_Admin: TLabel;
    lbl_AlteraSenha: TLabel;
    chkAdmin: TDBCheckBox;
    chkSenhaTemp: TDBCheckBox;
    procedure Button6Click(Sender: TObject);
    procedure Image1Click(Sender: TObject);
    procedure btnFecharClick(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure SpeedButton1Click(Sender: TObject);
    procedure SpeedButton4Click(Sender: TObject);
    procedure SpeedButton6Click(Sender: TObject);
    procedure imgShowClick(Sender: TObject);
    procedure imgHideClick(Sender: TObject);
    procedure SpeedButton7Click(Sender: TObject);
    procedure SpeedButton5Click(Sender: TObject);
    procedure SpeedButton2Click(Sender: TObject);
    procedure chkAlteraSenhaClick(Sender: TObject);
    procedure CardPadraoCardChange(Sender: TObject; PrevCard, NextCard: TCard);
    procedure FormShow(Sender: TObject);
    procedure chkSenhaTempClick(Sender: TObject);
  private
    var sArmazenaSenha : String;
  public

  protected
  procedure Pesquisar; override;
  end;

var
  frmCadastroUsuario: TfrmCadastroUsuario;

implementation

{$R *.dfm}

procedure TfrmCadastroUsuario.btnFecharClick(Sender: TObject);
begin
  inherited;
  dmUsuarios.cdsUsuarios.params.clear;
  LimparDBGrid(dmUsuarios.cdsUsuarios);
end;

procedure TfrmCadastroUsuario.Button2Click(Sender: TObject);
begin
  inherited;
  CardPadrao.ActiveCard := CadastroPadrao;
end;

procedure TfrmCadastroUsuario.Button6Click(Sender: TObject);
begin
  inherited;
  dmUsuarios.cdsUsuarios.Close;
  dmUsuarios.cdsUsuarios.CommandText := 'select * from fx_usuario';
  dmUsuarios.cdsUsuarios.Open;
end;


procedure TfrmCadastroUsuario.CardPadraoCardChange(Sender: TObject; PrevCard,
  NextCard: TCard);
begin
  inherited;
  if dmUsuarios.isAdmin(dmUsuarios.GIDUsuario) = False then
  begin
    chkAdmin.Visible     := False;
    lbl_Admin.Visible    := False;
    chkSenhaTemp.Top   := 244;
    lbl_AlteraSenha.Top  := 244;
  end
  else
  begin
    chkAdmin.Visible     := True;
    lbl_Admin.Visible    := True;
    chkSenhaTemp.Top   := 265;
    lbl_AlteraSenha.Top  := 265;
  end;

end;

procedure TfrmCadastroUsuario.chkAlteraSenhaClick(Sender: TObject);
begin
  inherited;
   if (chkSenhaTemp.Checked = True) then
   begin
      pnl_Senha.Enabled := False;
      edtSenha.Text := '';
   end;

end;

procedure TfrmCadastroUsuario.chkSenhaTempClick(Sender: TObject);
begin
  inherited;
  if (chkSenhaTemp.Checked) then
  begin
    if edtSenha.Text <> '' then
    begin
      sArmazenaSenha := edtSenha.Text;
    end;
    edtSenha.Enabled := False;
    edtSenha.Text := '';
  end
  else
  begin
    edtSenha.Enabled := True;
    edtSenha.Text := sArmazenaSenha;
  end;

end;

procedure TfrmCadastroUsuario.FormShow(Sender: TObject);
begin
  inherited;
  sArmazenaSenha := edtSenha.Text;
  if chkSenhaTemp.Checked then
  edtSenha.Enabled := False;
  Pesquisar;
end;

procedure TfrmCadastroUsuario.Image1Click(Sender: TObject);
begin
  Pesquisar;
end;

procedure TfrmCadastroUsuario.imgHideClick(Sender: TObject);
begin
  inherited;
  edtSenha.PasswordChar:= '*';
  imgShow.Visible := True;
  imgHide.Visible := False;
end;

procedure TfrmCadastroUsuario.imgShowClick(Sender: TObject);
begin
  inherited;
  edtSenha.PasswordChar:= #0;
  imgShow.Visible := False;
  imgHide.Visible := True;
end;


procedure TfrmCadastroUsuario.Pesquisar;
var sFiltro: String;
begin
  inherited;
  sFiltro := Utils.LikeFind(NomeText.Text, gdUsuario);
  dmUsuarios.cdsUsuarios.Close;
  dmUsuarios.cdsUsuarios.CommandText := 'select * from fx_usuario' + sFiltro;
  dmUsuarios.cdsUsuarios.Open;
end;

procedure TfrmCadastroUsuario.SpeedButton1Click(Sender: TObject);
begin
  inherited;
  CardPadrao.ActiveCard := CadastroPadrao;
  LimpaCampos;
  EdtNome.SetFocus;
  dmUsuarios.cdsUsuarios.Open;
  dmUsuarios.cdsUsuarios.Insert;
  chkAdmin.checked := False;
  chkSenhaTemp.checked := False;
end;

procedure TfrmCadastroUsuario.SpeedButton2Click(Sender: TObject);
  var sStatus: String;
begin
  if trim(edtNome.Text) = '' then
  begin
    edtNome.SetFocus;
    Application.MessageBox('Voc� deve informar o Nome do usu�rio!', 'ATEN��O', MB_OK + MB_ICONWARNING);
    abort;
  end;
  if trim(edtLogin.Text) = '' then
  begin
    edtLogin.SetFocus;
    Application.MessageBox('Voc� deve informar o Login do usu�rio!', 'ATEN��O', MB_OK + MB_ICONWARNING);
    abort;
  end;
  if (trim(edtSenha.Text) = '') and (edtSenha.enabled) then
  begin
    edtSenha.SetFocus;
    Application.MessageBox('Voc� deve informar a Senha do usu�rio!', 'ATEN��O', MB_OK + MB_ICONWARNING);
    abort;
  end;
  if (rgStatus.ItemIndex <> 0) and (rgStatus.ItemIndex <> 1) then
  begin
    Application.MessageBox('Voc� deve informar o Status do usu�rio!', 'ATEN��O', MB_OK + MB_ICONWARNING);
    abort;
  end;

   if rgStatus.ItemIndex = 0 then
   begin
     sStatus := 'A';
   end
   else
   begin
     sStatus := 'I';
   end;

   if dmUsuarios.VerificaLogin(Trim(edtLogin.Text), dmUsuarios.cdsUsuarios.FieldByName('ID').AsInteger) then
   begin
      edtLogin.SetFocus;
      Application.MessageBox(PWideChar(Format('O Login %s j� est� em uso!', [edtLogin.Text])),'ATEN��O', MB_OK +  MB_ICONWARNING);
      Abort;
   end;


   if dmUsuarios.cdsUsuarios.State in [dsInsert] then
   begin

      dmUsuarios.sqlUsuarios.Connection.StartTransaction;

      try

          dmUsuarios.qryAuxiliar.SQL.Text := ' INSERT INTO fx_usuario                                               ' +
                                             ' (ID, NOME, LOGIN, SENHA, EMAIL, DATA_CADASTRO, STATUS, ADMIN )       ' +
                                             ' VALUES (:ID, :NOME, :LOGIN, :SENHA, :EMAIL, :DATA_CADASTRO, :STATUS, ' +
                                             ' :ADMIN, :SENHA_TEMP) ';

          dmUsuarios.qryAuxiliar.paramByName('ID').AsInteger              := Utils.FusionSequence('ID', 'fx_usuario');
          dmUsuarios.qryAuxiliar.paramByName('NOME').AsString             := Trim(edtNome.Text);
          dmUsuarios.qryAuxiliar.paramByName('LOGIN').AsString            := Trim(edtLogin.Text);
          dmUsuarios.qryAuxiliar.paramByName('SENHA').AsString            := Utils.Crypt('C', Trim(edtSenha.Text));
          dmUsuarios.qryAuxiliar.paramByName('EMAIL').AsString            := Trim(edtEmail.Text);
          dmUsuarios.qryAuxiliar.paramByName('DATA_CADASTRO').AsDateTime  := now;
          dmUsuarios.qryAuxiliar.paramByName('STATUS').AsString           := Trim(sStatus);
          if (chkAdmin.Checked) then
          begin
             dmUsuarios.qryAuxiliar.paramByName('ADMIN').AsString         := 'S';
          end
          else
          begin
            dmUsuarios.qryAuxiliar.paramByName('ADMIN').AsString          := 'N';
          end;
          if (chkSenhaTemp.Checked) then
          begin
             dmUsuarios.qryAuxiliar.paramByName('SENHA_TEMP').AsString    := 'S';
          end
          else
          begin
            dmUsuarios.qryAuxiliar.paramByName('SENHA_TEMP').AsString     := 'N';
          end;



          dmUsuarios.qryAuxiliar.ExecSQL;

          dmUsuarios.sqlUsuarios.Connection.Commit;
          Application.MessageBox('Usu�rio Cadastrado com Sucesso!', 'ATEN��O', MB_ICONINFORMATION);

      except
          on E: Exception do
          begin
            dmUsuarios.sqlUsuarios.Connection.Rollback;
            Application.MessageBox(PChar('Erro ao salvar os dados: ' + E.Message), 'ERRO', MB_OK + MB_ICONERROR);
          end;
      end;

   end;


   if dmUsuarios.cdsUsuarios.State in [dsEdit] then
   begin

      dmUsuarios.sqlUsuarios.Connection.StartTransaction;

      try

          dmUsuarios.qryAuxiliar.SQL.Text := ' UPDATE fx_usuario SET          ' +
                                             ' NOME          = :NOME,         ' +
                                             ' LOGIN         = :LOGIN,        ' +
                                             ' SENHA         = :SENHA,        ' +
                                             ' EMAIL         = :EMAIL,        ' +
                                             ' STATUS        = :STATUS,       ' +
                                             ' ADMIN         = :ADMIN,        ' +
                                             ' SENHA_TEMP    = :SENHA_TEMP    ' +
                                             ' WHERE ID      = ' + dmUsuarios.cdsUsuariosID.AsString;

          dmUsuarios.qryAuxiliar.paramByName('NOME').AsString             := Trim(edtNome.Text);
          dmUsuarios.qryAuxiliar.paramByName('LOGIN').AsString            := Trim(edtLogin.Text);
          dmUsuarios.qryAuxiliar.paramByName('EMAIL').AsString            := Trim(edtEmail.Text);
          dmUsuarios.qryAuxiliar.paramByName('STATUS').AsString           := Trim(sStatus);
          if (chkAdmin.Checked) then
          begin
             dmUsuarios.qryAuxiliar.paramByName('ADMIN').AsString         := 'S';
          end
          else
          begin
            dmUsuarios.qryAuxiliar.paramByName('ADMIN').AsString          := 'N';
          end;
          if (chkSenhaTemp.Checked) then
          begin
             dmUsuarios.qryAuxiliar.paramByName('SENHA_TEMP').AsString    := 'S';
             dmUsuarios.qryAuxiliar.paramByName('SENHA').AsString := '';
          end
          else
          begin
            dmUsuarios.qryAuxiliar.paramByName('SENHA_TEMP').AsString     := 'N';
            dmUsuarios.qryAuxiliar.paramByName('SENHA').AsString          := Utils.Crypt('C', Trim(edtSenha.Text));
          end;


          dmUsuarios.qryAuxiliar.ExecSQL;

          dmUsuarios.sqlUsuarios.Connection.Commit;
          Application.MessageBox('Usu�rio Alterado com Sucesso!', 'ATEN��O', MB_ICONINFORMATION);

      except
          on E: Exception do
          begin
            dmUsuarios.sqlUsuarios.Connection.Rollback;
            Application.MessageBox(PChar('Erro ao salvar os dados: ' + E.Message), 'ERRO', MB_OK + MB_ICONERROR);
          end;
      end;

   end;



  Utils.RefreshDataSet(dmUsuarios.cdsUsuarios);
  CardPadrao.ActiveCard := PesquisaPadrao;
  inherited;

end;

procedure TfrmCadastroUsuario.SpeedButton4Click(Sender: TObject);
begin
  inherited;
  LimpaCampos;
  EdtNome.SetFocus;
end;

procedure TfrmCadastroUsuario.SpeedButton5Click(Sender: TObject);
begin
  inherited;
  imgHideClick(nil);
  dmUsuarios.cdsUsuarios.Edit;
  EdtNome.Text := dmUsuarios.cdsUsuariosNOME.AsString;
  EdtEmail.Text := dmUsuarios.cdsUsuariosEMAIL.AsString;
  EdtLogin.Text := dmUsuarios.cdsUsuariosLOGIN.AsString;
  EdtSenha.Text := Utils.Crypt('D', dmUsuarios.cdsUsuariosSENHA.AsString);
  if dmUsuarios.cdsUsuariosSTATUS.AsString = 'A' then
  begin
      rgStatus.ItemIndex := 0;
  end
  else
  begin
    rgStatus.ItemIndex := 1;
  end;

  EdtNome.SetFocus;


end;

procedure TfrmCadastroUsuario.SpeedButton6Click(Sender: TObject);
begin
  inherited;
  dmUsuarios.cdsUsuarios.Cancel;

end;

procedure TfrmCadastroUsuario.SpeedButton7Click(Sender: TObject);
begin
  inherited;
  dmUsuarios.cdsUsuarios.Close;
  NomeText.Text := '';
  Close;
end;

end.
