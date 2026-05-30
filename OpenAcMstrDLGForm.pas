unit OpenAcMstrDLGForm;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Data.DB, Data.Win.ADODB, Vcl.Grids,
  vcl.wwdbigrd, vcl.wwdbgrid;

type
  TFormOpenAcMstrDLG = class(TForm)
    wwDBGrid1: TwwDBGrid;
    QryOpenAcMstrDLG: TADOQuery;
    DataSrcOpenAcMstrDLG: TDataSource;
    QryOpenAcMstrDLGAcID: TAutoIncField;
    QryOpenAcMstrDLGAcName: TStringField;
    QryOpenAcMstrDLGCity: TStringField;
    QryOpenAcMstrDLGState: TStringField;
    QryOpenAcMstrDLGPanNo: TStringField;
    QryOpenAcMstrDLGGSTNo: TStringField;
    procedure FormCreate(Sender: TObject);
    procedure wwDBGrid1DblClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormOpenAcMstrDLG: TFormOpenAcMstrDLG;

implementation

{$R *.dfm}

uses AccountForm, AcMasterData, BillingSystemForm, CityData, CityForm, ItemForm,
  ItemGroupMasterForm, ItemMasterData, OpenSaleDLGForm, SaleForm,
  TransactionSalesData;

procedure TFormOpenAcMstrDLG.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
    Action := caFree;
    QryOpenAcMstrDLG := nil;
end;

procedure TFormOpenAcMstrDLG.FormCreate(Sender: TObject);
begin
    QryOpenAcMstrDLG.Open;
end;

procedure TFormOpenAcMstrDLG.wwDBGrid1DblClick(Sender: TObject);
begin
  if not QryOpenAcMstrDLG.IsEmpty then
  begin
    DataAcMaster.QryAcMaster.Close;
    DataAcMaster.QryAcMaster.Parameters.ParamByName('AcID').Value := QryOpenAcMstrDLGAcID.AsInteger;
    DataAcMaster.QryAcMaster.Open;

    Close;
  end;
end;

end.
