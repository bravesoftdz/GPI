object Form40: TForm40
  Left = 0
  Top = 0
  Caption = 'Mat'#233'riel en panne'
  ClientHeight = 451
  ClientWidth = 948
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
    Left = 40
    Top = 144
    Width = 681
    Height = 236
    DataSource = DataSource1
    TabOrder = 0
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
  end
  object Button1: TButton
    Left = 792
    Top = 171
    Width = 107
    Height = 25
    Caption = 'Panne'
    TabOrder = 1
  end
  object Button2: TButton
    Left = 792
    Top = 219
    Width = 107
    Height = 25
    Caption = 'R'#233'parer'
    TabOrder = 2
  end
  object Button6: TButton
    Left = 480
    Top = 91
    Width = 113
    Height = 25
    Caption = 'Recherche'
    TabOrder = 3
  end
  object ComboBox1: TComboBox
    Left = 69
    Top = 93
    Width = 145
    Height = 21
    TabOrder = 4
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
    TabOrder = 5
  end
  object Button3: TButton
    Left = 808
    Top = 291
    Width = 91
    Height = 25
    Caption = 'Fermer'
    TabOrder = 6
  end
  object ADOTable1: TADOTable
    Active = True
    Connection = Form1.ADOConnection1
    CursorType = ctStatic
    TableName = 'Panne'
    Left = 720
    Top = 32
  end
  object DataSource1: TDataSource
    DataSet = ADOTable1
    Left = 816
    Top = 32
  end
end
