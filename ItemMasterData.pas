unit ItemMasterData;

interface

uses
  System.SysUtils, System.Classes, Data.DB, Data.Win.ADODB;

type
  TDataItemMaster = class(TDataModule)
    QryItemMaster: TADOQuery;
    DataSrcItemMaster: TDataSource;
    QryItemGroupLK: TADOQuery;
    QryItemMasterItemID: TAutoIncField;
    QryItemMasterItemName: TStringField;
    QryItemMasterItemGroupID: TIntegerField;
    QryItemMasterGSTPer: TBCDField;
    QryItemGroupMaster: TADOQuery;
    DataSrcItemGroupMaster: TDataSource;
    QryItemGroupMasterItemGroupID: TAutoIncField;
    QryItemGroupMasterItemGroupName: TStringField;
    QryItemMasterRate: TBCDField;
    QryItemGroupLKItemGroupID: TAutoIncField;
    QryItemGroupLKItemGroupName: TStringField;
    procedure DataModuleCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  DataItemMaster: TDataItemMaster;

implementation

{%CLASSGROUP 'Vcl.Controls.TControl'}

uses AccountForm, AcMasterData, BillingSystemForm, CityData, CityForm, ItemForm,
  ItemGroupMasterForm, SaleForm, TransactionSalesData;

{$R *.dfm}

procedure TDataItemMaster.DataModuleCreate(Sender: TObject);
begin
    QryItemMaster.Open;
    QryItemGroupLK.Open;
    QryItemGroupMaster.Open;
end;

end.
