object Form24: TForm24
  Left = 0
  Top = 0
  Caption = 'Modifier mat'#233'riel'
  ClientHeight = 397
  ClientWidth = 628
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poDesktopCenter
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 24
    Top = 16
    Width = 41
    Height = 13
    Caption = 'Mod'#232'le :'
  end
  object Label2: TLabel
    Left = 24
    Top = 72
    Width = 85
    Height = 13
    Caption = 'Num'#233'ro de s'#233'rie :'
  end
  object Label3: TLabel
    Left = 24
    Top = 120
    Width = 73
    Height = 13
    Caption = 'Num'#233'ro Immo :'
  end
  object Label4: TLabel
    Left = 24
    Top = 168
    Width = 60
    Height = 13
    Caption = 'Description :'
  end
  object Label8: TLabel
    Left = 24
    Top = 342
    Width = 88
    Height = 13
    Caption = 'Date fin garantie :'
  end
  object Label6: TLabel
    Left = 280
    Top = 16
    Width = 65
    Height = 13
    Caption = 'Type mat'#233'riel'
  end
  object Label9: TLabel
    Left = 280
    Top = 72
    Width = 44
    Height = 13
    Caption = 'Facture :'
  end
  object Label11: TLabel
    Left = 280
    Top = 168
    Width = 43
    Height = 13
    Caption = 'Marque :'
  end
  object Label12: TLabel
    Left = 280
    Top = 244
    Width = 35
    Height = 13
    Caption = 'Photo :'
  end
  object Edit1: TEdit
    Left = 24
    Top = 35
    Width = 121
    Height = 21
    TabOrder = 0
  end
  object Edit2: TEdit
    Left = 24
    Top = 91
    Width = 121
    Height = 21
    TabOrder = 1
  end
  object Edit3: TEdit
    Left = 24
    Top = 139
    Width = 121
    Height = 21
    TabOrder = 2
  end
  object Edit4: TEdit
    Left = 24
    Top = 187
    Width = 121
    Height = 21
    TabOrder = 3
  end
  object ComboBox3: TComboBox
    Left = 280
    Top = 35
    Width = 145
    Height = 21
    TabOrder = 4
  end
  object ComboBox4: TComboBox
    Left = 280
    Top = 91
    Width = 145
    Height = 21
    TabOrder = 5
  end
  object ComboBox5: TComboBox
    Left = 280
    Top = 187
    Width = 145
    Height = 21
    TabOrder = 6
  end
  object DBImage1: TDBImage
    Left = 447
    Top = 139
    Width = 162
    Height = 105
    TabOrder = 7
  end
  object DBImage2: TDBImage
    Left = 280
    Top = 263
    Width = 105
    Height = 105
    TabOrder = 8
  end
  object DateTimePicker2: TDateTimePicker
    Left = 24
    Top = 361
    Width = 121
    Height = 21
    Date = 43299.020293298610000000
    Time = 43299.020293298610000000
    TabOrder = 9
  end
  object Button1: TButton
    Left = 534
    Top = 36
    Width = 75
    Height = 25
    Caption = 'OK'
    TabOrder = 10
    OnClick = Button1Click
  end
  object Button2: TButton
    Left = 534
    Top = 67
    Width = 75
    Height = 25
    Caption = 'Annuler'
    TabOrder = 11
    OnClick = Button2Click
  end
end
