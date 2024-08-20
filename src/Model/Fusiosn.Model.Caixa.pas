unit Fusiosn.Model.Caixa;

interface

uses
  System.SysUtils, System.Classes, FireDAC.Stan.Intf, FireDAC.Stan.Option,
  FireDAC.Stan.Param, FireDAC.Stan.Error, FireDAC.DatS, FireDAC.Phys.Intf,
  FireDAC.DApt.Intf, FireDAC.Stan.Async, FireDAC.DApt, Data.DB,
  Datasnap.DBClient, Datasnap.Provider, FireDAC.Comp.DataSet,
  FireDAC.Comp.Client, Fusiosn.Model.Usuarios;

type
  TdmCaixa = class(TDataModule)
    sqlCaixa: TFDQuery;
    dspCaixa: TDataSetProvider;
    cdsCaixa: TClientDataSet;
    cdsCaixaID: TIntegerField;
    cdsCaixaNUMERO_DOC: TStringField;
    cdsCaixaDESCRICAO: TStringField;
    cdsCaixaVALOR: TFMTBCDField;
    cdsCaixaTIPO: TStringField;
    cdsCaixaDATA_CADASTRO: TDateTimeField;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  dmCaixa: TdmCaixa;

implementation

{%CLASSGROUP 'Vcl.Controls.TControl'}

{$R *.dfm}

end.
