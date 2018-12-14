unit MaterielEnPanne;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.Grids, Vcl.DBGrids,
  Data.DB, Data.Win.ADODB;

type
  TForm40 = class(TForm)
    DBGrid1: TDBGrid;
    Button1: TButton;
    Button2: TButton;
    Button6: TButton;
    ComboBox1: TComboBox;
    Edit1: TEdit;
    Label1: TLabel;
    Label2: TLabel;
    ADOTable1: TADOTable;
    DataSource1: TDataSource;
    Button3: TButton;
  private
    { Déclarations privées }
  public
    { Déclarations publiques }
  end;

var
  Form40: TForm40;

implementation

{$R *.dfm}

end.
