object Form16: TForm16
  Left = 0
  Top = 0
  Caption = 'Recherche marque'
  ClientHeight = 301
  ClientWidth = 618
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
    Left = 80
    Top = 56
    Width = 77
    Height = 13
    Caption = 'Recherche par :'
  end
  object Label2: TLabel
    Left = 296
    Top = 56
    Width = 41
    Height = 13
    Caption = 'Mot cl'#233' :'
  end
  object Edit2: TEdit
    Left = 296
    Top = 75
    Width = 137
    Height = 21
    TabOrder = 0
  end
  object Button1: TButton
    Left = 521
    Top = 20
    Width = 75
    Height = 25
    Caption = 'Annuler'
    TabOrder = 1
    OnClick = Button1Click
  end
  object Button2: TButton
    Left = 472
    Top = 73
    Width = 75
    Height = 25
    Caption = 'Recherche'
    TabOrder = 2
  end
  object DBGrid1: TDBGrid
    Left = 16
    Top = 136
    Width = 580
    Height = 145
    TabOrder = 3
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
  end
  object ComboBox1: TComboBox
    Left = 80
    Top = 77
    Width = 145
    Height = 21
    TabOrder = 4
  end
end
