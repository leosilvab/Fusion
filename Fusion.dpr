program Fusion;

uses
  Vcl.Forms,
  Fusion.View.Principal in 'src\View\Fusion.View.Principal.pas' {frmPrincipal},
  Fusion.View.CadastroPadrao in 'src\View\Fusion.View.CadastroPadrao.pas' {frmCadastroPadrao},
  Fusion.View.Splash in 'src\View\Fusion.View.Splash.pas' {frmSplash},
  Fusion.View.Usuarios in 'src\View\Fusion.View.Usuarios.pas' {frmCadastroUsuario},
  Fusiosn.Model.Conexao in 'src\Model\Fusiosn.Model.Conexao.pas' {dmConexao: TDataModule},
  Fusiosn.Model.Usuarios in 'src\Model\Fusiosn.Model.Usuarios.pas' {dmUsuarios: TDataModule},
  Utils in 'src\Utils\Utils.pas',
  Fusion.View.Login in 'src\View\Fusion.View.Login.pas' {frmLogin},
  Fusiosn.Model.Sistema in 'src\Model\Fusiosn.Model.Sistema.pas' {dmSistema: TDataModule},
  Fusion.View.AtualizaSenha in 'src\View\Fusion.View.AtualizaSenha.pas' {frmAtualizaSenha},
  Fusiosn.Model.Caixa in 'src\Model\Fusiosn.Model.Caixa.pas' {dmCaixa: TDataModule},
  Fusion.View.Caixa in 'src\View\Fusion.View.Caixa.pas' {frmCaixa};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TdmConexao, dmConexao);
  Application.CreateForm(TdmUsuarios, dmUsuarios);
  Application.CreateForm(TdmSistema, dmSistema);
  Application.CreateForm(TdmCaixa, dmCaixa);
  Application.CreateForm(TfrmPrincipal, frmPrincipal);
  Application.CreateForm(TfrmCadastroPadrao, frmCadastroPadrao);
  Application.CreateForm(TfrmCadastroUsuario, frmCadastroUsuario);
  Application.CreateForm(TfrmCaixa, frmCaixa);
  Application.Run;
end.
