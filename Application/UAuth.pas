unit UAuth;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ExtCtrls, Buttons;

type
  TfAuth = class(TForm)
    SpeedButton1: TSpeedButton;
    SpeedButton2: TSpeedButton;
    LabeledEdit1: TLabeledEdit;
    LabeledEdit2: TLabeledEdit;
    procedure SpeedButton2Click(Sender: TObject);
    procedure SpeedButton1Click(Sender: TObject);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fAuth: TfAuth;

implementation

uses UMain, UZastavka, UDM;

{$R *.dfm}

procedure TfAuth.SpeedButton2Click(Sender: TObject);
begin
    fAuth.Close;
end;

procedure TfAuth.SpeedButton1Click(Sender: TObject);
begin
if (DM.IBQAvtoriz.Locate('LOGINN',LabeledEdit1.Text,[]))
and (DM.IBQAvtorizPASWORD.AsString=LabeledEdit2.Text) then
begin
    ShowMessage('WELCOME '+LabeledEdit1.Text);
    fMain.Show;
    fAuth.Hide;
end
else
begin
  ShowMessage('Неверное имя пользователя или пароль. Проверьте правильность введенных данных.');
  LabeledEdit2.Text:='';
end;
end;


procedure TfAuth.FormKeyPress(Sender: TObject; var Key: Char);
begin
 if key=#13 then SpeedButton1.Click;
end;

end.
