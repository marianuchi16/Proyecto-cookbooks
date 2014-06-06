unit Unit1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, jpeg, StdCtrls, Buttons, ComCtrls, Menus, Grids, DBGrids;

type
  TForm1 = class(TForm)
    Image1: TImage;
    Panel1: TPanel;
    Label4: TLabel;
    Label5: TLabel;
    Edit1: TEdit;
    Label6: TLabel;
    Label7: TLabel;
    Edit2: TEdit;
    Button1: TButton;
    Label3: TLabel;
    Button2: TButton;
    Label2: TLabel;
    Label8: TLabel;
    Label9: TLabel;
    Label10: TLabel;
    Memo1: TMemo;
    Label11: TLabel;
    Edit3: TEdit;
    BitBtn1: TBitBtn;
    ComboBox1: TComboBox;
    Panel3: TPanel;
    Image2: TImage;
    Button3: TButton;
    DBGrid1: TDBGrid;
    BitBtn2: TBitBtn;
    ComboBox2: TComboBox;
    Label1: TLabel;
    Label12: TLabel;
    Label13: TLabel;
    Edit4: TEdit;
    Edit5: TEdit;
    procedure Label3Click(Sender: TObject);
    procedure Label2MouseEnter(Sender: TObject);
    procedure Label2MouseLeave(Sender: TObject);
    procedure Label8MouseEnter(Sender: TObject);
    procedure Label10MouseLeave(Sender: TObject);
    procedure Label8MouseLeave(Sender: TObject);
    procedure Label9MouseEnter(Sender: TObject);
    procedure Label9MouseLeave(Sender: TObject);
    procedure Label10MouseEnter(Sender: TObject);
    procedure Label2Click(Sender: TObject);
    procedure Label11Click(Sender: TObject);
    procedure Label8Click(Sender: TObject);
    procedure Button4Click(Sender: TObject);
    procedure Label9Click(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure Label5Click(Sender: TObject);
    procedure Edit1KeyPress(Sender: TObject; var Key: Char);
    procedure Edit2KeyPress(Sender: TObject; var Key: Char);
    procedure Button2Click(Sender: TObject);
    procedure Label4Click(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure ComboBox1Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
    procedure Label10Click(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
    procedure DBGrid1CellClick(Column: TColumn);
  private
    { Private declarations }
    usu: string;
    usuario: integer;
    a,b: integer;
    asua:integer;
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

uses Unit2, Unit4, Unit3, Unit5, Unit6, Unit7, Unit10, Unit12;

{$R *.dfm}



procedure TForm1.BitBtn1Click(Sender: TObject);
begin
if (edit3.Visible) then
begin
       if not(edit3.Text = '') then
        begin
          if  combobox1.ItemIndex = 1 then
            begin
            //form3.ADOLIBRO.Locate('Nombre', edit1.Text,[]);
            form3.ADOLIBRO.Close;
            form3.ADOLIBRO.Filter:= 'Nombre = ' + Quotedstr(edit3.Text);
            form3.ADOLIBRO.Filtered:= true;
            form3.ADOLIBRO.Open;
            form1.DBgrid1.refresh;
            edit3.Text:= '';
            bitbtn1.Enabled:= false;
            combobox1.ItemIndex:= -1;
            end
       end
       else
         messagedlg('Ingrese un titulo o un autor!!!',mtinformation,[mbok],0) ;
end
else
begin
 if combobox1.ItemIndex = 0 then
          begin
                if (not(edit4.Text = '') and not(edit5.Text = '')) then
                    begin
                        form3.ADOAUTOR.Close;
                        form3.ADOAUTOR.Filtered:= false;
                        form3.ADOAUTOR.Filter:= 'Nombre = ' + Quotedstr(edit4.Text)+' and Apellido = '+ Quotedstr(edit5.Text)+' and Eliminado = false';
                        form3.ADOAUTOR.Filtered:= true;
                        form3.ADOAUTOR.Open;
                        asua:= form3.ADOAUTOR.FieldByName('Id_Autor').AsInteger;
                        if form3.ADOLIBRO.Locate('Id_Autor', asua,[])then
                           begin
                            form3.ADOLIBRO.Close;
                            form3.ADOLIBRO.Filtered:= false;
                            form3.ADOLIBRO.Filter:= 'Id_Autor = '+ Quotedstr(inttostr(asua));
                            form3.ADOLIBRO.Filtered:= true;
                            form3.ADOLIBRO.Open;
                            DBGrid1.Refresh;
                            edit4.Text:= '';
                            edit5.Text:='';
                            edit4.Visible:= false;
                            edit5.Visible:= false;
                            label12.Visible:= false;
                            label13.Visible:= false;
                            edit3.Visible:= true;
                            combobox1.ItemIndex:= -1;
                            bitbtn1.Enabled:= false;
                           end;
                    end
                    else
                              messagedlg('Ingrese un nombre y/o un apellido!!',mtinformation,[mbok],0);
          end;
if combobox1.ItemIndex = 2 then
        begin
          if combobox2.ItemIndex = 0 then
            begin
              a:= 0; b:= 99;
            end;
          if combobox2.ItemIndex = 1 then
             begin
               a:= 100; b:= 199;
             end;
          if combobox2.ItemIndex = 2 then
              begin
                a:= 200; b:= 1000;
          end;
          if combobox2.ItemIndex = -1 then
            messagedlg('seleccione un rango!!!',mtinformation,[mbok],0)
          else
          begin
             buscar(a,b);
             combobox2.ItemIndex:=-1;
             edit3.Visible:= true;
             combobox1.ItemIndex:= -1;
             bitbtn1.Enabled:= false;
             combobox2.ItemIndex:= -1;
             combobox2.Visible:= false;
          end;
        end;
end;
end;

procedure TForm1.BitBtn2Click(Sender: TObject);
begin
     form3.ADOLIBRO.Close;
     form3.ADOLIBRO.Filtered:= false;
     form3.ADOLIBRO.Open;
     form1.DBgrid1.refresh;
end;

procedure TForm1.Button1Click(Sender: TObject);
begin
form3.ADOUSUARIO.Open;
usu:= (edit1.Text);
if ((edit1.Text= 'admin') and (edit2.Text= 'admin')) then
begin
 form7.ShowModal;
 form1.WindowState:= wsminimized;
end
else
begin

if (not(edit1.Text = '') and not(edit2.Text = '')) then
begin
  if (form3.ADOUSUARIO.Locate('Usuario',usu,[])) then
   begin
      if(form3.ADOUSUARIO.FieldByName('Contraseña').AsString = edit2.Text) then
       begin
          edit1.Visible:= false;
          edit2.Visible:= false;
          label6.Visible:= false;
          label7.Visible:= false;
          button1.Visible:= false;
          label2.Visible:= false;
          label3.Visible:= false;
          button2.Visible:= false;
          label4.Visible:= true;
          label5.Visible:= true;
       end
      else
        messagedlg('Usuario o Contraseña Incorrecta. Vuelva a ingrasarlas',mtinformation,[mbok],0);
        edit1.Text:='';
        edit2.Text:= '';
       end
  else
   messagedlg('No se encuentra registrado',mtinformation,[mbok],0);
   edit1.Text:='';
   edit2.Text:= '';
  end
else
   messagedlg('Complete todos los campos!!',mtinformation,[mbok],0);
end;
end;

procedure TForm1.Button2Click(Sender: TObject);
begin
form4.ShowModal;
end;

procedure TForm1.Button3Click(Sender: TObject);
begin
  form5.ShowModal
end;

procedure TForm1.Button4Click(Sender: TObject);
begin
form4.showmodal;
end;

procedure TForm1.ComboBox1Click(Sender: TObject);
begin
if ((combobox1.ItemIndex = 0) or (combobox1.ItemIndex = 1) or (combobox1.ItemIndex = 2)) then
    bitbtn1.Enabled:= true;
    if combobox1.ItemIndex = 0 then
       begin
         edit4.Visible:= true;
         edit5.Visible:= true;
         label12.Visible:= true;
         label13.Visible:= true;
         edit3.Visible:= false;
         combobox2.Visible:= false;
       end;
    if (combobox1.ItemIndex = 1) then
       begin
         edit3.Visible:= true;
         combobox2.Visible:= false;
         form3.ADOLIBRO.Close;
         form3.ADOLIBRO.Filtered:= false;
         form3.ADOLIBRO.Open;
         form1.DBgrid1.refresh;
         edit4.Visible:= false;
         edit5.Visible:= false;
         label12.Visible:= false;
         label13.Visible:= false;
         combobox2.Visible:= false;
       end;
if combobox1.ItemIndex = 2 then
begin
  edit3.Visible:= false;
  edit4.Visible:= false;
  edit5.Visible:= false;
  label12.Visible:= false;
  label13.Visible:= false;
  combobox2.Visible:= true;
end;
end;

procedure TForm1.DBGrid1CellClick(Column: TColumn);
begin
form10.Image1.Picture.LoadFromFile('C:\Users\Huertas\Downloads\libro1.bmp');
form10.ShowModal;
end;

procedure TForm1.Edit1KeyPress(Sender: TObject; var Key: Char);
begin
if key = ' ' then
 Key := #0;
end;

procedure TForm1.Edit2KeyPress(Sender: TObject; var Key: Char);
begin
if key = ' ' then
 Key := #0;
end;

procedure TForm1.Label10Click(Sender: TObject);
begin
  form6.showmodal;
end;

procedure TForm1.Label10MouseEnter(Sender: TObject);
begin
 label10.font.Color:= clBlue;
 label10.Cursor:= crHandPoint;
end;

procedure TForm1.Label10MouseLeave(Sender: TObject);
begin
label10.Font.Color:= clblack;
end;

procedure TForm1.Label11Click(Sender: TObject);
begin
 memo1.Visible:= false;
 label11.Visible:= false;
end;

procedure TForm1.Label2Click(Sender: TObject);
begin
 memo1.Visible:= true;
 label11.Visible:= true;
end;

procedure TForm1.Label2MouseEnter(Sender: TObject);
begin
label2.font.Color:= clBlue;
label2.Cursor:= crHandPoint;
end;

procedure TForm1.Label2MouseLeave(Sender: TObject);
begin
label2.font.Color:= clBlack;
end;

procedure TForm1.Label3Click(Sender: TObject);
begin
form2.ShowModal;
end;

procedure TForm1.Label4Click(Sender: TObject);
begin
usuario:= form3.ADOUSUARIO.FieldByName('Id_Cliente').AsInteger;
form3.ADOCLIENTE.Locate('Id_Cliente',usuario,[]);
form4.edit1.Text:= form3.ADOCLIENTE.FieldByName('Nombre').AsString;
form4.edit2.Text:= form3.ADOCLIENTE.FieldByName('Apellido').AsString;
form4.edit3.Text:= form3.ADOCLIENTE.FieldByName('Codigo_Postal').AsString;
form4.edit4.Text:= form3.ADOCLIENTE.FieldByName('Calle').AsString;
form4.edit5.Text:= form3.ADOCLIENTE.FieldByName('Numero').AsString;
form4.edit6.Text:= form3.ADOCLIENTE.FieldByName('Piso').AsString;
form4.edit7.Text:= form3.ADOCLIENTE.FieldByName('Depto').AsString;
form4.edit8.Text:= form3.ADOCLIENTE.FieldByName('Localidad').AsString;
form4.edit11.Text:= form3.ADOCLIENTE.FieldByName('Provincia').AsString;
form4.edit9.Text:= form3.ADOCLIENTE.FieldByName('Tarjeta').AsString;
form4.Label23.Visible:= false;
form4.Label24.Visible:= false;
form4.Label25.Visible:= false;
form4.Label26.Visible:= false;
form4.Edit12.Visible:= false;
form4.Edit13.Visible:= false;
form4.Button2.Visible:= false;
form4.button3.visible:= true;
form4.button4.visible:= true;
form4.button5.visible:= true;
form4.button6.visible:= true;
form4.label12.Visible := False;
form4.button1.Visible := False;
form4.ShowModal;
end;

procedure TForm1.Label5Click(Sender: TObject);
begin
          edit1.Visible:= true;
          edit2.Visible:= true;
          label6.Visible:= true;
          label7.Visible:= true;
          button1.Visible:= true;
          label2.Visible:= true;
          label3.Visible:= true;
          button2.Visible:= true;
          label4.Visible:= false;
          label5.Visible:= false;
          edit1.Text:='';
          edit2.Text:='';
end;

procedure TForm1.Label8Click(Sender: TObject);
begin
form2.Memo1.Visible:= true;
form2.ShowModal
end;

procedure TForm1.Label8MouseEnter(Sender: TObject);
begin
label8.font.Color:= clBlue;
label8.Cursor:= crHandPoint;
end;

procedure TForm1.Label8MouseLeave(Sender: TObject);
begin
label8.Font.Color:= clBlack;

end;
procedure TForm1.Label9Click(Sender: TObject);
begin
form2.Caption:= 'Contactenos';
form2.Memo2.Visible:= true;
form2.ShowModal;
form2.Caption:= 'Acerca de';
end;

procedure TForm1.Label9MouseEnter(Sender: TObject);
begin
label9.font.Color:= clBlue;
label9.Cursor:= crHandPoint;
end;

procedure TForm1.Label9MouseLeave(Sender: TObject);
begin
label9.Font.Color:= clBlack;

end;
end.
