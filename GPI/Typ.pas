unit Typ;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.DBCtrls, Vcl.StdCtrls, Vcl.Grids,
  Vcl.DBGrids, Data.DB, Data.Win.ADODB;

type
  TForm10 = class(TForm)
    Button1: TButton;
    Button2: TButton;
    Button3: TButton;
    Button4: TButton;
    Button5: TButton;
    Button6: TButton;
    DBImage1: TDBImage;
    DBGrid1: TDBGrid;
    DataSource1: TDataSource;
    ADOTable1: TADOTable;
    ADOTable1ID_Type_Materiel: TAutoIncField;
    ADOTable1Nom_Type_Materiel: TStringField;
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
  Form10: TForm10;

implementation

{$R *.dfm}

uses AType, RType, MType;

procedure TForm10.Button1Click(Sender: TObject);
begin
if (ComboBox1.Text='Nom') then
     begin
        if (Length(Edit1.Text) > 0)  then
          begin
          if (ADOTable1.Locate('Nom_Type_Materiel',Edit1.text,[loPartialKey])) then
          begin

          end
          else
            messagedlg('Ce mat�riel n''existe pas dans la base de donn�e', mtError,
                                    [mbCancel], 0);
          end;
    end;
end;

procedure TForm10.Button2Click(Sender: TObject);
begin
form4.showmodal;
end;

procedure TForm10.Button3Click(Sender: TObject);
begin
Form25.showmodal;
end;

procedure TForm10.Button4Click(Sender: TObject);
begin
if (adotable1.Locate('Nom_Type_Materiel',adotable1Nom_Type_Materiel.value,[loPartialKey])) then
  adotable1.delete;

end;

procedure TForm10.Button6Click(Sender: TObject);
begin
close;
end;

end.
