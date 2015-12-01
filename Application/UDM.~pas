unit UDM;

interface

uses
  SysUtils, Classes, DB, IBCustomDataSet, IBStoredProc, IBDatabase, IBQuery;

type
  TDM = class(TDataModule)
    IBDatabase1: TIBDatabase;
    IBTransaction1: TIBTransaction;
    DSSotrudnik: TDataSource;
    IBQSotrudnik: TIBQuery;
    IBSotrudnik_del: TIBStoredProc;
    IBSotrudnik_add: TIBStoredProc;
    IBSotrudnik_edit: TIBStoredProc;
    DSDoljnost: TDataSource;
    IBQDoljnost: TIBQuery;
    IBDoljnodt_del: TIBStoredProc;
    IBDoljnost_add: TIBStoredProc;
    IBDoljnost_edit: TIBStoredProc;
    IBQDoljnostDOLJNOST_ID: TIntegerField;
    IBQDoljnostNAME_DOL: TIBStringField;
    IBQSotrudnikSOTRUDNIK_ID: TIntegerField;
    IBQSotrudnikFAM: TIBStringField;
    IBQSotrudnikIMYA: TIBStringField;
    IBQSotrudnikOTCH: TIBStringField;
    IBQSotrudnikDOLJNOST_ID: TIntegerField;
    IBQSotrudnikSERIA_NOM_PAS: TIBStringField;
    IBQSotrudnikDATA_VIDACHI: TIBStringField;
    IBQSotrudnikKEM_VIDAN: TIBStringField;
    IBQSotrudnikDATA_ROJ: TIBStringField;
    IBQSotrudnikMESTO_ROJ: TIBStringField;
    IBQSotrudnikOKLAD: TIBStringField;
    IBQSotrudnikADRES: TIBStringField;
    IBQSotrudnikDOLJNOST_ID1: TIntegerField;
    IBQSotrudnikNAME_DOL: TIBStringField;
    IBQSobitie: TIBQuery;
    DSSobitie: TDataSource;
    IBQSobitieSOBITIE_SOTR_ID: TIntegerField;
    IBQSobitieSOTRUDNIK_ID: TIntegerField;
    IBQSobitieSOBITIE_ID: TIntegerField;
    IBQSobitieFAM: TIBStringField;
    IBQSobitieIMYA: TIBStringField;
    IBQSobitieOTCH: TIBStringField;
    IBQSobitieSOTRUDNIK_ID1: TIntegerField;
    IBQSobitieSERIA_NOM_PAS: TIBStringField;
    IBQSobitieSOBITIE_ID1: TIntegerField;
    IBQSobitieNAME_SOB: TIBStringField;
    IBQSobitieTIP_DOKUM: TIBStringField;
    IBQSobitieDATA_UTVERJ: TIBStringField;
    IBQSobitieSODERJAN_DOKUM: TIBStringField;
    IBQAvtoriz: TIBQuery;
    DSAvtoriz: TDataSource;
    IBQAvtorizID_PROFILE: TIntegerField;
    IBQAvtorizLOGINN: TIBStringField;
    IBQAvtorizPASWORD: TIBStringField;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  DM: TDM;

implementation

{$R *.dfm}

end.
