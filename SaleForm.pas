unit SaleForm;

interface

uses
  Winapi.Windows, Winapi.Messages,
  System.SysUtils, System.Classes, System.Variants,
  Vcl.Forms, Vcl.Controls, Vcl.StdCtrls,
  Vcl.ExtCtrls, Vcl.DBCtrls, Vcl.Grids,
  vcl.wwdbgrid, vcl.wwdblook, vcl.wwdbdatetimepicker,
  Data.DB, vcl.wwdbigrd, Vcl.Mask, Vcl.Menus,
  Vcl.Graphics, Vcl.Dialogs, Data.Win.ADODB,
  Vcl.Imaging.jpeg;

type
  TFormSale = class(TForm)
    Panel1: TPanel;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    Label8: TLabel;

    DBEditBillNo: TDBEdit;
    DBEditChallanNo: TDBEdit;
    DBEditCustomer: TDBEdit;
    DBEditTotalBasicAmount: TDBEdit;
    DBEditTotalGST: TDBEdit;
    DBEditTotalNetAmount: TDBEdit;

    wwDBDateTimePicker1: TwwDBDateTimePicker;
    DBNavigator1: TDBNavigator;
    LookupAcID: TwwDBLookupCombo;

    BtnOpen: TButton;

    PopupMenuAccount: TPopupMenu;
    AcMaster1: TMenuItem;

    PopupMenuItem: TPopupMenu;
    Item1: TMenuItem;

    Panel2: TPanel;
    wwDBGrid1: TwwDBGrid;
    LookupItemID: TwwDBLookupCombo;

    Panel3: TPanel;
    btnDelete: TButton;

    procedure FormCreate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure BtnOpenClick(Sender: TObject);
    procedure AcMaster1Click(Sender: TObject);
    procedure Item1Click(Sender: TObject);
    procedure btnDeleteClick(Sender: TObject);

  private

  public

  end;

var
  FormSale: TFormSale;

implementation

{$R *.dfm}

uses
  TransactionSalesData,
  OpenSaleDLGForm,
  AccountForm,
  AcMasterData,
  BillingSystemForm,
  CityData,
  CityForm,
  ItemForm,
  ItemGroupMasterForm,
  ItemMasterData;

procedure TFormSale.FormCreate(Sender: TObject);
begin
  DataTransactionSales := TDataTransactionSales.Create(Self);
end;

procedure TFormSale.Item1Click(Sender: TObject);
begin
  FormItem := TFormItem.Create(Self);
  FormItem.Show;
end;

procedure TFormSale.AcMaster1Click(Sender: TObject);
begin
  FormAccount := TFormAccount.Create(Self);
  FormAccount.Show;
end;

procedure TFormSale.btnDeleteClick(Sender: TObject);
begin

  if not DataTransactionSales.QryTransDetails.IsEmpty then
  begin
    if MessageDlg('Do you want to delete selected record?',
      mtConfirmation, [mbYes, mbNo], 0) = mrYes then
    begin
      DataTransactionSales.QryTransDetails.Delete;

      ShowMessage('Record deleted successfully.');
    end;
  end
  else
  begin
    ShowMessage('No record selected.');
  end;


end;

procedure TFormSale.BtnOpenClick(Sender: TObject);
begin
  FormOpenSaleDLG := TFormOpenSaleDLG.Create(Self);
  FormOpenSaleDLG.ShowModal;
end;

procedure TFormSale.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
  Action := caFree;
  FormSale := nil;
end;

end.
