object FormItemGroupMaster: TFormItemGroupMaster
  Left = 0
  Top = 0
  Caption = 'Item Group Master'
  ClientHeight = 345
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
    Height = 217
    Align = alTop
    TabOrder = 0
    object Label2: TLabel
      Left = 56
      Top = 72
      Width = 118
      Height = 18
      Caption = 'Item Group Name :'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -15
      Font.Name = 'Calibri'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object DBEditState: TwwDBEdit
      Left = 184
      Top = 69
      Width = 121
      Height = 21
      DataField = 'ItemGroupName'
      DataSource = DataItemMaster.DataSrcItemGroupMaster
      TabOrder = 0
      UnboundDataType = wwDefault
      WantReturns = False
      WordWrap = False
    end
    object DBNavigator1: TDBNavigator
      Left = 56
      Top = 112
      Width = 240
      Height = 25
      DataSource = DataItemMaster.DataSrcItemGroupMaster
      TabOrder = 1
    end
  end
  object wwDBGrid1: TwwDBGrid
    Left = 0
    Top = 217
    Width = 505
    Height = 128
    Selected.Strings = (
      'ItemGroupID'#9'10'#9'ItemGroupID')
    IniAttributes.Delimiter = ';;'
    IniAttributes.UnicodeIniFile = False
    TitleColor = clBtnFace
    FixedCols = 0
    ShowHorzScrollBar = True
    Align = alClient
    DataSource = DataItemMaster.DataSrcItemGroupMaster
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
end
