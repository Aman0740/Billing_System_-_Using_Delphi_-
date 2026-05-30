unit ItemGroupMasterForm;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.DBCtrls, Vcl.StdCtrls, Vcl.Mask,
  vcl.Wwdbedit, Vcl.Grids, vcl.wwdbigrd, vcl.wwdbgrid, Vcl.ExtCtrls;

type
  TFormItemGroupMaster = class(TForm)
    Panel1: TPanel;
    wwDBGrid1: TwwDBGrid;
    Label2: TLabel;
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
  FormItemGroupMaster: TFormItemGroupMaster;

implementation

{$R *.dfm}

uses AccountForm, AcMasterData, BillingSystemForm, CityData, CityForm, ItemForm,
  ItemMasterData, SaleForm, TransactionSalesData;

procedure TFormItemGroupMaster.FormClose(Sender: TObject;
  var Action: TCloseAction);
begin
    Action := caFree;
    FormItemGroupMaster := nil;
end;

procedure TFormItemGroupMaster.FormCreate(Sender: TObject);
begin
    DataItemMaster := TDataItemMaster.Create(self);
end;

end.
