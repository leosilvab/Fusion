unit Fusion.View.Splash;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.ComCtrls,
  Vcl.Imaging.pngimage, Vcl.ExtCtrls, Vcl.Imaging.GIFImg, Math;

type
  TfrmSplash = class(TForm)
    PnlPrincipal: TPanel;
    imgLogo: TImage;
    LoadingTimer: TTimer;
    lbStatus: TLabel;
    Image1: TImage;
    Image2: TImage;
    Image3: TImage;
    Image4: TImage;
    Image5: TImage;
    Timer1: TTimer;
    serverImg: TImage;
    procedure LoadingTimerTimer(Sender: TObject);
    procedure PnlPrincipalClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure Timer1Timer(Sender: TObject);
  private
    FCurrentImageIndex: Integer;
    procedure ShowImage(Index: Integer);
    procedure AtualizaIcones(Mensagem: String; Imagem : TImage);
    var vSeg : Integer;
  public
    { Public declarations }
  end;

var
  frmSplash: TfrmSplash;

implementation

{$R *.dfm}


procedure TfrmSplash.AtualizaIcones(Mensagem: String; Imagem: TImage);
begin
   if lbStatus.Visible = False Then
   begin
      lbStatus.Visible := True;
   end;

   lbStatus.Caption := Mensagem;
   Imagem.Visible := True;
end;

procedure TfrmSplash.FormCreate(Sender: TObject);
begin
  FCurrentImageIndex := 0; 
  ShowImage(FCurrentImageIndex); 
  LoadingTimer.Interval := 90;
  LoadingTimer.Enabled := True; 
  vSeg := 0;
end;

procedure TfrmSplash.LoadingTimerTimer(Sender: TObject);
begin
  FCurrentImageIndex := (FCurrentImageIndex + 1) mod 5;
  ShowImage(FCurrentImageIndex); 
end;

procedure TfrmSplash.ShowImage(Index: Integer);
begin

  Image1.Visible := False;
  Image2.Visible := False;
  Image3.Visible := False;
  Image4.Visible := False;
  Image5.Visible := False;


  case Index of
    0: Image1.Visible := True;
    1: Image2.Visible := True;
    2: Image3.Visible := True;
    3: Image4.Visible := True;
    4: Image5.Visible := True;
  end;
end;

procedure TfrmSplash.Timer1Timer(Sender: TObject);
begin
  vSeg := vSeg +1;

  case vSeg of
  1 : AtualizaIcones('Conectando ao Servidor...', serverImg);
  end;

  if vSeg >= 2.5 then
  begin
  close;
  end;
end;

procedure TfrmSplash.PnlPrincipalClick(Sender: TObject);
begin

end;

end.

