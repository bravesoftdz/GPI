unit AType;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Data.DB, Data.Win.ADODB;

type
  TForm4 = class(TForm)
    Label1: TLabel;
    Edit1: TEdit;
    Button1: TButton;
    Button2: TButton;
    procedure Button2Click(Sender: TObject);
    procedure Button1Click(Sender: TObject);
  private
    { Déclarations privées }
  public
    { Déclarations publiques }
  end;

var
  Form4: TForm4;

implementation

{$R *.dfm}

uses Typ;

procedure TForm4.Button1Click(Sender: TObject);
begin
form10.adotable1.Insert;
form10.ADOTable1Nom_Type_Materiel.value:=edit1.text;
form10.adotable1.Post;
edit1.text:='';
close;
end;

procedure TForm4.Button2Click(Sender: TObject);
begin
close;
end;

end.
