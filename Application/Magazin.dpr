program Magazin;

uses
  Forms,
  UZastavka in 'UZastavka.pas' {fZastavka},
  UAuth in 'UAuth.pas' {fAuth},
  UMain in 'UMain.pas' {fMain},
  UDM in 'UDM.pas' {DM: TDataModule},
  UDoljnost in 'UDoljnost.pas' {fDoljnost};

{$R *.res}

begin
  Application.Initialize;
  fZastavka:=TfZastavka.Create(Application);
  fZastavka.show;
  fZastavka.Update;
  while fZastavka.Timer1.Enabled do
  Application.ProcessMessages;
  fZastavka.Hide;
  fZastavka.Free;
  Application.CreateForm(TfAuth, fAuth);
  Application.CreateForm(TfMain, fMain);
  Application.CreateForm(TDM, DM);
  Application.CreateForm(TfDoljnost, fDoljnost);
  Application.Run;
end.
