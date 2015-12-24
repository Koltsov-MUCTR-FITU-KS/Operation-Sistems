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
  PixelsPerInch = 96
  TextHeight = 13
  object FileListBox1: TFileListBox
    Left = 344
    Top = 24
    Width = 145
    Height = 97
    ItemHeight = 13
    TabOrder = 0
  end
  object DirectoryListBox1: TDirectoryListBox
    Left = 504
    Top = 24
    Width = 145
    Height = 97
    FileList = FileListBox1
    ItemHeight = 16
    TabOrder = 1
    OnChange = DirectoryListBox1Change
  end
  object DriveComboBox1: TDriveComboBox
    Left = 344
    Top = 128
    Width = 145
    Height = 19
    DirList = DirectoryListBox1
    TabOrder = 2
  end
  object FilterComboBox1: TFilterComboBox
    Left = 504
    Top = 128
    Width = 145
    Height = 21
    FileList = FileListBox1
    TabOrder = 3
  end
  object Button1: TButton
    Left = 680
    Top = 16
    Width = 121
    Height = 33
    Caption = #1063#1090#1086
    TabOrder = 4
    OnClick = Button1Click
  end
  object Button2: TButton
    Left = 680
    Top = 56
    Width = 121
    Height = 33
    Caption = #1050#1091#1076#1072
    TabOrder = 5
    OnClick = Button2Click
  end
  object Button3: TButton
    Left = 680
    Top = 96
    Width = 121
    Height = 33
    Caption = #1050#1086#1087#1080#1088#1091#1081
    TabOrder = 6
    OnClick = Button3Click
  end
  object Button4: TButton
    Left = 680
    Top = 136
    Width = 121
    Height = 33
    Caption = #1057#1086#1079#1076#1072#1085#1080#1077' '#1087#1072#1087#1082#1080
    TabOrder = 7
    OnClick = Button4Click
  end
  object Button5: TButton
    Left = 680
    Top = 176
    Width = 177
    Height = 33
    Caption = #1050#1086#1087#1080#1088#1091#1081' '#1095#1077#1088#1077#1079' '#1087#1086#1090#1086#1082'+'#1087#1086' '#1095#1072#1089#1090#1103#1084' '
    TabOrder = 8
    OnClick = Button5Click
  end
  object Button6: TButton
    Left = 680
    Top = 216
    Width = 121
    Height = 33
    Caption = #1082#1091#1076#1072' '#1087#1086#1090#1086#1082
    TabOrder = 9
    OnClick = Button6Click
  end
  object Button7: TButton
    Left = 680
    Top = 256
    Width = 121
    Height = 33
    Caption = #1050#1086#1087#1080#1088#1091#1081' '#1087#1086' '#1095#1072#1089#1090#1103#1084
    TabOrder = 10
    OnClick = Button7Click
  end
  object Button8: TButton
    Left = 680
    Top = 296
    Width = 161
    Height = 33
    Caption = #1059#1076#1072#1083#1080#1090#1100' '#1087#1072#1087#1082#1091
    TabOrder = 11
    OnClick = Button8Click
  end
end
