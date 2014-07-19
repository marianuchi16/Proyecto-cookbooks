unit Unit5;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Grids, DBGrids;

type
  TForm5 = class(TForm)
    Button1: TButton;
    Button2: TButton;
    Label46: TLabel;
    Label47: TLabel;
    DBGrid1: TDBGrid;
    Edit1: TEdit;
    Button3: TButton;
    Label1: TLabel;
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure DBGrid1CellClick(Column: TColumn);
    procedure Button3Click(Sender: TObject);
    procedure Label1Click(Sender: TObject);
  private
  cod: integer;
  precio: extended;
    { Private declarations }
  public
  ID: INTEGER;

    { Public declarations }
  end;

var
  Form5: TForm5;

implementation

uses Unit3, Unit13, Unit6;

{$R *.dfm}

procedure TForm5.Button1Click(Sender: TObject);
begin
  Form13.Label1.Caption:= 'confirma la compra de el/los libro/s?';
  form13.Caption:= 'COMPRAR';
  form13.ok:= false;
  form13.ShowModal;
  if form13.ok then
  begin
      cod:= 999;
      form3.ADOPEDIDO.Open;
      while not(form3.ADOPEDIDO.Eof) do
      begin
      if form3.ADOPEDIDO.FieldByName('Numero_Compra').AsInteger > cod then
           cod:= form3.ADOPEDIDO.FieldByName('Numero_Compra').AsInteger;
      form3.ADOPEDIDO.Next;
      end;
      cod:= cod + 1;
      form3.ADOLISTA.First;
      while not(form3.ADOLISTA.eof) do
      begin
        form3.ADOPEDIDO.Append;
        form3.ADOPEDIDO.FieldByName('Numero_Compra').AsInteger:= cod;
        form3.ADOPEDIDO.FieldByName('Fecha_Pedido').AsDateTime:= date();
        form3.ADOPEDIDO.FieldByName('Total').AsInteger:= strtoint(edit1.Text);
        form3.ADOPEDIDO.FieldByName('Id_Cliente').AsInteger:= id;
        form3.ADOPEDIDO.FieldByName('ISBN').AsString:= form3.ADOLISTA.FieldByName('ISBN').AsString;
        if form3.ADOLISTA.FieldByName('Cantidad').AsInteger > 1 then
           precio:= form3.ADOLISTA.FieldByName('Precio').AsExtended / form3.ADOLISTA.FieldByName('Cantidad').AsExtended
        else
           precio:= form3.ADOLISTA.FieldByName('Precio').AsExtended;
        form3.ADOPEDIDO.FieldByName('Precio').AsExtended:= precio;
        form3.ADOPEDIDO.Post;
        form3.ADOLISTA.Delete;
        DBGrid1.Refresh;
      end;
      messagedlg('La compra se ha realilzado exitosamente!',mtinformation,[mbok],0);
      edit1.Text:= '0';
      form3.ADOPEDIDO.Close;
      form3.ADOPEDIDO.Open;
      form3.ADOPEDIDO.Refresh;
      FORM13.Caption:= 'ELIMINAR';
      form5.Close;
  end;
end;

procedure TForm5.Button2Click(Sender: TObject);
begin
  if (messagedlg('Esta seguro de cancelar su compra?', mtinformation,[mbok],0) = mrok) then;
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

procedure TForm5.Button3Click(Sender: TObject);
begin
if (form3.adolista.fieldbyname('Cantidad').asinteger > 1) then
begin
  form3.adolista.edit;
  form5.edit1.text:= INTTOSTR(STRTOINT(form5.edit1.text) - form3.adolista.fieldbyname('Precio').asinteger);
  form3.adolista.fieldbyname('Cantidad').asinteger:= form3.adolista.fieldbyname('Cantidad').asinteger - 1;
  form3.adolista.post;
  form3.adolista.refresh;
  form5.dbgrid1.refresh;

end
else
begin
  form5.edit1.text:= INTTOSTR(STRTOINT(form5.edit1.text) - form3.adolista.fieldbyname('Precio').asinteger);
  form3.adolista.delete;
  form3.adolista.refresh;
  button3.enabled:= false;
end;
end;

procedure TForm5.DBGrid1CellClick(Column: TColumn);
begin
  button3.enabled:= true;
end;

procedure TForm5.Label1Click(Sender: TObject);
begin
  form6.Image3.Visible:= true;
  form6.Image1.Visible:= false;
  form6.Image2.Visible:= false;
  form6.ShowModal;
end;

end.
