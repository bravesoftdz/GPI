object Form37: TForm37
  Left = 0
  Top = 0
  Caption = 'Bon de livraison'
  ClientHeight = 354
  ClientWidth = 922
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
    Top = 32
    Width = 81
    Height = 13
    Caption = 'Rechercher par :'
  end
  object Label2: TLabel
    Left = 240
    Top = 32
    Width = 41
    Height = 13
    Caption = 'Mot cl'#233' :'
  end
  object Edit2: TEdit
    Left = 240
    Top = 51
    Width = 153
    Height = 21
    TabOrder = 0
  end
  object Button1: TButton
    Left = 440
    Top = 49
    Width = 113
    Height = 25
    Caption = 'Recherche'
    TabOrder = 1
  end
  object DBGrid1: TDBGrid
    Left = 32
    Top = 112
    Width = 763
    Height = 201
    DataSource = DataSource1
    TabOrder = 2
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
    Columns = <
      item
        Expanded = False
        FieldName = 'Num_BL'
        Title.Caption = 'N'#176' Bon de livraison'
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -11
        Title.Font.Name = 'Tahoma'
        Title.Font.Style = [fsBold]
        Width = 126
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'Nom_Fournisseur'
        Title.Caption = 'Nom fournisseur'
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -11
        Title.Font.Name = 'Tahoma'
        Title.Font.Style = [fsBold]
        Width = 111
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'Date_Bon_Livraison'
        Title.Caption = 'Date bon livraison'
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -11
        Title.Font.Name = 'Tahoma'
        Title.Font.Style = [fsBold]
        Width = 115
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'Date_Livraison'
        Title.Caption = 'Date livraison'
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -11
        Title.Font.Name = 'Tahoma'
        Title.Font.Style = [fsBold]
        Width = 105
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'Num_BC'
        Title.Caption = 'N'#176' Bon de commande'
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -11
        Title.Font.Name = 'Tahoma'
        Title.Font.Style = [fsBold]
        Width = 149
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'Date_Commande'
        Title.Caption = 'Date de la commande'
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -11
        Title.Font.Name = 'Tahoma'
        Title.Font.Style = [fsBold]
        Visible = True
      end>
  end
  object ComboBox1: TComboBox
    Left = 40
    Top = 51
    Width = 145
    Height = 21
    TabOrder = 3
  end
  object Button2: TButton
    Left = 801
    Top = 112
    Width = 113
    Height = 25
    Caption = 'Ajouter'
    TabOrder = 4
  end
  object Button3: TButton
    Left = 801
    Top = 143
    Width = 113
    Height = 25
    Caption = 'Modifier'
    TabOrder = 5
  end
  object Button4: TButton
    Left = 801
    Top = 176
    Width = 113
    Height = 25
    Caption = 'Supprimer'
    TabOrder = 6
  end
  object Button5: TButton
    Left = 801
    Top = 207
    Width = 113
    Height = 25
    Caption = 'Imprimer'
    TabOrder = 7
  end
  object Button6: TButton
    Left = 839
    Top = 288
    Width = 75
    Height = 25
    Caption = 'Fermer'
    TabOrder = 8
  end
  object DataSource1: TDataSource
    DataSet = ADOQuery1
    Left = 592
    Top = 32
  end
  object ADOTable1: TADOTable
    Active = True
    Connection = Form1.ADOConnection1
    CursorType = ctStatic
    TableName = 'Bon_Livraison'
    Left = 648
    Top = 32
  end
  object ADOQuery1: TADOQuery
    Active = True
    Connection = Form1.ADOConnection1
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'SELECT * '
      'FROM Bon_Livraison bl, Commande cm, Fournisseur fn '
      
        'WHERE bl.ID_Fournisseur=fn.ID_Fournisseur and bl.ID_Commande=cm.' +
        'ID_Commande')
    Left = 392
    object ADOQuery1ID_Bon_Livraison: TAutoIncField
      FieldName = 'ID_Bon_Livraison'
      ReadOnly = True
    end
    object ADOQuery1Num_BL: TStringField
      FieldName = 'Num_BL'
      Size = 16
    end
    object ADOQuery1Date_Bon_Livraison: TDateField
      FieldName = 'Date_Bon_Livraison'
    end
    object ADOQuery1Date_Livraison: TDateField
      FieldName = 'Date_Livraison'
    end
    object ADOQuery1ID_Fournisseur: TIntegerField
      FieldName = 'ID_Fournisseur'
    end
    object ADOQuery1ID_Commande: TIntegerField
      FieldName = 'ID_Commande'
    end
    object ADOQuery1ID_Commande_1: TAutoIncField
      FieldName = 'ID_Commande_1'
      ReadOnly = True
    end
    object ADOQuery1Num_BC: TStringField
      FieldName = 'Num_BC'
      Size = 16
    end
    object ADOQuery1Date_Commande: TDateField
      FieldName = 'Date_Commande'
    end
    object ADOQuery1ID_Fournisseur_1: TAutoIncField
      FieldName = 'ID_Fournisseur_1'
      ReadOnly = True
    end
    object ADOQuery1Nom_Fournisseur: TStringField
      FieldName = 'Nom_Fournisseur'
      Size = 16
    end
    object ADOQuery1Adresse_Fournisseur: TStringField
      FieldName = 'Adresse_Fournisseur'
      Size = 32
    end
    object ADOQuery1Tel_Fournisseur: TStringField
      FieldName = 'Tel_Fournisseur'
    end
    object ADOQuery1Mail_Fournisseur: TStringField
      FieldName = 'Mail_Fournisseur'
      Size = 32
    end
    object ADOQuery1Site_Fournisseur: TStringField
      FieldName = 'Site_Fournisseur'
    end
    object ADOQuery1Commentaire_Fournisseur: TStringField
      FieldName = 'Commentaire_Fournisseur'
      Size = 32
    end
  end
end
