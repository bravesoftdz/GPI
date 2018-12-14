unit Marq;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.DBCtrls, Vcl.StdCtrls, Vcl.Grids,
  Vcl.DBGrids, Data.DB, Data.Win.ADODB;

type
  Tform11 = class(TForm)
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
    ADOTable1ID_Marque: TAutoIncField;
    ADOTable1Nom_Marque: TStringField;
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
  form11: Tform11;

implementation

{$R *.dfm}

uses AMarq, RMarq, MMarq;

procedure Tform11.Button1Click(Sender: TObject);
begin
  if (ComboBox1.Text='Nom') then
     begin
        if (Length(Edit1.Text) > 0)  then
          begin
          if (ADOTable1.Locate('Nom_Marque',Edit1.text,[loPartialKey])) then
          begin

          end
          else
            messagedlg('Ce mat�riel n''existe pas dans la base de donn�e', mtError,
                                    [mbCancel], 0);
          end;
    end;
end;

procedure Tform11.Button2Click(Sender: TObject);
begin
form5.showmodal;
end;

procedure Tform11.Button3Click(Sender: TObject);
begin
Form23.showmodal;
end;

procedure Tform11.Button4Click(Sender: TObject);
begin
if (adotable1.Locate('Nom_Marque',adotable1Nom_Marque.value,[loPartialKey])) then
  adotable1.delete;

end;

procedure Tform11.Button6Click(Sender: TObject);
begin
close;
end;

end.
