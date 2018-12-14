unit Reparation;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.Grids, Vcl.DBGrids, Vcl.StdCtrls,
  Data.DB, Data.Win.ADODB;

type
  TForm41 = class(TForm)
    DBGrid1: TDBGrid;
    Button6: TButton;
    ComboBox1: TComboBox;
    Edit1: TEdit;
    Label1: TLabel;
    Label2: TLabel;
    Button1: TButton;
    Button2: TButton;
    Button3: TButton;
    Button4: TButton;
    Button5: TButton;
    ADOTable1: TADOTable;
    DataSource1: TDataSource;
  private
    { Déclarations privées }
  public
    { Déclarations publiques }
  end;

var
  Form41: TForm41;

implementation

{$R *.dfm}

end.
