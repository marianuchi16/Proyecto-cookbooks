unit Unit9;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Grids, DBGrids, ComCtrls, DBCtrls, Mask;

type
  TForm9 = class(TForm)
    DBGrid1: TDBGrid;
    Button1: TButton;
    Button2: TButton;
    Button3: TButton;
    Label1: TLabel;
    Edit1: TEdit;
    Label17: TLabel;
    Label18: TLabel;
    Edit2: TEdit;
    Label2: TLabel;
    Label12: TLabel;
    Button5: TButton;
    Button4: TButton;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    Label8: TLabel;
    Label9: TLabel;
    Edit3: TEdit;
    Edit4: TEdit;
    Edit5: TEdit;
    Edit6: TEdit;
    Edit8: TEdit;
    DateTimePicker1: TDateTimePicker;
    label30: TLabel;
    Label10: TLabel;
    Label11: TLabel;
    Label13: TLabel;
    Label14: TLabel;
    Label15: TLabel;
    Label16: TLabel;
    Label19: TLabel;
    Memo1: TMemo;
    Button6: TButton;
    procedure Button1Click(Sender: TObject);
    procedure DBGrid1CellClick(Column: TColumn);
    procedure Button2Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
    procedure Button5Click(Sender: TObject);
    procedure Button4Click(Sender: TObject);
    procedure Edit5KeyPress(Sender: TObject; var Key: Char);
    procedure Button6Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form9: TForm9;

implementation

uses Unit3, Unit8, Unit11;

{$R *.dfm}

procedure TForm9.Button1Click(Sender: TObject);
begin
label1.Visible:= true;
label2.Visible:= true;
label3.Visible:= true;
label4.Visible:= true;
label5.Visible:= true;
label6.Visible:= true;
label7.Visible:= true;
label8.Visible:= true;
label9.Visible:= true;
label17.Visible:= true;
label18.Visible:= true;
label30.Visible:= true;
label10.Visible:= true;
label11.Visible:= true;
label12.Visible:= true;
label13.Visible:= true;
label14.Visible:= true;
label15.Visible:= true;
label16.Visible:= true;
label19.Visible:= true;
Edit1.Visible:= true;
Edit2.Visible:= true;
Edit3.Visible:= true;
Edit4.Visible:= true;
Edit5.Visible:= true;
Edit6.Visible:= true;
Edit8.Visible:= true;
DateTimePicker1.Visible:= true;
button2.enabled:= false;
button3.Enabled:= false;
button4.Visible:= true;
button5.Visible:= true;
memo1.Visible:= true;
dbgrid1.Enabled:= false;

end;

procedure TForm9.Button2Click(Sender: TObject);
begin
button1.Enabled:= false;
label1.Visible:= true;
label2.Visible:= true;
label3.Visible:= true;
label4.Visible:= true;
label5.Visible:= true;
label7.Visible:= true;
label17.Visible:= true;
label18.Visible:= true;
label30.Visible:= true;
label10.Visible:= true;
label11.Visible:= true;
label12.Visible:= true;
label13.Visible:= true;
label14.Visible:= true;
label15.Visible:= true;
Edit1.Visible:= true;
Edit2.Visible:= true;
Edit3.Visible:= true;
Edit4.Visible:= true;
Edit5.Visible:= true;
DateTimePicker1.Visible:= true;
button2.enabled:= false;
button3.Enabled:= false;
button4.Visible:= true;
button5.Visible:= true;
memo1.Visible:= true;
dbgrid1.Enabled:= false;
Edit1.Text:= form3.ADOlibro.fieldbyname('Nombre').asString;
Edit2.Text:= form3.ADOlibro.fieldbyname('Editorial').asString;
memo1.lines.Text:= form3.ADOlibro.fieldbyname('Sinopsis').asString;
Edit3.Text:= form3.ADOlibro.fieldbyname('Cantidad_De_Paginas').asString;
Edit4.Text:= form3.ADOlibro.fieldbyname('Idioma').asString;
Edit5.Text:= form3.ADOlibro.fieldbyname('Precio').asString;
DateTimePicker1.Date:= form3.ADOlibro.fieldbyname('Fecha_De_Edicion').AsDateTime;
end;

