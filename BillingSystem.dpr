program BillingSystem;

uses
  Vcl.Forms,
  BillingSystemForm in 'BillingSystemForm.pas' {FormBillingSystem},
  AccountForm in 'AccountForm.pas' {FormAccount},
  AcMasterData in 'AcMasterData.pas' {DataAcMaster: TDataModule},
  ItemForm in 'ItemForm.pas' {FormItem},
  ItemMasterData in 'ItemMasterData.pas' {DataItemMaster: TDataModule},
  SaleForm in 'SaleForm.pas' {FormSale},
  TransactionSalesData in 'TransactionSalesData.pas' {DataTransactionSales: TDataModule},
  CityForm in 'CityForm.pas' {FormCity},
  CityData in 'CityData.pas' {DataCity: TDataModule},
  ItemGroupMasterForm in 'ItemGroupMasterForm.pas' {FormItemGroupMaster},
  OpenSaleDLGForm in 'OpenSaleDLGForm.pas' {FormOpenSaleDLG},
  OpenAcMstrDLGForm in 'OpenAcMstrDLGForm.pas' {FormOpenAcMstrDLG},
  ItemMstrDLGForm in 'ItemMstrDLGForm.pas' {FormItemMstrDLG};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TFormBillingSystem, FormBillingSystem);
  Application.CreateForm(TFormOpenAcMstrDLG, FormOpenAcMstrDLG);
  Application.CreateForm(TFormItemMstrDLG, FormItemMstrDLG);
  Application.Run;
end.
