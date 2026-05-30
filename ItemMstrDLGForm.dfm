object FormItemMstrDLG: TFormItemMstrDLG
  Left = 0
  Top = 0
  Caption = 'Item Mstr DLG'
  ClientHeight = 399
  ClientWidth = 581
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poDesktopCenter
  OnClose = FormClose
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object wwDBGrid1: TwwDBGrid
    Left = 0
    Top = 0
    Width = 581
    Height = 399
    Selected.Strings = (
      'ItemID'#9'5'#9'ItemID'#9'F'
      'ItemName'#9'10'#9'ItemName'#9'F'
      'ItemGroupID'#9'10'#9'ItemGroupID'#9'F'#9
      'GSTPer'#9'11'#9'GSTPer'#9'F'#9
      'Rate'#9'10'#9'Rate'#9'F')
    IniAttributes.Delimiter = ';;'
    IniAttributes.UnicodeIniFile = False
    TitleColor = clBtnFace
    FixedCols = 0
    ShowHorzScrollBar = True
    Align = alClient
    DataSource = DataSrcItemMstrDLG
    TabOrder = 0
    TitleAlignment = taLeftJustify
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
    TitleLines = 1
    TitleButtons = False
    OnDblClick = wwDBGrid1DblClick
  end
  object QryItemMstrDLG: TADOQuery
    Connection = FormBillingSystem.ADOConnection1
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'Select * from ItemMaster')
    Left = 512
    Top = 104
    object QryItemMstrDLGItemID: TAutoIncField
      DisplayWidth = 5
      FieldName = 'ItemID'
      ReadOnly = True
    end
    object QryItemMstrDLGItemName: TStringField
      DisplayWidth = 10
      FieldName = 'ItemName'
      Size = 50
    end
    object QryItemMstrDLGItemGroupID: TIntegerField
      DisplayWidth = 10
      FieldName = 'ItemGroupID'
    end
    object QryItemMstrDLGGSTPer: TBCDField
      DisplayWidth = 11
      FieldName = 'GSTPer'
      Precision = 10
      Size = 2
    end
    object QryItemMstrDLGRate: TBCDField
      DisplayWidth = 10
      FieldName = 'Rate'
      Precision = 18
      Size = 0
    end
  end
  object DataSrcItemMstrDLG: TDataSource
    DataSet = QryItemMstrDLG
    Left = 512
    Top = 184
  end
end
