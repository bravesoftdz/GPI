object Form2: TForm2
  Left = 0
  Top = 0
  Caption = 'Employ'#233
  ClientHeight = 547
  ClientWidth = 971
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
    Left = 48
    Top = 29
    Width = 81
    Height = 13
    Caption = 'Rechercher par :'
  end
  object Label2: TLabel
    Left = 272
    Top = 29
    Width = 41
    Height = 13
    Caption = 'Mot cl'#233' :'
  end
  object Label3: TLabel
    Left = 893
    Top = 32
    Width = 3
    Height = 13
  end
  object Label4: TLabel
    Left = 893
    Top = 59
    Width = 3
    Height = 13
  end
  object Label5: TLabel
    Left = 835
    Top = 59
    Width = 43
    Height = 13
    Caption = 'Pr'#233'nom :'
  end
  object Label6: TLabel
    Left = 835
    Top = 32
    Width = 28
    Height = 13
    Caption = 'Nom :'
  end
  object Image1: TImage
    Left = 835
    Top = 112
    Width = 105
    Height = 105
  end
  object DBGrid1: TDBGrid
    Left = 24
    Top = 96
    Width = 777
    Height = 425
    DataSource = DataSource1
    ReadOnly = True
    TabOrder = 0
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
    Columns = <
      item
        Expanded = False
        FieldName = 'Nom_Employe'
        Title.Caption = 'Nom'
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -11
        Title.Font.Name = 'Tahoma'
        Title.Font.Style = [fsBold]
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'Prenom_Employe'
        Title.Caption = 'Prenom'
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -11
        Title.Font.Name = 'Tahoma'
        Title.Font.Style = [fsBold]
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'Tel_Employe'
        Title.Caption = 'T'#233'l'#233'phone'
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -11
        Title.Font.Name = 'Tahoma'
        Title.Font.Style = [fsBold]
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'Nom_Poste'
        Title.Caption = 'Poste occuper'
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -11
        Title.Font.Name = 'Tahoma'
        Title.Font.Style = [fsBold]
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'Type_Siege'
        Title.Caption = 'Siege'
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -11
        Title.Font.Name = 'Tahoma'
        Title.Font.Style = [fsBold]
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'Lieu_Siege'
        Title.Caption = 'Lieu Siege'
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -11
        Title.Font.Name = 'Tahoma'
        Title.Font.Style = [fsBold]
        Width = 121
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'Adresse_Employe'
        Title.Caption = 'Adresse'
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -11
        Title.Font.Name = 'Tahoma'
        Title.Font.Style = [fsBold]
        Visible = True
      end>
  end
  object Button1: TButton
    Left = 560
    Top = 46
    Width = 105
    Height = 25
    Caption = 'Recherche'
    TabOrder = 1
    OnClick = Button1Click
  end
  object Button2: TButton
    Left = 835
    Top = 320
    Width = 121
    Height = 25
    Caption = 'Ajouter'
    TabOrder = 2
    OnClick = Button2Click
  end
  object Button3: TButton
    Left = 835
    Top = 351
    Width = 121
    Height = 25
    Caption = 'Modifier'
    TabOrder = 3
    OnClick = Button3Click
  end
  object Button4: TButton
    Left = 835
    Top = 382
    Width = 121
    Height = 25
    Caption = 'Supprimer'
    TabOrder = 4
    OnClick = Button4Click
  end
  object Button5: TButton
    Left = 842
    Top = 445
    Width = 121
    Height = 25
    Caption = 'Imprimer'
    TabOrder = 5
    OnClick = Button5Click
  end
  object Button6: TButton
    Left = 867
    Top = 496
    Width = 89
    Height = 25
    Caption = 'Fermer'
    TabOrder = 6
    OnClick = Button6Click
  end
  object Edit1: TEdit
    Left = 272
    Top = 48
    Width = 241
    Height = 21
    TabOrder = 7
  end
  object ComboBox1: TComboBox
    Left = 48
    Top = 48
    Width = 145
    Height = 21
    TabOrder = 8
    Text = 'Nom'
    OnChange = ComboBox1Change
    Items.Strings = (
      'Nom'
      'Pr'#233'nom'
      'Adresse'
      'T'#233'l'#233'phone'
      'Date de recrutement')
  end
  object Button7: TButton
    Left = 835
    Top = 264
    Width = 121
    Height = 25
    Caption = 'Inspecter'
    TabOrder = 9
  end
  object DataSource1: TDataSource
    DataSet = ADOQuery1
    Left = 416
  end
  object Timer1: TTimer
    Interval = 100
    OnTimer = Timer1Timer
    Left = 520
    Top = 8
  end
  object ADOQuery1: TADOQuery
    Active = True
    Connection = Form1.ADOConnection1
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      
        'select * from Employe em, Siege sg, Poste_Employe pe WHERE (em.I' +
        'D_Siege=sg.ID_Siege and em.ID_Poste=pe.ID_Poste )')
    Left = 184
    Top = 8
    object ADOQuery1Matricule_Employe: TAutoIncField
      FieldName = 'Matricule_Employe'
      ReadOnly = True
    end
    object ADOQuery1Nom_Employe: TStringField
      FieldName = 'Nom_Employe'
      Size = 16
    end
    object ADOQuery1Prenom_Employe: TStringField
      FieldName = 'Prenom_Employe'
      Size = 16
    end
    object ADOQuery1Adresse_Employe: TStringField
      FieldName = 'Adresse_Employe'
      Size = 32
    end
    object ADOQuery1Tel_Employe: TStringField
      FieldName = 'Tel_Employe'
    end
    object ADOQuery1Date_Recrutement: TDateField
      FieldName = 'Date_Recrutement'
    end
    object ADOQuery1ID_Poste: TIntegerField
      FieldName = 'ID_Poste'
    end
    object ADOQuery1ID_Siege: TIntegerField
      FieldName = 'ID_Siege'
    end
    object ADOQuery1ID_Siege_1: TAutoIncField
      FieldName = 'ID_Siege_1'
      ReadOnly = True
    end
    object ADOQuery1Type_Siege: TStringField
      FieldName = 'Type_Siege'
      Size = 10
    end
    object ADOQuery1Mail_Siege: TStringField
      FieldName = 'Mail_Siege'
      Size = 32
    end
    object ADOQuery1Lieu_Siege: TStringField
      FieldName = 'Lieu_Siege'
      Size = 32
    end
    object ADOQuery1ID_Poste_1: TAutoIncField
      FieldName = 'ID_Poste_1'
      ReadOnly = True
    end
    object ADOQuery1Nom_Poste: TStringField
      FieldName = 'Nom_Poste'
      Size = 16
    end
    object ADOQuery1Description_Poste: TStringField
      FieldName = 'Description_Poste'
      Size = 32
    end
    object ADOQuery1Grade_Poste: TStringField
      FieldName = 'Grade_Poste'
      Size = 10
    end
  end
  object ADOTable1: TADOTable
    Active = True
    Connection = Form1.ADOConnection1
    CursorType = ctStatic
    TableName = 'Employe'
    Left = 704
    Top = 32
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
  object RvProject1: TRvProject
    ProjectFile = 
      'C:\Users\SAID\Desktop\Application copie de la video\Win32\Employ' +
      'e.rav'
    Left = 768
    Top = 16
  end
  object RvDataSetConnection1: TRvDataSetConnection
    RuntimeVisibility = rtDeveloper
    DataSet = ADOQuery1
    Left = 808
    Top = 488
  end
end
