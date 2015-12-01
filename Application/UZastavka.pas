unit UZastavka;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ComCtrls, XPMan, ExtCtrls;

type
  TfZastavka = class(TForm)
    XPManifest1: TXPManifest;
    ProgressBar1: TProgressBar;
    Label1: TLabel;
    Timer1: TTimer;
    Label2: TLabel;
    procedure Timer1Timer(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fZastavka: TfZastavka;

implementation

{$R *.dfm}

procedure TfZastavka.Timer1Timer(Sender: TObject);
begin
randomize;
if ProgressBar1.Position = 100 then
begin
  Timer1.Enabled:=false;
  ProgressBar1.Visible:=false;
  fZastavka.Height:=fZastavka.Height-480;
  sleep(1000);
  end
else
  begin
  ProgressBar1.Position:=progressbar1.Position+random(17);
  Label1.Caption:='Загрузка '+ inttostr(progressbar1.Position)+' %';
  end;
end;

end.
