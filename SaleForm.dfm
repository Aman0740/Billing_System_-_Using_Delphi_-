object FormSale: TFormSale
  Left = 0
  Top = 0
  Caption = 'Sale'
  ClientHeight = 608
  ClientWidth = 794
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  FormStyle = fsMDIChild
  OldCreateOrder = False
  Visible = True
  WindowState = wsMaximized
  OnClose = FormClose
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 794
    Height = 345
    Align = alTop
    TabOrder = 0
    object Label1: TLabel
      Left = 105
      Top = 71
      Width = 52
      Height = 18
      Caption = 'Bill No. :'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -15
      Font.Name = 'Calibri'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label2: TLabel
      Left = 98
      Top = 98
      Width = 59
      Height = 18
      Caption = 'Bill Date :'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -15
      Font.Name = 'Calibri'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label3: TLabel
      Left = 119
      Top = 44
      Width = 38
      Height = 18
      Caption = 'Ac ID :'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -15
      Font.Name = 'Calibri'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label4: TLabel
      Left = 90
      Top = 152
      Width = 67
      Height = 18
      Caption = 'Customer :'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -15
      Font.Name = 'Calibri'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label5: TLabel
      Left = 33
      Top = 179
      Width = 124
      Height = 18
      Caption = 'Total Basic Amount :'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -15
      Font.Name = 'Calibri'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label6: TLabel
      Left = 93
      Top = 206
      Width = 64
      Height = 18
      Caption = 'Total GST :'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -15
      Font.Name = 'Calibri'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label7: TLabel
      Left = 79
      Top = 125
      Width = 78
      Height = 18
      Caption = 'Challan No. :'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -15
      Font.Name = 'Calibri'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label8: TLabel
      Left = 41
      Top = 234
      Width = 116
      Height = 18
      Caption = 'Total Net Amount :'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -15
      Font.Name = 'Calibri'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object DBEditBillNo: TDBEdit
      Left = 175
      Top = 71
      Width = 150
      Height = 21
      DataField = 'BillNo'
      DataSource = DataTransactionSales.DataSrcTransMain
      TabOrder = 0
    end
    object DBEditChallanNo: TDBEdit
      Left = 175
      Top = 125
      Width = 150
      Height = 21
      DataField = 'ChallanNo'
      DataSource = DataTransactionSales.DataSrcTransMain
      TabOrder = 1
    end
    object DBEditCustomer: TDBEdit
      Left = 175
      Top = 152
      Width = 150
      Height = 21
      DataField = 'Customer'
      DataSource = DataTransactionSales.DataSrcTransMain
      TabOrder = 2
    end
    object DBEditTotalBasicAmount: TDBEdit
      Left = 175
      Top = 179
      Width = 150
      Height = 21
      DataField = 'TotalBasicAmount'
      DataSource = DataTransactionSales.DataSrcTransMain
      TabOrder = 3
    end
    object DBEditTotalGST: TDBEdit
      Left = 175
      Top = 206
      Width = 150
      Height = 21
      DataField = 'TotalGST'
      DataSource = DataTransactionSales.DataSrcTransMain
      TabOrder = 4
    end
    object DBEditTotalNetAmount: TDBEdit
      Left = 175
      Top = 234
      Width = 150
      Height = 21
      DataField = 'TotalNetAmount'
      DataSource = DataTransactionSales.DataSrcTransMain
      TabOrder = 5
    end
    object wwDBDateTimePicker1: TwwDBDateTimePicker
      Left = 175
      Top = 98
      Width = 150
      Height = 21
      CalendarAttributes.Font.Charset = DEFAULT_CHARSET
      CalendarAttributes.Font.Color = clWindowText
      CalendarAttributes.Font.Height = -11
      CalendarAttributes.Font.Name = 'Tahoma'
      CalendarAttributes.Font.Style = []
      DataField = 'BillDate'
      DataSource = DataTransactionSales.DataSrcTransMain
      Epoch = 1950
      ShowButton = True
      TabOrder = 6
    end
    object DBNavigator1: TDBNavigator
      Left = 41
      Top = 280
      Width = 280
      Height = 25
      DataSource = DataTransactionSales.DataSrcTransMain
      TabOrder = 7
    end
    object LookupAcID: TwwDBLookupCombo
      Left = 175
      Top = 44
      Width = 150
      Height = 21
      DropDownAlignment = taLeftJustify
      Selected.Strings = (
        'AcName'#9'50'#9'AcName'#9'F')
      DataField = 'AcID'
      DataSource = DataTransactionSales.DataSrcTransMain
      LookupTable = DataTransactionSales.QryAcMasterLK
      LookupField = 'AcID'
      PopupMenu = PopupMenuAccount
      TabOrder = 8
      AutoDropDown = False
      ShowButton = True
      PreciseEditRegion = False
      AllowClearKey = False
    end
    object BtnOpen: TButton
      Left = 41
      Top = 311
      Width = 75
      Height = 25
      Caption = 'Open'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -15
      Font.Name = 'Calibri'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 9
      OnClick = BtnOpenClick
    end
  end
  object Panel2: TPanel
    Left = 0
    Top = 345
    Width = 794
    Height = 263
    Align = alClient
    TabOrder = 1
    object wwDBGrid1: TwwDBGrid
      Left = 1
      Top = 1
      Width = 792
      Height = 223
      ControlType.Strings = (
        'LKItemName;CustomEdit;LookupItemID;F')
      Selected.Strings = (
        'ItemID'#9'5'#9'ItemID'#9'F'#9
        'LKItemName'#9'20'#9'Item Name'#9'F'#9
        'Qty'#9'19'#9'Qty'#9#9
        'Rate'#9'19'#9'Rate'#9#9
        'BasicAmount'#9'19'#9'BasicAmount'#9#9
        'GST'#9'19'#9'GST'#9#9
        'GSTAmt'#9'19'#9'GSTAmt'#9#9
        'GrossAmount'#9'19'#9'GrossAmount'#9#9)
      IniAttributes.Delimiter = ';;'
      IniAttributes.UnicodeIniFile = False
      TitleColor = clBtnFace
      FixedCols = 0
      ShowHorzScrollBar = True
      Align = alClient
      DataSource = DataTransactionSales.DataSrcTransDetails
      TabOrder = 0
      TitleAlignment = taLeftJustify
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -11
      TitleFont.Name = 'Tahoma'
      TitleFont.Style = []
      TitleLines = 1
      TitleButtons = False
      object LookupItemID: TwwDBLookupCombo
        Left = 96
        Top = 32
        Width = 121
        Height = 21
        DropDownAlignment = taLeftJustify
        Selected.Strings = (
          'ItemName'#9'50'#9'Item Name'#9'F')
        DataField = 'ItemID'
        DataSource = DataTransactionSales.DataSrcTransDetails
        LookupTable = DataTransactionSales.QryItemMasterLK
        LookupField = 'ItemID'
        PopupMenu = PopupMenuItem
        TabOrder = 0
        AutoDropDown = False
        ShowButton = True
        PreciseEditRegion = False
        AllowClearKey = False
      end
    end
    object Panel3: TPanel
      Left = 1
      Top = 224
      Width = 792
      Height = 38
      Align = alBottom
      TabOrder = 1
      object btnDelete: TButton
        Left = 8
        Top = 6
        Width = 75
        Height = 25
        Caption = 'Delete'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -15
        Font.Name = 'Calibri'
        Font.Style = [fsBold]
        ParentFont = False
        TabOrder = 0
        OnClick = btnDeleteClick
      end
    end
  end
  object PopupMenuAccount: TPopupMenu
    Left = 712
    Top = 48
    object AcMaster1: TMenuItem
      Caption = 'Account'
      OnClick = AcMaster1Click
    end
  end
  object PopupMenuItem: TPopupMenu
    Left = 712
    Top = 400
    object Item1: TMenuItem
      Caption = 'Item'
      OnClick = Item1Click
    end
  end
end
