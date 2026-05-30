unit BillingSystemForm;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.Menus, Data.DB, Data.Win.ADODB,
  Vcl.DBCtrls, Vcl.ExtCtrls, Vcl.Imaging.jpeg;

type
  TFormBillingSystem = class(TForm)
    MainMenu1: TMainMenu;
    ADOConnection1: TADOConnection;
    Masetr1: TMenuItem;
    Account1: TMenuItem;
    Item1: TMenuItem;
    ransaction1: TMenuItem;
    Sales1: TMenuItem;
    ItemGroup1: TMenuItem;
    City1: TMenuItem;
    procedure Account1Click(Sender: TObject);
    procedure Item1Click(Sender: TObject);
    procedure Sales1Click(Sender: TObject);
    procedure ItemGroup1Click(Sender: TObject);
    procedure City1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormBillingSystem: TFormBillingSystem;

implementation

{$R *.dfm}

uses AccountForm, ItemForm, ItemGroupMasterForm, SaleForm, CityForm,
  AcMasterData, CityData, ItemMasterData, TransactionSalesData;

procedure TFormBillingSystem.Account1Click(Sender: TObject);
begin
    FormAccount := TFormAccount.Create(self);
    FormAccount.Show;
end;

procedure TFormBillingSystem.City1Click(Sender: TObject);
begin
    FormCity := TFormCity.Create(self);
    FormCity.Show;
end;

procedure TFormBillingSystem.Item1Click(Sender: TObject);
begin
    FormItem := TFormItem.Create(self);
    FormItem.Show;
end;

procedure TFormBillingSystem.ItemGroup1Click(Sender: TObject);
begin
    FormItemGroupMaster := TFormItemGroupMaster.Create(self);
    FormItemGroupMaster.Show;
end;

procedure TFormBillingSystem.Sales1Click(Sender: TObject);
begin
    FormSale := TFormSale.Create(self);
    FormSale.Show;
end;

end.
