unit Four;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.DBCtrls, Vcl.StdCtrls, Vcl.Grids,
  Vcl.DBGrids, Data.DB, Data.Win.ADODB, RpCon, RpConDS, RpDefine, RpRave;

type
  TForm7 = class(TForm)
    DBGrid1: TDBGrid;
    Button2: TButton;
    Button3: TButton;
    Button4: TButton;
    Button5: TButton;
    Button6: TButton;
    DBImage1: TDBImage;
    ADOTable1: TADOTable;
    DataSource1: TDataSource;
    ADOTable1ID_Fournisseur: TAutoIncField;
    ADOTable1Nom_Fournisseur: TStringField;
    ADOTable1Adresse_Fournisseur: TStringField;
    ADOTable1Tel_Fournisseur: TStringField;
    ADOTable1Mail_Fournisseur: TStringField;
    ADOTable1Site_Fournisseur: TStringField;
    ADOTable1Commentaire_Fournisseur: TStringField;
    ComboBox1: TComboBox;
    Edit1: TEdit;
    Label1: TLabel;
    Label2: TLabel;
    Button7: TButton;
    procedure Button6Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
    procedure Button4Click(Sender: TObject);
    procedure Button7Click(Sender: TObject);
  private
    { D�clarations priv�es }
  public
    { D�clarations publiques }
  end;

var
  Form7: TForm7;

implementation

{$R *.dfm}

uses AFour, RFour, MFour;

procedure TForm7.Button1Click(Sender: TObject);
begin
form19.showmodal;
end;

procedure TForm7.Button2Click(Sender: TObject);
begin
form3.showmodal;
end;

procedure TForm7.Button3Click(Sender: TObject);
begin
Form22.showmodal;
end;

procedure TForm7.Button4Click(Sender: TObject);
begin
if (adotable1.Locate('Nom_Fournisseur',adotable1Nom_Fournisseur.value,[loPartialKey])) then
  adotable1.delete;

end;

procedure TForm7.Button6Click(Sender: TObject);
begin
close;
end;

procedure TForm7.Button7Click(Sender: TObject);
begin
if (ComboBox1.Text='Nom') then
     begin
        if (Length(Edit1.Text) > 0)  then
          begin
          if (ADOTable1.Locate('Nom_Fournisseur',Edit1.text,[loPartialKey])) then
          begin

          end
          else
            messagedlg('Ce mat�riel n''existe pas dans la base de donn�e', mtError,
                                    [mbCancel], 0);
          end;
    end
    else if (ComboBox1.Text='Adresse') then
     begin
        if (Length(Edit1.Text) > 0)  then
          begin
          if (ADOTable1.Locate('Adresse_fournisseur',Edit1.text,[loPartialKey])) then
          begin

          end
          else
            messagedlg('Ce mat�riel n''existe pas dans la base de donn�e', mtError,
                                    [mbCancel], 0);
          end;
    end
    else if (ComboBox1.Text='T�l�phone') then
     begin
        if (Length(Edit1.Text) > 0)  then
          begin
          if (ADOTable1.Locate('Tel_fournisseur',Edit1.text,[loPartialKey])) then
          begin

          end
          else
            messagedlg('Ce mat�riel n''existe pas dans la base de donn�e', mtError,
                                    [mbCancel], 0);
          end;
    end
    else if (ComboBox1.Text='Mail') then
     begin
        if (Length(Edit1.Text) > 0)  then
          begin
          if (ADOTable1.Locate('Mail_Fournisseur',Edit1.text,[loPartialKey])) then
          begin

          end
          else
            messagedlg('Ce mat�riel n''existe pas dans la base de donn�e', mtError,
                                    [mbCancel], 0);
          end;
    end
    else if (ComboBox1.Text='Site') then
     begin
        if (Length(Edit1.Text) > 0)  then
          begin
          if (ADOTable1.Locate('Site_Fournisseur',Edit1.text,[loPartialKey])) then
          begin

          end
          else
            messagedlg('Ce mat�riel n''existe pas dans la base de donn�e', mtError,
                                    [mbCancel], 0);
          end;
    end;
end;

end.
