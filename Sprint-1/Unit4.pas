unit Unit4;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DBCtrls, StdCtrls, ExtCtrls;

type
  TForm4 = class(TForm)
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    Label7: TLabel;
    Label8: TLabel;
    Edit1: TEdit;
    Edit2: TEdit;
    Edit3: TEdit;
    Edit4: TEdit;
    Edit5: TEdit;
    Edit6: TEdit;
    Edit7: TEdit;
    Edit8: TEdit;
    Button1: TButton;
    Label13: TLabel;
    Label14: TLabel;
    Label15: TLabel;
    Label16: TLabel;
    Label17: TLabel;
    Label18: TLabel;
    Label19: TLabel;
    Label21: TLabel;
    Edit11: TEdit;
    Label22: TLabel;
    Label23: TLabel;
    Label24: TLabel;
    Edit12: TEdit;
    Edit13: TEdit;
    Button2: TButton;
    Label25: TLabel;
    Label26: TLabel;
    Label9: TLabel;
    Edit9: TEdit;
    Label12: TLabel;
    Button3: TButton;
    Button4: TButton;
    Button5: TButton;
    Button6: TButton;
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure Edit12KeyPress(Sender: TObject; var Key: Char);
    procedure Edit13KeyPress(Sender: TObject; var Key: Char);
    procedure Button3Click(Sender: TObject);
    procedure Button4Click(Sender: TObject);
    procedure Button6Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form4: TForm4;

implementation

uses Unit3, Unit1;

{$R *.dfm}

procedure TForm4.Button1Click(Sender: TObject);
begin
if (not(edit1.Text = '') and not(edit2.Text = '') and not(edit3.Text = '')
and not(edit4.Text = '') and not(edit5.Text = '') and not(edit8.Text = '')
and not(edit9.Text = '') and not(edit11.Text = '')and
not(edit12.Text = '')and not(edit13.Text = '')) then
begin
   if (length (edit9.Text) = 10) then
   begin
       form3.ADOCLIENTE.Open;
       form3.ADOUSUARIO.Open;
       form3.ADOUSUARIO.Append;
       form3.ADOCLIENTE.Append;
       form3.ADOCLIENTE.fieldbyname('Nombre').asString := Edit1.Text;
       form3.ADOCLIENTE.fieldbyname('Apellido').asSTring := Edit2.Text;
       form3.ADOCLIENTE.fieldbyname('Codigo_Postal').asInteger := strtoint(Edit3.Text);
       form3.ADOCLIENTE.fieldbyname('Calle').asString := Edit4.Text;
       form3.ADOCLIENTE.fieldbyname('Numero').asInteger := strtoint(Edit5.Text);
       if edit6.Text = '' then
        form3.ADOCLIENTE.fieldbyname('Piso').asstring := '0'
       else
         form3.ADOCLIENTE.fieldbyname('Piso').asstring := (Edit6.Text);
       if edit7.Text = '' then
         form3.ADOCLIENTE.fieldbyname('Depto').asstring := '0'
       else
         form3.ADOCLIENTE.fieldbyname('Depto').asstring := (Edit7.Text);
       form3.ADOCLIENTE.fieldbyname('Localidad').asString := Edit8.Text;
       form3.ADOCLIENTE.fieldbyname('Provincia').asString := Edit11.Text;
       form3.ADOCLIENTE.fieldbyname('Tarjeta').asInteger := strtoint(Edit9.Text);
       form3.ADOCLIENTE.fieldbyname('Fecha_de_alta').AsDateTime := date();
       form3.ADOUSUARIO.fieldbyname('UsuArio').Asstring := edit12.Text;
       form3.ADOUSUARIO.fieldbyname('Contraseña').Asstring := edit13.Text;
       form3.ADOCLIENTE.POST;
       form3.ADOUSUARIO.FieldByName('Id_Cliente').AsInteger:= form3.ADOCLIENTE.FieldByName('Id_Cliente').AsInteger;
       form3.ADOUSUARIO.Post;
       messagedlg('Se ha registrado exitosamente!!',mtinformation,[mbok],0);
       edit1.Text:= '';
       edit2.Text:= '';
       edit3.Text:= '';
       edit4.Text:= '';
       edit5.Text:= '';
       edit6.Text:= '';
       edit7.Text:= '';
       edit8.Text:= '';
       edit9.Text:= '';
       edit11.Text:= '';
       edit12.Text:= '';
       edit13.Text:= '';
       form3.ADOCLIENTE.Close;
       form3.ADOCLIENTE.Open;
       form3.ADOUSUARIO.Close;
       form3.ADOUSUARIO.Open;
       form1.edit1.Visible:= false;
       form1.edit2.Visible:= false;
       form1.label6.Visible:= false;
       form1.label7.Visible:= false;
       form1.button1.Visible:= false;
       form1.label2.Visible:= false;
       form1.label3.Visible:= false;
       form1.button2.Visible:= false;
       form1.label4.Visible:= true;
       form1.label5.Visible:= true;
       form4.Close;
   end
   else
     messagedlg('Ingrese nuevamente numero de tarjeta(10 digitos)!!',mtinformation,[mbok],0);
end
else
 messagedlg('Ingrese los datos obligatorios!!',mtinformation,[mbok],0);
end;

procedure TForm4.Button2Click(Sender: TObject);
begin
if not(edit12.Text = '') then
begin
    form3.ADOUSUARIO.Open;
    if(form3.ADOUSUARIO.locate('Usuario',edit12.Text,[])) then
    begin
       messagedlg('Usuario no disponible!!',mtinformation,[mbok],0);
       edit12.Text:='';
    end
    else
       messagedlg('Usuario disponible!!',mtinformation,[mbok],0);
    form3.ADOUSUARIO.Close;
    end
