object form11: Tform11
  Left = 0
  Top = 0
  Caption = 'Marque'
  ClientHeight = 430
  ClientWidth = 655
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
    Top = 21
    Width = 81
    Height = 13
    Caption = 'Rechercher par :'
  end
  object Label2: TLabel
    Left = 248
    Top = 21
    Width = 41
    Height = 13
    Caption = 'Mot cl'#233' :'
  end
  object Button1: TButton
    Left = 415
    Top = 38
    Width = 105
    Height = 25
    Caption = 'Recherche'
    TabOrder = 0
    OnClick = Button1Click
  end
  object Button2: TButton
    Left = 527
    Top = 80
    Width = 105
    Height = 25
    Caption = 'Ajouter'
    TabOrder = 1
    OnClick = Button2Click
  end
  object Button3: TButton
    Left = 527
    Top = 119
    Width = 105
    Height = 25
    Caption = 'Modifier'
    TabOrder = 2
    OnClick = Button3Click
  end
  object Button4: TButton
    Left = 527
    Top = 158
    Width = 105
    Height = 25
    Caption = 'Supprimer'
    TabOrder = 3
    OnClick = Button4Click
  end
  object Button5: TButton
    Left = 527
    Top = 198
    Width = 105
    Height = 25
    Caption = 'Imprimer'
    TabOrder = 4
  end
  object Button6: TButton
    Left = 543
    Top = 384
    Width = 89
    Height = 25
    Caption = 'Fermer'
    TabOrder = 5
    OnClick = Button6Click
  end
  object DBImage1: TDBImage
    Left = 527
    Top = 248
    Width = 105
    Height = 105
    TabOrder = 6
  end
  object DBGrid1: TDBGrid
    Left = 8
    Top = 80
    Width = 489
    Height = 329
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
        FieldName = 'ID_Marque'
        Title.Caption = 'ID'
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -11
        Title.Font.Name = 'Tahoma'
        Title.Font.Style = [fsBold]
        Width = 82
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'Nom_Marque'
        Title.Caption = 'Nom'
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -11
        Title.Font.Name = 'Tahoma'
        Title.Font.Style = [fsBold]
        Width = 410
        Visible = True
      end>
  end
  object ComboBox1: TComboBox
    Left = 32
    Top = 40
    Width = 145
    Height = 21
    TabOrder = 8
    Text = 'Nom'
    Items.Strings = (
      'Nom')
  end
  object Edit1: TEdit
    Left = 248
    Top = 40
    Width = 129
    Height = 21
    TabOrder = 9
  end
  object ADOTable1: TADOTable
    Active = True
    Connection = Form1.ADOConnection1
    CursorType = ctStatic
    TableName = 'Marque'
    Left = 536
    Top = 8
    object ADOTable1ID_Marque: TAutoIncField
      FieldName = 'ID_Marque'
      ReadOnly = True
    end
    object ADOTable1Nom_Marque: TStringField
      FieldName = 'Nom_Marque'
      Size = 16
    end
  end
  object DataSource1: TDataSource
    DataSet = ADOTable1
    Left = 600
    Top = 16
  end
end