procedure TForm9.Button3Click(Sender: TObject);
begin
if messagedlg('Esta seguro de eliminar el libro??',mtconfirmation,[mbyes,mbno],0) = mryes then
    begin
    form3.ADOlibro.edit;
    form3.ADOLIBRO.FieldByName('Eliminado').AsBoolean:= true;
    form3.ADOLIBRO.Post;
    form3.ADOLIBRO.Close;
    form3.ADOLIBRO.Filter:= 'Eliminado = false';
    form3.ADOLIBRO.Filtered:= true;
    form3.ADOLIBRO.Open;
    form8.DBGrid1.Refresh;
    messagedlg('El libro se elimino exitosamente!!',mtinformation,[mbok],0);
    end
    else
    begin
      button2.Enabled:= false;
      button3.Enabled:= false;
      button1.Enabled:= true;
    end;
end;

procedure TForm9.Button4Click(Sender: TObject);
begin
if button1.Enabled then  // e('nombre;marca',vararrayof([Edit1.Text,edit2.Text]),[]);
begin
          if not(form3.ADOAUTOR.Locate('Nombre;Apellido',vararrayof([Edit6.Text,edit8.Text]),[])) then
          begin
             if messagedlg('El autor no esta registrado.Deseea agregarlo ahora?', mtinformation,[mbyes, mbok],0)= mryes then
             begin
                form8.Edit1.Text:= edit6.Text;
                form8.Edit2.Text:= edit8.Text;
                form8.DBGrid1.Enabled:= false;
                form8.Button1.Enabled:= false;
                form8.Button2.Enabled:= false;
                form8.Button3.Enabled:= false;
                form8.ShowModal;
             end
             else
              begin
                messagedlg('No se puede agregar el libro si no agrega antes el autor!!',mtwarning,[mbok],0);
                form9.Close;
              end;
          end
          else
          begin
          form3.ADOlibro.open;
          form3.ADOlibro.Append;
          form3.ADOlibro.fieldbyname('Nombre').asString:= Edit1.Text ;
          form3.ADOlibro.fieldbyname('Editorial').asString:= Edit2.Text;
           form3.ADOlibro.fieldbyname('Sinopsis').asString:=memo1.lines.Text;
           form3.ADOlibro.fieldbyname('Cantidad_De_Paginas').asString:=Edit3.Text;
           form3.ADOlibro.fieldbyname('Idioma').asString:=Edit4.Text;
          form3.ADOlibro.fieldbyname('Precio').asString:=Edit5.Text ;
           form3.ADOlibro.fieldbyname('Fecha_De_Edicion').AsDateTime:=DateTimePicker1.Date;
          form3.ADOlibro.fieldbyname('Id_Autor').asinteger:= form3.ADOAUTOR.FieldByName('Id_Autor').AsInteger;
          form3.ADOlibro.Post;
          messagedlg('El libro se agrego exitosamente!!',mtinformation,[mbok],0);
          form3.adolibro.Close;
          form3.ADOlibro.Open;
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
          label3.Visible:= false;
          label4.Visible:= false;
          label5.Visible:= false;
          label6.Visible:= false;
          label7.Visible:= false;
          label8.Visible:= false;
          label9.Visible:= false;
          label30.Visible:= false;
          label10.Visible:= false;
          label1.Visible:= false;
          label13.Visible:= false;
          label14.Visible:= false;
          label15.Visible:= false;
          label16.Visible:= false;
          label17.Visible:= false;
          label11.Visible:= false;
          label19.Visible:= false;
          Edit1.Visible:= false;
          Edit2.Visible:= false;
          Edit3.Visible:= false;
          Edit4.Visible:= false;
          Edit5.Visible:= false;
          Edit6.Visible:= false;
          Edit8.Visible:= false;
          Form9.DateTimePicker1.Visible:= false;
          button4.Visible:= false;
          button5.Visible:= false;
          memo1.Visible:= false;
          dbgrid1.Enabled:= true;
          button2.Enabled:= true;
          button3.Enabled:= true;
          end;

