object Form32: TForm32
  Left = 0
  Top = 0
  Caption = 'Nouveau poste'
  ClientHeight = 226
  ClientWidth = 473
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 40
    Top = 38
    Width = 58
    Height = 13
    Caption = 'Nom poste :'
  end
  object Label2: TLabel
    Left = 40
    Top = 78
    Width = 70
    Height = 13
    Caption = 'Niveau poste :'
  end
  object Label3: TLabel
    Left = 40
    Top = 118
    Width = 60
    Height = 13
    Caption = 'Description :'
  end
  object Edit1: TEdit
    Left = 136
    Top = 35
    Width = 145
    Height = 21
    TabOrder = 0
  end
  object ComboBox1: TComboBox
    Left = 136
    Top = 75
    Width = 145
    Height = 21
    TabOrder = 1
    Items.Strings = (
      'Doctorat (BAC+8)'
      'Master (BAC+5)'
      'Ing'#233'nieur d'#39#233'tat (BAC+5)'
      'Licence (BAC +3)'
      'Technicien supp'#233'rieur (BAC+2)'
      'Niveau BAC'
      'Technicien'
      'CAP'
      'Certification'
      'Attestation'
      'Auccun diplome')
  end
  object RichEdit1: TRichEdit
    Left = 136
    Top = 115
    Width = 185
    Height = 78
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    TabOrder = 2
  end
  object Button1: TButton
    Left = 352
    Top = 33
    Width = 89
    Height = 25
    Caption = 'OK'
    TabOrder = 3
    OnClick = Button1Click
  end
  object Button2: TButton
    Left = 352
    Top = 73
    Width = 89
    Height = 25
    Caption = 'Annuler'
    TabOrder = 4
    OnClick = Button2Click
  end
end
