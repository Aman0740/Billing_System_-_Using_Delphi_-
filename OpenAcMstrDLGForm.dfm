object FormOpenAcMstrDLG: TFormOpenAcMstrDLG
  Left = 0
  Top = 0
  Caption = 'Open AcMstr DLG'
  ClientHeight = 445
  ClientWidth = 680
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
    Width = 680
    Height = 445
    Selected.Strings = (
      'AcID'#9'5'#9'AcID'#9'F'#9
      'AcName'#9'10'#9'AcName'#9'F'#9
      'City'#9'10'#9'City'#9'F'#9
      'State'#9'15'#9'State'#9'F'#9
      'PanNo'#9'15'#9'PanNo'#9'F'#9
      'GSTNo'#9'20'#9'GSTNo'#9'F')
    IniAttributes.Delimiter = ';;'
    IniAttributes.UnicodeIniFile = False
    TitleColor = clBtnFace
    FixedCols = 0
    ShowHorzScrollBar = True
    Align = alClient
    DataSource = DataSrcOpenAcMstrDLG
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
  object QryOpenAcMstrDLG: TADOQuery
    Connection = FormBillingSystem.ADOConnection1
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'SELECT * FROM AcMaster')
    Left = 576
    Top = 48
    object QryOpenAcMstrDLGAcID: TAutoIncField
      DisplayWidth = 5
      FieldName = 'AcID'
      ReadOnly = True
    end
    object QryOpenAcMstrDLGAcName: TStringField
      DisplayWidth = 10
      FieldName = 'AcName'
      Size = 50
    end
    object QryOpenAcMstrDLGCity: TStringField
      DisplayWidth = 10
      FieldName = 'City'
      Size = 50
    end
    object QryOpenAcMstrDLGState: TStringField
      DisplayWidth = 15
      FieldName = 'State'
      Size = 50
    end
    object QryOpenAcMstrDLGPanNo: TStringField
      DisplayWidth = 15
      FieldName = 'PanNo'
      Size = 50
    end
    object QryOpenAcMstrDLGGSTNo: TStringField
      DisplayWidth = 20
      FieldName = 'GSTNo'
      Size = 50
    end
  end
  object DataSrcOpenAcMstrDLG: TDataSource
    DataSet = QryOpenAcMstrDLG
    Left = 584
    Top = 128
  end
end
