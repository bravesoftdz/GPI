unit Post;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.Grids, Vcl.DBGrids,
  Data.DB, Data.Win.ADODB;

type
  TForm31 = class(TForm)
    DBGrid1: TDBGrid;
    ComboBox1: TComboBox;
    Edit1: TEdit;
    Label1: TLabel;
    Label2: TLabel;
    Button1: TButton;
    Button2: TButton;
    Button3: TButton;
    Button4: TButton;
    Button5: TButton;
    Button6: TButton;
    DataSource1: TDataSource;
    ADOTable1: TADOTable;
    ADOTable1ID_Poste: TAutoIncField;
    ADOTable1Nom_Poste: TStringField;
    ADOTable1Description_Poste: TStringField;
    ADOTable1Grade_Poste: TStringField;
    procedure Button5Click(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure Button6Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
  private
    { D�clarations priv�es }
  public
    { D�clarations publiques }
  end;

var
  Form31: TForm31;

implementation

{$R *.dfm}

uses APost, MPost;

procedure TForm31.Button1Click(Sender: TObject);
begin
Form32.showmodal;
end;

procedure TForm31.Button2Click(Sender: TObject);
begin
Form33.showmodal;
end;

procedure TForm31.Button3Click(Sender: TObject);
begin
if (adotable1.Locate('Nom_Poste',adotable1Nom_Poste.value,[loPartialKey])) then
  adotable1.delete;

end;

procedure TForm31.Button5Click(Sender: TObject);
begin
close;
end;

procedure TForm31.Button6Click(Sender: TObject);
begin
  if (ComboBox1.Text='Nom') then
     begin
        if (Length(Edit1.Text) > 0)  then
          begin
          if (ADOTable1.Locate('Nom_Poste',Edit1.text,[loPartialKey])) then
          begin

          end
          else
            messagedlg('Ce poste n''existe pas dans la base de donn�e', mtError,
                                    [mbCancel], 0);
          end;
    end
    else if (ComboBox1.Text='Description') then
      begin
        if (Length(Edit1.Text)>0) then
          begin
            if (adotable1.Locate('Description_Poste',Edit1.Text,[loPartialKey])) then
            begin

            end
            else
              messagedlg('Ce poste n''existe pas dans la base de donn�e',mtError,[mbCancel], 0);
           end;
      end
    else if (ComboBox1.Text='Grade') then
      begin
        if (Length(Edit1.Text)>0) then
          begin
            if (adotable1.Locate('Grade_Poste',Edit1.Text,[loPartialKey])) then
            begin

            end
            else
              messagedlg('Ce poste n''existe pas dans la base de donn�e',mtError,[mbCancel], 0);
           end;
      end;
end;

end.
