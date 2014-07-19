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
    Label3: TLabel;
    Edit3: TEdit;
    Button8: TButton;
    DBGrid2: TDBGrid;
    procedure Button1Click(Sender: TObject);
    procedure Button4Click(Sender: TObject);
    procedure Button5Click(Sender: TObject);
    procedure DBGrid1CellClick(Column: TColumn);
    procedure Button2Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
    procedure Button6Click(Sender: TObject);
    procedure Button7Click(Sender: TObject);
    procedure Button8Click(Sender: TObject);
    procedure Edit2KeyPress(Sender: TObject; var Key: Char);
    procedure Edit1KeyPress(Sender: TObject; var Key: Char);
    procedure Edit3KeyPress(Sender: TObject; var Key: Char);
    procedure Edit4KeyPress(Sender: TObject; var Key: Char);
    procedure DBGrid1TitleClick(Column: TColumn);
    procedure Edit3Change(Sender: TObject);
    procedure Edit3Click(Sender: TObject);
    procedure DBGrid2CellClick(Column: TColumn);
  private
  usuario: integer;
  nombre, apellido: string;
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form8: TForm8;

implementation

uses Unit3, Unit13, Unit12;

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

 if DBGrid2.Visible then
      begin
          nombre:= form3.ADOQuery2.FieldByName('Nombre').AsString;
          apellido:= form3.ADOQuery2.FieldByName('Apellido').AsString;
          DBGrid2.Visible:= false;
          usuario:= form3.ADOQuery2.FieldByName('Id_Autor').AsInteger ;
          form3.ADOAUTOR.Locate('Id_Autor',usuario,[]);
          edit1.Text:= form3.ADOQuery2.FieldByName('Nombre').AsString;
          edit2.Text:= form3.ADOQuery2.FieldByName('Apellido').AsString;
      end
      else
      begin
          nombre:= form3.ADOAUTOR.FieldByName('Nombre').AsString;
          apellido:= form3.ADOAUTOR.FieldByName('Apellido').AsString;
          edit1.Text:= form3.ADOAUTOR.FieldByName('Nombre').AsString;
          edit2.Text:= form3.ADOAUTOR.FieldByName('Apellido').AsString;
      end;
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
 form13.ok:= false;
 form13.Label1.Caption:= 'Esta seguro de eliminar el autor?';
 form13.ShowModal;
 if form13.ok then
    begin
    if not(DBGrid2.Visible) then
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
           edit3.Text:= '';
           button1.Enabled:= true;
        end
      else
          messagedlg('El autor posee libros asociados. No puede eliminarse!!',mtinformation,[mbok],0);
    end
    else
    begin
      id:= form3.ADOQuery2.FieldByName('Id_Autor').AsInteger;
      if not(Form3.ADOLIBRO.Locate('Id_Autor',id,[])) then
        begin
          form3.ADOAUTOR.Locate('Id_Autor',id,[]);
          form3.ADOAUTOR.edit;
          form3.ADOAUTOR.FieldByName('Eliminado').AsBoolean:= true;
          Form3.ADOAUTOR.Post;
          form3.ADOautor.Close;
          form3.ADOautor.Filter:= 'Eliminado = false' ;
          form3.ADOautor.Filtered:= true;
          form3.ADOautor.Open;
          DBGrid2.Visible:= false;
          DBGrid1.Refresh;
          DBGrid1.Visible:= true;
          messagedlg('El autor se elimino exitosamente!!',mtinformation,[mbok],0);
          button3.Enabled:= false;
          button2.Enabled:= false;
          edit3.Text:= '';
          button1.Enabled:= true;
        end
      else
          messagedlg('El autor posee libros asociados. No puede eliminarse!!',mtinformation,[mbok],0);
    end;
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
      if not(edit1.Text= '')and not(edit2.Text='') then
      begin
          if not(form3.ADOAUTOR.Locate('Nombre;Apellido',vararrayof([Edit1.Text,edit2.Text]),[])) then
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
                  button2.Enabled:= false;
                  button3.Enabled:= false;
                  button1.Enabled:= true;
                  dbgrid1.Enabled:= true;
              end
              else
               begin
                  messagedlg('El autor ya exite!!',mtwarning, [mbok],0);
                  edit1.Text:= '';
                  edit2.Text:='';
               end;
      end
      else
            messagedlg('Ingrese los campos obligatorios!!',mtwarning, [mbok],0);
