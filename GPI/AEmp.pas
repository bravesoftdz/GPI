unit AEmp;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.DBCtrls, Vcl.ComCtrls,
  Data.DB, Data.Win.ADODB, Vcl.ExtCtrls, Vcl.Buttons, Vcl.ExtDlgs;

type
  Tem = class(TForm)
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Edit1: TEdit;
    Edit2: TEdit;
    Edit3: TEdit;
    Edit4: TEdit;
    DBImage1: TDBImage;
    Label6: TLabel;
    Button1: TButton;
    Button2: TButton;
    DateTimePicker1: TDateTimePicker;
    BitBtn1: TBitBtn;
    OpenPictureDialog1: TOpenPictureDialog;
    Label7: TLabel;
    Label8: TLabel;
    ADOTable1: TADOTable;
    ADOTable2: TADOTable;
    ADOTable1ID_Poste: TAutoIncField;
    ADOTable1Nom_Poste: TStringField;
    ADOTable1Description_Poste: TStringField;
    ADOTable1Grade_Poste: TStringField;
    ADOTable2ID_Siege: TAutoIncField;
    ADOTable2Type_Siege: TStringField;
    ADOTable2Mail_Siege: TStringField;
    ADOTable2Lieu_Siege: TStringField;
    DataSource1: TDataSource;
    DBComboBox1: TDBComboBox;
    DataSource2: TDataSource;
    DBComboBox2: TDBComboBox;
    procedure Button2Click(Sender: TObject);
    procedure Button1Click(Sender: TObject);

    procedure BitBtn1Click(Sender: TObject);
  private
    { Déclarations privées }
  public
    { Déclarations publiques }
  end;

var
  em: Tem;


implementation

{$R *.dfm}

uses Employe;

procedure Tem.BitBtn1Click(Sender: TObject);
begin

OpenPictureDialog1.Execute;
dbimage1.Picture.LoadFromFile(OpenPictureDialog1.FileName);



end;

procedure Tem.Button1Click(Sender: TObject);
begin
form2.adotable1.Insert;
form2.ADOTable1Nom_Employe.value:=edit1.text;
form2.ADOTable1Prenom_Employe.value:=edit2.text;
form2.ADOTable1Tel_Employe.value:=edit3.text;
form2.ADOTable1Adresse_Employe.value:=edit4.text;
form2.ADOTable1Date_Recrutement.value:=DateTimePicker1.date;
form2.ADOTable1.Post;
edit1.text:='';
edit2.text:='';
edit3.text:='';
edit4.text:='';
close;
end;

procedure Tem.Button2Click(Sender: TObject);
begin
close;
end;


end.
