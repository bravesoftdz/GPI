unit BonLivraison;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.Grids, Vcl.DBGrids,
  Data.DB, Data.Win.ADODB;

type
  TForm37 = class(TForm)
    Label1: TLabel;
    Label2: TLabel;
    Edit2: TEdit;
    Button1: TButton;
    DBGrid1: TDBGrid;
    ComboBox1: TComboBox;
    Button2: TButton;
    Button3: TButton;
    Button4: TButton;
    Button5: TButton;
    Button6: TButton;
    DataSource1: TDataSource;
    ADOTable1: TADOTable;
    ADOQuery1: TADOQuery;
    ADOQuery1ID_Bon_Livraison: TAutoIncField;
    ADOQuery1Num_BL: TStringField;
    ADOQuery1Date_Bon_Livraison: TDateField;
    ADOQuery1Date_Livraison: TDateField;
    ADOQuery1ID_Fournisseur: TIntegerField;
    ADOQuery1ID_Commande: TIntegerField;
    ADOQuery1ID_Commande_1: TAutoIncField;
    ADOQuery1Num_BC: TStringField;
    ADOQuery1Date_Commande: TDateField;
    ADOQuery1ID_Fournisseur_1: TAutoIncField;
    ADOQuery1Nom_Fournisseur: TStringField;
    ADOQuery1Adresse_Fournisseur: TStringField;
    ADOQuery1Tel_Fournisseur: TStringField;
    ADOQuery1Mail_Fournisseur: TStringField;
    ADOQuery1Site_Fournisseur: TStringField;
    ADOQuery1Commentaire_Fournisseur: TStringField;
  private
    { Déclarations privées }
  public
    { Déclarations publiques }
  end;

var
  Form37: TForm37;

implementation

{$R *.dfm}

end.
