unit Siege;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.Grids, Vcl.DBGrids,
  Data.DB, Data.Win.ADODB;

type
  TForm28 = class(TForm)
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
    ADOTable1: TADOTable;
    DataSource1: TDataSource;
    ADOTable1ID_Siege: TAutoIncField;
    ADOTable1Type_Siege: TStringField;
    ADOTable1Mail_Siege: TStringField;
    ADOTable1Lieu_Siege: TStringField;
    procedure Button2Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
    procedure Button6Click(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure Button4Click(Sender: TObject);
  private
    { D�clarations priv�es }
  public
    { D�clarations publiques }
  end;

var
  Form28: TForm28;

implementation

{$R *.dfm}

uses ASiege, MSiege;

procedure TForm28.Button1Click(Sender: TObject);
begin
  if (ComboBox1.Text='Type') then
     begin
        if (Length(Edit1.Text) > 0)  then
          begin
          if (ADOTable1.Locate('Type_Siege',Edit1.text,[loPartialKey])) then
          begin

          end
          else
            messagedlg('Ce siege n''existe pas dans la base de donn�e', mtError,
                                    [mbCancel], 0);
          end;
    end
    else if (ComboBox1.Text='Email') then
      begin
        if (Length(Edit1.Text)>0) then
          begin
            if (adotable1.Locate('Mail_Siege',Edit1.Text,[loPartialKey])) then
            begin

            end
            else
              messagedlg('Ce siege n''existe pas dans la base de donn�e',mtError,[mbCancel], 0);
           end;
      end

    else if (ComboBox1.Text='Lieux') then
      begin
        if (Length(Edit1.Text)>0) then
          begin
            if (adotable1.Locate('Lieu_Siege',Edit1.Text,[loPartialKey])) then
            begin

            end
            else
              messagedlg('Ce siege n''existe pas dans la base de donn�e',mtError,[mbCancel], 0);
           end;
      end;


end;

procedure TForm28.Button2Click(Sender: TObject);
begin
Form29.showmodal;
end;

procedure TForm28.Button3Click(Sender: TObject);
begin
Form30.showmodal;
end;

procedure TForm28.Button4Click(Sender: TObject);
begin
begin
if (adotable1.Locate('Type_Siege',adotable1Type_Siege.value,[loPartialKey])) then
  adotable1.delete;

end;
end;

procedure TForm28.Button6Click(Sender: TObject);
begin
close;
end;

end.
