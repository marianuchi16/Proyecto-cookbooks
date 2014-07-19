unit Unit1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, jpeg, StdCtrls, Buttons, ComCtrls, Menus, Grids, DBGrids,
  DBCtrls;

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
    Edit4: TEdit;
    Button4: TButton;
    Button5: TButton;
    Button6: TButton;
    Button7: TButton;
    Button8: TButton;
    DBGrid2: TDBGrid;
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
    procedure Button2Cick(Sender: TObject);
    procedure Label4Click(Sender: TObject);
    procedure BitBtn1Click(Sender: TObject);
    procedure ComboBox1Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
    procedure Label10Click(Sender: TObject);
    procedure BitBtn2Click(Sender: TObject);
    procedure DBGrid1CellClick(Column: TColumn);
    procedure Button7Click(Sender: TObject);
    procedure Button5Click(Sender: TObject);
    procedure Button6Click(Sender: TObject);
    procedure Button8Click(Sender: TObject);
    procedure Edit4Change(Sender: TObject);
    procedure DBGrid2CellClick(Column: TColumn);
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

uses Unit2, Unit4, Unit3, Unit5, Unit6, Unit7, Unit10, Unit12, Unit8, Unit9,
  Unit11, Unit16;

{$R *.dfm}



procedure TForm1.BitBtn1Click(Sender: TObject);
begin

if (edit3.Visible) then
begin
       if not(edit3.Text = '') then
        begin
          {if  combobox1.ItemIndex = 1 then
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
            end}
            form1.DBGrid2.DataSource:= form3.DataSource7;
            form3.ADOQuery7.Close;
            form3.ADOQuery7.Parameters.ParamByName('par1').Value:= edit3.Text;
            form3.ADOQuery7.Open;
            form1.DBGrid2.Visible:= true;
            form1.DBGrid1.Visible:= false;
       end
       else
         messagedlg('Ingrese un titulo o un autor!!!',mtinformation,[mbok],0) ;
end
else
begin
 if combobox1.ItemIndex = 0 then
          begin
          form1.DBGrid1.Visible:= false;
          form1.DBGrid2.Refresh;
          form1.DBGrid2.Visible:= true;
          form3.ADOQuery6.Close;
          form3.ADOQuery6.Parameters.ParamByName('par1').Value:= edit4.Text;
          form3.ADOQuery6.Parameters.ParamByName('par2').Value:= edit4.Text;
          form3.ADOQuery6.Open;
              { if (not(edit4.Text = '')) then
                    begin
                        form3.ADOAUTOR.Close;
                        form3.ADOAUTOR.Filtered:= false;
                        form3.ADOAUTOR.Filter:= 'Nombre = ' + Quotedstr(edit4.Text)+' and Eliminado = false';
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

                            edit4.Visible:= false;

                            label12.Visible:= false;

                            edit3.Visible:= true;
                            combobox1.ItemIndex:= -1;
                            bitbtn1.Enabled:= false;
                           end;
                    end
                    else
                              messagedlg('Ingrese un nombre y/o un apellido!!',mtinformation,[mbok],0);}

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
             DBGrid1.Visible:= true;
             form1.DBGrid2.Visible:= false;
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
  edit3.Text:= '';
  edit4.Text:= '';
end;

procedure TForm1.BitBtn2Click(Sender: TObject);
begin
     form3.ADOLIBRO.Close;
     form3.ADOLIBRO.Filtered:= false;
     form3.ADOLIBRO.Open;
     form1.DBgrid1.refresh;
     form1.DBGrid2.Visible:= false;
     form1.DBGrid1.Visible:= true;
     edit3.Text:= '';
     edit4.Text:= '';
end;

procedure TForm1.Button1Click(Sender: TObject);
begin
form3.ADOUSUARIO.Close;
form3.ADOUSUARIO.Open;
usu:= (edit1.Text);
{if ((edit1.Text= 'ADMIN') and (edit2.Text= 'ADMIN')) then
begin
  inicioadmin();
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
begin }

