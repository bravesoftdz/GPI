unit AMarq;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.DBCtrls, Data.DB,
  Data.Win.ADODB, Vcl.Buttons, Vcl.ExtDlgs;

type
  TForm5 = class(TForm)
    Label1: TLabel;
    Edit1: TEdit;
    DBImage1: TDBImage;
    Label2: TLabel;
    Button1: TButton;
    Button2: TButton;
    BitBtn1: TBitBtn;
    OpenPictureDialog1: TOpenPictureDialog;
    procedure Button2Click(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
  private
    { Déclarations privées }
  public
    { Déclarations publiques }
  end;

var
  Form5: TForm5;

implementation

{$R *.dfm}

uses Marq;

procedure TForm5.BitBtn1Click(Sender: TObject);
begin
OpenPictureDialog1.Execute;
dbimage1.Picture.LoadFromFile(OpenPictureDialog1.FileName);

end;

procedure TForm5.Button1Click(Sender: TObject);
begin
form11.adotable1.Insert;
form11.ADOTable1Nom_Marque.value:=edit1.text;
form11.adotable1.Post;
edit1.text:='';
close;
end;

procedure TForm5.Button2Click(Sender: TObject);
begin
close;
end;

end.
