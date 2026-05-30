unit CityForm;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.DBCtrls, Vcl.StdCtrls, Vcl.Mask,
  vcl.Wwdbedit, Vcl.Grids, vcl.wwdbigrd, vcl.wwdbgrid, Vcl.ExtCtrls;

type
  TFormCity = class(TForm)
    Panel1: TPanel;
    wwDBGrid1: TwwDBGrid;
    Label1: TLabel;
    Label2: TLabel;
    DBEditCity: TwwDBEdit;
    DBEditState: TwwDBEdit;
    DBNavigator1: TDBNavigator;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormCreate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormCity: TFormCity;

implementation

{$R *.dfm}

uses AccountForm, AcMasterData, BillingSystemForm, CityData, ItemForm,
  ItemGroupMasterForm, ItemMasterData, SaleForm, TransactionSalesData;

procedure TFormCity.FormClose(Sender: TObject; var Action: TCloseAction);
begin
    Action := caFree;
    FormCity := nil;
end;

procedure TFormCity.FormCreate(Sender: TObject);
begin
    DataCity := TDataCity.Create(self);
end;

end.
