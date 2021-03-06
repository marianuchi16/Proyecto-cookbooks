unit Unit3;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, ADODB;

type
  TForm3 = class(TForm)
   // ADOLIBRO: TADOTable;
   // ADOConnection1: TADOConnection;
    DSLIBROS: TDataSource;
   // ADOUSUARIO: TADOTable;
    //ADOCLIENTE: TADOTable;
   { ADOUSUARIOId: TAutoIncField;
    ADOUSUARIOUsuario: TWideStringField;
    ADOUSUARIOContraseņa: TWideStringField;
    ADOUSUARIOId_Cliente: TIntegerField;
    ADOCLIENTEId_Cliente: TAutoIncField;
    ADOCLIENTENombre: TWideStringField;
    ADOCLIENTEApellido: TWideStringField;
    ADOCLIENTECalle: TWideStringField;
    ADOCLIENTENumero: TIntegerField;
    ADOCLIENTEPiso: TWideStringField;
    ADOCLIENTELocalidad: TWideStringField;
    ADOCLIENTEDepto: TWideStringField;
    ADOCLIENTECodigo_Postal: TIntegerField;
    ADOCLIENTEProvincia: TWideStringField;
    ADOCLIENTEFecha_De_Alta: TDateTimeField;
    ADOCLIENTETarjeta: TIntegerField;
    //ADOAUTOR: TADOTable;
    ADOAUTORId_Autor: TAutoIncField;
    ADOAUTORNombre: TWideStringField;
    ADOAUTORApellido: TWideStringField;
    DSAUTOR: TDataSource;
    DSUSUARIO: TDataSource;
    DSCLIENTE: TDataSource;
    ADOAUTOREliminado: TBooleanField;
    ADOUSUARIOEliminado: TBooleanField;
    ADOCLIENTEEliminado: TBooleanField;
    ADOLIBROISBN: TAutoIncField;
    ADOLIBRONombre: TWideStringField;
    ADOLIBROEditorial: TWideStringField;
    ADOLIBROSinopsis: TWideStringField;
    ADOLIBROTapa: TWideStringField;
    ADOLIBROPrecio: TBCDField;
    ADOLIBROId_Autor: TIntegerField;
    ADOLIBROCantidad_De_Paginas: TIntegerField;
    ADOLIBROIdioma: TWideStringField;
    ADOLIBROFecha_De_Edicion: TDateTimeField;
    ADOLIBROEliminado: TBooleanField;
    ADOLIBROId_Libro: TAutoIncField;
    //ADOPEDIDO: TADOTable;
    DSPEDIDO: TDataSource;  }
    ADOConnection1: TADOConnection;
    ADOAUTOR: TADOTable;
    ADOLIBRO: TADOTable;
    ADOUSUARIO: TADOTable;
    ADOCLIENTE: TADOTable;
    ADOPEDIDO: TADOTable;
    ADOAUTORId_Autor: TAutoIncField;
    ADOAUTORNombre: TWideStringField;
    ADOAUTORApellido: TWideStringField;
    ADOAUTOREliminado: TBooleanField;
    ADOLIBROId_Libro: TAutoIncField;
    ADOLIBRONombre: TWideStringField;
    ADOLIBROEditorial: TWideStringField;
    ADOLIBROSinopsis: TWideStringField;
    ADOLIBROTapa: TWideStringField;
    ADOLIBROPrecio: TBCDField;
    ADOLIBROId_Autor: TIntegerField;
    ADOLIBROCantidad_De_Paginas: TIntegerField;
    ADOLIBROIdioma: TWideStringField;
    ADOLIBROFecha_De_Edicion: TDateTimeField;
    ADOLIBROEliminado: TBooleanField;
    ADOUSUARIOId: TAutoIncField;
    ADOUSUARIOUsuario: TWideStringField;
    ADOUSUARIOContraseņa: TWideStringField;
    ADOUSUARIOId_Cliente: TIntegerField;
    ADOUSUARIOEliminado: TBooleanField;
    ADOCLIENTEId_Cliente: TAutoIncField;
    ADOCLIENTENombre: TWideStringField;
    ADOCLIENTEApellido: TWideStringField;
    ADOCLIENTECalle: TWideStringField;
    ADOCLIENTENumero: TIntegerField;
    ADOCLIENTEPiso: TWideStringField;
    ADOCLIENTELocalidad: TWideStringField;
    ADOCLIENTEDepto: TWideStringField;
    ADOCLIENTECodigo_Postal: TIntegerField;
    ADOCLIENTEProvincia: TWideStringField;
    ADOCLIENTEFecha_De_Alta: TDateTimeField;
    ADOCLIENTETarjeta: TIntegerField;
    ADOCLIENTEEliminado: TBooleanField;
    ADOPEDIDOFecha_pedido: TDateTimeField;
    ADOPEDIDOTotal: TBCDField;
    ADOPEDIDOEstado: TBooleanField;
    ADOPEDIDOId_Cliente: TIntegerField;
    ADOPEDIDOISBN: TWideStringField;
    ADOLISTA: TADOTable;
    DSLISTA: TDataSource;
    ADOQuery1: TADOQuery;
    DataSource1: TDataSource;
    ADOQuery2: TADOQuery;
    DataSource2: TDataSource;
    ADOQuery3: TADOQuery;
    DataSource3: TDataSource;
    ADOPEDIDOPrecio: TBCDField;
    ADOPEDIDONumero_Compra: TIntegerField;
    ADOPEDIDOId: TAutoIncField;
    ADOLISTAId_Lista: TAutoIncField;
    ADOLISTAISBN: TWideStringField;
    ADOLISTAprecio: TBCDField;
    ADOLISTAId_Cliente: TIntegerField;
    ADOLISTACantidad: TIntegerField;
    ADOLIBROISBN: TWideStringField;
    ADOPEDIDOEstado_pedido: TStringField;
    ADOinformecliente: TADOQuery;
    DSinformecliente: TDataSource;
    ADOinformeclienteId_Cliente: TAutoIncField;
    ADOinformeclienteNombre: TWideStringField;
    ADOinformeclienteApellido: TWideStringField;
    ADOinformeclienteCalle: TWideStringField;
    ADOinformeclienteNumero: TIntegerField;
    ADOinformeclientePiso: TWideStringField;
    ADOinformeclienteLocalidad: TWideStringField;
    ADOinformeclienteDepto: TWideStringField;
    ADOinformeclienteCodigo_Postal: TIntegerField;
    ADOinformeclienteProvincia: TWideStringField;
    ADOinformeclienteFecha_De_Alta: TDateTimeField;
    ADOinformeclienteTarjeta: TIntegerField;
    ADOinformeclienteEliminado: TBooleanField;
    ADOhistorial: TADOQuery;
    DShistorial: TDataSource;
    ADOhistorialISBN: TWideStringField;
    ADOhistorialPrecio: TBCDField;
    ADOhistorialtotal: TBCDField;
    ADOhistorialFecha_Pedido: TDateTimeField;
    ADOhistorialEstado: TBooleanField;
    ADOhistorialEstado_Pedido: TWideStringField;
    ADOhistorialnombre: TWideStringField;
    ADOQuery4: TADOQuery;
    DataSource4: TDataSource;
    ADOQuery5: TADOQuery;
    DataSource5: TDataSource;
    ADOQuery4ISBN: TWideStringField;
    ADOQuery4Nombre: TWideStringField;
    ADOQuery4Editorial: TWideStringField;
    ADOQuery4Precio: TBCDField;
    ADOQuery4Cantidad: TIntegerField;
    ADOQuery6: TADOQuery;
    DataSource6: TDataSource;
    ADOQuery3Id_Libro: TAutoIncField;
    ADOQuery3Nombre: TWideStringField;
    ADOQuery3Editorial: TWideStringField;
    ADOQuery3Sinopsis: TWideStringField;
    ADOQuery3Tapa: TWideStringField;
    ADOQuery3Precio: TBCDField;
    ADOQuery3Id_Autor: TIntegerField;
    ADOQuery3Cantidad_De_Paginas: TIntegerField;
    ADOQuery3Idioma: TWideStringField;
    ADOQuery3Fecha_De_Edicion: TDateTimeField;
    ADOQuery3Eliminado: TBooleanField;
    ADOQuery3ISBN: TWideStringField;
    ADOQuery7: TADOQuery;
    DataSource7: TDataSource;
    ADOQuery7Id_Libro: TAutoIncField;
    ADOQuery7Nombre: TWideStringField;
    ADOQuery7Editorial: TWideStringField;
    ADOQuery7Sinopsis: TWideStringField;
    ADOQuery7Tapa: TWideStringField;
    ADOQuery7Precio: TBCDField;
    ADOQuery7Id_Autor: TIntegerField;
    ADOQuery7Cantidad_De_Paginas: TIntegerField;
    ADOQuery7Idioma: TWideStringField;
    ADOQuery7Fecha_De_Edicion: TDateTimeField;
    ADOQuery7Eliminado: TBooleanField;
    ADOQuery7ISBN: TWideStringField;
    ADOQuery6Nombre: TWideStringField;
    ADOQuery6Editorial: TWideStringField;
    ADOQuery6Precio: TBCDField;
    ADOQuery6Cantidad_De_Paginas: TIntegerField;
    ADOQuery6Idioma: TWideStringField;
    ADOQuery6ISBN: TWideStringField;
    ADOQuery6Fecha_De_Edicion: TDateTimeField;
    ADOQuery6Sinopsis: TWideStringField;
    ADOQuery6Id_Autor: TIntegerField;
    ADOQuery6Tapa: TWideStringField;
    procedure ADOPEDIDOCalcFields(DataSet: TDataSet);
    procedure ADOhistorialCalcFields(DataSet: TDataSet);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form3: TForm3;

implementation

{$R *.dfm}

procedure TForm3.ADOhistorialCalcFields(DataSet: TDataSet);
begin
 if form3.ADOhistorial.FieldByName('Estado').AsBoolean then
    Form3.ADOhistorial.FieldByName('Estado_pedido').AsString:= 'Entregado'
 else
    form3.ADOhistorial.FieldByName('Estado_pedido').AsString:= 'Pendiente';
end;

procedure TForm3.ADOPEDIDOCalcFields(DataSet: TDataSet);
begin
 if form3.ADOPEDIDO.FieldByName('Estado').AsBoolean then
    Form3.ADOPEDIDO.FieldByName('Estado_pedido').AsString:= 'Entregado'
 else
    form3.ADOPEDIDO.FieldByName('Estado_pedido').AsString:= 'Pendiente';
end;

end.
