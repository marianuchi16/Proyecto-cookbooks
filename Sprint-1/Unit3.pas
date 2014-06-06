unit Unit3;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, ADODB;

type
  TForm3 = class(TForm)
    ADOLIBRO: TADOTable;
    ADOConnection1: TADOConnection;
    DSLIBROS: TDataSource;
    ADOLIBROISBN: TAutoIncField;
    ADOLIBRONombre: TWideStringField;
    ADOLIBROEditorial: TWideStringField;
    ADOLIBROSinopsis: TWideStringField;
    ADOLIBROTapa: TBlobField;
    ADOLIBROId_Autor: TIntegerField;
    ADOUSUARIO: TADOTable;
    ADOCLIENTE: TADOTable;
    ADOUSUARIOId: TAutoIncField;
    ADOUSUARIOUsuario: TWideStringField;
    ADOUSUARIOContraseña: TWideStringField;
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
    ADOAUTOR: TADOTable;
    ADOAUTORId_Autor: TAutoIncField;
    ADOAUTORNombre: TWideStringField;
    ADOAUTORApellido: TWideStringField;
    DSAUTOR: TDataSource;
    DSUSUARIO: TDataSource;
    DSCLIENTE: TDataSource;
    ADOLIBROPrecio: TBCDField;
    ADOLIBROCantidad_De_Paginas: TIntegerField;
    ADOLIBROIdioma: TWideStringField;
    ADOLIBROFecha_De_Edicion: TDateTimeField;
    ADOLIBROEliminado: TBooleanField;
    ADOAUTOREliminado: TBooleanField;
    ADOUSUARIOEliminado: TBooleanField;
    ADOCLIENTEEliminado: TBooleanField;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form3: TForm3;

implementation

{$R *.dfm}

end.
