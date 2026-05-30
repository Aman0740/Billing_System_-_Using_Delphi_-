object FormItem: TFormItem
  Left = 0
  Top = 0
  Caption = 'Item'
  ClientHeight = 417
  ClientWidth = 505
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
    Width = 505
    Height = 257
    Align = alTop
    TabOrder = 0
    object Label1: TLabel
      Left = 58
      Top = 48
      Width = 76
      Height = 18
      Caption = 'Item Name :'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -15
      Font.Name = 'Calibri'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label2: TLabel
      Left = 40
      Top = 75
      Width = 94
      Height = 18
      Caption = 'Item Group ID :'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -15
      Font.Name = 'Calibri'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label3: TLabel
      Left = 79
      Top = 103
      Width = 55
      Height = 18
      Caption = 'GST Per :'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -15
      Font.Name = 'Calibri'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label4: TLabel
      Left = 79
      Top = 131
      Width = 35
      Height = 18
      Caption = 'Rate :'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -15
      Font.Name = 'Calibri'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object DBEditItemName: TDBEdit
      Left = 143
      Top = 45
      Width = 150
      Height = 21
      DataField = 'ItemName'
      DataSource = DataItemMaster.DataSrcItemMaster
      TabOrder = 0
    end
    object DBEditGSTPer: TDBEdit
      Left = 143
      Top = 100
      Width = 150
      Height = 21
      DataField = 'GSTPer'
      DataSource = DataItemMaster.DataSrcItemMaster
      TabOrder = 1
    end
    object DBNavigator1: TDBNavigator
      Left = 40
      Top = 167
      Width = 250
      Height = 25
      DataSource = DataItemMaster.DataSrcItemMaster
      TabOrder = 2
    end
    object wwDBLookupCombo1: TwwDBLookupCombo
      Left = 143
      Top = 72
      Width = 150
      Height = 21
      DropDownAlignment = taLeftJustify
      Selected.Strings = (
        'ItemGroupName'#9'15'#9'ItemGroupName'#9'F')
      DataField = 'ItemGroupID'
      DataSource = DataItemMaster.DataSrcItemMaster
      LookupTable = DataItemMaster.QryItemGroupLK
      LookupField = 'ItemGroupID'
      PopupMenu = PopupMenuItemGroup
      TabOrder = 3
      AutoDropDown = False
      ShowButton = True
      PreciseEditRegion = False
      AllowClearKey = False
    end
    object DBEditRate: TDBEdit
      Left = 143
      Top = 128
      Width = 150
      Height = 21
      DataField = 'Rate'
      DataSource = DataItemMaster.DataSrcItemMaster
      TabOrder = 4
    end
    object btnOpen: TButton
      Left = 39
      Top = 208
      Width = 75
      Height = 25
      Caption = 'Open'
      TabOrder = 5
      OnClick = btnOpenClick
    end
  end
  object wwDBGrid1: TwwDBGrid
    Left = 0
    Top = 257
    Width = 505
    Height = 160
    Selected.Strings = (
      'ItemID'#9'6'#9'ItemID'#9#9
      'ItemName'#9'14'#9'ItemName'#9#9
      'ItemGroupID'#9'10'#9'ItemGroupID'#9#9
      'GSTPer'#9'11'#9'GSTPer'#9#9
      'Rate'#9'19'#9'Rate'#9'F'#9)
    IniAttributes.Delimiter = ';;'
    IniAttributes.UnicodeIniFile = False
    TitleColor = clBtnFace
    FixedCols = 0
    ShowHorzScrollBar = True
    Align = alClient
    DataSource = DataItemMaster.DataSrcItemMaster
    TabOrder = 1
    TitleAlignment = taLeftJustify
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
    TitleLines = 1
    TitleButtons = False
  end
  object PopupMenuItemGroup: TPopupMenu
    Left = 416
    Top = 72
    object ItemGroup1: TMenuItem
      Caption = 'Item Group'
      OnClick = ItemGroup1Click
    end
  end
end
