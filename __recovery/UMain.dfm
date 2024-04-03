object Form1: TForm1
  Left = 0
  Top = 0
  Caption = 'Form1'
  ClientHeight = 454
  ClientWidth = 626
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -12
  Font.Name = 'Segoe UI'
  Font.Style = []
  Menu = MainMenu1
  Position = poDesktopCenter
  PixelsPerInch = 96
  TextHeight = 15
  object MainMenu1: TMainMenu
    Left = 272
    Top = 152
    object ActiveUser1: TMenuItem
      Caption = 'Users'
      OnClick = ActiveUser1Click
    end
    object rackLogin1: TMenuItem
      Caption = 'Track Login'
      OnClick = rackLogin1Click
    end
  end
end
