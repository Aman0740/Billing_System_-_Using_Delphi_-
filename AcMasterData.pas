unit AcMasterData;

interface

uses
  System.SysUtils, System.Classes, Data.DB, Data.Win.ADODB;

type
  TDataAcMaster = class(TDataModule)
    QryAcMaster: TADOQuery;
    DataSrcAcMaster: TDataSource;
    QryCityMasterLK: TADOQuery;
    QryCityMasterLKCityID: TAutoIncField;
    QryCityMasterLKCityName: TStringField;
    QryAcMasterAcID: TAutoIncField;
    QryAcMasterAcName: TStringField;
    QryAcMasterCity: TStringField;
    QryAcMasterState: TStringField;
    QryAcMasterPanNo: TStringField;
    QryAcMasterGSTNo: TStringField;
    QryCityMasterLKStateName: TStringField;
    procedure DataModuleCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  DataAcMaster: TDataAcMaster;

implementation

{%CLASSGROUP 'Vcl.Controls.TControl'}

uses BillingSystemForm, AccountForm, CityData, CityForm, ItemForm,
  ItemGroupMasterForm, ItemMasterData, SaleForm, TransactionSalesData;

{$R *.dfm}

procedure TDataAcMaster.DataModuleCreate(Sender: TObject);
begin
    QryAcMaster.Open;
    QryCityMasterLK.Open;
end;

end.