if (not(edit1.Text = '') and not(edit2.Text = '')) then
begin
  if (form3.ADOUSUARIO.Locate('Usuario',usu,[]))  then
   begin
      if  not(form3.ADOUSUARIO.FieldByName('Eliminado').AsBoolean = true) then
      begin
          if(form3.ADOUSUARIO.FieldByName('Contraseņa').AsString = edit2.Text) then
          begin
              if FORM3.ADOUSUARIO.FieldByName('Id_Cliente').AsInteger = 1 then
              begin
                  inicioadmin();
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
                  form6.Image1.Visible:= false;
                  form6.Image2.Visible:= true;
              end;
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
              panel3.Visible:= true;
              form4.id:= form3.ADOUSUARIO.FieldByName('Id_Cliente').AsInteger;
              form5.ID:= form3.ADOUSUARIO.FieldByName('Id_Cliente').AsInteger;
          end
          else
          begin
            messagedlg('Usuario o Contraseņa Incorrecta. Vuelva a ingresarlas',mtinformation,[mbok],0);
            edit1.Text:='';
            edit2.Text:= '';
          end;
      end
      else
      begin
          messagedlg('No se encuentra registrado',mtinformation,[mbok],0);
          edit1.Text:='';
          edit2.Text:= '';
      end;
  end
  else
  begin
   messagedlg('No se encuentra registrado',mtinformation,[mbok],0);
   edit1.Text:='';
   edit2.Text:= '';
  end;
  end
else
   messagedlg('Complete todos los campos!!',mtinformation,[mbok],0);
end;

procedure TForm1.Button2Cick(Sender: TObject);
begin
form4.Caption:='REGISTRARSE';
  form4.DBGrid1.Visible:= false;
  form4.Edit10.Text:= '';
      form4.Button7.Visible:= false;
      form4.Button8.Visible:= false;
      form4.Button9.Visible:= false;
      form4.Button10.Visible:= false;
      form4.Button1.Visible:= true;
      form4.Button2.Visible:= true;
      form4.Button6.Visible:= true;
      form4.label11.Visible:= false;
      form4.edit14.Visible:= false;
      form4.Edit1.Visible:= true;
      form4.Edit2.Visible:= true;
      form4.Edit3.Visible:= true;
      form4.Edit4.Visible:= true;
      form4.Edit5.Visible:= true;
      form4.Edit6.Visible:= true;
      form4.Edit7.Visible:= true;
      form4.Edit8.Visible:= true;
      form4.Edit9.Visible:= true;
      form4.Edit10.Visible:= true;
      form4.Edit11.Visible:= true;
      form4.Edit12.Visible:= true;
      form4.Edit13.Visible:= true;
      form4.Label1.Visible:= true;
      form4.Label2.Visible:= true;
      form4.Label3.Visible:= true;
      form4.Label4.Visible:= true;
      form4.Label5.Visible:= true;
      form4.Label6.Visible:= true;
      form4.Label7.Visible:= true;
      form4.Label8.Visible:= true;
      form4.Label9.Visible:= true;
      form4.Label10.Visible:= true;
      form4.Label12.Visible:= true;
      form4.Label13.Visible:= true;
      form4.Label14.Visible:= true;
      form4.Label15.Visible:= true;
      form4.Label16.Visible:= true;
      form4.Label17.Visible:= true;
      form4.Label18.Visible:= true;
      form4.Label19.Visible:= true;
      form4.Label21.Visible:= true;
      form4.Label22.Visible:= true;
      form4.Label23.Visible:= true;
      form4.Label24.Visible:= true;
      form4.Label25.Visible:= true;
      form4.Label26.Visible:= true;
form4.ShowModal;
end;

procedure TForm1.Button3Click(Sender: TObject);
begin
  form5.ShowModal
end;

