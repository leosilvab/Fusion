unit Fusiosn.Model.Sistema;

interface

uses
  System.SysUtils, System.Classes;

type
  TdmSistema = class(TDataModule)
  private
    const ArquivoConfiguracao = 'Data.ini';
    function GetConfiguracao(Secao, Parametro, valorPadrao : String) : String;
    procedure SetConfiguracao(Secao, Parametro, Valor : String);
  public
    function DataUltimoAcesso : String; overload;
    function UsuarioUltimoAcesso : String; overload;
    function SavePassword : String; overload;
    procedure DataUltimoAcesso( aValue : TDateTime); overload;
    procedure UsuarioUltimoAcesso(aValue : String); overload;
    procedure SavePassword(aValue : String); overload;
    procedure ClearIni;
  end;

var
  dmSistema: TdmSistema;

implementation

uses System.IniFiles, Vcl.Forms;

{$R *.dfm}

{ TDataModule1 }

function TdmSistema.DataUltimoAcesso: String;
begin
   Result := GetConfiguracao('Acesso', 'Data', '');
end;

procedure TdmSistema.ClearIni;
var
  LArquivoConfig: TIniFile;
  Sections: TStringList;
  I: Integer;
begin
  LArquivoConfig := TIniFile.Create(ExtractFilePath(Application.ExeName) + ArquivoConfiguracao);
  try
    Sections := TStringList.Create;
    try
      LArquivoConfig.ReadSections(Sections);
      for I := 0 to Sections.Count - 1 do
        LArquivoConfig.EraseSection(Sections[I]);
    finally
      Sections.Free;
    end;
  finally
    LArquivoConfig.Free;
  end;
end;

procedure TdmSistema.DataUltimoAcesso(aValue: TDateTime);
begin
   SetConfiguracao('Acesso', 'Data', DateTimeToStr(aValue));
end;

function TdmSistema.GetConfiguracao(Secao, Parametro,
  valorPadrao: String): String;
  var LArquivoConfig : TIniFile;
begin
   LArquivoConfig := TIniFile.Create(ExtractFilePath(Application.ExeName) + ArquivoConfiguracao);
   try
     Result := LArquivoConfig.ReadString(Secao, Parametro, valorPadrao);
   finally
     LArquivoConfig.Free;
   end;
end;

procedure TdmSistema.SavePassword(aValue: String);
begin
   SetConfiguracao('Acesso', 'Senha', aValue);
end;

function TdmSistema.SavePassword: String;
begin
   Result := GetConfiguracao('Acesso', 'Senha', '');
end;

procedure TdmSistema.SetConfiguracao(Secao, Parametro, Valor: String);
  var LArquivoConfig : TIniFile;
begin
   LArquivoConfig := TIniFile.Create(ExtractFilePath(Application.ExeName) + ArquivoConfiguracao);
   try
     LArquivoConfig.WriteString(Secao, Parametro, Valor);
   finally
     LArquivoConfig.Free;
   end;

end;

function TdmSistema.UsuarioUltimoAcesso: String;
begin
   Result := GetConfiguracao('Acesso', 'Usu�rio', '');
end;

procedure TdmSistema.UsuarioUltimoAcesso(aValue: String);
begin
   SetConfiguracao('Acesso', 'Usu�rio', aValue);
end;

end.
