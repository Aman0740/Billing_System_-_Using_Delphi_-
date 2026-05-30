object FormOpenSaleDLG: TFormOpenSaleDLG
  Left = 0
  Top = 0
  Caption = 'Open Sale DLG'
  ClientHeight = 478
  ClientWidth = 649
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
    Width = 649
    Height = 478
    Selected.Strings = (
      'TransMainID'#9'10'#9'TransMainID'#9'F'#9
      'AcName'#9'25'#9'AcName'#9'F'#9
      'GSTNo'#9'18'#9'GSTNo'#9'F'
      'BillDate'#9'18'#9'BillDate'#9#9
      'ChallanNo'#9'5'#9'ChallanNo'#9'F'#9
      'TotalNetAmount'#9'10'#9'TotalNetAmount'#9'F'#9)
    IniAttributes.Delimiter = ';;'
    IniAttributes.UnicodeIniFile = False
    TitleColor = clBtnFace
    FixedCols = 0
    ShowHorzScrollBar = True
    Align = alClient
    DataSource = DataSrcOpenSaleDLG
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
  object QryOpenSaleDLG: TADOQuery
    Connection = FormBillingSystem.ADOConnection1
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'SELECT '
      '    ts.TransMainID,'
      '    ac.AcName,'
      '    ac.GSTNo,'
      '    ts.BillDate,'
      '    ts.ChallanNo,'
      '    ts.TotalNetAmount'
      'FROM TransDetails tds'
      'JOIN TransMain ts '
      '    ON tds.TransMainID = ts.TransMainID'
      'JOIN AcMaster ac'
      '    ON ac.AcID = ts.AcID;'
      '')
    Left = 544
    Top = 56
    object QryOpenSaleDLGTransMainID: TAutoIncField
      DisplayWidth = 10
      FieldName = 'TransMainID'
      ReadOnly = True
    end
    object QryOpenSaleDLGAcName: TStringField
      DisplayWidth = 25
      FieldName = 'AcName'
      Size = 50
    end
    object QryOpenSaleDLGGSTNo: TStringField
      DisplayWidth = 18
      FieldName = 'GSTNo'
      Size = 50
    end
    object QryOpenSaleDLGBillDate: TDateTimeField
      DisplayWidth = 18
      FieldName = 'BillDate'
    end
    object QryOpenSaleDLGChallanNo: TStringField
      DisplayWidth = 5
      FieldName = 'ChallanNo'
      Size = 50
    end
    object QryOpenSaleDLGTotalNetAmount: TBCDField
      DisplayWidth = 10
      FieldName = 'TotalNetAmount'
      Precision = 18
      Size = 0
    end
  end
  object DataSrcOpenSaleDLG: TDataSource
    DataSet = QryOpenSaleDLG
    Left = 536
    Top = 160
  end
end
