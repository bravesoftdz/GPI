object Form15: TForm15
  Left = 0
  Top = 0
  Caption = 'Recherche employ'#233
  ClientHeight = 302
  ClientWidth = 633
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
    Left = 96
    Top = 56
    Width = 77
    Height = 13
    Caption = 'Recherche par :'
  end
  object Label2: TLabel
    Left = 312
    Top = 56
    Width = 41
    Height = 13
    Caption = 'Mot cl'#233' :'
  end
  object Label3: TLabel
    Left = 64
    Top = 21
    Width = 31
    Height = 13
    Caption = 'Label3'
  end
  object Label4: TLabel
    Left = 160
    Top = 21
    Width = 31
    Height = 13
    Caption = 'Label3'
  end
  object Label5: TLabel
    Left = 240
    Top = 21
    Width = 31
    Height = 13
    Caption = 'Label3'
  end
  object Label6: TLabel
    Left = 312
    Top = 21
    Width = 31
    Height = 13
    Caption = 'Label3'
  end
  object Label7: TLabel
    Left = 384
    Top = 21
    Width = 31
    Height = 13
    Caption = 'Label3'
  end
  object Label8: TLabel
    Left = 456
    Top = 21
    Width = 31
    Height = 13
    Caption = 'Label3'
  end
  object Edit2: TEdit
    Left = 312
    Top = 75
    Width = 137
    Height = 21
    TabOrder = 0
  end
  object Button1: TButton
    Left = 537
    Top = 20
    Width = 75
    Height = 25
    Caption = 'Annuler'
    TabOrder = 1
    OnClick = Button1Click
  end
  object Button2: TButton
    Left = 488
    Top = 73
    Width = 75
    Height = 25
    Caption = 'Recherche'
    TabOrder = 2
    OnClick = Button2Click
  end
  object ComboBox1: TComboBox
    Left = 96
    Top = 77
    Width = 145
    Height = 21
    TabOrder = 3
  end
  object DBGrid1: TDBGrid
    Left = 72
    Top = 136
    Width = 491
    Height = 137
    DataSource = DataSource1
    TabOrder = 4
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
  end
  object ADOTable1: TADOTable
    Active = True
    Connection = Form1.ADOConnection1
    CursorType = ctStatic
    TableName = 'Employe'
    Left = 576
    Top = 120
    object ADOTable1Matricule_Employe: TAutoIncField
      FieldName = 'Matricule_Employe'
      ReadOnly = True
    end
    object ADOTable1Nom_Employe: TStringField
      FieldName = 'Nom_Employe'
      Size = 16
    end
    object ADOTable1Prenom_Employe: TStringField
      FieldName = 'Prenom_Employe'
      Size = 16
    end
    object ADOTable1Adresse_Employe: TStringField
      FieldName = 'Adresse_Employe'
      Size = 32
    end
    object ADOTable1Tel_Employe: TStringField
      FieldName = 'Tel_Employe'
    end
    object ADOTable1Photo_Employe: TVarBytesField
      FieldName = 'Photo_Employe'
      Size = 1
    end
    object ADOTable1Date_Recrutement: TDateField
      FieldName = 'Date_Recrutement'
    end
    object ADOTable1ID_Poste: TIntegerField
      FieldName = 'ID_Poste'
    end
    object ADOTable1ID_Siege: TIntegerField
      FieldName = 'ID_Siege'
    end
  end
  object DataSource1: TDataSource
    DataSet = ADOTable1
    Left = 584
    Top = 176
  end
end
