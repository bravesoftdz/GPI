object Form30: TForm30
  Left = 0
  Top = 0
  Caption = 'Modifier si'#233'ge'
  ClientHeight = 176
  ClientWidth = 423
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
  object Label2: TLabel
    Left = 32
    Top = 48
    Width = 59
    Height = 13
    Caption = 'Type si'#232'ge :'
  end
  object Label3: TLabel
    Left = 32
    Top = 88
    Width = 63
    Height = 13
    Caption = 'E-mail si'#232'ge :'
  end
  object Label4: TLabel
    Left = 32
    Top = 128
    Width = 60
    Height = 13
    Caption = 'Lieux si'#232'ge :'
  end
  object Edit3: TEdit
    Left = 104
    Top = 85
    Width = 169
    Height = 21
    TabOrder = 0
  end
  object Edit4: TEdit
    Left = 104
    Top = 125
    Width = 169
    Height = 21
    TabOrder = 1
  end
  object ComboBox1: TComboBox
    Left = 104
    Top = 45
    Width = 121
    Height = 21
    TabOrder = 2
    Text = 'Front-end'
    Items.Strings = (
      'Front-end'
      'Back-end')
  end
  object Button1: TButton
    Left = 304
    Top = 43
    Width = 75
    Height = 25
    Caption = 'OK'
    TabOrder = 3
    OnClick = Button1Click
  end
  object Button2: TButton
    Left = 304
    Top = 83
    Width = 75
    Height = 25
    Caption = 'Annuler'
    TabOrder = 4
    OnClick = Button2Click
  end
end
