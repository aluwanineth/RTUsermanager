object FrmUser: TFrmUser
  Left = 0
  Top = 0
  BorderStyle = bsDialog
  Caption = 'Users'
  ClientHeight = 617
  ClientWidth = 1088
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -12
  Font.Name = 'Segoe UI'
  Font.Style = []
  Position = poMainFormCenter
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 15
  object cxGrid1: TcxGrid
    Left = 0
    Top = 0
    Width = 1088
    Height = 617
    Align = alClient
    PopupMenu = PopupMenu1
    TabOrder = 0
    ExplicitWidth = 1086
    ExplicitHeight = 609
    object cxGrid1DBTableView1: TcxGridDBTableView
      Navigator.Buttons.CustomButtons = <>
      ScrollbarAnnotations.CustomAnnotations = <>
      DataController.DataSource = DataSource1
      DataController.Summary.DefaultGroupSummaryItems = <>
      DataController.Summary.FooterSummaryItems = <>
      DataController.Summary.SummaryGroups = <>
      FilterRow.SeparatorWidth = 8
      FixedDataRows.SeparatorWidth = 8
      NewItemRow.SeparatorWidth = 8
      OptionsSelection.CellSelect = False
      OptionsView.NavigatorOffset = 63
      OptionsView.IndicatorWidth = 15
      Preview.LeftIndent = 25
      Preview.RightIndent = 6
      object cxGrid1DBTableView1Column9: TcxGridDBColumn
        DataBinding.FieldName = 'Id'
        Visible = False
      end
      object cxGrid1DBTableView1Column1: TcxGridDBColumn
        Caption = 'First Name'
        DataBinding.FieldName = 'FirstName'
        Width = 132
      end
      object cxGrid1DBTableView1Column2: TcxGridDBColumn
        DataBinding.FieldName = 'Surname'
        Width = 158
      end
      object cxGrid1DBTableView1Column3: TcxGridDBColumn
        DataBinding.FieldName = 'CompanyName'
        Width = 196
      end
      object cxGrid1DBTableView1Column4: TcxGridDBColumn
        DataBinding.FieldName = 'AccNo'
        Width = 125
      end
      object cxGrid1DBTableView1Column5: TcxGridDBColumn
        DataBinding.FieldName = 'Email'
        Width = 157
      end
      object cxGrid1DBTableView1Column6: TcxGridDBColumn
        DataBinding.FieldName = 'ContactTelNo'
      end
      object cxGrid1DBTableView1Column7: TcxGridDBColumn
        DataBinding.FieldName = 'MemberType'
        Width = 113
      end
      object cxGrid1DBTableView1Column8: TcxGridDBColumn
        DataBinding.FieldName = 'Status'
        Width = 65
      end
      object cxGrid1DBTableView1Column10: TcxGridDBColumn
        DataBinding.FieldName = 'Code'
        Visible = False
        Width = 376
      end
      object cxGrid1DBTableView1Column11: TcxGridDBColumn
        DataBinding.FieldName = 'UserId'
        Visible = False
      end
    end
    object cxGrid1Level1: TcxGridLevel
      GridView = cxGrid1DBTableView1
    end
  end
  object QryUser: TADOQuery
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'SELECT [Id]'
      '      ,[FirstName]'
      '      ,[Surname]'
      '      ,[Email]'
      '      ,[CompanyName]'
      '      ,[AccNo]'
      '      ,[MemberType]'
      '      ,[Status]'
      '      ,[ContactTelNo]'
      '      ,[UserId]'
      '      ,[Code]'
      '      ,[CreatedDate]'
      '      ,[CreatedBy]'
      '      ,[ModifiedDate]'
      '      ,[ModifiedBy]'
      '  FROM [RTWebAPI].[dbo].[Customers]'
      '  WHERE [MemberType] = '#39'Administrator'#39)
    Left = 808
    Top = 304
  end
  object DataSource1: TDataSource
    DataSet = QryUser
    Left = 624
    Top = 184
  end
  object PopupMenu1: TPopupMenu
    Left = 416
    Top = 344
    object Edit1: TMenuItem
      Caption = 'Edit'
      OnClick = Edit1Click
    end
    object Edit2: TMenuItem
      Caption = 'Delete'
      OnClick = Edit2Click
    end
    object ActivateUser1: TMenuItem
      Caption = 'Activate User'
      OnClick = ActivateUser1Click
    end
  end
  object cxGridPopupMenu1: TcxGridPopupMenu
    PopupMenus = <
      item
        GridView = cxGrid1DBTableView1
        HitTypes = []
        Index = 0
        PopupMenu = PopupMenu1
      end>
    Left = 1024
    Top = 312
  end
end