else
   messagedlg('Ingrese un usuario!!',mtinformation,[mbok],0);
end;

procedure TForm4.Button3Click(Sender: TObject);
begin
form3.ADOCLIENTE.Edit;
if (not(edit1.Text = '') and not(edit2.Text = '') and not(edit3.Text = '')
and not(edit4.Text = '') and not(edit5.Text = '') and not(edit8.Text = '')
and not(edit9.Text = '') and not(edit11.Text = '')) then
begin
   if (length (edit9.Text) = 8) then
   begin
          form3.ADOCLIENTE.fieldbyname('Nombre').asString := Edit1.Text;
          form3.ADOCLIENTE.fieldbyname('Apellido').asSTring := Edit2.Text;
          form3.ADOCLIENTE.fieldbyname('Codigo_Postal').asInteger := strtoint(Edit3.Text);
          form3.ADOCLIENTE.fieldbyname('Calle').asString := Edit4.Text;
          form3.ADOCLIENTE.fieldbyname('Numero').asInteger := strtoint(Edit5.Text);
          if edit6.Text = '' then
            form3.ADOCLIENTE.fieldbyname('Piso').asstring := '0'
          else
            form3.ADOCLIENTE.fieldbyname('Piso').asstring := (Edit6.Text);
          if edit7.Text = '' then
            form3.ADOCLIENTE.fieldbyname('Depto').asstring := '0'
          else
            form3.ADOCLIENTE.fieldbyname('Depto').asstring := (Edit7.Text);
          form3.ADOCLIENTE.fieldbyname('Localidad').asString := Edit8.Text;
          form3.ADOCLIENTE.fieldbyname('Provincia').asString := Edit11.Text;
          form3.ADOCLIENTE.fieldbyname('Tarjeta').AsLargeInt := strtoint(Edit9.Text);
          form3.ADOCLIENTE.Post;
          messagedlg('Se han modificado sus datos exitosamente!!',mtinformation,[mbok],0);
   end
      else
     messagedlg('Ingrese nuevamente numero de tarjeta(10 digitos)!!',mtinformation,[mbok],0);
end
else
 messagedlg('Ingrese los datos obligatorios!!',mtinformation,[mbok],0);
end;

procedure TForm4.Button4Click(Sender: TObject);
begin
  if messagedlg('Esta seguro de eliminar su cuenta?',mtwarning,[mbyes,mbno],0) = mryes then
   begin
    form3.ADOUSUARIO.edit;
    form3.ADOUSUARIO.FieldByName('Eliminado').AsBoolean:= true;
    form3.ADOUSUARIO.Post;
    form3.ADOusuario.Close;
    form3.ADOusuario.Filter:= 'Eliminado = true';
    form3.ADOusuario.Filtered:= true;
    form3.ADOusuario.Open;
    form3.ADOCLIENTE.edit;
    form3.ADOCLIENTE.FieldByName('Eliminado').AsBoolean:= true;
    form3.ADOCLIENTE.Post;
    form3.ADOcliente.Close;
    form3.ADOcliente.Filter:= 'Eliminado = true';
    form3.ADOcliente.Filtered:= true;
    form3.ADOcliente.Open;
    messagedlg('Su cuenta se elimino correctamente',mtinformation,[mbok],0);
    edit1.Text:= '';
    edit2.Text:= '';
    edit3.Text:= '';
    edit4.Text:= '';
    edit5.Text:= '';
    edit6.Text:= '';
    edit7.Text:= '';
    edit8.Text:= '';
    edit9.Text:= '';
    edit11.Text:= '';
    edit12.Text:= '';
    edit13.Text:= '';
    form3.ADOCLIENTE.Close;
    form3.ADOCLIENTE.Open;
    form3.ADOUSUARIO.Close;
    form3.ADOUSUARIO.Open;
    form1.edit1.Visible:= false;
    form1.edit2.Visible:= false;
    form1.label6.Visible:= false;
    form1.label7.Visible:= false;
    form1.button1.Visible:= false;
    form1.label2.Visible:= false;
    form1.label3.Visible:= false;
    form1.button2.Visible:= false;
    form1.label4.Visible:= true;
    form1.label5.Visible:= true;
    form1.edit1.Visible:= true;
    form1.edit2.Visible:= true;
    form1.label6.Visible:= true;
    form1.label7.Visible:= true;
    form1.button1.Visible:= true;
    form1.label2.Visible:= true;
    form1.label3.Visible:= true;
    form1.button2.Visible:= true;
    form1.label4.Visible:= false;
    form1.label5.Visible:= false;
    form4.Close;
   end;
end;

procedure TForm4.Button6Click(Sender: TObject);
begin
form3.ADOCLIENTE.Cancel;
form4.Close;
end;

procedure TForm4.Edit12KeyPress(Sender: TObject; var Key: Char);
begin
if key = ' ' then
 Key := #0;
end;

procedure TForm4.Edit13KeyPress(Sender: TObject; var Key: Char);
begin
if key = ' ' then
 Key := #0;
end;

procedure TForm4.FormClose(Sender: TObject; var Action: TCloseAction);
begin
       edit1.Text:= '';
       edit2.Text:= '';
       edit3.Text:= '';
       edit4.Text:= '';
       edit5.Text:= '';
       edit6.Text:= '';
       edit7.Text:= '';
       edit8.Text:= '';
       edit9.Text:= '';
       edit11.Text:= '';
       edit12.Text:= '';
       edit13.Text:= '';
       form3.ADOCLIENTE.Close;
       form3.ADOCLIENTE.Open;
       form3.ADOUSUARIO.Close;
       form3.ADOUSUARIO.Open;
       form4.button3.visible:= false;
       form4.button4.visible:= false;
       form4.button5.visible:= false;
       form4.button6.visible:= false;
end;

end.
