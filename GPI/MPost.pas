unit MPost;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.ComCtrls;

type
  TForm33 = class(TForm)
    Label1: TLabel;
    Edit1: TEdit;
    Label2: TLabel;
    Label3: TLabel;
    ComboBox1: TComboBox;
    RichEdit1: TRichEdit;
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
  Form33: TForm33;

implementation

{$R *.dfm}

uses Post;

procedure TForm33.Button1Click(Sender: TObject);
begin
form31.adotable1.edit;
form31.ADOTable1Nom_Poste.value:=edit1.text;
form31.ADOTable1Grade_Poste.value:=combobox1.text;
form31.ADOTable1Description_poste.value:=richedit1.text;
form31.adotable1.Post;
close;
end;

procedure TForm33.Button2Click(Sender: TObject);
begin
close;
end;

procedure TForm33.FormShow(Sender: TObject);
begin
edit1.Text:=form31.adotable1Nom_Poste.value;
Combobox1.Text:=form31.adotable1Grade_Poste.value;
Richedit1.Text:=form31.adotable1Description_Poste.value;
close;
end;

end.
