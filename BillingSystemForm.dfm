object FormBillingSystem: TFormBillingSystem
  Left = 0
  Top = 0
  Caption = 'Billing System'
  ClientHeight = 354
  ClientWidth = 492
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  FormStyle = fsMDIForm
  Menu = MainMenu1
  OldCreateOrder = False
  WindowState = wsMaximized
  PixelsPerInch = 96
  TextHeight = 13
  object MainMenu1: TMainMenu
    Left = 40
    Top = 16
    object Masetr1: TMenuItem
      Caption = 'Masetr'
      object Account1: TMenuItem
        Caption = 'Account'
        OnClick = Account1Click
      end
      object Item1: TMenuItem
        Caption = 'Item'
        OnClick = Item1Click
      end
      object ItemGroup1: TMenuItem
        Caption = 'Item Group'
        OnClick = ItemGroup1Click
      end
      object City1: TMenuItem
        Caption = 'City'
        OnClick = City1Click
      end
    end
    object ransaction1: TMenuItem
      Caption = 'Transaction'
      object Sales1: TMenuItem
        Caption = 'Sales'
        OnClick = Sales1Click
      end
    end
  end
  object ADOConnection1: TADOConnection
    Connected = True
    ConnectionString = 
      'Provider=SQLOLEDB.1;Password=saadmin;Persist Security Info=True;' +
      'User ID=sa;Initial Catalog=BillingSystem;Data Source=DESKTOP-3PU' +
      'Q500\SQL2012'
    LoginPrompt = False
    Provider = 'SQLOLEDB.1'
    Left = 120
    Top = 16
  end
end
