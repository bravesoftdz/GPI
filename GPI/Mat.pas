unit Mat;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.DBCtrls, Vcl.StdCtrls, Vcl.Grids,
  Vcl.DBGrids, Data.DB, Data.Win.ADODB;

type
  TForm12 = class(TForm)
    Button1: TButton;
    Button2: TButton;
    Button3: TButton;
    Button4: TButton;
    Button5: TButton;
    Button6: TButton;
    DBImage1: TDBImage;
    DBGrid1: TDBGrid;
    ADOTable1: TADOTable;
    DataSource1: TDataSource;
    ADOTable1ID_Materiel: TAutoIncField;
    ADOTable1Description_Materiel: TStringField;
    ADOTable1Modele_Materiel: TStringField;
    ADOTable1Num_Immo: TStringField;
    ADOTable1Num_Serie: TStringField;
    ADOTable1Date_Fin_Garentie: TDateField;
    ADOTable1ID_Type_Materiel: TIntegerField;
    ADOTable1ID_Marque: TIntegerField;
    ComboBox1: TComboBox;
    Edit1: TEdit;
    Label1: TLabel;
    Label2: TLabel;
    procedure Button6Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
    procedure Button4Click(Sender: TObject);
  private
    { D�clarations priv�es }
  public
    { D�clarations publiques }
  end;

var
  Form12: TForm12;

implementation

{$R *.dfm}

uses AMat, RMat, MMat;

procedure TForm12.Button1Click(Sender: TObject);
begin
if (ComboBox1.Text='Mod�le') then
     begin
        if (Length(Edit1.Text) > 0)  then
          begin
          if (ADOTable1.Locate('Modele_Materiel',Edit1.text,[loPartialKey])) then
          begin

          end
          else
            messagedlg('Ce mat�riel n''existe pas dans la base de donn�e', mtError,
                                    [mbCancel], 0);
          end;
    end
    else if (ComboBox1.Text='Num�ro de s�rie') then
     begin
        if (Length(Edit1.Text) > 0)  then
          begin
          if (ADOTable1.Locate('Num_Serie',Edit1.text,[loPartialKey])) then
          begin

          end
          else
            messagedlg('Ce mat�riel n''existe pas dans la base de donn�e', mtError,
                                    [mbCancel], 0);
          end;
    end
    else if (ComboBox1.Text='Prix d''achat') then
     begin
        if (Length(Edit1.Text) > 0)  then
          begin
          if (ADOTable1.Locate('Prix_achat',Edit1.text,[loPartialKey])) then
          begin

          end
          else
            messagedlg('Ce mat�riel n''existe pas dans la base de donn�e', mtError,
                                    [mbCancel], 0);
          end;
    end
    else if (ComboBox1.Text='Date d''achat') then
     begin
        if (Length(Edit1.Text) > 0)  then
          begin
          if (ADOTable1.Locate('Date_achat',Edit1.text,[loPartialKey])) then
          begin

          end
          else
            messagedlg('Ce mat�riel n''existe pas dans la base de donn�e', mtError,
                                    [mbCancel], 0);
          end;
    end
    else if (ComboBox1.Text='Num�ro immo') then
     begin
        if (Length(Edit1.Text) > 0)  then
          begin
          if (ADOTable1.Locate('Num_Immo',Edit1.text,[loPartialKey])) then
          begin

          end
          else
            messagedlg('Ce mat�riel n''existe pas dans la base de donn�e', mtError,
                                    [mbCancel], 0);
          end;
    end
    else if (ComboBox1.Text='Date fin garentie') then
     begin
        if (Length(Edit1.Text) > 0)  then
          begin
          if (ADOTable1.Locate('Date_Fin_Garentie',Edit1.text,[loPartialKey])) then
          begin

          end
          else
            messagedlg('Ce mat�riel n''existe pas dans la base de donn�e', mtError,
                                    [mbCancel], 0);
          end;
    end;
end;

procedure TForm12.Button2Click(Sender: TObject);
begin
form6.showmodal;
end;

procedure TForm12.Button3Click(Sender: TObject);
begin
Form24.showmodal;
end;

procedure TForm12.Button4Click(Sender: TObject);
begin
if (adotable1.Locate('Num_Immo',adotable1Num_Immo.value,[loPartialKey])) then
  adotable1.delete;

end;

procedure TForm12.Button6Click(Sender: TObject);
begin
close;
end;

end.
