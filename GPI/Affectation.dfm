object Form38: TForm38
  Left = 0
  Top = 0
  Caption = 'Affectation'
  ClientHeight = 569
  ClientWidth = 1007
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
    Top = 50
    Width = 81
    Height = 13
    Caption = 'Rechercher par :'
  end
  object Label2: TLabel
    Left = 272
    Top = 50
    Width = 41
    Height = 13
    Caption = 'Mot cl'#233' :'
  end
  object DBGrid1: TDBGrid
    Left = 32
    Top = 120
    Width = 777
    Height = 233
    DataSource = DataSource1
    TabOrder = 0
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
  end
  object DBGrid2: TDBGrid
    Left = 152
    Top = 416
    Width = 417
    Height = 129
    DataSource = DataSource2
    TabOrder = 1
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
  end
  object Button1: TButton
    Left = 856
    Top = 136
    Width = 121
    Height = 25
    Caption = 'Ajouter'
    TabOrder = 2
  end
  object Button2: TButton
    Left = 856
    Top = 176
    Width = 121
    Height = 25
    Caption = 'Modifier'
    TabOrder = 3
  end
  object Button3: TButton
    Left = 856
    Top = 256
    Width = 121
    Height = 25
    Caption = 'Imprimer'
    TabOrder = 4
  end
  object Button5: TButton
    Left = 872
    Top = 344
    Width = 105
    Height = 25
    Caption = 'Fermer'
    TabOrder = 5
  end
  object ComboBox1: TComboBox
    Left = 69
    Top = 69
    Width = 145
    Height = 21
    TabOrder = 6
    Text = 'Nom'
    Items.Strings = (
      'Matricule'
      'Nom'
      'Pr'#233'nom')
  end
  object Edit1: TEdit
    Left = 272
    Top = 69
    Width = 153
    Height = 21
    TabOrder = 7
  end
  object Button6: TButton
    Left = 480
    Top = 67
    Width = 113
    Height = 25
    Caption = 'Recherche'
    TabOrder = 8
  end
  object Button4: TButton
    Left = 856
    Top = 216
    Width = 121
    Height = 25
    Caption = 'Supprimer'
    TabOrder = 9
  end
  object ADOTable1: TADOTable
    Active = True
    Connection = Form1.ADOConnection1
    CursorType = ctStatic
    TableName = 'Employe'
    Left = 880
    Top = 424
  end
  object DataSource1: TDataSource
    DataSet = ADOTable1
    Left = 952
    Top = 448
  end
  object ADOTable2: TADOTable
    Active = True
    Connection = Form1.ADOConnection1
    CursorType = ctStatic
    IndexFieldNames = 'Matricule_Employe'
    MasterFields = 'Matricule_Employe'
    MasterSource = DataSource1
    TableName = 'Affectation'
    Left = 680
    Top = 32
  end
  object DataSource2: TDataSource
    DataSet = ADOTable2
    Left = 880
    Top = 496
  end
end
