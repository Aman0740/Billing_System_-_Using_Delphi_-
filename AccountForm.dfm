object FormAccount: TFormAccount
  Left = 55
  Top = 62
  Caption = 'Account'
  ClientHeight = 460
  ClientWidth = 654
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  FormStyle = fsMDIChild
  OldCreateOrder = False
  Position = poDesigned
  Visible = True
  WindowState = wsMaximized
  OnClose = FormClose
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object wwDBGrid1: TwwDBGrid
    Left = 0
    Top = 289
    Width = 654
    Height = 171
    Selected.Strings = (
      'AcID'#9'10'#9'AcID'#9#9
      'AcName'#9'25'#9'AcName'#9'F'
      'City'#9'15'#9'City'#9'F'
      'State'#9'20'#9'State'#9'F'
      'PanNo'#9'30'#9'PanNo'#9'F'
      'GSTNo'#9'30'#9'GSTNo'#9'F')
    IniAttributes.Delimiter = ';;'
    IniAttributes.UnicodeIniFile = False
    TitleColor = clBtnFace
    FixedCols = 0
    ShowHorzScrollBar = True
    Align = alClient
    DataSource = DataAcMaster.DataSrcAcMaster
    TabOrder = 0
    TitleAlignment = taLeftJustify
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
    TitleLines = 1
    TitleButtons = False
    ExplicitTop = 288
    ExplicitHeight = 172
  end
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 654
    Height = 289
    Align = alTop
    TabOrder = 1
    object Label1: TLabel
      Left = 48
      Top = 48
      Width = 62
      Height = 18
      Caption = 'Ac Name :'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -15
      Font.Name = 'Calibri'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label2: TLabel
      Left = 79
      Top = 74
      Width = 31
      Height = 18
      Caption = 'City :'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -15
      Font.Name = 'Calibri'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label3: TLabel
      Left = 71
      Top = 100
      Width = 39
      Height = 18
      Caption = 'State :'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -15
      Font.Name = 'Calibri'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label4: TLabel
      Left = 55
      Top = 126
      Width = 55
      Height = 18
      Caption = 'Pan No. :'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -15
      Font.Name = 'Calibri'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label5: TLabel
      Left = 54
      Top = 153
      Width = 56
      Height = 18
      Caption = 'GST No. :'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -15
      Font.Name = 'Calibri'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object DBEditAcName: TDBEdit
      Left = 123
      Top = 45
      Width = 172
      Height = 21
      DataField = 'AcName'
      DataSource = DataAcMaster.DataSrcAcMaster
      TabOrder = 0
    end
    object DBEditState: TDBEdit
      Left = 123
      Top = 99
      Width = 172
      Height = 21
      DataField = 'State'
      DataSource = DataAcMaster.DataSrcAcMaster
      TabOrder = 1
    end
    object DBEditPanNo: TDBEdit
      Left = 123
      Top = 126
      Width = 172
      Height = 21
      DataField = 'PanNo'
      DataSource = DataAcMaster.DataSrcAcMaster
      TabOrder = 2
    end
    object DBEditGSTNo: TDBEdit
      Left = 123
      Top = 153
      Width = 172
      Height = 21
      DataField = 'GSTNo'
      DataSource = DataAcMaster.DataSrcAcMaster
      TabOrder = 3
    end
    object DBNavigator1: TDBNavigator
      Left = 55
      Top = 200
      Width = 240
      Height = 25
      DataSource = DataAcMaster.DataSrcAcMaster
      TabOrder = 4
    end
    object LKCmbCity: TwwDBLookupCombo
      Left = 123
      Top = 72
      Width = 172
      Height = 21
      DropDownAlignment = taLeftJustify
      Selected.Strings = (
        'CityName'#9'20'#9'CityName'#9'F')
      DataField = 'City'
      DataSource = DataAcMaster.DataSrcAcMaster
      LookupTable = DataAcMaster.QryCityMasterLK
      LookupField = 'CityID'
      PopupMenu = PopupMenuCity
      TabOrder = 5
      AutoDropDown = False
      ShowButton = True
      PreciseEditRegion = False
      AllowClearKey = False
      OnChange = LKCmbCityChange
    end
    object btnOpen: TButton
      Left = 55
      Top = 241
      Width = 75
      Height = 25
      Caption = 'Open'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -15
      Font.Name = 'Calibri'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 6
      OnClick = btnOpenClick
    end
  end
  object PopupMenuCity: TPopupMenu
    Left = 576
    Top = 48
    object City1: TMenuItem
      Caption = 'City'
      OnClick = City1Click
    end
  end
end
