unit Unit7;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ExtCtrls, Grids, DBGrids, Buttons, jpeg;

type
  TForm7 = class(TForm)
    DBGrid1: TDBGrid;
    Button1: TButton;
    procedure DBGrid1CellClick(Column: TColumn);
    procedure Button1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form7: TForm7;

implementation

uses Unit8, Unit1, Unit9, Unit3, Unit12;

{$R *.dfm}

procedure TForm7.Button1Click(Sender: TObject);
begin
  if(form3.ADOPEDIDO.FieldByName('Estado').AsBoolean) then
    messagedlg('El pedido ya fue entregado!!',mtinformation,[mbok],0)
  else
  begin
    form3.ADOPEDIDO.Edit;
    form3.ADOPEDIDO.FieldByName('Estado').AsBoolean:= true;
    form3.ADOPEDIDO.Post;
    DBGrid1.Refresh;
  end;
  Button1.Enabled:= false;
end;

procedure TForm7.DBGrid1CellClick(Column: TColumn);
begin
  Button1.Enabled:= true;
end;

end.
