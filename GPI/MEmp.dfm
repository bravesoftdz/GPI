object Form20: TForm20
  Left = 0
  Top = 0
  Caption = 'Modifier employ'#233
  ClientHeight = 290
  ClientWidth = 466
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
    Width = 28
    Height = 13
    Caption = 'Nom :'
  end
  object Label2: TLabel
    Left = 24
    Top = 65
    Width = 43
    Height = 13
    Caption = 'Pr'#233'nom :'
  end
  object Label3: TLabel
    Left = 24
    Top = 114
    Width = 57
    Height = 13
    Caption = 'T'#233'l'#233'phone :'
  end
  object Label4: TLabel
    Left = 24
    Top = 168
    Width = 46
    Height = 13
    Caption = 'Adresse :'
  end
  object Label5: TLabel
    Left = 24
    Top = 226
    Width = 92
    Height = 13
    Caption = 'Date recrutement :'
  end
  object Label6: TLabel
    Left = 295
    Top = 95
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
    Top = 84
    Width = 121
    Height = 21
    TabOrder = 1
  end
  object Edit3: TEdit
    Left = 24
    Top = 133
    Width = 121
    Height = 21
    TabOrder = 2
  end
  object Edit4: TEdit
    Left = 24
    Top = 187
    Width = 249
    Height = 21
    TabOrder = 3
  end
  object DBImage1: TDBImage
    Left = 295
    Top = 114
    Width = 153
    Height = 160
    TabOrder = 4
  end
  object Button1: TButton
    Left = 373
    Top = 22
    Width = 75
    Height = 25
    Caption = 'OK'
    TabOrder = 5
    OnClick = Button1Click
  end
  object Button2: TButton
    Left = 373
    Top = 53
    Width = 75
    Height = 25
    Caption = 'Annuler'
    TabOrder = 6
    OnClick = Button2Click
  end
  object DateTimePicker1: TDateTimePicker
    Left = 24
    Top = 245
    Width = 186
    Height = 21
    Date = 43297.822560671290000000
    Time = 43297.822560671290000000
    TabOrder = 7
  end
  object BitBtn1: TBitBtn
    Left = 423
    Top = 249
    Width = 25
    Height = 25
    Caption = '+'
    TabOrder = 8
    OnClick = BitBtn1Click
  end
  object OpenPictureDialog1: TOpenPictureDialog
    Left = 256
    Top = 32
  end
end