end
else
begin
//modificar libro
form3.ADOlibro.Edit;
form3.ADOlibro.fieldbyname('Nombre').asString := Edit1.Text;
form3.ADOlibro.fieldbyname('Editorial').asString:= Edit2.Text;
form3.ADOlibro.fieldbyname('Sinopsis').asString:=memo1.lines.Text;
form3.ADOlibro.fieldbyname('Cantidad_De_Paginas').asString:=Edit3.Text;
form3.ADOlibro.fieldbyname('Idioma').asString:=Edit4.Text;
form3.ADOlibro.fieldbyname('Precio').asString:=Edit5.Text ;
form3.ADOlibro.fieldbyname('Fecha_De_Edicion').AsDateTime:=DateTimePicker1.Date;
form3.ADOlibro.fieldbyname('Id_Autor').asinteger:= form3.ADOAUTOR.FieldByName('Id_Autor').AsInteger;
form3.ADOlibro.Post;
messagedlg('El libro se modifico exitosamente!!',mtinformation,[mbok],0);
form3.adolibro.Close;
form3.ADOlibro.Open;
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
          label3.Visible:= false;
          label4.Visible:= false;
          label5.Visible:= false;
          label6.Visible:= false;
          label7.Visible:= false;
          label8.Visible:= false;
          label9.Visible:= false;
          label30.Visible:= false;
          label10.Visible:= false;
          label1.Visible:= false;
          label13.Visible:= false;
          label14.Visible:= false;
          label15.Visible:= false;
          label16.Visible:= false;
          label17.Visible:= false;
          label11.Visible:= false;
          Edit1.Visible:= false;
          Edit2.Visible:= false;
          Edit3.Visible:= false;
          Edit4.Visible:= false;
          Edit5.Visible:= false;
          Edit6.Visible:= false;
          Edit8.Visible:= false;
          Form9.DateTimePicker1.Visible:= false;
          button4.Visible:= false;
          button5.Visible:= false;
          memo1.Visible:= false;
          dbgrid1.Enabled:= true;
          button2.Enabled:= true;
          button3.Enabled:= true;
end;
button2.Enabled:= false;
button3.Enabled:= false;
button1.Enabled:= true;
dbgrid1.Enabled:= true;
end;

procedure TForm9.Button5Click(Sender: TObject);
begin
edit1.Text:= '';
edit2.Text:='';
edit3.Text:= '';
edit4.Text:= '';
edit5.Text:= '';
edit6.Text:= '';
edit8.Text:= '';
datetimepicker1.Date:= date();
label1.Visible:= false;
label2.Visible:= false;
label3.Visible:= false;
label4.Visible:= false;
label5.Visible:= false;
label6.Visible:= false;
label7.Visible:= false;
label8.Visible:= false;
label9.Visible:= false;
label17.Visible:= false;
label18.Visible:= false;
label30.Visible:= false;
label10.Visible:= false;
label1.Visible:= false;
label12.Visible:= false;
label13.Visible:= false;
label14.Visible:= false;
label15.Visible:= false;
label16.Visible:= false;
label17.Visible:= false;
label11.Visible:= false;
label19.Visible:= false;
Edit1.Visible:= false;
Edit2.Visible:= false;
Edit3.Visible:= false;
Edit4.Visible:= false;
Edit5.Visible:= false;
Edit6.Visible:= false;
Edit8.Visible:= false;
Form9.DateTimePicker1.Visible:= false;
button4.Visible:= false;
button5.Visible:= false;
memo1.Visible:= false;
dbgrid1.Enabled:= true;
end;

procedure TForm9.Button6Click(Sender: TObject);
begin
form11.ShowModal;
end;

procedure TForm9.DBGrid1CellClick(Column: TColumn);
begin
Button2.Enabled:= true;
button3.Enabled:= true;
end;

procedure TForm9.Edit5KeyPress(Sender: TObject; var Key: Char);
begin
if not(key in [#44,#48,#49,#50,#51,#52,#53,#54,#55,#56,#57]) then
begin
   Key := #0;
  messagedlg('Caracter invalido!',mtinformation,[mbok],0);
end;
end;

end.
