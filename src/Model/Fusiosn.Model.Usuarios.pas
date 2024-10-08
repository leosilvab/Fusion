unit Fusiosn.Model.Usuarios;

interface

uses
  System.SysUtils, System.Classes, Fusiosn.Model.Conexao, FireDAC.Stan.Intf,
  FireDAC.Stan.Option, FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS,
  FireDAC.Phys.Intf, FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt,
  Datasnap.Provider, Datasnap.DBClient, Data.DB, FireDAC.Comp.DataSet, Utils,
  FireDAC.Comp.Client;

type
  TdmUsuarios = class(TDataModule)
    sqlUsuarios: TFDQuery;
    dspUsuarios: TDataSetProvider;
    cdsUsuarios: TClientDataSet;
    cdsUsuariosNOME: TStringField;
    cdsUsuariosID: TIntegerField;
    cdsUsuariosLOGIN: TStringField;
    cdsUsuariosSENHA: TStringField;
    cdsUsuariosDATA_CADASTRO: TDateField;
    cdsUsuariosSTATUS: TStringField;
    cdsUsuariosEMAIL: TStringField;
    qryAuxiliar: TFDQuery;
    cdsUsuariosADMIN: TStringField;
    cdsUsuariosSENHA_TEMP: TStringField;

  private
    FGNomeUsuario: string;
    FGLoginUsuario: string;
    FGIDUsuario: string;
    procedure SetGNomeUsuario(const Value: string);
    procedure SetGLoginUsuario(const Value: string);
    procedure SetGIDUsuario(const Value: string);
    { Private declarations }
  public
      function VerificaLogin(Login : string; ID : Integer) : Boolean;
      procedure EfetuaLogin(Login, Senha : string);

      property GNomeUsuario : string read FGNomeUsuario write SetGNomeUsuario;
      property GLoginUsuario : string read FGLoginUsuario write SetGLoginUsuario;
      property GIDUsuario : string read FGIDUsuario write SetGIDUsuario;
      function isAdmin(Usuario : String): Boolean;
      function VerificaSenhaTemp(ID : String): Boolean;
  end;

var
  dmUsuarios: TdmUsuarios;

implementation

{%CLASSGROUP 'Vcl.Controls.TControl'}

{$R *.dfm}



{ TdmUsuarios }

procedure TdmUsuarios.EfetuaLogin(Login, Senha: string);
  var SQLConsulta : TFDQuery;
begin
    SQLConsulta := TFDQuery.Create(nil);
    try
      SQLConsulta.Connection := dmConexao.SQLConexao;
      SQLConsulta.SQL.Text := 'SELECT * FROM fx_usuario WHERE login = :LOGIN';
      SQLConsulta.ParamByName('LOGIN').AsString := Login;
      SQLConsulta.Open;

      if Utils.Crypt('D', SQLConsulta.FieldByName('SENHA').AsString) <> senha then
      begin
         raise Exception.Create('Usu�rio ou senha inv�lido!');
      end;

      if SQLConsulta.IsEmpty then
      begin
        raise Exception.Create('Usu�rio n�o existe!');
      end;

      if SQLConsulta.FieldByName('STATUS').AsString <> 'A' then
      begin
        raise Exception.Create('Usu�rio Bloqueado!');
      end;

      FGIDUsuario    :=  SQLConsulta.FieldByName('ID').AsString;
      FGNomeUsuario  :=  SQLConsulta.FieldByName('NOME').AsString;
      FGLoginUsuario :=  SQLConsulta.FieldByName('LOGIN').AsString;

    finally
      SQLConsulta.Close;
      SQLConsulta.Free;
    end;

end;

function TdmUsuarios.isAdmin(Usuario : String): Boolean;
  var qryAux : TFDQuery;
begin
  result := False;
  qryAux := TFDQuery.Create(nil);

   try
     qryAux.Connection := dmConexao.SQLConexao;
     qryAux.SQL.Text := 'SELECT admin FROM fx_usuario WHERE ID = ' + FGIDUsuario;
     qryAux.Open;

     if qryAux.FieldByName('admin').AsString = 'S' then
     begin
        Result := True;
     end

   finally
      qryAux.Close;
      qryAux.Free;
   end;


end;

procedure TdmUsuarios.SetGIDUsuario(const Value: string);
begin
  FGIDUsuario := Value;
end;

procedure TdmUsuarios.SetGLoginUsuario(const Value: string);
begin
  FGLoginUsuario := Value;
end;

procedure TdmUsuarios.SetGNomeUsuario(const Value: string);
begin
  FGNomeUsuario := Value;
end;

function TdmUsuarios.VerificaLogin(Login : String; ID: Integer): Boolean;
var SQLConsulta : TFDQuery;
begin
   Result := False;
   SQLConsulta := TFDQuery.Create(nil);

   try
     SQLConsulta.Connection := dmConexao.SQLConexao;
     SQLConsulta.SQL.Text := 'SELECT ID FROM fx_usuario WHERE login = :LOGIN';
     SQLConsulta.ParamByName('LOGIN').AsString := Login;
     SQLConsulta.Open;

     if not SQLConsulta.IsEmpty then
     begin
        Result := SQLConsulta.FieldByName('ID').AsInteger <> ID;
     end;

   finally
     SQLConsulta.Close;
     SQLConsulta.Free;
   end;
end;

function TdmUsuarios.VerificaSenhaTemp(ID: String): Boolean;
  var SQLConsulta : TFDQuery;
begin
    result := False;
    SQLConsulta := TFDQuery.Create(nil);
     try
       SQLConsulta.Connection := dmConexao.SQLConexao;
       SQLConsulta.SQL.Text := 'SELECT senha_temp from fx_usuario WHERE ID = :ID';
       SQLConsulta.ParamByName('ID').AsString := ID;
       SQLConsulta.Open;

       if SQLConsulta.FieldByName('SENHA_TEMP').AsString = 'S' then
       begin
         result := True;
       end;

     finally
       SQLConsulta.Close;
       SQLConsulta.Free;
     end;
end;

end.