end
else
    if not(edit1.Text= '')and not(edit2.Text='') then
    begin
        if not(edit1.Text = nombre) or not(edit2.Text = apellido) then
        begin
            if not(form3.ADOAUTOR.Locate('Nombre;Apellido',vararrayof([Edit1.Text,edit2.Text]),[])) then
            begin
                form3.ADOAUTOR.Edit;
                form3.ADOAUTOR.fieldbyname('Nombre').asString := Edit1.Text;
                form3.ADOAUTOR.fieldbyname('Apellido').asString := Edit2.Text;
                form3.ADOAUTOR.Post;
                messagedlg('El autor se modifico exitosamente!!',mtinformation,[mbok],0);
                form3.adoautor.Close;
                form3.ADOAUTOR.Open;

            end
            else
                messagedlg('El autor ya exite!!',mtwarning, [mbok],0);
        end;
    end
    else
    messagedlg('Ingrese los campos obligatorios!!',mtwarning, [mbok],0);
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

procedure TForm8.Button7Click(Sender: TObject);
begin
{if (not(edit3.Text = '') and not(edit4.Text = '')) then
begin
    form3.ADOAUTOR.Close;
    form3.ADOAUTOR.Filtered:= false;
    form3.ADOAUTOR.Filter:= 'Nombre = ' + Quotedstr(edit3.Text)+' and Apellido = '+ Quotedstr(edit4.Text)+' and Eliminado = false';
    form3.ADOAUTOR.Filtered:= true;
    form3.ADOAUTOR.Open;
    DBGrid1.Refresh;
end
else
begin
  if (not(edit3.Text = '') and (edit4.Text = '')) then
      begin
            form3.ADOAUTOR.Close;
            form3.ADOAUTOR.Filtered:= false;
            form3.ADOAUTOR.Filter:= 'Nombre = ' + Quotedstr(edit3.Text)+' and Eliminado = false';
            form3.ADOAUTOR.Filtered:= true;
            form3.ADOAUTOR.Open;
            DBGrid1.Refresh;
      end
      else
      begin
        if ((edit3.Text = '') and not(edit4.Text = '')) then
          begin
              form3.ADOAUTOR.Close;
              form3.ADOAUTOR.Filtered:= false;
              form3.ADOAUTOR.Filter:= 'Apellido = '+ Quotedstr(edit4.Text)+' and Eliminado = false';
              form3.ADOAUTOR.Filtered:= true;
              form3.ADOAUTOR.Open;
              DBGrid1.Refresh;
          end
          else
          messagedlg('Ingrese un nombre y/o un apellido!!',mtinformation,[mbok],0);
      end;
end;}
end;

procedure TForm8.Button8Click(Sender: TObject);
begin
  DBGrid2.Visible:= FALSE;
  edit3.Text:='INGRESE AUTOR';
  EDIT3.Font.Color:= clsilver;
  edit1.Text:='';
  edit2.Text:='';
  button1.Enabled:= true;

end;

procedure TForm8.DBGrid1CellClick(Column: TColumn);
begin
button2.Enabled:= true;
button3.Enabled:= true;
button1.Enabled:= false;
end;

procedure TForm8.DBGrid1TitleClick(Column: TColumn);
begin
if column.Title.Caption= 'Nombre' then
 begin
  form3.ADOAUTOR.IndexFieldNames:= 'Nombre';
 end;
if column.Title.Caption= 'Apellido' then
 begin
   form3.ADOAUTOR.IndexFieldNames:= 'Apellido';
 end;
end;

procedure TForm8.DBGrid2CellClick(Column: TColumn);
begin
    button2.Enabled:= true;
    button3.Enabled:= true;
    button1.Enabled:= false;
end;

procedure TForm8.Edit1KeyPress(Sender: TObject; var Key: Char);
begin
  if not(key in ['A'..'Z',#08,'a'..'z',#32]) then
    key := #0;
end;

procedure TForm8.Edit2KeyPress(Sender: TObject; var Key: Char);
begin
  if not(key in ['A'..'Z',#08,'a'..'z',#32]) then
    key := #0;
end;

procedure TForm8.Edit3Change(Sender: TObject);
begin
form3.ADOQuery2.Close;
form3.ADOQuery2.Parameters.ParamByName('par1').Value:= edit3.Text;
form3.ADOQuery2.Parameters.ParamByName('par2').Value:= edit3.Text;
form3.ADOQuery2.Open;
end;

procedure TForm8.Edit3Click(Sender: TObject);
begin
ediT3.Text:='';
edit3.Font.Color:= clblack;
DBGrid2.Visible:= true;
end;

procedure TForm8.Edit3KeyPress(Sender: TObject; var Key: Char);
begin
  if not(key in ['A'..'Z',#08,'a'..'z',#32]) then
    key := #0;
end;

procedure TForm8.Edit4KeyPress(Sender: TObject; var Key: Char);
begin
  if not(key in ['A'..'Z',#08,'a'..'z',#32]) then
    key := #0;
end;

end.
