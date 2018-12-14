unit REmp;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.Grids, Vcl.DBGrids,
  Data.DB, Data.Win.ADODB;

type
  TForm15 = class(TForm)
    Label1: TLabel;
    Label2: TLabel;
    Edit2: TEdit;
    Button1: TButton;
    Button2: TButton;
    ComboBox1: TComboBox;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    Label8: TLabel;
    DBGrid1: TDBGrid;
    ADOTable1: TADOTable;
    DataSource1: TDataSource;
    ADOTable1Matricule_Employe: TAutoIncField;
    ADOTable1Nom_Employe: TStringField;
    ADOTable1Prenom_Employe: TStringField;
    ADOTable1Adresse_Employe: TStringField;
    ADOTable1Tel_Employe: TStringField;
    ADOTable1Photo_Employe: TVarBytesField;
    ADOTable1Date_Recrutement: TDateField;
    ADOTable1ID_Poste: TIntegerField;
    ADOTable1ID_Siege: TIntegerField;
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
  private
    { Déclarations privées }
  public
    { Déclarations publiques }
  end;

var
  Form15: TForm15;
  fieldSearch: string;

implementation

{$R *.dfm}

uses Employe;

procedure TForm15.Button1Click(Sender: TObject);
begin
close;
end;

procedure TForm15.Button2Click(Sender: TObject);
begin
  if (Length(Edit2.Text) > 0)  then
    begin
    if (form2.ADOTable1.Locate('Nom_Employe',Edit2.text,[loPartialKey])) then
    begin
      Label3.Caption := ADOTable1Nom_Employe.Value;
      Label4.Caption := ADOTable1Prenom_Employe.Value;
      Label5.Caption := ADOTable1Adresse_Employe.Value;
      Label6.Caption := ADOTable1Tel_Employe.Value;
    end
    else
      messagedlg('Ce matériel n''existe pas dans la base de donnée', mtError,
                              [mbCancel], 0);
    end;
end;

end.
