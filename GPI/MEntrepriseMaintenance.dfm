object Form36: TForm36
  Left = 0
  Top = 0
  Caption = 'Modifier une entreprise de maintenance'
  ClientHeight = 357
  ClientWidth = 554
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 32
    Top = 38
    Width = 178
    Height = 13
    Caption = 'Nom de l'#39'entreprise de maintenance :'
  end
  object Label2: TLabel
    Left = 32
    Top = 113
    Width = 196
    Height = 13
    Caption = 'Adresse de l'#39'entreprise de maintenance :'
  end
  object Label3: TLabel
    Left = 32
    Top = 193
    Width = 207
    Height = 13
    Caption = 'T'#233'l'#233'phone de l'#39'entreprise de maintenance :'
  end
  object Label4: TLabel
    Left = 32
    Top = 273
    Width = 185
    Height = 13
    Caption = 'E-mail de l'#39'entreprise de maintenance :'
  end
  object Label5: TLabel
    Left = 392
    Top = 146
    Width = 35
    Height = 13
    Caption = 'Photo :'
  end
  object Edit1: TEdit
    Left = 88
    Top = 67
    Width = 185
    Height = 21
    TabOrder = 0
  end
  object Edit2: TEdit
    Left = 88
    Top = 142
    Width = 185
    Height = 21
    TabOrder = 1
  end
  object Edit3: TEdit
    Left = 88
    Top = 222
    Width = 185
    Height = 21
    TabOrder = 2
  end
  object Edit4: TEdit
    Left = 88
    Top = 302
    Width = 185
    Height = 21
    TabOrder = 3
  end
  object DBImage1: TDBImage
    Left = 376
    Top = 178
    Width = 153
    Height = 145
    TabOrder = 4
  end
  object Button1: TButton
    Left = 496
    Top = 290
    Width = 33
    Height = 33
    Caption = '+'
    TabOrder = 5
  end
  object Button2: TButton
    Left = 430
    Top = 56
    Width = 99
    Height = 25
    Caption = 'OK'
    TabOrder = 6
    OnClick = Button2Click
  end
  object Button3: TButton
    Left = 430
    Top = 87
    Width = 99
    Height = 25
    Caption = 'Annuler'
    TabOrder = 7
    OnClick = Button3Click
  end
  object OpenPictureDialog1: TOpenPictureDialog
    Left = 320
    Top = 40
  end
end
