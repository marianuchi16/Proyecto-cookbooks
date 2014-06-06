unit Unit8;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Grids, DBGrids, StdCtrls;

type
  TForm8 = class(TForm)
    DBGrid1: TDBGrid;
    Button1: TButton;
    Button2: TButton;
    Button3: TButton;
    Edit1: TEdit;
    Edit2: TEdit;
    Label1: TLabel;
    Label2: TLabel;
    Label18: TLabel;
    Label17: TLabel;
    Label12: TLabel;
    Button4: TButton;
    Button5: TButton;
    Button6: TButton;
    procedure Button1Click(Sender: TObject);
    procedure Button4Click(Sender: TObject);
    procedure Button5Click(Sender: TObject);
    procedure DBGrid1CellClick(Column: TColumn);
    procedure Button2Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
    procedure Button6Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form8: TForm8;

implementation

uses Unit3, Unit13;

{$R *.dfm}

procedure TForm8.Button1Click(Sender: TObject);
begin
button2.enabled:= false;
button3.enabled:= false;
label1.Visible:= true;
label2.Visible:= true;
edit1.Visible:= true;
edit2.Visible:= true;
label17.Visible:= true;
label18.Visible:= true;
label12.Visible:= true;
button4.Visible:= true;
button5.Visible:= true;
dbgrid1.Enabled:= false;
end;

procedure TForm8.Button2Click(Sender: TObject);
begin
edit1.Text:= form3.ADOAUTOR.FieldByName('Nombre').AsString;
edit2.Text:= form3.ADOAUTOR.FieldByName('Apellido').AsString;
label1.Visible:= true;
label2.Visible:= true;
edit1.Visible:= true;
edit2.Visible:= true;
label17.Visible:= true;
label18.Visible:= true;
label12.Visible:= true;
button1.Enabled:= false;
button4.Visible:= true;
button5.Visible:= true;
end;

procedure TForm8.Button3Click(Sender: TObject);
var
id: integer;
begin
 if messagedlg('Esta seguro de eliminar el autor?? Recuerde que si tiene libros asociados no podra eliminarlo',mtconfirmation,[mbyes,mbno],0) = mryes then
    begin
      id:= form3.ADOAUTOR.FieldByName('Id_Autor').AsInteger;
      if not(Form3.ADOLIBRO.Locate('Id_Autor',id,[])) then
        begin
          form3.ADOAUTOR.edit;
          form3.ADOAUTOR.FieldByName('Eliminado').AsBoolean:= true;
          Form3.ADOAUTOR.Post;
          form3.ADOautor.Close;
          form3.ADOautor.Filter:= 'Eliminado = false' ;
          form3.ADOautor.Filtered:= true;
          form3.ADOautor.Open;
          messagedlg('El autor se elimino exitosamente!!',mtinformation,[mbok],0);
          button3.Enabled:= false;
          button2.Enabled:= false;
        end
      else
          messagedlg('El autor posee libros asociados. Primero elimine los libros!!',mtinformation,[mbok],0);
    end
    else
    begin
      button2.Enabled:= false;
      button3.Enabled:= false;
      button1.Enabled:= true;
    end;
end;

procedure TForm8.Button4Click(Sender: TObject);
begin
if button1.Enabled then
begin
form3.ADOAUTOR.open;
form3.ADOAUTOR.Append;
form3.ADOAUTOR.fieldbyname('Nombre').asString := Edit1.Text;
form3.ADOAUTOR.fieldbyname('Apellido').asString := Edit2.Text;
form3.ADOAUTOR.Post;
messagedlg('El autor se agrego exitosamente!!',mtinformation,[mbok],0);
form3.adoautor.Close;
form3.ADOAUTOR.Open;
dbgrid1.Refresh;
label1.Visible:= false;
label2.Visible:= false;
edit1.Visible:= false;
edit2.Visible:= false;
label17.Visible:= false;
label18.Visible:= false;
label12.Visible:= false;
button4.Visible:= false;
button5.Visible:= false;
edit1.Text:= '';
edit2.Text:='';

end
else
begin
form3.ADOAUTOR.Edit;
form3.ADOAUTOR.fieldbyname('Nombre').asString := Edit1.Text;
form3.ADOAUTOR.fieldbyname('Apellido').asString := Edit2.Text;
form3.ADOAUTOR.Post;
messagedlg('El autor se modifico exitosamente!!',mtinformation,[mbok],0);
form3.adoautor.Close;
form3.ADOAUTOR.Open;
dbgrid1.Refresh;
label1.Visible:= false;
label2.Visible:= false;
edit1.Visible:= false;
edit2.Visible:= false;
label17.Visible:= false;
label18.Visible:= false;
label12.Visible:= false;
button4.Visible:= false;
button5.Visible:= false;
edit1.Text:= '';
edit2.Text:='';
end;
button2.Enabled:= false;
button3.Enabled:= false;
button1.Enabled:= true;
dbgrid1.Enabled:= true;
end;

procedure TForm8.Button5Click(Sender: TObject);
begin
edit1.Text:= '';
edit2.Text:='';
label1.Visible:= false;
label2.Visible:= false;
edit1.Visible:= false;
edit2.Visible:= false;
label17.Visible:= false;
label18.Visible:= false;
label12.Visible:= false;
button4.Visible:= false;
button5.Visible:= false;
button2.Enabled:= false;
button3.Enabled:= false;
button1.Enabled:= true;
dbgrid1.enabled:= true;
end;

procedure TForm8.Button6Click(Sender: TObject);
begin
form13.showmodal;
end;

procedure TForm8.DBGrid1CellClick(Column: TColumn);
begin
button2.Enabled:= true;
button3.Enabled:= true;
end;

end.
