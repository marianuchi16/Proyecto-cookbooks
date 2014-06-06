object Form3: TForm3
  Left = 441
  Top = 0
  Caption = 'Form3'
  ClientHeight = 270
  ClientWidth = 505
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poDesigned
  PixelsPerInch = 96
  TextHeight = 13
  object ADOLIBRO: TADOTable
    Active = True
    Connection = ADOConnection1
    CursorType = ctStatic
    Filter = 'Eliminado = false'
    Filtered = True
    TableName = 'Libro'
    Left = 256
    Top = 24
    object ADOLIBROISBN: TAutoIncField
      FieldName = 'ISBN'
      ReadOnly = True
    end
    object ADOLIBRONombre: TWideStringField
      FieldName = 'Nombre'
      Size = 255
    end
    object ADOLIBROEditorial: TWideStringField
      FieldName = 'Editorial'
      Size = 255
    end
    object ADOLIBROSinopsis: TWideStringField
      FieldName = 'Sinopsis'
      Size = 255
    end
    object ADOLIBROTapa: TBlobField
      FieldName = 'Tapa'
      BlobType = ftDBaseOle
    end
    object ADOLIBROId_Autor: TIntegerField
      FieldName = 'Id_Autor'
    end
    object ADOLIBROPrecio: TBCDField
      FieldName = 'Precio'
      Precision = 19
    end
    object ADOLIBROCantidad_De_Paginas: TIntegerField
      FieldName = 'Cantidad_De_Paginas'
    end
    object ADOLIBROIdioma: TWideStringField
      FieldName = 'Idioma'
      Size = 255
    end
    object ADOLIBROFecha_De_Edicion: TDateTimeField
      FieldName = 'Fecha_De_Edicion'
    end
    object ADOLIBROEliminado: TBooleanField
      FieldName = 'Eliminado'
    end
  end
  object ADOConnection1: TADOConnection
    Connected = True
    ConnectionString = 
      'Provider=Microsoft.Jet.OLEDB.4.0;Data Source=C:\Users\Huertas\Do' +
      'cuments\Base de datos1.mdb;Persist Security Info=False'
    LoginPrompt = False
    Mode = cmShareDenyNone
    Provider = 'Microsoft.Jet.OLEDB.4.0'
    Left = 40
    Top = 16
  end
  object DSLIBROS: TDataSource
    DataSet = ADOLIBRO
    Left = 257
    Top = 80
  end
  object ADOUSUARIO: TADOTable
    Active = True
    Connection = ADOConnection1
    CursorType = ctStatic
    Filter = 'Eliminado = false'
    Filtered = True
    TableName = 'Usuario'
    Left = 328
    Top = 24
    object ADOUSUARIOId: TAutoIncField
      FieldName = 'Id'
      ReadOnly = True
    end
    object ADOUSUARIOUsuario: TWideStringField
      FieldName = 'Usuario'
      Size = 255
    end
    object ADOUSUARIOContraseña: TWideStringField
      FieldName = 'Contrase'#241'a'
      Size = 255
    end
    object ADOUSUARIOId_Cliente: TIntegerField
      FieldName = 'Id_Cliente'
    end
    object ADOUSUARIOEliminado: TBooleanField
      FieldName = 'Eliminado'
    end
  end
  object ADOCLIENTE: TADOTable
    Active = True
    Connection = ADOConnection1
    CursorType = ctStatic
    Filter = 'Eliminado = false'
    Filtered = True
    TableName = 'Cliente'
    Left = 400
    Top = 24
    object ADOCLIENTEId_Cliente: TAutoIncField
      FieldName = 'Id_Cliente'
      ReadOnly = True
    end
    object ADOCLIENTENombre: TWideStringField
      FieldName = 'Nombre'
      Size = 255
    end
    object ADOCLIENTEApellido: TWideStringField
      FieldName = 'Apellido'
      Size = 255
    end
    object ADOCLIENTECalle: TWideStringField
      FieldName = 'Calle'
      Size = 255
    end
    object ADOCLIENTENumero: TIntegerField
      FieldName = 'Numero'
    end
    object ADOCLIENTEPiso: TWideStringField
      FieldName = 'Piso'
      Size = 255
    end
    object ADOCLIENTELocalidad: TWideStringField
      FieldName = 'Localidad'
      Size = 255
    end
    object ADOCLIENTEDepto: TWideStringField
      FieldName = 'Depto'
      Size = 255
    end
    object ADOCLIENTECodigo_Postal: TIntegerField
      FieldName = 'Codigo_Postal'
    end
    object ADOCLIENTEProvincia: TWideStringField
      FieldName = 'Provincia'
      Size = 255
    end
    object ADOCLIENTEFecha_De_Alta: TDateTimeField
      FieldName = 'Fecha_De_Alta'
    end
    object ADOCLIENTETarjeta: TIntegerField
      FieldName = 'Tarjeta'
    end
    object ADOCLIENTEEliminado: TBooleanField
      FieldName = 'Eliminado'
    end
  end
  object ADOAUTOR: TADOTable
    Active = True
    Connection = ADOConnection1
    CursorType = ctStatic
    Filter = 'Eliminado = false'
    Filtered = True
    TableName = 'Autor'
    Left = 192
    Top = 24
    object ADOAUTORId_Autor: TAutoIncField
      FieldName = 'Id_Autor'
      ReadOnly = True
    end
    object ADOAUTORNombre: TWideStringField
      FieldName = 'Nombre'
      Size = 255
    end
    object ADOAUTORApellido: TWideStringField
      FieldName = 'Apellido'
      Size = 255
    end
    object ADOAUTOREliminado: TBooleanField
      FieldName = 'Eliminado'
    end
  end
  object DSAUTOR: TDataSource
    DataSet = ADOAUTOR
    Left = 192
    Top = 80
  end
  object DSUSUARIO: TDataSource
    DataSet = ADOUSUARIO
    Left = 328
    Top = 80
  end
  object DSCLIENTE: TDataSource
    DataSet = ADOCLIENTE
    Left = 400
    Top = 80
  end
end
