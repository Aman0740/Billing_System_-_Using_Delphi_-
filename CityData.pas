unit CityData;

interface

uses
  System.SysUtils, System.Classes, Data.DB, Data.Win.ADODB;

type
  TDataCity = class(TDataModule)
    QryCityMaster: TADOQuery;
    DataSrcCityMaster: TDataSource;
    QryCityMasterCityID: TAutoIncField;
    QryCityMasterCityName: TStringField;
    QryCityMasterStateName: TStringField;
    procedure DataModuleCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  DataCity: TDataCity;

implementation

{%CLASSGROUP 'Vcl.Controls.TControl'}

uses AccountForm, AcMasterData, BillingSystemForm, CityForm, ItemForm,
  ItemGroupMasterForm, ItemMasterData, SaleForm, TransactionSalesData;

{$R *.dfm}

procedure TDataCity.DataModuleCreate(Sender: TObject);
begin
     QryCityMaster.Open;
end;

end.
