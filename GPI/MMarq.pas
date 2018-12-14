unit MMarq;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Data.DB, Data.Win.ADODB, Vcl.StdCtrls,
  Vcl.DBCtrls;

type
  TForm23 = class(TForm)
    Label1: TLabel;
    Label2: TLabel;
    Edit1: TEdit;
    DBImage1: TDBImage;
    Button1: TButton;
    Button2: TButton;
    procedure Button2Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure Button1Click(Sender: TObject);
  private
    { Déclarations privées }
  public
    { Déclarations publiques }
  end;

var
  Form23: TForm23;

implementation

{$R *.dfm}

uses Marq;

procedure TForm23.Button1Click(Sender: TObject);
begin
form11.adotable1.edit;
form11.ADOTable1Nom_Marque.value:=edit1.text;
form11.adotable1.Post;
close;
end;

procedure TForm23.Button2Click(Sender: TObject);
begin
close;
end;

procedure TForm23.FormShow(Sender: TObject);
begin

edit1.Text:=form11.adotable1Nom_Marque.value;
end;

end.
