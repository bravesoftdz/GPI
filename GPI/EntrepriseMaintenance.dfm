object Form34: TForm34
  Left = 0
  Top = 0
  Caption = 'Entreprise de maintenance'
  ClientHeight = 465
  ClientWidth = 874
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
    Left = 53
    Top = 42
    Width = 81
    Height = 13
    Caption = 'Rechercher par :'
  end
  object Label2: TLabel
    Left = 237
    Top = 42
    Width = 41
    Height = 13
    Caption = 'Mot cl'#233' :'
  end
  object DBGrid1: TDBGrid
    Left = 8
    Top = 123
    Width = 673
    Height = 310
    DataSource = DataSource1
    TabOrder = 0
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
    Columns = <
      item
        Expanded = False
        FieldName = 'ID_Entreprise'
        Title.Caption = 'ID entreprise'
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -11
        Title.Font.Name = 'Tahoma'
        Title.Font.Style = [fsBold]
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'Nom_Entreprise'
        Title.Caption = 'Nom entreprise'
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -11
        Title.Font.Name = 'Tahoma'
        Title.Font.Style = [fsBold]
        Width = 164
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'Adresse_Entreprise'
        Title.Caption = 'Adresse entreprise'
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -11
        Title.Font.Name = 'Tahoma'
        Title.Font.Style = [fsBold]
        Width = 164
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'Tel_Entreprise'
        Title.Caption = 'Tel entreprise'
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -11
        Title.Font.Name = 'Tahoma'
        Title.Font.Style = [fsBold]
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'Mail_Entreprise'
        Title.Caption = 'E-mail entreprise'
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -11
        Title.Font.Name = 'Tahoma'
        Title.Font.Style = [fsBold]
        Width = 119
        Visible = True
      end>
  end
  object Edit2: TEdit
    Left = 237
    Top = 61
    Width = 140
    Height = 21
    TabOrder = 1
  end
  object Button1: TButton
    Left = 432
    Top = 59
    Width = 97
    Height = 25
    Caption = 'Recherche'
    TabOrder = 2
    OnClick = Button1Click
  end
  object Button2: TButton
    Left = 720
    Top = 118
    Width = 115
    Height = 25
    Caption = 'Ajouter'
    TabOrder = 3
    OnClick = Button2Click
  end
  object Button3: TButton
    Left = 720
    Top = 149
    Width = 115
    Height = 25
    Caption = 'Modifier'
    TabOrder = 4
    OnClick = Button3Click
  end
  object Button4: TButton
    Left = 720
    Top = 180
    Width = 115
    Height = 25
    Caption = 'Supprimer'
    TabOrder = 5
    OnClick = Button4Click
  end
  object Button5: TButton
    Left = 720
    Top = 211
    Width = 115
    Height = 25
    Caption = 'Imprimer'
    TabOrder = 6
  end
  object Button6: TButton
    Left = 760
    Top = 408
    Width = 75
    Height = 25
    Caption = 'Fermer'
    TabOrder = 7
    OnClick = Button6Click
  end
  object DBImage1: TDBImage
    Left = 730
    Top = 274
    Width = 105
    Height = 105
    TabOrder = 8
  end
  object ComboBox1: TComboBox
    Left = 53
    Top = 61
    Width = 145
    Height = 21
    TabOrder = 9
    Text = 'Nom'
    Items.Strings = (
      'Nom'
      'Adresse'
      'T'#233'l'#233'phone'
      'Email')
  end
  object DataSource1: TDataSource
    DataSet = ADOTable1
    Left = 568
    Top = 32
  end
  object ADOTable1: TADOTable
    Active = True
    Connection = Form1.ADOConnection1
    CursorType = ctStatic
    TableName = 'Entreprise_Maintenance'
    Left = 640
    Top = 32
    object ADOTable1ID_Entreprise: TAutoIncField
      FieldName = 'ID_Entreprise'
      ReadOnly = True
    end
    object ADOTable1Nom_Entreprise: TStringField
      FieldName = 'Nom_Entreprise'
      Size = 32
    end
    object ADOTable1Adresse_Entreprise: TStringField
      FieldName = 'Adresse_Entreprise'
      Size = 32
    end
    object ADOTable1Tel_Entreprise: TStringField
      FieldName = 'Tel_Entreprise'
    end
    object ADOTable1Mail_Entreprise: TStringField
      FieldName = 'Mail_Entreprise'
      Size = 32
    end
  end
end
