object Form39: TForm39
  Left = 0
  Top = 0
  Caption = 'D'#233'saffectation'
  ClientHeight = 487
  ClientWidth = 1018
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
  object Button1: TButton
    Left = 856
    Top = 184
    Width = 121
    Height = 25
    Caption = 'D'#233'saffecter'
    TabOrder = 0
  end
  object Button3: TButton
    Left = 856
    Top = 232
    Width = 121
    Height = 25
    Caption = 'Imprimer'
    TabOrder = 1
  end
  object Button5: TButton
    Left = 872
    Top = 344
    Width = 105
    Height = 25
    Caption = 'Fermer'
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
  object DBGrid1: TDBGrid
    Left = 32
    Top = 160
    Width = 777
    Height = 281
    DataSource = DataSource1
    TabOrder = 5
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
  end
  object Edit1: TEdit
    Left = 272
    Top = 93
    Width = 153
    Height = 21
    TabOrder = 6
  end
  object ADOTable1: TADOTable
    Active = True
    Connection = Form1.ADOConnection1
    CursorType = ctStatic
    TableName = 'Materiel'
    Left = 816
    Top = 80
  end
  object DataSource1: TDataSource
    DataSet = ADOTable1
    Left = 672
    Top = 40
  end
  object ADOTable2: TADOTable
    Connection = Form1.ADOConnection1
    Left = 872
    Top = 80
  end
  object DataSource2: TDataSource
    Left = 736
    Top = 40
  end
end
