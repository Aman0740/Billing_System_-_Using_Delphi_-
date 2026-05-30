unit OpenSaleDLGForm;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Data.DB, Data.Win.ADODB, Vcl.Grids,
  vcl.wwdbigrd, vcl.wwdbgrid;

type
  TFormOpenSaleDLG = class(TForm)
    wwDBGrid1: TwwDBGrid;
    QryOpenSaleDLG: TADOQuery;
    DataSrcOpenSaleDLG: TDataSource;
    QryOpenSaleDLGBillDate: TDateTimeField;
    QryOpenSaleDLGChallanNo: TStringField;
    QryOpenSaleDLGTotalNetAmount: TBCDField;
    QryOpenSaleDLGAcName: TStringField;
    QryOpenSaleDLGTransMainID: TAutoIncField;
    QryOpenSaleDLGGSTNo: TStringField;
    procedure FormCreate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure wwDBGrid1DblClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormOpenSaleDLG: TFormOpenSaleDLG;

implementation

{$R *.dfm}

uses BillingSystemForm, AccountForm, AcMasterData, CityData, CityForm, ItemForm,
  ItemGroupMasterForm, ItemMasterData, SaleForm, TransactionSalesData;

procedure TFormOpenSaleDLG.FormClose(Sender: TObject; var Action: TCloseAction);
begin
    Action := caFree;
    FormOpenSaleDLG := nil;
end;

procedure TFormOpenSaleDLG.FormCreate(Sender: TObject);
begin
    QryOpenSaleDLG.Open;
end;

procedure TFormOpenSaleDLG.wwDBGrid1DblClick(Sender: TObject);
begin
    with DataTransactionSales do
    begin
        QryTransMain.Parameters.ParamValues['TransMainID'] := QryOpenSaleDLGTransMainID.AsInteger;
        QryTransMain.Requery();
    end;
    Close;
end;

end.
