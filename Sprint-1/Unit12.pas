unit Unit12;

interface
 procedure buscar(a:integer;b:integer);
 var
 p: integer;
implementation

uses Unit3, Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, jpeg, StdCtrls, Buttons, ComCtrls, Menus, Grids, DBGrids,
  Unit1;
procedure buscar(a:integer;b:integer);
begin
form3.ADOLIBRO.Close;
form3.ADOLIBRO.Filtered:= false;
form3.ADOLIBRO.Filter:='Precio>= '+ inttostr(a)+ ' and Precio<= '+ inttostr(b);
form3.ADOLIBRO.Filtered:= true;
form3.ADOLIBRO.Open;
form1.DBGrid1.Refresh;
end;
end.
