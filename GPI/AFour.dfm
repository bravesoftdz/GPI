object Form3: TForm3
  Left = 0
  Top = 0
  Caption = 'Nouveau fournisseur'
  ClientHeight = 321
  ClientWidth = 436
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poDesktopCenter
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
    Top = 64
    Width = 46
    Height = 13
    Caption = 'Adresse :'
  end
  object Label3: TLabel
    Left = 24
    Top = 112
    Width = 57
    Height = 13
    Caption = 'T'#233'l'#233'phone :'
  end
  object Label4: TLabel
    Left = 24
    Top = 160
    Width = 31
    Height = 13
    Caption = 'Email :'
  end
  object Label5: TLabel
    Left = 24
    Top = 208
    Width = 48
    Height = 13
    Caption = 'Site web :'
  end
  object Label6: TLabel
    Left = 24
    Top = 256
    Width = 70
    Height = 13
    Caption = 'Commentaire :'
  end
  object Label7: TLabel
    Left = 271
    Top = 144
    Width = 35
    Height = 13
    Caption = 'Photo :'
  end
  object Edit1: TEdit
    Left = 24
    Top = 37
    Width = 121
    Height = 21
    TabOrder = 0
  end
  object Edit2: TEdit
    Left = 24
    Top = 83
    Width = 209
    Height = 21
    TabOrder = 1
  end
  object Edit3: TEdit
    Left = 24
    Top = 133
    Width = 161
    Height = 21
    TabOrder = 2
  end
  object Edit4: TEdit
    Left = 24
    Top = 181
    Width = 193
    Height = 21
    TabOrder = 3
  end
  object Edit5: TEdit
    Left = 24
    Top = 227
    Width = 193
    Height = 21
    TabOrder = 4
  end
  object Edit6: TEdit
    Left = 24
    Top = 275
    Width = 225
    Height = 21
    TabOrder = 5
  end
  object DBImage1: TDBImage
    Left = 271
    Top = 163
    Width = 137
    Height = 133
    TabOrder = 6
  end
  object Button1: TButton
    Left = 333
    Top = 28
    Width = 75
    Height = 25
    Caption = 'OK'
    TabOrder = 7
    OnClick = Button1Click
  end
  object Button2: TButton
    Left = 333
    Top = 59
    Width = 75
    Height = 25
    Caption = 'Annuler'
    TabOrder = 8
    OnClick = Button2Click
  end
  object BitBtn1: TBitBtn
    Left = 384
    Top = 273
    Width = 24
    Height = 25
    Caption = '+'
    TabOrder = 9
    OnClick = BitBtn1Click
  end
  object OpenPictureDialog1: TOpenPictureDialog
    Left = 264
    Top = 96
  end
end
