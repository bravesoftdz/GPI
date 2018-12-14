unit AMat;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.ComCtrls, Vcl.DBCtrls,
  Data.DB, Data.Win.ADODB;

type
  TForm6 = class(TForm)
    Label1: TLabel;
    Edit1: TEdit;
    Label2: TLabel;
    Edit2: TEdit;
    Edit3: TEdit;
    Label3: TLabel;
    Label4: TLabel;
    Edit4: TEdit;
    Label5: TLabel;
    Label8: TLabel;
    ComboBox3: TComboBox;
    ComboBox4: TComboBox;
    ComboBox5: TComboBox;
    DBImage1: TDBImage;
    DBImage2: TDBImage;
    DateTimePicker2: TDateTimePicker;
    Label6: TLabel;
    Label9: TLabel;
    Label11: TLabel;
    Label12: TLabel;
    Button1: TButton;
    Button2: TButton;
    procedure Button2Click(Sender: TObject);
    procedure Button1Click(Sender: TObject);
  private
    { D�clarations priv�es }
  public
    { D�clarations publiques }
  end;

var
  Form6: TForm6;

implementation

{$R *.dfm}

uses Marq, Mat;

procedure TForm6.Button1Click(Sender: TObject);
begin
form12.adotable1.Insert;
form12.ADOTable1Modele_Materiel.value:=edit1.text;
form12.ADOTable1Num_Serie.value:=edit2.text;
form12.ADOTable1Num_Immo.value:=edit3.text;
form12.ADOTable1Description_Materiel.value:=edit4.text;
form12.ADOTable1Date_Fin_Garentie.value:=DateTimePicker2.Date;
form12.adotable1.Post;
edit1.text:='';
edit2.text:='';
edit3.text:='';
edit4.text:='';
close;
end;

procedure TForm6.Button2Click(Sender: TObject);
begin
close;
end;

end.
