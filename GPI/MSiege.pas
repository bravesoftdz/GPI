unit MSiege;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls;

type
  TForm30 = class(TForm)
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Edit3: TEdit;
    Edit4: TEdit;
    ComboBox1: TComboBox;
    Button1: TButton;
    Button2: TButton;
    procedure Button2Click(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
  private
    { Déclarations privées }
  public
    { Déclarations publiques }
  end;

var
  Form30: TForm30;

implementation

{$R *.dfm}

uses Siege;

procedure TForm30.Button1Click(Sender: TObject);
begin
form28.adotable1.edit;
form28.ADOTable1Type_Siege.value:=Combobox1.text;
form28.ADOTable1Mail_Siege.value:=edit3.text;
form28.ADOTable1Lieu_Siege.value:=edit4.text;
form28.adotable1.Post;
close;
end;

procedure TForm30.Button2Click(Sender: TObject);
begin
close;
end;

procedure TForm30.FormShow(Sender: TObject);
begin

combobox1.Text:=form28.adotable1Type_Siege.value;
edit3.Text:=form28.adotable1Mail_Siege.value;
edit4.Text:=form28.adotable1Lieu_Siege.value;
close;
end;

end.
