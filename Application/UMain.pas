unit UMain;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ComCtrls, StdCtrls, Grids, DBGrids, Mask, DBCtrls, Buttons,
  ExtCtrls;

type
  TfMain = class(TForm)
    PageControl1: TPageControl;
    TabSheet1: TTabSheet;
    PageControl2: TPageControl;
    TabSheet4: TTabSheet;
    TabSheet5: TTabSheet;
    TabSheet6: TTabSheet;
    TabSheet2: TTabSheet;
    TabSheet3: TTabSheet;
    PageControl3: TPageControl;
    TabSheet7: TTabSheet;
    TabSheet8: TTabSheet;
    TabSheet9: TTabSheet;
    PageControl4: TPageControl;
    TabSheet10: TTabSheet;
    TabSheet11: TTabSheet;
    DBGrid1: TDBGrid;
    GroupBox1: TGroupBox;
    LabeledEdit1: TLabeledEdit;
    LabeledEdit2: TLabeledEdit;
    LabeledEdit3: TLabeledEdit;
    LabeledEdit4: TLabeledEdit;
    LabeledEdit6: TLabeledEdit;
    LabeledEdit7: TLabeledEdit;
    MaskEdit2: TMaskEdit;
    Memo1: TMemo;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    DBLookupComboBox1: TDBLookupComboBox;
    SpeedButton1: TSpeedButton;
    GroupBox2: TGroupBox;
    Label5: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    Label8: TLabel;
    SpeedButton4: TSpeedButton;
    LabeledEdit5: TLabeledEdit;
    LabeledEdit9: TLabeledEdit;
    LabeledEdit10: TLabeledEdit;
    LabeledEdit11: TLabeledEdit;
    LabeledEdit12: TLabeledEdit;
    LabeledEdit13: TLabeledEdit;
    MaskEdit5: TMaskEdit;
    Memo2: TMemo;
    DBLookupComboBox2: TDBLookupComboBox;
    SpeedButton2: TSpeedButton;
    Label9: TLabel;
    Label10: TLabel;
    DateTimePicker1: TDateTimePicker;
    DateTimePicker2: TDateTimePicker;
    DateTimePicker3: TDateTimePicker;
    DateTimePicker4: TDateTimePicker;
    DBGrid2: TDBGrid;
    SpeedButton3: TSpeedButton;
    GroupBox4: TGroupBox;
    GroupBox5: TGroupBox;
    DBLookupComboBox3: TDBLookupComboBox;
    procedure FormCloseQuery(Sender: TObject; var CanClose: Boolean);
    procedure SpeedButton1Click(Sender: TObject);
    procedure DBGrid1CellClick(Column: TColumn);
    procedure SpeedButton2Click(Sender: TObject);
    procedure SpeedButton4Click(Sender: TObject);
    procedure SpeedButton3Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure DBGrid2CellClick(Column: TColumn);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
  
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  fMain: TfMain;

implementation

uses UAuth, UDM, UDoljnost, UZastavka;

{$R *.dfm}

procedure TfMain.FormCloseQuery(Sender: TObject; var CanClose: Boolean);
begin
  case messageBox(Handle,'�� ������ ������� �� �����������?','�����', mb_YesNoCancel or mb_iconquestion) of
  IDYES:
  begin
       fAuth.Show;
     CanClose := True;
  end;

  IDNO:
  begin
       fAuth.close;
     CanClose := True;
  end;

  IDCANCEL: canClose := false;
  end;
end;



procedure TfMain.SpeedButton1Click(Sender: TObject);
begin
          if (LabeledEdit1.Text='') or (LabeledEdit2.Text='') or (LabeledEdit3.Text='') or (Memo1.Lines.Text='') or
          (MaskEdit2.Text='') or (DBLookupComboBox1.Text='') or (LabeledEdit4.Text='') or (LabeledEdit6.Text='') or (LabeledEdit7.Text='')
          then begin
          ShowMessage('� ��� ������ ����/����!');
          Exit;
          end;

          if DM.IBQSotrudnik.Locate('SERIA_NOM_PAS',MaskEdit2.Text,[]) then begin
          ShowMessage('�������� ����. ��� ���������� ������ � ����� ��������!');
          Exit;
          end
          else begin

          DM.IBSotrudnik_add.ParamByName('FAM').AsString:=LabeledEdit1.Text;
          DM.IBSotrudnik_add.ParamByName('IMYA').AsString:=LabeledEdit2.Text;
          DM.IBSotrudnik_add.ParamByName('OTCH').AsString:=LabeledEdit3.Text;

          DM.IBSotrudnik_add.ParamByName('SERIA_NOM_PAS').AsString:=MaskEdit2.Text;
          DM.IBSotrudnik_add.ParamByName('DATA_VIDACHI').AsString:=datetostr(DateTimePicker1.Date);
          DM.IBSotrudnik_add.ParamByName('DOLJNOST_ID').AsString:=DBLookupComboBox1.KeyValue;

          DM.IBSotrudnik_add.ParamByName('DATA_ROJ').AsString:=datetostr(DateTimePicker2.Date);
          DM.IBSotrudnik_add.ParamByName('MESTO_ROJ').AsString:=LabeledEdit6.Text;
          DM.IBSotrudnik_add.ParamByName('ADRES').AsString:=LabeledEdit7.Text;

          DM.IBSotrudnik_add.ParamByName('OKLAD').AsString:=LabeledEdit4.Text;
          DM.IBSotrudnik_add.ParamByName('KEM_VIDAN').AsMemo:=Memo1.Lines.Text;


      //    DM.IBProc_Klient_Del.ParamByName('KLIENT_ID').AsInteger:=DM.IBQ_KlientKLIENT_ID.AsInteger;

          DM.IBSotrudnik_add.ExecProc;

          DM.IBTransaction1.CommitRetaining;

          DM.IBQSotrudnik.Close;
          DM.IBQSotrudnik.Open;

          end;
