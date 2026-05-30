unit TransactionSalesData;

interface

uses
  System.SysUtils,System.Classes,Data.DB,Data.Win.ADODB;

type
  TDataTransactionSales = class(TDataModule)
    QryTransMain: TADOQuery;
    QryTransDetails: TADOQuery;
    QryAcMasterLK: TADOQuery;
    QryItemMasterLK: TADOQuery;
    DataSrcTransMain: TDataSource;
    DataSrcTransDetails: TDataSource;
    QryAcMasterLKAcID: TAutoIncField;
    QryTransDetailsTransDetailsID: TAutoIncField;
    QryTransDetailsTransMainID: TIntegerField;
    QryTransDetailsItemID: TIntegerField;
    QryTransDetailsLKItemName: TStringField;
    QryTransDetailsQty: TBCDField;
    QryTransDetailsRate: TBCDField;
    QryTransDetailsBasicAmount: TBCDField;
    QryTransDetailsGST: TBCDField;
    QryTransDetailsGSTAmt: TBCDField;
    QryTransDetailsGrossAmount: TBCDField;
    QryItemMasterLKItemID: TAutoIncField;
    QryItemMasterLKItemName: TStringField;
    QryItemMasterLKItemGroupID: TIntegerField;
    QryItemMasterLKGSTPer: TBCDField;
    QryItemMasterLKRate: TBCDField;
    QryAcMasterLKAcName: TStringField;
    QryTransMainTransMainID: TAutoIncField;
    QryTransMainBillNo: TStringField;
    QryTransMainBillDate: TDateTimeField;
    QryTransMainChallanNo: TStringField;
    QryTransMainCustomer: TStringField;
    QryTransMainTotalBasicAmount: TBCDField;
    QryTransMainAcID: TIntegerField;
    QryTransMainTotalGST: TBCDField;
    QryTransMainTotalNetAmount: TBCDField;
    procedure DataModuleCreate(Sender: TObject);
    procedure QryTransDetailsItemIDChange(Sender: TField);
    procedure QryTransDetailsQtyChange(Sender: TField);
    procedure QryTransDetailsRateChange(Sender: TField);
    procedure QryTransDetailsGSTChange(Sender: TField);
    procedure QryTransMainBeforePost(DataSet: TDataSet);
    procedure QryTransMainAfterPost(DataSet: TDataSet);
    procedure QryTransMainAfterScroll(DataSet: TDataSet);

  private
    procedure CalculateAmounts;
  public
  end;

var
  DataTransactionSales: TDataTransactionSales;

implementation

uses
  AccountForm,
  AcMasterData,
  BillingSystemForm,
  CityData,
  CityForm,
  ItemForm,
  ItemGroupMasterForm,
  ItemMasterData,
  SaleForm;

{$R *.dfm}

procedure TDataTransactionSales.DataModuleCreate(Sender: TObject);
begin
  QryTransMain.Open;
  QryTransDetails.Open;
  QryAcMasterLK.Open;
  QryItemMasterLK.Open;
end;

procedure TDataTransactionSales.QryTransDetailsItemIDChange(
  Sender: TField);
begin
    if QryItemMasterLK.Locate('ItemID',QryTransDetailsItemID.AsInteger,[]) then
    begin
        QryTransDetailsGST.AsFloat := QryItemMasterLKGSTPer.AsFloat;
        QryTransDetailsRate.AsFloat := QryItemMasterLKRate.AsFloat;
    end;
    CalculateAmounts;
end;

procedure TDataTransactionSales.QryTransDetailsQtyChange(
  Sender: TField);
begin
    CalculateAmounts;
end;

procedure TDataTransactionSales.QryTransDetailsRateChange(Sender: TField);
begin
    CalculateAmounts;
end;

procedure TDataTransactionSales.QryTransMainAfterPost(DataSet: TDataSet);
begin
    QryTransDetails.First;
    while not QryTransDetails.Eof do
    begin
      if QryTransDetailsTransMainID.IsNull then
      begin
          QryTransDetails.Edit;
          QryTransDetailsTransMainID.AsInteger := QryTransMainTransMainID.AsInteger ;
          QryTransDetails.Post;
      end;
      QryTransDetails.Next;
    end;
end;

procedure TDataTransactionSales.QryTransMainAfterScroll(DataSet: TDataSet);
begin
  QryTransDetails.Close;
  QryTransDetails.Parameters.ParamByName('TransMainID').Value := QryTransMainTransMainID.AsInteger;
  QryTransDetails.Open;
end;

procedure TDataTransactionSales.QryTransMainBeforePost(DataSet: TDataSet);
var
    dAmount, dGSTAmount, dNetAmount : Double;
begin
    dAmount := 0;
    dGSTAmount := 0;
    dNetAmount := 0;
    QryTransDetails.First;

     while not QryTransDetails.Eof do
     begin
         dAmount := dAmount + QryTransDetailsBasicAmount.AsFloat;
         dGSTAmount := dGSTAmount + QryTransDetailsGSTAmt.AsFloat;
         dNetAmount := dNetAmount + QryTransDetailsGrossAmount.AsFloat;
         QryTransDetails.Next;
     end;
     QryTransMainTotalBasicAmount.AsFloat := dAmount;
     QryTransMainTotalGST.AsFloat := dGSTAmount;
     QryTransMainTotalNetAmount.AsFloat := dNetAmount;
     QryTransDetails.Last;
end;

procedure TDataTransactionSales.QryTransDetailsGSTChange(Sender: TField);
begin
    CalculateAmounts;
end;

procedure TDataTransactionSales.CalculateAmounts;
var
  Qty        : Double;
  Rate       : Double;
  BasicAmt   : Double;
  GSTPer     : Double;
  GSTAmt     : Double;
  GrossAmt   : Double;
begin
    Qty := QryTransDetailsQty.AsFloat;
    Rate := QryTransDetailsRate.AsFloat;
    GSTPer := QryTransDetailsGST.AsFloat;
    BasicAmt := Qty * Rate;
    GSTAmt := (GSTPer * BasicAmt) / 100;
    GrossAmt := BasicAmt + GSTAmt;
    QryTransDetailsBasicAmount.AsFloat := BasicAmt;
    QryTransDetailsGSTAmt.AsFloat := GSTAmt;
    QryTransDetailsGrossAmount.AsFloat := GrossAmt;
end;

end.
