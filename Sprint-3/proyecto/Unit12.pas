unit Unit12;

interface
 procedure buscar(a:integer;b:integer);
 procedure inicioadmin();
 procedure cerraradmin();
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

procedure inicioadmin();
begin
  form1.DBGrid1.Height:= 286;
  form1.DBGrid1.Left:= 369;
  form1.DBGrid1.Top:= 371;
  form1.DBGrid1.Width:= 801;
  form1.Button4.Visible:= true;
  form1.Button5.Visible:= true;
  form1.Button6.Visible:= true;
  form1.Button7.Visible:= true;
  form1.Button8.Visible:= true;
  form1.Label9.Visible:= false;
end;

procedure cerraradmin();
begin
   form1.DBGrid1.Height:= 283;
  form1.DBGrid1.Left:= 7;
  form1.DBGrid1.Top:= 307;
  form1.DBGrid1.Width:= 801;
  form1.Button4.Visible:= false;
  form1.Button5.Visible:= false;
  form1.Button6.Visible:= false;
  form1.Button7.Visible:= false;
  form1.Button8.Visible:= false;
  form1.Label9.Visible:= true;
end;


end.
