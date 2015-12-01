unit UDoljnost;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Grids, DBGrids, StdCtrls, Buttons, ExtCtrls;

type
  TfDoljnost = class(TForm)
    DBGrid1: TDBGrid;
    GroupBox1: TGroupBox;
    GroupBox2: TGroupBox;
    SpeedButton1: TSpeedButton;
    SpeedButton2: TSpeedButton;
    SpeedButton3: TSpeedButton;
    Edit1: TEdit;
    Edit2: TEdit;
    LabeledEdit1: TLabeledEdit;
    procedure DBGrid1CellClick(Column: TColumn);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fDoljnost: TfDoljnost;

implementation

uses UDM, UAuth, UMain, UZastavka;

{$R *.dfm}

procedure TfDoljnost.DBGrid1CellClick(Column: TColumn);
begin
      Edit1.Text:=DM.IBQDoljnostNAME_DOL.AsString;
end;

end.
