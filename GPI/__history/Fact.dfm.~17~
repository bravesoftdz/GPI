object Form8: TForm8
  Left = 0
  Top = 0
  Caption = 'Facture'
  ClientHeight = 404
  ClientWidth = 654
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
    Left = 32
    Top = 26
    Width = 81
    Height = 13
    Caption = 'Rechercher par :'
  end
  object Label2: TLabel
    Left = 200
    Top = 26
    Width = 41
    Height = 13
    Caption = 'Mot cl'#233' :'
  end
  object DBGrid1: TDBGrid
    Left = 16
    Top = 90
    Width = 457
    Height = 296
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
        FieldName = 'ID_Facture'
        Title.Caption = 'ID'
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -11
        Title.Font.Name = 'Tahoma'
        Title.Font.Style = [fsBold]
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'Num_Facture'
        Title.Caption = 'Num'#233'ro'
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -11
        Title.Font.Name = 'Tahoma'
        Title.Font.Style = [fsBold]
        Width = 137
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'Date_Facture'
        Title.Caption = 'Date d'#39#233'tablissement'
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -11
        Title.Font.Name = 'Tahoma'
        Title.Font.Style = [fsBold]
        Width = 238
        Visible = True
      end>
  end
  object Button2: TButton
    Left = 517
    Top = 59
    Width = 105
    Height = 25
    Caption = 'Ajouter'
    TabOrder = 1
    OnClick = Button2Click
  end
  object Button3: TButton
    Left = 517
    Top = 90
    Width = 105
    Height = 25
    Caption = 'Modifier'
    TabOrder = 2
    OnClick = Button3Click
  end
  object Button4: TButton
    Left = 517
    Top = 121
    Width = 105
    Height = 25
    Caption = 'Supprimer'
    TabOrder = 3
    OnClick = Button4Click
  end
  object Button5: TButton
    Left = 517
    Top = 152
    Width = 105
    Height = 25
    Caption = 'Imprimer'
    TabOrder = 4
  end
  object DBImage1: TDBImage
    Left = 517
    Top = 208
    Width = 105
    Height = 105
    TabOrder = 5
  end
  object Button6: TButton
    Left = 533
    Top = 351
    Width = 89
    Height = 25
    Caption = 'Fermer'
    TabOrder = 6
    OnClick = Button6Click
  end
  object Button1: TButton
    Left = 384
    Top = 43
    Width = 89
    Height = 25
    Caption = 'Recherche'
    TabOrder = 7
    OnClick = Button1Click
  end
  object ComboBox1: TComboBox
    Left = 32
    Top = 45
    Width = 145
    Height = 21
    TabOrder = 8
    Text = 'Num'#233'ro'
    Items.Strings = (
      'Num'#233'ro'
      'Date d'#39#233'tablissement')
  end
  object Edit1: TEdit
    Left = 200
    Top = 45
    Width = 161
    Height = 21
    TabOrder = 9
  end
  object ADOTable1: TADOTable
    Active = True
    Connection = Form1.ADOConnection1
    CursorType = ctStatic
    TableName = 'Facture'
    Left = 552
    Top = 8
    object ADOTable1ID_Facture: TAutoIncField
      FieldName = 'ID_Facture'
      ReadOnly = True
    end
    object ADOTable1Num_Facture: TStringField
      FieldName = 'Num_Facture'
      Size = 16
    end
    object ADOTable1Date_Facture: TDateField
      FieldName = 'Date_Facture'
    end
    object ADOTable1ID_Fournisseur: TIntegerField
      FieldName = 'ID_Fournisseur'
    end
  end
  object DataSource1: TDataSource
    DataSet = ADOTable1
    Left = 488
    Top = 8
  end
end
