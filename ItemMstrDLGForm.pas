unit ItemMstrDLGForm;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Data.DB, Data.Win.ADODB, Vcl.Grids,
  vcl.wwdbigrd, vcl.wwdbgrid;

type
  TFormItemMstrDLG = class(TForm)
    wwDBGrid1: TwwDBGrid;
    QryItemMstrDLG: TADOQuery;
    DataSrcItemMstrDLG: TDataSource;
    QryItemMstrDLGItemID: TAutoIncField;
    QryItemMstrDLGItemName: TStringField;
    QryItemMstrDLGItemGroupID: TIntegerField;
    QryItemMstrDLGGSTPer: TBCDField;
    QryItemMstrDLGRate: TBCDField;
    procedure FormCreate(Sender: TObject);
    procedure wwDBGrid1DblClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormItemMstrDLG: TFormItemMstrDLG;

implementation

{$R *.dfm}

uses AccountForm, AcMasterData, BillingSystemForm, CityData, CityForm, ItemForm,
  ItemGroupMasterForm, ItemMasterData, OpenAcMstrDLGForm, OpenSaleDLGForm,
  SaleForm, TransactionSalesData;

procedure TFormItemMstrDLG.FormClose(Sender: TObject; var Action: TCloseAction);
begin
    Action := caFree;
    FormItemMstrDLG := nil;
end;

procedure TFormItemMstrDLG.FormCreate(Sender: TObject);
begin
    QryItemMstrDLG.Open;
end;

procedure TFormItemMstrDLG.wwDBGrid1DblClick(Sender: TObject);
begin
    if not QryItemMstrDLG.IsEmpty then
  begin
    DataItemMaster.QryItemMaster.Close;
    DataItemMaster.QryItemMaster.Parameters.ParamByName('ItemID').Value := QryItemMstrDLGItemID.AsInteger;
    DataItemMaster.QryItemMaster.Open;

    Close;
  end;
end;

end.
