unit Unit13;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Grids, DBGrids;

type
  TForm13 = class(TForm)
    DBGrid1: TDBGrid;
    Label2: TLabel;
    Edit1: TEdit;
    Button1: TButton;
    Label1: TLabel;
    Edit2: TEdit;
    Label3: TLabel;
    Button2: TButton;
    procedure Button1Click(Sender: TObject);
    procedure DBGrid1TitleClick(Column: TColumn);
    procedure Button2Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form13: TForm13;

implementation

uses Unit3;

{$R *.dfm}

procedure TForm13.Button1Click(Sender: TObject);
begin
//loCaseInsensitive,loPartialKey
if (not(edit1.Text = '') and not(edit2.Text = '')) then
begin
    form3.ADOAUTOR.Close;
    form3.ADOAUTOR.Filtered:= false;
    form3.ADOAUTOR.Filter:= 'Nombre = ' + Quotedstr(edit1.Text)+' and Apellido = '+ Quotedstr(edit2.Text)+' and Eliminado = false';
    form3.ADOAUTOR.Filtered:= true;
    form3.ADOAUTOR.Open;
    DBGrid1.Refresh;
end
else
begin
  if (not(edit1.Text = '') and (edit2.Text = '')) then
      begin
            form3.ADOAUTOR.Close;
            form3.ADOAUTOR.Filtered:= false;
            form3.ADOAUTOR.Filter:= 'Nombre = ' + Quotedstr(edit1.Text)+' and Eliminado = false';
            form3.ADOAUTOR.Filtered:= true;
            form3.ADOAUTOR.Open;
            DBGrid1.Refresh;
      end
      else
      begin
        if ((edit1.Text = '') and not(edit2.Text = '')) then
          begin
              form3.ADOAUTOR.Close;
              form3.ADOAUTOR.Filtered:= false;
              form3.ADOAUTOR.Filter:= 'Apellido = '+ Quotedstr(edit2.Text)+' and Eliminado = false';
              form3.ADOAUTOR.Filtered:= true;
              form3.ADOAUTOR.Open;
              DBGrid1.Refresh;
          end
          else
          messagedlg('Ingrese un nombre y/o un apellido!!',mtinformation,[mbok],0);
      end;
end;
end;

procedure TForm13.Button2Click(Sender: TObject);
begin
  form3.ADOAUTOR.Close;
  form3.ADOAUTOR.Filtered:= false;
  form3.ADOAUTOR.Filter:= 'Eliminado = false';
  form3.ADOAUTOR.Filtered:= true;
  form3.ADOAUTOR.Open;
  DBGrid1.Refresh;
  edit1.Text:='';
  edit2.Text:='';
end;

procedure TForm13.DBGrid1TitleClick(Column: TColumn);
begin
if column.Title.Caption= 'Nombre' then
 begin
  form3.ADOAUTOR.IndexFieldNames:= 'Nombre';
 end;
if column.Title.Caption= 'Apellido' then
 begin
   form3.ADOautor.IndexFieldNames:= 'Apellido';
 end;
end;

end.
