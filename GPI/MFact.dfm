object Form21: TForm21
  Left = 0
  Top = 0
  Caption = 'Modifier facture'
  ClientHeight = 143
  ClientWidth = 365
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
    Top = 24
    Width = 108
    Height = 13
    Caption = 'Num'#233'ro de la facture :'
  end
  object Label2: TLabel
    Left = 24
    Top = 88
    Width = 94
    Height = 13
    Caption = 'Date de la facture :'
  end
  object Edit1: TEdit
    Left = 24
    Top = 43
    Width = 169
    Height = 21
    TabOrder = 0
  end
  object Button1: TButton
    Left = 272
    Top = 52
    Width = 75
    Height = 25
    Caption = 'OK'
    TabOrder = 1
    OnClick = Button1Click
  end
  object Button2: TButton
    Left = 272
    Top = 83
    Width = 75
    Height = 25
    Caption = 'Annuler'
    TabOrder = 2
    OnClick = Button2Click
  end
  object DateTimePicker1: TDateTimePicker
    Left = 24
    Top = 107
    Width = 169
    Height = 21
    Date = 43299.046926921300000000
    Time = 43299.046926921300000000
    TabOrder = 3
  end
end
