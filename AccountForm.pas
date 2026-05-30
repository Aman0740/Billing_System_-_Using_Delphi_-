unit AccountForm;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.Mask, Vcl.DBCtrls,
  Vcl.ExtCtrls, Vcl.Grids, vcl.wwdbigrd, vcl.wwdbgrid, vcl.wwdblook, Vcl.Menus;

type
  TFormAccount = class(TForm)
    wwDBGrid1: TwwDBGrid;
    Panel1: TPanel;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    DBEditAcName: TDBEdit;
    DBEditState: TDBEdit;
    DBEditPanNo: TDBEdit;
    DBEditGSTNo: TDBEdit;
    DBNavigator1: TDBNavigator;
    LKCmbCity: TwwDBLookupCombo;
    PopupMenuCity: TPopupMenu;
    City1: TMenuItem;
    btnOpen: TButton;
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormCreate(Sender: TObject);
    procedure LKCmbCityChange(Sender: TObject);
    procedure City1Click(Sender: TObject);
    procedure btnOpenClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormAccount: TFormAccount;

implementation

{$R *.dfm}

uses AcMasterData, BillingSystemForm, CityData, CityForm, ItemForm,
  ItemGroupMasterForm, ItemMasterData, SaleForm, TransactionSalesData,
  OpenAcMstrDLGForm, OpenSaleDLGForm;

procedure TFormAccount.btnOpenClick(Sender: TObject);
begin
    FormOpenAcMstrDLG := TFormOpenAcMstrDLG.Create(self);
    FormOpenAcMstrDLG.Show;
end;

procedure TFormAccount.City1Click(Sender: TObject);
begin
    FormCity := TFormCity.Create(self);
    FormCity.Show;
end;

procedure TFormAccount.FormClose(Sender: TObject; var Action: TCloseAction);
begin
    Action := caFree;
    FormAccount := nil;
end;

procedure TFormAccount.FormCreate(Sender: TObject);
begin
    DataAcMaster := TDataAcMaster.Create(self);
end;

procedure TFormAccount.LKCmbCityChange(Sender: TObject);
begin
    if Assigned(LKCmbCity.LookupTable) then
      DBEditState.Text := LKCmbCity.LookupTable.FieldByName('StateName').AsString;
end;

end.
