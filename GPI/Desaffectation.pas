unit Desaffectation;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.Grids, Vcl.DBGrids,
  Data.DB, Data.Win.ADODB;

type
  TForm39 = class(TForm)
    Button1: TButton;
    Button3: TButton;
    Button5: TButton;
    Button6: TButton;
    ComboBox1: TComboBox;
    DBGrid1: TDBGrid;
    Edit1: TEdit;
    Label1: TLabel;
    Label2: TLabel;
    ADOTable1: TADOTable;
    DataSource1: TDataSource;
    ADOTable2: TADOTable;
    DataSource2: TDataSource;
  private
    { Déclarations privées }
  public
    { Déclarations publiques }
  end;

var
  Form39: TForm39;

implementation

{$R *.dfm}

end.