procedure TForm1.Button4Click(Sender: TObject);
begin
form4.DBGrid1.Visible:= true;
form4.Button7.Visible:= true;
form4.Button8.Visible:= true;
form4.Button9.Visible:= true;
form4.Button10.Visible:= true;
form4.label11.Visible:= true;
form4.edit14.Visible:= true;
 form4.DBGrid1.Visible:= true;
      form4.Button7.Visible:= true;
      form4.Button8.Visible:= true;
      form4.Button9.Visible:= true;
      form4.Button10.Visible:= true;
      form4.Button1.Visible:= false;
      form4.Button2.Visible:= false;
      FORM4.Button3.Visible:= FALSE;
      form4.Button6.Visible:= false;
      form4.Edit1.Visible:= false;
      form4.Edit2.Visible:= false;
      form4.Edit3.Visible:= false;
      form4.Edit4.Visible:= false;
      form4.Edit5.Visible:= false;
      form4.Edit6.Visible:= false;
      form4.Edit7.Visible:= false;
      form4.Edit8.Visible:= false;
      form4.Edit9.Visible:= false;
      form4.Edit10.Visible:= false;
      form4.Edit11.Visible:= false;
      form4.Edit12.Visible:= false;
      form4.Edit13.Visible:= false;
      form4.Label1.Visible:= false;
      form4.Label2.Visible:= false;
      form4.Label3.Visible:= false;
      form4.Label4.Visible:= false;
      form4.Label5.Visible:= false;
      form4.Label6.Visible:= false;
      form4.Label7.Visible:= false;
      form4.Label8.Visible:= false;
      form4.Label9.Visible:= false;
      form4.Label10.Visible:= false;
      form4.Label12.Visible:= false;
      form4.Label13.Visible:= false;
      form4.Label14.Visible:= false;
      form4.Label15.Visible:= false;
      form4.Label16.Visible:= false;
      form4.Label17.Visible:= false;
      form4.Label18.Visible:= false;
      form4.Label19.Visible:= false;
      form4.Label21.Visible:= false;
      form4.Label22.Visible:= false;
      form4.Label23.Visible:= false;
      form4.Label24.Visible:= false;
      form4.Label25.Visible:= false;
      form4.Label26.Visible:= false;
      FORM4.label11.Visible:= true;
      form4.edit14.Visible:= true;
      form4.button8.Enabled:= false;
      form4.button9.Enabled:= false;
form4.Caption:= 'CLIENTES';
form4.showmodal;
end;

procedure TForm1.Button5Click(Sender: TObject);
begin
  form8.ShowModal;
end;

procedure TForm1.Button6Click(Sender: TObject);
begin
form7.ShowModal;
end;

procedure TForm1.Button7Click(Sender: TObject);
begin
  form9.ShowModal;
end;

procedure TForm1.Button8Click(Sender: TObject);
begin
  FORM16.ShowModal;
end;

procedure TForm1.ComboBox1Click(Sender: TObject);
begin
if ((combobox1.ItemIndex = 0) or (combobox1.ItemIndex = 1) or (combobox1.ItemIndex = 2)) then
    bitbtn1.Enabled:= true;
    if combobox1.ItemIndex = 0 then
       begin
         DBGrid2.DataSource:= form3.DataSource6;
         edit4.Visible:= true;
         label12.Visible:= true;
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
         label12.Visible:= false;
         combobox2.Visible:= false;
       end;
if combobox1.ItemIndex = 2 then
begin
  edit3.Visible:= false;
  edit4.Visible:= false;
  label12.Visible:= false;
  combobox2.Visible:= true;
end;
end;

procedure TForm1.DBGrid1CellClick(Column: TColumn);
begin
if not(panel3.Visible) then
begin
     form10.Memo2.Visible:= true;
     form10.Button1.Visible:= false;

