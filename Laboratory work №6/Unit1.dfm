object Form1: TForm1
  Left = 192
  Top = 107
  Width = 870
  Height = 640
  Caption = 'Form1'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  OnClose = FormClose
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object Edit1: TEdit
    Left = 48
    Top = 40
    Width = 241
    Height = 21
    PasswordChar = '*'
    TabOrder = 0
    Text = '123456789+'
  end
  object StartHook: TButton
    Left = 48
    Top = 96
    Width = 105
    Height = 41
    Caption = 'StartHook'
    TabOrder = 1
    OnClick = StartHookClick
  end
  object StopHook: TButton
    Left = 176
    Top = 96
    Width = 129
    Height = 41
    Caption = 'StopHook'
    TabOrder = 2
    OnClick = StopHookClick
  end
end
