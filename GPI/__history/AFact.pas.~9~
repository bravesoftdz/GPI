unit AFact;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.ComCtrls, Vcl.StdCtrls, Data.DB,
  Data.Win.ADODB;

type
  TForm9 = class(TForm)
    Label1: TLabel;
    Label2: TLabel;
    Edit1: TEdit;
    Button1: TButton;
    Button2: TButton;
    DateTimePicker1: TDateTimePicker;
    procedure Button2Click(Sender: TObject);
    procedure Button1Click(Sender: TObject);
  private
    { Déclarations privées }
  public
    { Déclarations publiques }
  end;

var
  Form9: TForm9;

implementation

{$R *.dfm}

uses Fact;

procedure TForm9.Button1Click(Sender: TObject);
begin
form8.adotable1.Insert;
form8.ADOTable1Num_Facture.value:=edit1.text;
form8.ADOTable1Date_Facture.value:=DateTimePicker1.Date;
form8.adotable1.Post;
edit1.text:='';
close;
end;

procedure TForm9.Button2Click(Sender: TObject);
begin
close;
end;

end.
