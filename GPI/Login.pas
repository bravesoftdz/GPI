unit Login;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.ExtCtrls, Data.DB,
  Data.Win.ADODB;

type
  TForm27 = class(TForm)
    Edit1: TEdit;
    Edit2: TEdit;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Button1: TButton;
    GroupBox1: TGroupBox;
    Label4: TLabel;
    ADOTable1: TADOTable;
    ADOTable1ID_User: TAutoIncField;
    ADOTable1Nom_User: TStringField;
    ADOTable1Mdp_User: TStringField;
    ADOTable1Indication: TStringField;
    procedure Button1Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure FormShow(Sender: TObject);
  private
    { D�clarations priv�es }
  public
    { D�clarations publiques }
  end;

var
  Form27: TForm27;
  ferm :boolean;
  t:integer;

implementation

{$R *.dfm}

uses GPISALAM, AMarq;

procedure TForm27.Button1Click(Sender: TObject);
begin


        if ((Length(Edit1.Text) > 0) and (Length(Edit2.text)>0))then
          begin
             begin
                if (ADOTable1.Locate('Nom_User',Edit1.text,[loPartialKey])) then
                begin
                  if ((edit1.Text=adotable1Nom_User.value) and (edit2.Text=adotable1MDP_User.value))then
                    begin
                      ferm:=true;
                      form27.close;
                    end
                  else if ((edit1.Text=adotable1Nom_user.Value) and (edit2.Text<>adotable1Mdp_user.Value)) then
                    begin
                      GroupBox1.visible:=true;
                      edit2.text:='';
                      label4.caption:=adotable1indication.value;
                  end;
                end

                  else if ((edit1.Text<>adotable1Nom_user.Value) and (edit2.Text<>adotable1Mdp_user.Value)) then
                    begin
                      t:=t+1;
                      edit1.Text:='';
                      edit2.Text:='';
                      if t>2 then close;

                    end;

             end;

          end;
end;


procedure TForm27.FormClose(Sender: TObject; var Action: TCloseAction);
begin
 if ferm=false then
    form1.Close;
end;

procedure TForm27.FormShow(Sender: TObject);
begin
ferm:=false;
t:=0;
end;

end.
