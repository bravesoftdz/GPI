program ProjectGPI;

uses
  Vcl.Forms,
  GPISALAM in 'GPISALAM.pas' {Form1},
  Employe in 'Employe.pas' {Form2},
  AEmp in 'AEmp.pas' {em},
  AFour in 'AFour.pas' {Form3},
  AType in 'AType.pas' {Form4},
  AMarq in 'AMarq.pas' {Form5},
  AMat in 'AMat.pas' {Form6},
  Four in 'Four.pas' {Form7},
  Fact in 'Fact.pas' {Form8},
  AFact in 'AFact.pas' {Form9},
  Typ in 'Typ.pas' {Form10},
  Marq in 'Marq.pas' {form11},
  Mat in 'Mat.pas' {Form12},
  List in 'List.pas' {Form13},
  AAffec in 'AAffec.pas' {Form14},
  RMarq in 'RMarq.pas' {Form16},
  RType in 'RType.pas' {Form17},
  RMat in 'RMat.pas' {Form18},
  RFour in 'RFour.pas' {Form19},
  MEmp in 'MEmp.pas' {Form20},
  MFact in 'MFact.pas' {Form21},
  MFour in 'MFour.pas' {Form22},
  MMarq in 'MMarq.pas' {Form23},
  MMat in 'MMat.pas' {Form24},
  MType in 'MType.pas' {Form25},
  propos in 'propos.pas' {Form26},
  corrompu in 'corrompu.pas' {Form15},
  Login in 'Login.pas' {Form27},
  Siege in 'Siege.pas' {Form28},
  ASiege in 'ASiege.pas' {Form29},
  MSiege in 'MSiege.pas' {Form30},
  Post in 'Post.pas' {Form31},
  APost in 'APost.pas' {Form32},
  MPost in 'MPost.pas' {Form33},
  EntrepriseMaintenance in 'EntrepriseMaintenance.pas' {Form34},
  AEntreperiseMaintenance in 'AEntreperiseMaintenance.pas' {Form35},
  MEntrepriseMaintenance in 'MEntrepriseMaintenance.pas' {Form36},
  BonLivraison in 'BonLivraison.pas' {Form37},
  Affectation in 'Affectation.pas' {Form38},
  Desaffectation in 'Desaffectation.pas' {Form39},
  MaterielEnPanne in 'MaterielEnPanne.pas' {Form40},
  Reparation in 'Reparation.pas' {Form41};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TForm1, Form1);
  Application.CreateForm(TForm2, Form2);
  Application.CreateForm(Tem, em);
  Application.CreateForm(TForm3, Form3);
  Application.CreateForm(TForm4, Form4);
  Application.CreateForm(TForm5, Form5);
  Application.CreateForm(TForm6, Form6);
  Application.CreateForm(TForm7, Form7);
  Application.CreateForm(TForm8, Form8);
  Application.CreateForm(TForm9, Form9);
  Application.CreateForm(TForm10, Form10);
  Application.CreateForm(Tform11, form11);
  Application.CreateForm(TForm12, Form12);
  Application.CreateForm(TForm13, Form13);
  Application.CreateForm(TForm14, Form14);
  Application.CreateForm(TForm16, Form16);
  Application.CreateForm(TForm17, Form17);
  Application.CreateForm(TForm18, Form18);
  Application.CreateForm(TForm19, Form19);
  Application.CreateForm(TForm20, Form20);
  Application.CreateForm(TForm21, Form21);
  Application.CreateForm(TForm22, Form22);
  Application.CreateForm(TForm23, Form23);
  Application.CreateForm(TForm24, Form24);
  Application.CreateForm(TForm25, Form25);
  Application.CreateForm(TForm26, Form26);
  Application.CreateForm(TForm15, Form15);
  Application.CreateForm(TForm27, Form27);
  Application.CreateForm(TForm28, Form28);
  Application.CreateForm(TForm29, Form29);
  Application.CreateForm(TForm30, Form30);
  Application.CreateForm(TForm31, Form31);
  Application.CreateForm(TForm32, Form32);
  Application.CreateForm(TForm33, Form33);
  Application.CreateForm(TForm34, Form34);
  Application.CreateForm(TForm35, Form35);
  Application.CreateForm(TForm36, Form36);
  Application.CreateForm(TForm37, Form37);
  Application.CreateForm(TForm38, Form38);
  Application.CreateForm(TForm39, Form39);
  Application.CreateForm(TForm40, Form40);
  Application.CreateForm(TForm41, Form41);
  Application.Run;
end.
