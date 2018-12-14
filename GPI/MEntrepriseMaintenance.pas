unit MEntrepriseMaintenance;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ExtDlgs, Vcl.StdCtrls, Vcl.DBCtrls;

type
  TForm36 = class(TForm)
    Label1: TLabel;
    Edit1: TEdit;
    Label2: TLabel;
    Edit2: TEdit;
    Edit3: TEdit;
    Label3: TLabel;
    Edit4: TEdit;
    Label4: TLabel;
    Label5: TLabel;
    DBImage1: TDBImage;
    Button1: TButton;
    Button2: TButton;
    Button3: TButton;
    OpenPictureDialog1: TOpenPictureDialog;
    procedure Button3Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure Button2Click(Sender: TObject);
  private
    { Déclarations privées }
  public
    { Déclarations publiques }
  end;

var
  Form36: TForm36;

implementation

{$R *.dfm}

uses EntrepriseMaintenance;

procedure TForm36.Button2Click(Sender: TObject);
begin
form34.adotable1.edit;
form34.ADOTable1Nom_Entreprise.value:=edit1.text;
form34.ADOTable1Adresse_entreprise.value:=edit2.text;
form34.ADOTable1Tel_Entreprise.value:=edit3.text;
form34.ADOTable1Mail_entreprise.value:=edit4.text;
form34.adotable1.Post;
close;
end;

procedure TForm36.Button3Click(Sender: TObject);
begin
Close;
end;

procedure TForm36.FormShow(Sender: TObject);
begin
edit1.Text:=form34.adotable1Nom_entreprise.value;
edit2.Text:=form34.adotable1Adresse_entreprise.value;
edit3.Text:=form34.adotable1Tel_entreprise.value;
edit4.Text:=form34.adotable1Mail_entreprise.value;
close;
end;

end.
