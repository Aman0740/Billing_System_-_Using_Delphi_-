object DataCity: TDataCity
  OldCreateOrder = False
  OnCreate = DataModuleCreate
  Height = 295
  Width = 317
  object QryCityMaster: TADOQuery
    Connection = FormBillingSystem.ADOConnection1
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'select * from CityMaster')
    Left = 47
    Top = 56
    object QryCityMasterCityID: TAutoIncField
      FieldName = 'CityID'
      ReadOnly = True
    end
    object QryCityMasterCityName: TStringField
      FieldName = 'CityName'
      Size = 50
    end
    object QryCityMasterStateName: TStringField
      FieldName = 'StateName'
      Size = 50
    end
  end
  object DataSrcCityMaster: TDataSource
    DataSet = QryCityMaster
    Left = 47
    Top = 136
  end
end
