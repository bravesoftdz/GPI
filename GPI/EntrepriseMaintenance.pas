unit EntrepriseMaintenance;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.Grids, Vcl.DBGrids,
  Data.DB, Data.Win.ADODB, Vcl.DBCtrls;

type
  TForm34 = class(TForm)
    DBGrid1: TDBGrid;
    Label1: TLabel;
    Label2: TLabel;
    Edit2: TEdit;
    Button1: TButton;
    Button2: TButton;
    Button3: TButton;
    Button4: TButton;
    Button5: TButton;
    Button6: TButton;
    DataSource1: TDataSource;
    ADOTable1: TADOTable;
    DBImage1: TDBImage;
    ComboBox1: TComboBox;
    ADOTable1ID_Entreprise: TAutoIncField;
    ADOTable1Nom_Entreprise: TStringField;
    ADOTable1Adresse_Entreprise: TStringField;
    ADOTable1Tel_Entreprise: TStringField;
    ADOTable1Mail_Entreprise: TStringField;
    procedure Button2Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
    procedure Button6Click(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure Button4Click(Sender: TObject);
  private
    { D�clarations priv�es }
  public
    { D�clarations publiques }
  end;

var
  Form34: TForm34;

implementation

{$R *.dfm}

uses AEntreperiseMaintenance, MEntrepriseMaintenance;

procedure TForm34.Button1Click(Sender: TObject);
begin
  if (ComboBox1.Text='Nom') then
     begin
        if (Length(Edit2.Text) > 0)  then
          begin
          if (ADOTable1.Locate('Nom_Entreprise',Edit2.text,[loPartialKey])) then
          begin

          end
          else
            messagedlg('Cette entreprise de maintenance n''existe pas dans la base de donn�e', mtError,
                                    [mbCancel], 0);
          end;
    end
    else if (ComboBox1.Text='Email') then
      begin
        if (Length(Edit2.Text)>0) then
          begin
            if (adotable1.Locate('Mail_Entreprise',Edit2.Text,[loPartialKey])) then
            begin

            end
            else
              messagedlg('Cette entreprise de maintenance n''existe pas dans la base de donn�e',mtError,[mbCancel], 0);
           end;
      end
    else if (ComboBox1.Text='Adresse') then
      begin
        if (Length(Edit2.Text)>0) then
          begin
            if (adotable1.Locate('Adresse_Entreprise',Edit2.Text,[loPartialKey])) then
            begin

            end
            else
              messagedlg('Cette entreprise de maintenance n''existe pas dans la base de donn�e',mtError,[mbCancel], 0);
           end;
      end

    else if (ComboBox1.Text='T�l�phone') then
      begin
        if (Length(Edit2.Text)>0) then
          begin
            if (adotable1.Locate('Tel_Entreprise',Edit2.Text,[loPartialKey])) then
            begin

            end
            else
              messagedlg('Cette entreprise de maintenance n''existe pas dans la base de donn�e',mtError,[mbCancel], 0);
           end;
      end;

end;

procedure TForm34.Button2Click(Sender: TObject);
begin
Form35.showmodal;
end;

procedure TForm34.Button3Click(Sender: TObject);
begin
Form36.showmodal;
end;

procedure TForm34.Button4Click(Sender: TObject);
begin
begin
if (adotable1.Locate('Nom_Entreprise',adotable1Nom_Entreprise.value,[loPartialKey])) then
  adotable1.delete;

end;
end;

procedure TForm34.Button6Click(Sender: TObject);
begin
close;
end;

end.
