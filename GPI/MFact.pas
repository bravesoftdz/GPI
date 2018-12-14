unit MFact;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Data.DB, Data.Win.ADODB, Vcl.ComCtrls,
  Vcl.StdCtrls;

type
  TForm21 = class(TForm)
    Label1: TLabel;
    Label2: TLabel;
    Edit1: TEdit;
    Button1: TButton;
    Button2: TButton;
    DateTimePicker1: TDateTimePicker;
    procedure Button2Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure Button1Click(Sender: TObject);
  private
    { Déclarations privées }
  public
    { Déclarations publiques }
  end;

var
  Form21: TForm21;

implementation

{$R *.dfm}

uses Fact;

procedure TForm21.Button1Click(Sender: TObject);
begin
form8.adotable1.Edit;
form8.adotable1Num_Facture.Value:=edit1.Text;
form8.adotable1Date_Facture.Value:=DateTimePicker1.date;
form8.adotable1.Post;
close;
end;

procedure TForm21.Button2Click(Sender: TObject);
begin
close;
end;

procedure TForm21.FormShow(Sender: TObject);
begin
edit1.Text:=form8.adotable1Num_Facture.value;
DateTimePicker1.date:=form8.adotable1Date_Facture.value;
end;

end.
