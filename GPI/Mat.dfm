object Form12: TForm12
  Left = 0
  Top = 0
  Caption = 'Mat'#233'riel'
  ClientHeight = 528
  ClientWidth = 1031
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
    Left = 88
    Top = 18
    Width = 81
    Height = 13
    Caption = 'Rechercher par :'
  end
  object Label2: TLabel
    Left = 384
    Top = 18
    Width = 41
    Height = 13
    Caption = 'Mot cl'#233' :'
  end
  object Button1: TButton
    Left = 640
    Top = 35
    Width = 105
    Height = 25
    Caption = 'Recherche'
    TabOrder = 0
    OnClick = Button1Click
  end
  object Button2: TButton
    Left = 896
    Top = 80
    Width = 105
    Height = 25
    Caption = 'Ajouter'
    TabOrder = 1
    OnClick = Button2Click
  end
  object Button3: TButton
    Left = 896
    Top = 120
    Width = 105
    Height = 25
    Caption = 'Modifier'
    TabOrder = 2
    OnClick = Button3Click
  end
  object Button4: TButton
    Left = 896
    Top = 158
    Width = 105
    Height = 25
    Caption = 'Supprimer'
    TabOrder = 3
    OnClick = Button4Click
  end
  object Button5: TButton
    Left = 896
    Top = 198
    Width = 105
    Height = 25
    Caption = 'Imprimer'
    TabOrder = 4
  end
  object Button6: TButton
    Left = 912
    Top = 384
    Width = 89
    Height = 25
    Caption = 'Fermer'
    TabOrder = 5
    OnClick = Button6Click
  end
  object DBImage1: TDBImage
    Left = 896
    Top = 248
    Width = 105
    Height = 105
    TabOrder = 6
  end
  object DBGrid1: TDBGrid
    Left = 8
    Top = 80
    Width = 882
    Height = 353
    DataSource = DataSource1
    TabOrder = 7
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
    Columns = <
      item
        Expanded = False
        FieldName = 'Modele_Materiel'
        Title.Caption = 'Mod'#232'le'
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -11
        Title.Font.Name = 'Tahoma'
        Title.Font.Style = [fsBold]
        Width = 112
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'Num_Immo'
        Title.Caption = 'Num'#233'ro immo'
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -11
        Title.Font.Name = 'Tahoma'
        Title.Font.Style = [fsBold]
        Width = 110
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'Num_Serie'
        Title.Caption = 'Num'#233'ro de s'#233'rie'
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -11
        Title.Font.Name = 'Tahoma'
        Title.Font.Style = [fsBold]
        Width = 112
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'Description_Materiel'
        Title.Caption = 'Description'
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -11
        Title.Font.Name = 'Tahoma'
        Title.Font.Style = [fsBold]
        Width = 152
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'Date_Fin_Garentie'
        Title.Caption = 'Date fin garentie'
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -11
        Title.Font.Name = 'Tahoma'
        Title.Font.Style = [fsBold]
        Width = 140
        Visible = True
      end>
  end
  object ComboBox1: TComboBox
    Left = 88
    Top = 37
    Width = 145
    Height = 21
    TabOrder = 8
    Text = 'Mod'#232'le'
    Items.Strings = (
      'Mod'#232'le'
      'Num'#233'ro de s'#233'rie'
      'Num'#233'ro immo'
      'Description mat'#233'riel'
      'Prix d'#39'achat'
      'Date d'#39'achat'
      'Date fin garentie')
  end
  object Edit1: TEdit
    Left = 384
    Top = 37
    Width = 185
    Height = 21
    TabOrder = 9
  end
  object ADOTable1: TADOTable
    Active = True
    Connection = Form1.ADOConnection1
    CursorType = ctStatic
    TableName = 'Materiel'
    Left = 512
    Top = 440
    object ADOTable1ID_Materiel: TAutoIncField
      FieldName = 'ID_Materiel'
      ReadOnly = True
    end
    object ADOTable1Modele_Materiel: TStringField
      FieldName = 'Modele_Materiel'
      Size = 16
    end
    object ADOTable1Num_Serie: TStringField
      FieldName = 'Num_Serie'
      Size = 16
    end
    object ADOTable1Num_Immo: TStringField
      FieldName = 'Num_Immo'
      Size = 16
    end
    object ADOTable1Description_Materiel: TStringField
      FieldName = 'Description_Materiel'
      Size = 32
    end
    object ADOTable1Date_Fin_Garentie: TDateField
      FieldName = 'Date_Fin_Garentie'
    end
    object ADOTable1ID_Type_Materiel: TIntegerField
      FieldName = 'ID_Type_Materiel'
    end
    object ADOTable1ID_Marque: TIntegerField
      FieldName = 'ID_Marque'
    end
  end
  object DataSource1: TDataSource
    DataSet = ADOTable1
    Left = 296
    Top = 432
  end
end
