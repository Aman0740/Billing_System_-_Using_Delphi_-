unit ItemForm;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.DBCtrls, Vcl.StdCtrls, Vcl.Mask,
  Vcl.Grids, vcl.wwdbigrd, vcl.wwdbgrid, Vcl.ExtCtrls, vcl.wwdblook, Vcl.Menus;

type
  TFormItem = class(TForm)
    Panel1: TPanel;
    wwDBGrid1: TwwDBGrid;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    DBEditItemName: TDBEdit;
    DBEditGSTPer: TDBEdit;
    DBNavigator1: TDBNavigator;
    wwDBLookupCombo1: TwwDBLookupCombo;
    Label4: TLabel;
    DBEditRate: TDBEdit;
    PopupMenuItemGroup: TPopupMenu;
    ItemGroup1: TMenuItem;
    btnOpen: TButton;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormCreate(Sender: TObject);
    procedure ItemGroup1Click(Sender: TObject);
    procedure btnOpenClick(Sender: TObject);

  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormItem: TFormItem;

implementation

{$R *.dfm}

uses AccountForm, AcMasterData, BillingSystemForm, CityData, CityForm,
  ItemGroupMasterForm, ItemMasterData, SaleForm, TransactionSalesData,
  ItemMstrDLGForm, OpenAcMstrDLGForm, OpenSaleDLGForm;

procedure TFormItem.btnOpenClick(Sender: TObject);
begin
    FormItemMstrDLG := TFormItemMstrDLG.Create(self);
    FormItemMstrDLG.Show;
end;

procedure TFormItem.FormClose(Sender: TObject; var Action: TCloseAction);
begin
    Action := caFree;
    FormItem := nil;
end;

procedure TFormItem.FormCreate(Sender: TObject);
begin
    DataItemMaster := TDataItemMaster.Create(self);
end;



procedure TFormItem.ItemGroup1Click(Sender: TObject);
begin
    FormItemGroupMaster := TFormItemGroupMaster.Create(self);
    FormItemGroupMaster.Show;
end;

end.
