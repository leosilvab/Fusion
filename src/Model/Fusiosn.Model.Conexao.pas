unit Fusiosn.Model.Conexao;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Classes, FireDAC.Stan.Intf, FireDAC.Stan.Option,
  FireDAC.Stan.Error, FireDAC.UI.Intf, FireDAC.Phys.Intf, FireDAC.Stan.Def,
  FireDAC.Stan.Pool, FireDAC.Stan.Async, FireDAC.Phys, Data.DB,
  FireDAC.Comp.Client, FireDAC.Phys.MySQL, FireDAC.Phys.MySQLDef,
  FireDAC.Stan.Param, FireDAC.DatS, FireDAC.DApt.Intf, FireDAC.DApt,
  FireDAC.Comp.DataSet, FireDAC.VCLUI.Wait, FireDAC.Comp.UI, Vcl.Dialogs;

type
  TdmConexao = class(TDataModule)
    FDGUIxWaitCursor1: TFDGUIxWaitCursor;
    SQLConexao: TFDConnection;
    sqlObject: TFDQuery;
    procedure DataModuleCreate(Sender: TObject);
  private
    const ArquivoConfiguracao = 'Fusion.cfg';
  public
    procedure CarregarConfiguracoes;
    procedure Conectar;
    procedure Desconectar;
  end;

var
  dmConexao: TdmConexao;

implementation

{%CLASSGROUP 'Vcl.Controls.TControl'}

{$R *.dfm}

{ TDataModule1 }

procedure TdmConexao.CarregarConfiguracoes;
var
  ParametroNome : String;
  ParametroValor : String;
  Contador : Integer;
  ListaParametros : TStringList;

begin
  SqlConexao.Params.Clear;


 if not FileExists(ArquivoConfiguracao) then
    raise Exception.Create('Arquivo de configura��o n�o encontrado!');
  ListaParametros := TStringList.Create;
  try
    ListaParametros.LoadFromFile(ArquivoConfiguracao);
    for Contador := 0 to Pred(ListaParametros.Count) do
    begin
      if ListaParametros[Contador].IndexOf('=') > 0 then
      begin
        ParametroNome := ListaParametros[Contador].Split(['='])[0].Trim;
        ParametroValor := ListaParametros[Contador].Split(['='])[1].Trim;
        SQLConexao.Params.Add(ParametroNome + '=' + ParametroValor);
      end;
    end;
  finally
    ListaParametros.Free;
  end;
end;


procedure TdmConexao.Conectar;
begin
   SQLConexao.Connected := True;
end;

procedure TdmConexao.DataModuleCreate(Sender: TObject);
begin
  CarregarConfiguracoes;
  Conectar;
end;


procedure TdmConexao.Desconectar;
begin
   SQLConexao.Connected := False;
end;

end.
