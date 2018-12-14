unit MMat;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Data.DB, Data.Win.ADODB, Vcl.StdCtrls,
  Vcl.ComCtrls, Vcl.DBCtrls;

type
  TForm24 = class(TForm)
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label8: TLabel;
    Label6: TLabel;
    Label9: TLabel;
    Label11: TLabel;
    Label12: TLabel;
    Edit1: TEdit;
    Edit2: TEdit;
    Edit3: TEdit;
    Edit4: TEdit;
    ComboBox3: TComboBox;
    ComboBox4: TComboBox;
    ComboBox5: TComboBox;
    DBImage1: TDBImage;
    DBImage2: TDBImage;
    DateTimePicker2: TDateTimePicker;
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
  Form24: TForm24;

implementation

{$R *.dfm}

uses Mat;

procedure TForm24.Button1Click(Sender: TObject);
begin
form12.adotable1.edit;
form12.ADOTable1Modele_Materiel.value:=edit1.text;
form12.ADOTable1Num_Serie.value:=edit2.text;
form12.ADOTable1Num_Immo.value:=edit3.text;
form12.ADOTable1Description_Materiel.value:=edit4.text;
form12.ADOTable1Date_Fin_Garentie.value:=DateTimePicker2.Date;
form12.adotable1.Post;
close;
end;

procedure TForm24.Button2Click(Sender: TObject);
begin
close;
end;

procedure TForm24.FormShow(Sender: TObject);
begin
edit1.Text:=form12.adotable1Modele_Materiel.value;
edit2.Text:=form12.adotable1Num_Serie.value;
edit3.Text:=form12.adotable1Num_Immo.value;
edit4.Text:=form12.adotable1Description_Materiel.value;
DateTimePicker2.date:=form12.adotable1Date_Fin_Garentie.value;

end;

end.