end;

procedure TfMain.DBGrid1CellClick(Column: TColumn);
begin

       LabeledEdit5.Text:=DM.IBQSotrudnikFAM.AsString;
       LabeledEdit9.Text:=DM.IBQSotrudnikIMYA.AsString;
        LabeledEdit10.Text:=DM.IBQSotrudnikOTCH.AsString;
        Memo2.Lines.Text:=DM.IBQSotrudnikKEM_VIDAN.AsString;
       MaskEdit5.Text:=DM.IBQSotrudnikSERIA_NOM_PAS.AsString;
       DateTimePicker3.Date:=StrToDate(DM.IBQSotrudnikDATA_VIDACHI.AsString);
       DBLookupComboBox2.KeyValue:=DM.IBQSotrudnikDOLJNOST_ID.AsInteger;
       DateTimePicker4.Date:=StrToDate(DM.IBQSotrudnikDATA_ROJ.AsString);
       LabeledEdit12.Text:=DM.IBQSotrudnikMESTO_ROJ.AsString;
       LabeledEdit13.Text:=DM.IBQSotrudnikADRES.AsString;
       LabeledEdit11.Text:=DM.IBQSotrudnikOKLAD.AsString;

end;

procedure TfMain.SpeedButton2Click(Sender: TObject);
var s,s1,s2: String;
begin
    s:=LabeledEdit5.Text;
    s1:=LabeledEdit9.Text;
    s2:=LabeledEdit10.Text;
    case MessageDlg('�� ������������� ������ �������"'+ s +'a '+ s1+' '+s2+'�"?',
                mtInformation,
                [mbYes, mbNo],
                0)of
    IDYES: begin
    DM.IBSotrudnik_del.ParamByName('SOTRUDNIK_ID').AsInteger:=DM.IBQSotrudnikSOTRUDNIK_ID.AsInteger;
    DM.IBSotrudnik_del.ExecProc;
    end;
    IDNO: ;
    end;

   DM.IBQSotrudnik.close;
   DM.IBQSotrudnik.open;
end;

procedure TfMain.SpeedButton4Click(Sender: TObject);
begin
      if (LabeledEdit5.Text='') or (LabeledEdit9.Text='') or (LabeledEdit10.Text='') or (Memo2.Lines.Text='') or
          (MaskEdit5.Text='') or (DBLookupComboBox2.Text='') or (LabeledEdit12.Text='') or (LabeledEdit11.Text='') or (LabeledEdit13.Text='')
          then begin
          ShowMessage('� ��� ������ ����/����!');
          Exit;
          end;

          if DM.IBQSotrudnik.Locate('SERIA_NOM_PAS',MaskEdit5.Text,[]) then begin
          ShowMessage('�������� ����. ��� ���������� ������ � ����� ��������!');
          Exit;
          end
          else begin

        DM.IBSotrudnik_edit.ParamByName('FAM').AsString:=LabeledEdit5.Text;
           DM.IBSotrudnik_edit.ParamByName('IMYA').AsString:=LabeledEdit9.Text;
          DM.IBSotrudnik_edit.ParamByName('OTCH').AsString:=LabeledEdit10.Text;
           DM.IBSotrudnik_edit.ParamByName('SERIA_NOM_PAS').AsString:=MaskEdit5.Text;
          DM.IBSotrudnik_edit.ParamByName('DATA_VIDACHI').AsString:=datetostr(DateTimePicker3.Date);
          DM.IBSotrudnik_edit.ParamByName('DOLJNOST_ID').AsString:=DBLookupComboBox2.KeyValue;
           DM.IBSotrudnik_edit.ParamByName('DATA_ROJ').AsString:=datetostr(DateTimePicker4.Date);
          DM.IBSotrudnik_edit.ParamByName('MESTO_ROJ').AsString:=LabeledEdit12.Text;
          DM.IBSotrudnik_edit.ParamByName('ADRES').AsString:=LabeledEdit13.Text;
          DM.IBSotrudnik_edit.ParamByName('OKLAD').AsString:=LabeledEdit11.Text;
           DM.IBSotrudnik_edit.ParamByName('KEM_VIDAN').AsMemo:=Memo2.Lines.Text;



          DM.IBSotrudnik_edit.ParamByName('SOTRUDNIK_ID').AsInteger:=DM.IBQSotrudnikSOTRUDNIK_ID.AsInteger;
         // DM.IBDoljnost_edit.ParamByName('DOLJNOST_ID').AsInteger:=DM.IBQDoljnostDOLJNOST_ID.AsInteger;
          DM.IBSotrudnik_edit.ExecProc;

         DM.IBTransaction1.CommitRetaining;

          DM.IBQSotrudnik.Close;
          DM.IBQSotrudnik.Open;
end;

end;
procedure TfMain.SpeedButton3Click(Sender: TObject);
begin
    fDoljnost.Show;
end;

procedure TfMain.FormCreate(Sender: TObject);
begin
    SpeedButton3.Caption:='���������'+#10+#13'(��������������)';
end;

procedure TfMain.DBGrid2CellClick(Column: TColumn);
begin
    DBLookupComboBox3.KeyValue:=DM.IBQSobitieSOTRUDNIK_ID.AsInteger;   
end;

procedure TfMain.FormKeyPress(Sender: TObject; var Key: Char);


begin

    if key=#13 then  SpeedButton2.Click;
end;

end.


