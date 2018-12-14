unit APost;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.ComCtrls;

type
  TForm32 = class(TForm)
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
  private
    { Déclarations privées }
  public
    { Déclarations publiques }
  end;

var
  Form32: TForm32;

implementation

{$R *.dfm}

uses Post;

procedure TForm32.Button1Click(Sender: TObject);
begin
form31.adotable1.Insert;
form31.ADOTable1Nom_Poste.value:=edit1.text;
form31.ADOTable1Grade_Poste.value:=combobox1.text;
form31.ADOTable1Description_Poste.value:=richedit1.text;
form31.adotable1.Post;
edit1.text:='';
richedit1.text:='';
close;
end;

procedure TForm32.Button2Click(Sender: TObject);
begin
close;
end;

end.
