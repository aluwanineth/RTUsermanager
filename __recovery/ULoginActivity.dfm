object FrmLoginActivity: TFrmLoginActivity
  Left = 0
  Top = 0
  BorderStyle = bsDialog
  Caption = 'Login Activity'
  ClientHeight = 441
  ClientWidth = 984
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -12
  Font.Name = 'Segoe UI'
  Font.Style = []
  Position = poOwnerFormCenter
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 15
  object cxGrid1: TcxGrid
    Left = 0
    Top = 0
    Width = 984
    Height = 441
    Align = alClient
    TabOrder = 0
    ExplicitLeft = 160
    ExplicitTop = 192
    ExplicitWidth = 250
    ExplicitHeight = 200
    object cxGrid1DBTableView1: TcxGridDBTableView
      Navigator.Buttons.CustomButtons = <>
      ScrollbarAnnotations.CustomAnnotations = <>
      DataController.DataSource = DataSource1
      DataController.Summary.DefaultGroupSummaryItems = <>
      DataController.Summary.FooterSummaryItems = <>
      DataController.Summary.SummaryGroups = <>
      object cxGrid1DBTableView1Column1: TcxGridDBColumn
        Caption = 'User Id'
        DataBinding.FieldName = 'UserId'
      end
      object cxGrid1DBTableView1Column2: TcxGridDBColumn
        Caption = 'Email'
        DataBinding.FieldName = 'email'
        Width = 280
      end
      object cxGrid1DBTableView1Column3: TcxGridDBColumn
        Caption = 'Login Time'
        DataBinding.FieldName = 'loginTime'
        Width = 220
      end
      object cxGrid1DBTableView1Column4: TcxGridDBColumn
        Caption = 'Logged Out'
        DataBinding.FieldName = 'LoggedOut'
        Width = 173
      end
    end
    object cxGrid1Level1: TcxGridLevel
      GridView = cxGrid1DBTableView1
    end
  end
  object DataSource1: TDataSource
    DataSet = ADOQuery1
    Left = 440
    Top = 56
  end
  object ADOQuery1: TADOQuery
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'SELECT [Id]'
      '      ,[UserId]'
      '      ,[email]'
      '      ,[jwtToken]'
      '      ,[loginTime]'
      '      ,[LoggedOut]'
      '  FROM [RTWebAPI].[dbo].[ActiveUserTrackers]')
    Left = 296
    Top = 200
  end
end
