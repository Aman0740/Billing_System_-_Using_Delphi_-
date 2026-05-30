object DataItemMaster: TDataItemMaster
  OldCreateOrder = False
  OnCreate = DataModuleCreate
  Height = 241
  Width = 471
  object QryItemMaster: TADOQuery
    Connection = FormBillingSystem.ADOConnection1
    CursorType = ctStatic
    Parameters = <
      item
        Name = 'ItemID'
        Attributes = [paSigned]
        DataType = ftInteger
        Precision = 10
        Size = 4
        Value = Null
      end>
    SQL.Strings = (
      'SELECT *'
      'FROM ItemMaster'
      'WHERE ItemID = :ItemID')
    Left = 48
    Top = 24
    object QryItemMasterItemID: TAutoIncField
      DisplayWidth = 6
      FieldName = 'ItemID'
      ReadOnly = True
    end
    object QryItemMasterItemName: TStringField
      DisplayWidth = 14
      FieldName = 'ItemName'
      Size = 50
    end
    object QryItemMasterItemGroupID: TIntegerField
      DisplayWidth = 10
      FieldName = 'ItemGroupID'
    end
    object QryItemMasterGSTPer: TBCDField
      DisplayWidth = 11
      FieldName = 'GSTPer'
      Precision = 10
      Size = 2
    end
    object QryItemMasterRate: TBCDField
      DisplayWidth = 19
      FieldName = 'Rate'
      Precision = 18
      Size = 0
    end
  end
  object DataSrcItemMaster: TDataSource
    DataSet = QryItemMaster
    Left = 48
    Top = 96
  end
  object QryItemGroupLK: TADOQuery
    Connection = FormBillingSystem.ADOConnection1
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'select * from ItemGroupMaster')
    Left = 392
    Top = 40
    object QryItemGroupLKItemGroupName: TStringField
      DisplayWidth = 15
      FieldName = 'ItemGroupName'
      Size = 50
    end
    object QryItemGroupLKItemGroupID: TAutoIncField
      FieldName = 'ItemGroupID'
      ReadOnly = True
      Visible = False
    end
  end
  object QryItemGroupMaster: TADOQuery
    Active = True
    Connection = FormBillingSystem.ADOConnection1
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'select * from ItemGroupMaster')
    Left = 160
    Top = 24
    object QryItemGroupMasterItemGroupName: TStringField
      FieldName = 'ItemGroupName'
      Visible = False
      Size = 50
    end
    object QryItemGroupMasterItemGroupID: TAutoIncField
      DisplayWidth = 10
      FieldName = 'ItemGroupID'
      ReadOnly = True
    end
  end
  object DataSrcItemGroupMaster: TDataSource
    DataSet = QryItemGroupMaster
    Left = 168
    Top = 96
  end
end