end;
form10.Label2.Caption:= form3.ADOLIBRO.FieldByName('Nombre').AsString;
form10.Label4.Caption:= form3.ADOLIBRO.FieldByName('Editorial').AsString;
form10.Label5.Caption:= form3.ADOLIBRO.FieldByName('Precio').AsString;
form10.Label8.Caption:= form3.ADOLIBRO.FieldByName('Cantidad_De_Paginas').AsString;
form10.Label10.Caption:= form3.ADOLIBRO.FieldByName('Idioma').AsString;
//form10.maskedit1.text:= form3.adolibro.fieldbyname('Fecha_De_Edicion').asstring;
form10.Label12.Caption:= (form3.ADOLIBRO.FieldByName('Fecha_De_Edicion').AsString);
form10.Label14.Caption:= form3.ADOLIBRO.FieldByName('ISBN').AsString;
form10.Memo1.Lines.Text:= form3.ADOLIBRO.FieldByName('Sinopsis').AsString;
asua:= form3.ADOLIBRO.FieldByName('Id_Autor').AsInteger;
form3.ADOAUTOR.Locate('Id_Autor',asua,[]);
form10.Label16.Caption:= form3.ADOAUTOR.FieldByName('Nombre').AsString+', '+form3.ADOAUTOR.FieldByName('Apellido').AsString;
usu:= form3.ADOLIBRO.FieldByName('Tapa').AsString;
form10.Image1.Picture.LoadFromFile('C:\Users\Huertas\Documents\RAD Studio\Projects\proyecto\images\'+usu);
form10.ShowModal;
form10.label18.Visible:= true;
end;

procedure TForm1.DBGrid2CellClick(Column: TColumn);
begin
if not(panel3.Visible) then
begin
     form10.Memo2.Visible:= true;
     form10.Button1.Visible:= false;
end;
if DBGrid2.DataSource = form3.DataSource6 then
begin
    usu:= form3.ADOQuery6.FieldByName('ISBN').AsString;
    form3.ADOLIBRO.Locate('ISBN',usu,[]);
    form10.Label2.Caption:= form3.ADOQuery6.FieldByName('Nombre').AsString;
    form10.Label4.Caption:= form3.ADOQuery6.FieldByName('Editorial').AsString;
    form10.Label5.Caption:= form3.ADOQuery6.FieldByName('Precio').AsString;
    form10.Label8.Caption:= form3.ADOQuery6.FieldByName('Cantidad_De_Paginas').AsString;
    form10.Label10.Caption:= form3.ADOQuery6.FieldByName('Idioma').AsString;
    //form10.maskedit1.text:= form3.adolibro.fieldbyname('Fecha_De_Edicion').asstring;
    form10.Label12.Caption:= (form3.ADOQuery6.FieldByName('Fecha_De_Edicion').AsString);
    form10.Label14.Caption:= form3.ADOQuery6.FieldByName('ISBN').AsString;
    form10.Memo1.Lines.Text:= form3.ADOQuery6.FieldByName('Sinopsis').AsString;
    asua:= form3.ADOQuery6.FieldByName('Id_Autor').AsInteger;
    form3.ADOAUTOR.Locate('Id_Autor',asua,[]);
    form10.Label16.Caption:= form3.ADOAUTOR.FieldByName('Nombre').AsString+', '+form3.ADOAUTOR.FieldByName('Apellido').AsString;
    usu:= form3.ADOQuery6.FieldByName('Tapa').AsString;
    form10.Image1.Picture.LoadFromFile('C:\Users\Huertas\Documents\RAD Studio\Projects\proyecto\images\'+usu);
    form10.ShowModal;
end
else
begin
      usu:= form3.ADOQuery7.FieldByName('ISBN').AsString;
    form3.ADOLIBRO.Locate('ISBN',usu,[]);
    form10.Label2.Caption:= form3.ADOQuery7.FieldByName('Nombre').AsString;
    form10.Label4.Caption:= form3.ADOQuery7.FieldByName('Editorial').AsString;
    form10.Label5.Caption:= form3.ADOQuery7.FieldByName('Precio').AsString;
    form10.Label8.Caption:= form3.ADOQuery7.FieldByName('Cantidad_De_Paginas').AsString;
    form10.Label10.Caption:= form3.ADOQuery7.FieldByName('Idioma').AsString;
    //form10.maskedit1.text:= form3.adolibro.fieldbyname('Fecha_De_Edicion').asstring;
    form10.Label12.Caption:= (form3.ADOQuery7.FieldByName('Fecha_De_Edicion').AsString);
    form10.Label14.Caption:= form3.ADOQuery7.FieldByName('ISBN').AsString;
    form10.Memo1.Lines.Text:= form3.ADOQuery7.FieldByName('Sinopsis').AsString;
    asua:= form3.ADOQuery7.FieldByName('Id_Autor').AsInteger;
    form3.ADOAUTOR.Locate('Id_Autor',asua,[]);
    form10.Label16.Caption:= form3.ADOAUTOR.FieldByName('Nombre').AsString+', '+form3.ADOAUTOR.FieldByName('Apellido').AsString;
    usu:= form3.ADOQuery7.FieldByName('Tapa').AsString;
    form10.Image1.Picture.LoadFromFile('C:\Users\Huertas\Documents\RAD Studio\Projects\proyecto\images\'+usu);
    form10.ShowModal;
end;
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

procedure TForm1.Edit4Change(Sender: TObject);
begin
{  form3.ADOQuery6.Close;
  form3.ADOQuery6.Parameters.ParamByName('par1').Value:= edit4.Text;
  form3.ADOQuery6.Parameters.ParamByName('par2').Value:= edit4.Text;
  form3.ADOQuery6.Open; }
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
      usuario:= form4.id; //form3.ADOUSUARIO.FieldByName('Id_Cliente').AsInteger;
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
      form3.ADOUSUARIO.Locate('Id_Cliente',form4.ID,[]);
      form4.Edit12.Text:= form3.ADOUSUARIO.FieldByName('Usuario').AsString;
      form4.Edit13.Text:= form3.ADOUSUARIO.FieldByName('Contraseņa').AsString;
      form4.Edit10.Text:= form3.ADOUSUARIO.FieldByName('Contraseņa').AsString;
      form4.button3.visible:= true;
      form4.button4.visible:= true;
      form4.button5.visible:= true;
      form4.button6.visible:= true;
      form4.label12.Visible := False;
      form4.button1.Visible := False;
      form4.Caption:= 'MI CUENTA';
      form4.DBGrid1.Visible:= false;
      form4.Button7.Visible:= false;
      form4.Button8.Visible:= false;
      form4.Button9.Visible:= false;
      form4.Button10.Visible:= false;
      form4.Button2.Visible:= true;
      form4.Button6.Visible:= true;
      form4.Edit1.Visible:= true;
      form4.Edit2.Visible:= true;
      form4.Edit3.Visible:= true;
      form4.Edit4.Visible:= true;
      form4.Edit5.Visible:= true;
      form4.Edit6.Visible:= true;
      form4.Edit7.Visible:= true;
      form4.Edit8.Visible:= true;
      form4.Edit9.Visible:= true;
      form4.Edit10.Visible:= true;
      form4.Edit11.Visible:= true;
      form4.Edit12.Visible:= true;
      form4.Edit13.Visible:= true;
      form4.edit14.Visible:= false;
      form4.label11.Visible:= false;
      form4.Label1.Visible:= true;
      form4.Label2.Visible:= true;
      form4.Label3.Visible:= true;
      form4.Label4.Visible:= true;
      form4.Label5.Visible:= true;
      form4.Label6.Visible:= true;
      form4.Label7.Visible:= true;
      form4.Label8.Visible:= true;
      form4.Label9.Visible:= true;
      form4.Label10.Visible:= true;
      form4.Label12.Visible:= true;
      form4.Label13.Visible:= true;
      form4.Label14.Visible:= true;
      form4.Label15.Visible:= true;
      form4.Label16.Visible:= true;
      form4.Label17.Visible:= true;
      form4.Label18.Visible:= true;
      form4.Label19.Visible:= true;
      form4.Label21.Visible:= true;
      form4.Label22.Visible:= true;
      form4.Label23.Visible:= true;
      form4.Label24.Visible:= true;
      form4.Label25.Visible:= true;
      form4.Label26.Visible:= true;
      if form3.ADOUSUARIO.FieldByName('Id').AsInteger = 1 then
         begin
             form4.Button1.Visible:= false;
             form4.Button5.Visible:= false;
             form4.Button4.Visible:= false;
         end;
      form4.ShowModal;

end;

procedure TForm1.Label5Click(Sender: TObject);
begin
if form3.ADOLISTA.RecordCount > 0 then
begin
       if (messagedlg('Tiene una compra pendiente.Esta seguro de cerrar sesion? cancele la compra primero', mtinformation,[mbok],0) = mrok) then;
  begin

    form3.adolista.first;
    while not(form3.adolista.eof) do
    begin
      form3.adolista.delete;
    end;
    form5.dbgrid1.refresh;
    messagedlg('Su compra se ha eliminado exitosamente!!', mtinformation,[mbok],0);
    edit1.Text:= '0';
    form5.close;
  end;
end;

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
          panel3.Visible:= false;
          cerraradmin();
          form6.Image1.Visible:= true;
          form6.Image2.Visible:= false;
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
