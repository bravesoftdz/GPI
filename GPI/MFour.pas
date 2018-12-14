unit MFour;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Data.DB, Data.Win.ADODB, Vcl.StdCtrls,
  Vcl.DBCtrls;

type
  TForm22 = class(TForm)
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    Edit1: TEdit;
    Edit2: TEdit;
    Edit3: TEdit;
    Edit4: TEdit;
    Edit5: TEdit;
    Edit6: TEdit;
    DBImage1: TDBImage;
    Button1: TButton;
    Button2: TButton;
    procedure Button2Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure Button1Click(Sender: TObject);
  private
    { D�clarations priv�es }
  public
    { D�clarations publiques }
  end;

var
  Form22: TForm22;

implementation

{$R *.dfm}

uses Four;

procedure TForm22.Button1Click(Sender: TObject);
begin
form7.adotable1.edit;
form7.ADOTable1Nom_Fournisseur.value:=edit1.text;
form7.ADOTable1Adresse_Fournisseur.value:=edit2.text;
form7.ADOTable1Tel_Fournisseur.value:=edit3.text;
form7.ADOTable1Mail_Fournisseur.value:=edit4.text;
form7.ADOTable1Site_Fournisseur.value:=edit5.text;
form7.ADOTable1Commentaire_Fournisseur.value:=edit6.text;
form7.adotable1.Post;
close;
end;

procedure TForm22.Button2Click(Sender: TObject);
begin
close;
end;

procedure TForm22.FormShow(Sender: TObject);
begin
edit1.Text:=form7.adotable1Nom_Fournisseur.value;
edit2.Text:=form7.adotable1Adresse_Fournisseur.value;
edit3.Text:=form7.adotable1Tel_Fournisseur.value;
edit4.Text:=form7.adotable1Mail_Fournisseur.value;
edit5.Text:=form7.adotable1Site_Fournisseur.value;
edit6.Text:=form7.adotable1Commentaire_Fournisseur.value;
close;
end;

end.
