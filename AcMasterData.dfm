object DataAcMaster: TDataAcMaster
  OldCreateOrder = False
  OnCreate = DataModuleCreate
  Height = 210
  Width = 250
  object QryAcMaster: TADOQuery
    Connection = FormBillingSystem.ADOConnection1
    CursorType = ctStatic
    Parameters = <
      item
        Name = 'AcID'
        Attributes = [paSigned]
        DataType = ftInteger
        Precision = 10
        Size = 4
        Value = Null
      end>
    SQL.Strings = (
      'SELECT *'
      'FROM AcMaster'
      'WHERE AcID = :AcID')
    Left = 40
    Top = 24
    object QryAcMasterAcID: TAutoIncField
      DisplayWidth = 10
      FieldName = 'AcID'
      ReadOnly = True
    end
    object QryAcMasterAcName: TStringField
      DisplayWidth = 25
      FieldName = 'AcName'
      Size = 50
    end
    object QryAcMasterCity: TStringField
      DisplayWidth = 15
      FieldName = 'City'
      Size = 50
    end
    object QryAcMasterState: TStringField
      DisplayWidth = 20
      FieldName = 'State'
      Size = 50
    end
    object QryAcMasterPanNo: TStringField
      DisplayWidth = 30
      FieldName = 'PanNo'
      Size = 50
    end
    object QryAcMasterGSTNo: TStringField
      DisplayWidth = 30
      FieldName = 'GSTNo'
      Size = 50
    end
  end
  object DataSrcAcMaster: TDataSource
    DataSet = QryAcMaster
    Left = 40
    Top = 96
  end
  object QryCityMasterLK: TADOQuery
    Connection = FormBillingSystem.ADOConnection1
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'select * from CityMaster')
    Left = 176
    Top = 40
    object QryCityMasterLKCityName: TStringField
      DisplayWidth = 20
      FieldName = 'CityName'
      Size = 50
    end
    object QryCityMasterLKCityID: TAutoIncField
      FieldName = 'CityID'
      ReadOnly = True
      Visible = False
    end
    object QryCityMasterLKStateName: TStringField
      FieldName = 'StateName'
      Visible = False
      Size = 50
    end
  end
end
