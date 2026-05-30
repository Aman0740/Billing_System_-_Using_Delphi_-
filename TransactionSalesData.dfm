object DataTransactionSales: TDataTransactionSales
  OldCreateOrder = False
  OnCreate = DataModuleCreate
  Height = 292
  Width = 472
  object QryTransDetails: TADOQuery
    Connection = FormBillingSystem.ADOConnection1
    CursorType = ctStatic
    Parameters = <
      item
        Name = 'TransMainID'
        Attributes = [paSigned, paNullable]
        DataType = ftInteger
        Precision = 10
        Size = 4
        Value = Null
      end>
    SQL.Strings = (
      'select * from TransDetails'
      'where TransMainID = :TransMainID')
    Left = 163
    Top = 48
    object QryTransDetailsItemID: TIntegerField
      DisplayWidth = 5
      FieldName = 'ItemID'
      OnChange = QryTransDetailsItemIDChange
    end
    object QryTransDetailsLKItemName: TStringField
      DisplayLabel = 'Item Name'
      DisplayWidth = 20
      FieldKind = fkLookup
      FieldName = 'LKItemName'
      LookupDataSet = QryItemMasterLK
      LookupKeyFields = 'ItemID'
      LookupResultField = 'ItemName'
      KeyFields = 'ItemID'
      Size = 50
      Lookup = True
    end
    object QryTransDetailsQty: TBCDField
      DisplayWidth = 19
      FieldName = 'Qty'
      OnChange = QryTransDetailsQtyChange
      Precision = 18
      Size = 0
    end
    object QryTransDetailsRate: TBCDField
      DisplayWidth = 19
      FieldName = 'Rate'
      Precision = 18
      Size = 0
    end
    object QryTransDetailsBasicAmount: TBCDField
      DisplayWidth = 19
      FieldName = 'BasicAmount'
      Precision = 18
      Size = 0
    end
    object QryTransDetailsGST: TBCDField
      DisplayWidth = 19
      FieldName = 'GST'
      Precision = 18
      Size = 0
    end
    object QryTransDetailsGSTAmt: TBCDField
      DisplayWidth = 19
      FieldName = 'GSTAmt'
      Precision = 18
      Size = 0
    end
    object QryTransDetailsGrossAmount: TBCDField
      DisplayWidth = 19
      FieldName = 'GrossAmount'
      Precision = 18
      Size = 0
    end
    object QryTransDetailsTransDetailsID: TAutoIncField
      DisplayWidth = 10
      FieldName = 'TransDetailsID'
      ReadOnly = True
      Visible = False
    end
    object QryTransDetailsTransMainID: TIntegerField
      DisplayWidth = 10
      FieldName = 'TransMainID'
      Visible = False
    end
  end
  object QryTransMain: TADOQuery
    Connection = FormBillingSystem.ADOConnection1
    CursorType = ctStatic
    BeforePost = QryTransMainBeforePost
    AfterPost = QryTransMainAfterPost
    AfterScroll = QryTransMainAfterScroll
    Parameters = <
      item
        Name = 'TransMainID'
        Attributes = [paSigned]
        DataType = ftInteger
        Precision = 10
        Size = 4
        Value = Null
      end>
    SQL.Strings = (
      'select * from TransMain'
      'where TransMainID = :TransMainID')
    Left = 40
    Top = 48
    object QryTransMainTransMainID: TAutoIncField
      FieldName = 'TransMainID'
      ReadOnly = True
    end
    object QryTransMainBillNo: TStringField
      FieldName = 'BillNo'
      Size = 50
    end
    object QryTransMainBillDate: TDateTimeField
      FieldName = 'BillDate'
    end
    object QryTransMainChallanNo: TStringField
      FieldName = 'ChallanNo'
      Size = 50
    end
    object QryTransMainCustomer: TStringField
      FieldName = 'Customer'
      Size = 50
    end
    object QryTransMainTotalBasicAmount: TBCDField
      FieldName = 'TotalBasicAmount'
      Precision = 18
      Size = 0
    end
    object QryTransMainAcID: TIntegerField
      FieldName = 'AcID'
    end
    object QryTransMainTotalGST: TBCDField
      FieldName = 'TotalGST'
      Precision = 18
      Size = 0
    end
    object QryTransMainTotalNetAmount: TBCDField
      FieldName = 'TotalNetAmount'
      Precision = 18
      Size = 0
    end
  end
  object QryAcMasterLK: TADOQuery
    Connection = FormBillingSystem.ADOConnection1
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'select * from AcMaster')
    Left = 408
    Top = 16
    object QryAcMasterLKAcName: TStringField
      DisplayWidth = 50
      FieldName = 'AcName'
      Size = 50
    end
    object QryAcMasterLKAcID: TAutoIncField
      FieldName = 'AcID'
      ReadOnly = True
      Visible = False
    end
  end
  object DataSrcTransMain: TDataSource
    DataSet = QryTransMain
    Left = 40
    Top = 112
  end
  object DataSrcTransDetails: TDataSource
    DataSet = QryTransDetails
    Left = 171
    Top = 112
  end
  object QryItemMasterLK: TADOQuery
    Connection = FormBillingSystem.ADOConnection1
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'Select * from ItemMaster')
    Left = 384
    Top = 96
    object QryItemMasterLKItemID: TAutoIncField
      FieldName = 'ItemID'
      ReadOnly = True
    end
    object QryItemMasterLKItemName: TStringField
      FieldName = 'ItemName'
      Size = 50
    end
    object QryItemMasterLKItemGroupID: TIntegerField
      FieldName = 'ItemGroupID'
    end
    object QryItemMasterLKGSTPer: TBCDField
      FieldName = 'GSTPer'
      Precision = 10
      Size = 2
    end
    object QryItemMasterLKRate: TBCDField
      FieldName = 'Rate'
      Precision = 18
      Size = 0
    end
  end
end
