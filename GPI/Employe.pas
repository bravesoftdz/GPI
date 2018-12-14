unit Employe;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.Buttons, Vcl.Grids,
  Vcl.DBGrids, Vcl.DBCtrls, Data.DB, Data.Win.ADODB, Vcl.ExtCtrls, Vcl.Mask,
  RpCon, RpConDS, RpDefine, RpRave;

type
  TForm2 = class(TForm)
    DBGrid1: TDBGrid;
    Button1: TButton;
    Button2: TButton;
    Button3: TButton;
    Button4: TButton;
    Button5: TButton;
    Button6: TButton;
    DataSource1: TDataSource;
    Edit1: TEdit;
    ComboBox1: TComboBox;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Timer1: TTimer;
    Label5: TLabel;
    Label6: TLabel;
    Button7: TButton;
    Image1: TImage;
    ADOQuery1: TADOQuery;
    ADOQuery1Matricule_Employe: TAutoIncField;
    ADOQuery1Nom_Employe: TStringField;
    ADOQuery1Prenom_Employe: TStringField;
    ADOQuery1Adresse_Employe: TStringField;
    ADOQuery1Tel_Employe: TStringField;
    ADOQuery1Date_Recrutement: TDateField;
    ADOQuery1ID_Poste: TIntegerField;
    ADOQuery1ID_Siege: TIntegerField;
    ADOQuery1ID_Siege_1: TAutoIncField;
    ADOQuery1Type_Siege: TStringField;
    ADOQuery1Mail_Siege: TStringField;
    ADOQuery1Lieu_Siege: TStringField;
    ADOQuery1ID_Poste_1: TAutoIncField;
    ADOQuery1Nom_Poste: TStringField;
    ADOQuery1Description_Poste: TStringField;
    ADOQuery1Grade_Poste: TStringField;
    ADOTable1: TADOTable;
    ADOTable1Matricule_Employe: TAutoIncField;
    ADOTable1Nom_Employe: TStringField;
    ADOTable1Prenom_Employe: TStringField;
    ADOTable1Adresse_Employe: TStringField;
    ADOTable1Tel_Employe: TStringField;
    ADOTable1Date_Recrutement: TDateField;
    ADOTable1ID_Poste: TIntegerField;
    ADOTable1ID_Siege: TIntegerField;
    RvProject1: TRvProject;
    RvDataSetConnection1: TRvDataSetConnection;
    procedure Button6Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure Button4Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
    procedure ComboBox1Change(Sender: TObject);
    procedure Timer1Timer(Sender: TObject);
    procedure Button5Click(Sender: TObject);
  private
    { D�clarations priv�es }
  public
    { D�clarations publiques }
  end;

var
  Form2: TForm2;

implementation

{$R *.dfm}

uses AEmp, REmp, MEmp;

procedure TForm2.Button1Click(Sender: TObject);
begin
  if (ComboBox1.Text='Nom') then
     begin
        if (Length(Edit1.Text) > 0)  then
          begin
          if (ADOTable1.Locate('Nom_Employe',Edit1.text,[loPartialKey])) then
          begin

          end
          else
            messagedlg('Ce mat�riel n''existe pas dans la base de donn�e', mtError,
                                    [mbCancel], 0);
          end;
    end
    else if (combobox1.Text='Pr�nom') then
       begin
        if (Length(Edit1.Text) > 0)  then
          begin
          if (ADOTable1.Locate('Prenom_Employe',Edit1.text,[loPartialKey])) then
          begin

          end
          else
            messagedlg('Ce mat�riel n''existe pas dans la base de donn�e', mtError,
                                    [mbCancel], 0);
          end;
    end
    else if (combobox1.Text='Adresse') then
       begin
        if (Length(Edit1.Text) > 0)  then
          begin
          if (ADOTable1.Locate('Adresse_Employe',Edit1.text,[loPartialKey])) then
          begin

          end
          else
            messagedlg('Ce mat�riel n''existe pas dans la base de donn�e', mtError,
                                    [mbCancel], 0);
          end;
    end
    else if (combobox1.Text='T�l�phone') then
       begin
        if (Length(Edit1.Text) > 0)  then
          begin
          if (ADOTable1.Locate('Tel_Employe',Edit1.text,[loPartialKey])) then
          begin

          end
          else
            messagedlg('Ce mat�riel n''existe pas dans la base de donn�e', mtError,
                                    [mbCancel], 0);
          end;
    end
    else if (combobox1.Text='Date de recrutement') then
       begin
        if (Length(Edit1.Text) > 0)  then
          begin
          if (ADOTable1.Locate('Date_Recrutement',Edit1.text,[loPartialKey])) then
          begin

          end
          else
            messagedlg('Ce mat�riel n''existe pas dans la base de donn�e', mtError,
                                    [mbCancel], 0);
          end;
    end;
end;


procedure TForm2.Button2Click(Sender: TObject);
begin
em.showmodal;
end;

procedure TForm2.Button3Click(Sender: TObject);
begin
Form20.showmodal;
end;

procedure TForm2.Button4Click(Sender: TObject);
begin
if (adotable1.Locate('Nom_Employe',adotable1Nom_Employe.value,[loPartialKey])) then
  adotable1.delete;

end;

procedure TForm2.Button5Click(Sender: TObject);
begin
RvProject1.Open;
RvProject1.selectReport('RvProject1',false);
RvProject1.Execute;
RvProject1.Close;
end;

procedure TForm2.Button6Click(Sender: TObject);
begin
close;
end;

procedure TForm2.ComboBox1Change(Sender: TObject);
begin
edit1.text:='';
end;

procedure TForm2.Timer1Timer(Sender: TObject);
begin
if (timer1.Enabled=true) then
begin
if (adotable1.Locate('Nom_Employe',adotable1Nom_Employe.value,[loPartialKey])) then
label3.Caption:=adotable1Nom_Employe.Value;
label4.Caption:=adotable1Prenom_Employe.value;
end;
end;


end.
