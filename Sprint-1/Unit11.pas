unit Unit11;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Grids, DBGrids, StdCtrls;

type
  TForm11 = class(TForm)
    DBGrid1: TDBGrid;
    Edit1: TEdit;
    Button1: TButton;
    Label2: TLabel;
    Button2: TButton;
    procedure DBGrid1TitleClick(Column: TColumn);
    procedure Edit1Change(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form11: TForm11;

implementation

uses Unit3;

{$R *.dfm}

procedure TForm11.Button1Click(Sender: TObject);
begin
if (form3.ADOLIBRO.Locate('Nombre',edit1.Text,[]))then
form3.ADOLIBRO.Close;
form3.ADOLIBRO.Filtered:= false;
form3.ADOLIBRO.Filter:= 'Nombre = ' + Quotedstr(edit1.Text);
form3.ADOLIBRO.Filtered:= true;
form3.ADOLIBRO.Open;
DBGrid1.Refresh;
end;

procedure TForm11.Button2Click(Sender: TObject);
begin
form3.ADOLIBRO.Close;
form3.ADOLIBRO.Filtered:= false;
form3.ADOLIBRO.Filter:= 'Eliminado = false';
form3.ADOLIBRO.Filtered:= true;
form3.ADOLIBRO.Open;
DBGrid1.Refresh;
edit1.Text:= '';
end;

procedure TForm11.DBGrid1TitleClick(Column: TColumn);
begin
if column.Title.Caption= 'Titulo' then
 begin
  form3.ADOLIBRO.IndexFieldNames:= 'Nombre';
 end;
if column.Title.Caption= 'Precio' then
 begin
   form3.ADOLIBRO.IndexFieldNames:= 'Precio';
 end;

end;

procedure TForm11.Edit1Change(Sender: TObject);
begin
form3.ADOLIBRO.Locate('Nombre',edit1.Text,[]);


end;


end.
