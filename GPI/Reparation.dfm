object Form41: TForm41
  Left = 0
  Top = 0
  Caption = 'R'#233'paration'
  ClientHeight = 436
  ClientWidth = 961
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
    Left = 69
    Top = 74
    Width = 81
    Height = 13
    Caption = 'Rechercher par :'
  end
  object Label2: TLabel
    Left = 272
    Top = 74
    Width = 41
    Height = 13
    Caption = 'Mot cl'#233' :'
  end
  object DBGrid1: TDBGrid
    Left = 69
    Top = 152
    Width = 644
    Height = 241
    DataSource = DataSource1
    TabOrder = 0
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
  end
  object Button6: TButton
    Left = 480
    Top = 91
    Width = 113
    Height = 25
    Caption = 'Recherche'
    TabOrder = 1
  end
  object ComboBox1: TComboBox
    Left = 69
    Top = 93
    Width = 145
    Height = 21
    TabOrder = 2
    Text = 'Num'#233'ro de s'#233'rie'
    Items.Strings = (
      'Num'#233'ro de s'#233'rie'
      'Num'#233'ro Immo'
      'Mod'#232'le'
      'Date fin garentie')
  end
  object Edit1: TEdit
    Left = 272
    Top = 93
    Width = 153
    Height = 21
    TabOrder = 3
  end
  object Button1: TButton
    Left = 768
    Top = 152
    Width = 99
    Height = 25
    Caption = 'Ajouter'
    TabOrder = 4
  end
  object Button2: TButton
    Left = 768
    Top = 200
    Width = 99
    Height = 25
    Caption = 'Modifier'
    TabOrder = 5
  end
  object Button3: TButton
    Left = 768
    Top = 248
    Width = 99
    Height = 25
    Caption = 'Supprimer'
    TabOrder = 6
  end
  object Button4: TButton
    Left = 792
    Top = 368
    Width = 75
    Height = 25
    Caption = 'Fermer'
    TabOrder = 7
  end
  object Button5: TButton
    Left = 768
    Top = 297
    Width = 99
    Height = 25
    Caption = 'Imprimer'
    TabOrder = 8
  end
  object ADOTable1: TADOTable
    Active = True
    Connection = Form1.ADOConnection1
    CursorType = ctStatic
    TableName = 'Reparation'
    Left = 744
    Top = 40
  end
  object DataSource1: TDataSource
    DataSet = ADOTable1
    Left = 824
    Top = 40
  end
end
