object Form13: TForm13
  Left = 0
  Top = 0
  Caption = 'Liste mat'#233'riel affect'#233
  ClientHeight = 511
  ClientWidth = 672
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
  object DBGrid1: TDBGrid
    Left = 16
    Top = 16
    Width = 489
    Height = 321
    TabOrder = 0
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
  end
  object Button2: TButton
    Left = 536
    Top = 48
    Width = 105
    Height = 25
    Caption = 'Ajouter'
    TabOrder = 1
    OnClick = Button2Click
  end
  object Button3: TButton
    Left = 536
    Top = 87
    Width = 105
    Height = 25
    Caption = 'Modifier'
    TabOrder = 2
  end
  object Button4: TButton
    Left = 536
    Top = 126
    Width = 105
    Height = 25
    Caption = 'Supprimer'
    TabOrder = 3
  end
  object Button5: TButton
    Left = 536
    Top = 166
    Width = 105
    Height = 25
    Caption = 'Imprimer'
    TabOrder = 4
  end
  object Button6: TButton
    Left = 552
    Top = 360
    Width = 89
    Height = 25
    Caption = 'Fermer'
    TabOrder = 5
    OnClick = Button6Click
  end
  object Button1: TButton
    Left = 128
    Top = 360
    Width = 257
    Height = 25
    Caption = 'Imprimer listes des mat'#233'riels par employ'#233
    TabOrder = 6
  end
  object DBGrid2: TDBGrid
    Left = 72
    Top = 407
    Width = 385
    Height = 82
    TabOrder = 7
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
  end
end
