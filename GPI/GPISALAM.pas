unit GPISALAM;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.Menus, Data.DB, Data.Win.ADODB,
  Vcl.StdCtrls, Vcl.Imaging.jpeg, Vcl.ExtCtrls;

type
  TForm1 = class(TForm)
    PopupMenu1: TPopupMenu;
    Employ1: TMenuItem;
    MainMenu1: TMainMenu;
    Employ2: TMenuItem;
    Listedesemploys1: TMenuItem;
    Fournisseur1: TMenuItem;
    Listedesfournisseurs1: TMenuItem;
    Facture1: TMenuItem;
    Matriel1: TMenuItem;
    ypematriel1: TMenuItem;
    Marque1: TMenuItem;
    Matriel2: TMenuItem;
    Affectation1: TMenuItem;
    Apropos1: TMenuItem;
    Fournisseur2: TMenuItem;
    Matriel3: TMenuItem;
    Affectation2: TMenuItem;
    Listefournisseurs1: TMenuItem;
    Factures1: TMenuItem;
    ypematriel2: TMenuItem;
    Marque2: TMenuItem;
    Image1: TImage;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    Timer1: TTimer;
    Fermer1: TMenuItem;
    Matriel4: TMenuItem;
    N1: TMenuItem;
    Employer1: TMenuItem;
    N2: TMenuItem;
    Fournisseur3: TMenuItem;
    Affectation3: TMenuItem;
    Apropos2: TMenuItem;
    Employ3: TMenuItem;
    Marque3: TMenuItem;
    Fournisseur4: TMenuItem;
    Matriel5: TMenuItem;
    ypematriel3: TMenuItem;
    N3: TMenuItem;
    N4: TMenuItem;
    N5: TMenuItem;
    N6: TMenuItem;
    Matriel6: TMenuItem;
    Listedesemploys2: TMenuItem;
    Siege1: TMenuItem;
    Listedespostes1: TMenuItem;
    Entreprisedemaintenance1: TMenuItem;
    Listedesentreprisesdemaintenance1: TMenuItem;
    Bondelivraison1: TMenuItem;
    N7: TMenuItem;
    Apropos3: TMenuItem;
    ADOConnection1: TADOConnection;
    Dsaffectation1: TMenuItem;
    Maintenance1: TMenuItem;
    Rparation1: TMenuItem;
    procedure Timer1Timer(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure Listedesemploys1Click(Sender: TObject);
    procedure Listedesfournisseurs1Click(Sender: TObject);
    procedure Facture1Click(Sender: TObject);
    procedure ypematriel1Click(Sender: TObject);
    procedure Marque1Click(Sender: TObject);
    procedure Listematriel1Click(Sender: TObject);
    procedure liste1Click(Sender: TObject);
    procedure Matriel5Click(Sender: TObject);
    procedure ypematriel3Click(Sender: TObject);
    procedure Marque3Click(Sender: TObject);
    procedure Fournisseur4Click(Sender: TObject);
    procedure Matriel2Click(Sender: TObject);
    procedure Fermer1Click(Sender: TObject);
    procedure Matriel6Click(Sender: TObject);
    procedure ypematriel2Click(Sender: TObject);
    procedure Marque2Click(Sender: TObject);
    procedure Listedematriel1Click(Sender: TObject);
    procedure Listedesemploys2Click(Sender: TObject);
    procedure Listefournisseurs1Click(Sender: TObject);
    procedure Factures1Click(Sender: TObject);
    procedure Affectation2Click(Sender: TObject);
    procedure Apropos3Click(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure Listedesentreprisesdemaintenance1Click(Sender: TObject);
    procedure Siege1Click(Sender: TObject);
    procedure Listedespostes1Click(Sender: TObject);
    procedure Affectation3Click(Sender: TObject);
    procedure Maintenance1Click(Sender: TObject);
    procedure Rparation1Click(Sender: TObject);
    procedure Dsaffectation1Click(Sender: TObject);
  private
    { Déclarations privées }
  public
    { Déclarations publiques }
  end;

var
  Form1: TForm1;
  days: array[1..7] of string;
  ADate: TDateTime;
  cho: integer;

implementation

{$R *.dfm}

uses Fact, Employe, Four, List, Marq, Typ, AAffec, Mat, REmp, RFour, RMarq,
  RMat, RType, propos, Login, EntrepriseMaintenance, Siege, Post, Affectation,
  MaterielEnPanne, Reparation, Desaffectation;

procedure TForm1.Affectation2Click(Sender: TObject);
begin
form13.showmodal;
end;

procedure TForm1.Affectation3Click(Sender: TObject);
begin
Form38.showmodal;
end;

procedure TForm1.Apropos3Click(Sender: TObject);
begin
form26.ShowModal;
end;

procedure TForm1.Button1Click(Sender: TObject);
begin
form27.showmodal;
end;

procedure TForm1.Dsaffectation1Click(Sender: TObject);
begin
form39.showmodal;
end;

procedure TForm1.Facture1Click(Sender: TObject);
begin
form8.showmodal;
end;

procedure TForm1.Factures1Click(Sender: TObject);
begin
form8.ShowModal;
end;

procedure TForm1.Fermer1Click(Sender: TObject);
begin
close;
end;

procedure TForm1.FormCreate(Sender: TObject);
begin
Label4.Caption:= DateToStr(date);
end;

procedure TForm1.FormShow(Sender: TObject);
begin
  form27.ShowModal;
  days[1] := 'Dimanche';
  days[2] := 'Lundi';
  days[3] := 'Mardi';
  days[4] := 'Mercredi';
  days[5] := 'Jeudi';
  days[6] := 'Vendredi';
  days[7] := 'Samedi';
  ADate := StrToDate(label4.caption);
  label3.caption:=(days[DayOfWeek(ADate)]);

end;

procedure TForm1.Fournisseur4Click(Sender: TObject);
begin
form19.showmodal;
end;

procedure TForm1.liste1Click(Sender: TObject);
begin
form13.showmodal;
end;

procedure TForm1.Listedematriel1Click(Sender: TObject);
begin
form10.ShowModal;
end;

procedure TForm1.Listedesemploys1Click(Sender: TObject);
begin
form2.showmodal;
end;

procedure TForm1.Listedesemploys2Click(Sender: TObject);
begin
form2.ShowModal;
end;

procedure TForm1.Listedesentreprisesdemaintenance1Click(Sender: TObject);
begin
Form34.showmodal;
end;

procedure TForm1.Listedesfournisseurs1Click(Sender: TObject);
begin
form7.showmodal;
end;

procedure TForm1.Listedespostes1Click(Sender: TObject);
begin
Form31.showmodal;
end;

procedure TForm1.Listefournisseurs1Click(Sender: TObject);
begin
form7.ShowModal;
end;

procedure TForm1.Listematriel1Click(Sender: TObject);
begin
form13.showmodal;
end;

procedure TForm1.Maintenance1Click(Sender: TObject);
begin
form40.showmodal;
end;

procedure TForm1.Marque1Click(Sender: TObject);
begin
form11.showmodal;
end;

procedure TForm1.Marque2Click(Sender: TObject);
begin
form11.ShowModal;
end;

procedure TForm1.Marque3Click(Sender: TObject);
begin
form16.showmodal;
end;

procedure TForm1.Matriel2Click(Sender: TObject);
begin
form12.showmodal;
end;

procedure TForm1.Matriel5Click(Sender: TObject);
begin
form18.showmodal;
end;

procedure TForm1.Matriel6Click(Sender: TObject);
begin
form12.ShowModal;
end;

procedure TForm1.Rparation1Click(Sender: TObject);
begin
form41.showmodal;
end;

procedure TForm1.Siege1Click(Sender: TObject);
begin
Form28.showmodal;
end;

procedure TForm1.Timer1Timer(Sender: TObject);
begin
if (timer1.Enabled=true) then
begin
Label2.Caption:=TimeToStr(time);
end;
end;

procedure TForm1.ypematriel1Click(Sender: TObject);
begin
form10.showmodal;
end;

procedure TForm1.ypematriel2Click(Sender: TObject);
begin
form13.ShowModal;
end;

procedure TForm1.ypematriel3Click(Sender: TObject);
begin
form17.showmodal;
end;

end.
