﻿object Form3: TForm3
  Left = 441
  Top = 0
  Caption = 'Form3'
  ClientHeight = 389
  ClientWidth = 614
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
  object DSLIBROS: TDataSource
    DataSet = ADOLIBRO
    Left = 257
    Top = 80
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
  object DSPEDIDO: TDataSource
    DataSet = ADOPEDIDO
    Left = 192
    Top = 192
  end
  object ADOConnection1: TADOConnection
    Connected = True
    ConnectionString = 
      'Provider=Microsoft.Jet.OLEDB.4.0;Data Source=C:\Users\Huertas\De' +
      'sktop\Base de datos1.mdb;Mode=Share Deny None;Persist Security I' +
      'nfo=False;Jet OLEDB:System database="";Jet OLEDB:Registry Path="' +
      '";Jet OLEDB:Database Password="";Jet OLEDB:Engine Type=5;Jet OLE' +
      'DB:Database Locking Mode=1;Jet OLEDB:Global Partial Bulk Ops=2;J' +
      'et OLEDB:Global Bulk Transactions=1;Jet OLEDB:New Database Passw' +
      'ord="";Jet OLEDB:Create System Database=False;Jet OLEDB:Encrypt ' +
      'Database=False;Jet OLEDB:Don'#39't Copy Locale on Compact=False;Jet ' +
      'OLEDB:Compact Without Replica Repair=False;Jet OLEDB:SFP=False'
    LoginPrompt = False
    Mode = cmShareDenyNone
    Provider = 'Microsoft.Jet.OLEDB.4.0'
    Left = 40
    Top = 24
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
  object ADOLIBRO: TADOTable
    Active = True
    Connection = ADOConnection1
    CursorType = ctStatic
    Filter = 'Eliminado = false'
    Filtered = True
    TableName = 'Libro'
    Left = 256
    Top = 24
    object ADOLIBROId_Libro: TAutoIncField
      FieldName = 'Id_Libro'
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
    object ADOLIBROTapa: TWideStringField
      FieldName = 'Tapa'
      Size = 255
    end
    object ADOLIBROPrecio: TBCDField
      FieldName = 'Precio'
      Precision = 19
    end
    object ADOLIBROId_Autor: TIntegerField
      FieldName = 'Id_Autor'
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
    object ADOLIBROISBN: TWideStringField
      FieldName = 'ISBN'
      Size = 255
    end
  end
  object ADOUSUARIO: TADOTable
    Active = True
    Connection = ADOConnection1
    CursorType = ctStatic
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
  object ADOPEDIDO: TADOTable
    Active = True
    Connection = ADOConnection1
    CursorType = ctStatic
    OnCalcFields = ADOPEDIDOCalcFields
    TableName = 'Pedido'
    Left = 192
    Top = 136
    object ADOPEDIDOFecha_pedido: TDateTimeField
      FieldName = 'Fecha_pedido'
    end
    object ADOPEDIDOTotal: TBCDField
      FieldName = 'Total'
      Precision = 19
    end
    object ADOPEDIDOEstado: TBooleanField
      FieldName = 'Estado'
    end
    object ADOPEDIDOId_Cliente: TIntegerField
      FieldName = 'Id_Cliente'
    end
    object ADOPEDIDOISBN: TWideStringField
      FieldName = 'ISBN'
      Size = 255
    end
    object ADOPEDIDOPrecio: TBCDField
      FieldName = 'Precio'
      Precision = 19
    end
    object ADOPEDIDONumero_Compra: TIntegerField
      FieldName = 'Numero_Compra'
    end
    object ADOPEDIDOId: TAutoIncField
      FieldName = 'Id'
      ReadOnly = True
    end
    object ADOPEDIDOEstado_pedido: TStringField
      FieldKind = fkCalculated
      FieldName = 'Estado_pedido'
      Calculated = True
    end
  end
  object ADOLISTA: TADOTable
    Active = True
    Connection = ADOConnection1
    CursorType = ctStatic
    TableName = 'lista'
    Left = 256
    Top = 136
    object ADOLISTAId_Lista: TAutoIncField
      FieldName = 'Id_Lista'
      ReadOnly = True
    end
    object ADOLISTAISBN: TWideStringField
      FieldName = 'ISBN'
      Size = 255
    end
    object ADOLISTAprecio: TBCDField
      FieldName = 'precio'
      Precision = 19
    end
    object ADOLISTAId_Cliente: TIntegerField
      FieldName = 'Id_Cliente'
    end
    object ADOLISTACantidad: TIntegerField
      FieldName = 'Cantidad'
    end
  end
  object DSLISTA: TDataSource
    DataSet = ADOLISTA
    Left = 256
    Top = 192
  end
  object ADOQuery1: TADOQuery
    Active = True
    Connection = ADOConnection1
    CursorType = ctStatic
    Parameters = <
      item
        Name = 'par1'
        Attributes = [paNullable]
        DataType = ftWideString
        NumericScale = 255
        Precision = 255
        Size = 510
        Value = Null
      end
      item
        Name = 'par2'
        Attributes = [paNullable]
        DataType = ftWideString
        NumericScale = 255
        Precision = 255
        Size = 510
        Value = Null
      end>
    SQL.Strings = (
      'select * '
      'from Cliente '
      
        'where (Nombre like '#39'%'#39' + :par1 + '#39'%'#39' or Apellido like '#39'%'#39' + :par' +
        '2 + '#39'%'#39')   and  Eliminado = False')
    Left = 328
    Top = 136
  end
  object DataSource1: TDataSource
    DataSet = ADOQuery1
    Left = 328
    Top = 192
  end
  object ADOQuery2: TADOQuery
    Active = True
    Connection = ADOConnection1
    CursorType = ctStatic
    Parameters = <
      item
        Name = 'par1'
        Attributes = [paNullable]
        DataType = ftWideString
        NumericScale = 255
        Precision = 255
        Size = 510
        Value = Null
      end
      item
        Name = 'par2'
        Attributes = [paNullable]
        DataType = ftWideString
        NumericScale = 255
        Precision = 255
        Size = 510
        Value = Null
      end>
    SQL.Strings = (
      'select * '
      'from Autor '
      
        'where (Nombre like '#39'%'#39' + :par1 + '#39'%'#39' or Apellido like '#39'%'#39' + :par' +
        '2 + '#39'%'#39')   and  Eliminado = False')
    Left = 400
    Top = 136
  end
  object DataSource2: TDataSource
    DataSet = ADOQuery2
    Left = 400
    Top = 192
  end
  object ADOQuery3: TADOQuery
    Active = True
    Connection = ADOConnection1
    CursorType = ctStatic
    Parameters = <
      item
        Name = 'par1'
        Attributes = [paNullable]
        DataType = ftWideString
        NumericScale = 255
        Precision = 255
        Size = 510
        Value = Null
      end>
    SQL.Strings = (
      'select * '
      'from Libro '
      'where Nombre like '#39'%'#39' + :par1 + '#39'%'#39'    and  Eliminado = False')
    Left = 192
    Top = 256
    object ADOQuery3Id_Libro: TAutoIncField
      FieldName = 'Id_Libro'
      ReadOnly = True
    end
    object ADOQuery3Nombre: TWideStringField
      FieldName = 'Nombre'
      Size = 255
    end
    object ADOQuery3Editorial: TWideStringField
      FieldName = 'Editorial'
      Size = 255
    end
    object ADOQuery3Sinopsis: TWideStringField
      FieldName = 'Sinopsis'
      Size = 255
    end
    object ADOQuery3Tapa: TWideStringField
      FieldName = 'Tapa'
      Size = 255
    end
    object ADOQuery3Precio: TBCDField
      FieldName = 'Precio'
      Precision = 19
    end
    object ADOQuery3Id_Autor: TIntegerField
      FieldName = 'Id_Autor'
    end
    object ADOQuery3Cantidad_De_Paginas: TIntegerField
      FieldName = 'Cantidad_De_Paginas'
    end
    object ADOQuery3Idioma: TWideStringField
      FieldName = 'Idioma'
      Size = 255
    end
    object ADOQuery3Fecha_De_Edicion: TDateTimeField
      FieldName = 'Fecha_De_Edicion'
    end
    object ADOQuery3Eliminado: TBooleanField
      FieldName = 'Eliminado'
    end
    object ADOQuery3ISBN: TWideStringField
      FieldName = 'ISBN'
      Size = 255
    end
  end
  object DataSource3: TDataSource
    DataSet = ADOQuery3
    Left = 192
    Top = 320
  end
  object ADOinformecliente: TADOQuery
    Active = True
    Connection = ADOConnection1
    CursorType = ctStatic
    Parameters = <
      item
        Name = 'par1'
        Attributes = [paNullable]
        DataType = ftDateTime
        NumericScale = 255
        Precision = 255
        Size = 510
        Value = Null
      end
      item
        Name = 'par2'
        Attributes = [paNullable]
        DataType = ftDateTime
        NumericScale = 255
        Precision = 255
        Size = 510
        Value = Null
      end>
    SQL.Strings = (
      'select *'
      'from cliente'
      'where Fecha_De_Alta  between :par1 and :par2')
    Left = 272
    Top = 256
    object ADOinformeclienteId_Cliente: TAutoIncField
      FieldName = 'Id_Cliente'
      ReadOnly = True
    end
    object ADOinformeclienteNombre: TWideStringField
      FieldName = 'Nombre'
      Size = 255
    end
    object ADOinformeclienteApellido: TWideStringField
      FieldName = 'Apellido'
      Size = 255
    end
    object ADOinformeclienteCalle: TWideStringField
      FieldName = 'Calle'
      Size = 255
    end
    object ADOinformeclienteNumero: TIntegerField
      FieldName = 'Numero'
    end
    object ADOinformeclientePiso: TWideStringField
      FieldName = 'Piso'
      Size = 255
    end
    object ADOinformeclienteLocalidad: TWideStringField
      FieldName = 'Localidad'
      Size = 255
    end
    object ADOinformeclienteDepto: TWideStringField
      FieldName = 'Depto'
      Size = 255
    end
    object ADOinformeclienteCodigo_Postal: TIntegerField
      FieldName = 'Codigo_Postal'
    end
    object ADOinformeclienteProvincia: TWideStringField
      FieldName = 'Provincia'
      Size = 255
    end
    object ADOinformeclienteFecha_De_Alta: TDateTimeField
      FieldName = 'Fecha_De_Alta'
    end
    object ADOinformeclienteTarjeta: TIntegerField
      FieldName = 'Tarjeta'
    end
    object ADOinformeclienteEliminado: TBooleanField
      FieldName = 'Eliminado'
    end
  end
  object DSinformecliente: TDataSource
    DataSet = ADOinformecliente
    Left = 272
    Top = 320
  end
  object ADOhistorial: TADOQuery
    Active = True
    Connection = ADOConnection1
    CursorType = ctStatic
    OnCalcFields = ADOhistorialCalcFields
    Parameters = <
      item
        Name = 'par1'
        Attributes = [paNullable]
        DataType = ftWideString
        NumericScale = 255
        Precision = 255
        Size = 510
        Value = Null
      end>
    SQL.Strings = (
      
        'Select p.ISBN, p.Precio, p.total, p.Fecha_Pedido, p.Estado, libr' +
        'o.nombre'
      'from pedido p inner join libro on p.ISBN = libro.ISBN'
      'where Id_cliente = :par1')
    Left = 352
    Top = 264
    object ADOhistorialISBN: TWideStringField
      FieldName = 'ISBN'
      Size = 255
    end
    object ADOhistorialPrecio: TBCDField
      FieldName = 'Precio'
      Precision = 19
    end
    object ADOhistorialtotal: TBCDField
      FieldName = 'total'
      Precision = 19
    end
    object ADOhistorialFecha_Pedido: TDateTimeField
      FieldName = 'Fecha_Pedido'
    end
    object ADOhistorialEstado: TBooleanField
      FieldName = 'Estado'
    end
    object ADOhistorialEstado_Pedido: TWideStringField
      FieldKind = fkCalculated
      FieldName = 'Estado_Pedido'
      Calculated = True
    end
    object ADOhistorialnombre: TWideStringField
      FieldName = 'nombre'
      Size = 255
    end
  end
  object DShistorial: TDataSource
    DataSet = ADOhistorial
    Left = 352
    Top = 320
  end
  object ADOQuery4: TADOQuery
    Active = True
    Connection = ADOConnection1
    CursorType = ctStatic
    Parameters = <
      item
        Name = 'par1'
        Attributes = [paNullable]
        DataType = ftDateTime
        NumericScale = 255
        Precision = 255
        Size = 510
        Value = Null
      end
      item
        Name = 'par2'
        Attributes = [paNullable]
        DataType = ftDateTime
        NumericScale = 255
        Precision = 255
        Size = 510
        Value = Null
      end>
    SQL.Strings = (
      
        'select  p.ISBN, l.Nombre, l.Editorial, p.Precio, count(*) as Can' +
        'tidad'
      'from libro l '
      'inner join pedido p'
      'on l.ISBN = p.ISBN'
      
        'where p.Estado = True and (p.Fecha_pedido between :par1 and :par' +
        '2)'
      'group by p.ISBN, l.Nombre, l.Editorial,p.Precio, p.Estado')
    Left = 424
    Top = 256
    object ADOQuery4ISBN: TWideStringField
      FieldName = 'ISBN'
      Size = 255
    end
    object ADOQuery4Nombre: TWideStringField
      FieldName = 'Nombre'
      Size = 255
    end
    object ADOQuery4Editorial: TWideStringField
      FieldName = 'Editorial'
      Size = 255
    end
    object ADOQuery4Precio: TBCDField
      FieldName = 'Precio'
      Precision = 19
    end
    object ADOQuery4Cantidad: TIntegerField
      FieldName = 'Cantidad'
    end
  end
  object DataSource4: TDataSource
    DataSet = ADOQuery4
    Left = 424
    Top = 320
  end
  object ADOQuery5: TADOQuery
    Active = True
    Connection = ADOConnection1
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      
        'select  top 3  p.ISBN, l.Nombre, p.Precio, l.Editorial, count(*)' +
        ' as Cantidad'
      'from libro l '
      'inner join pedido p'
      'on l.ISBN = p.ISBN'
      'where p.Estado=True '
      'group by p.ISBN, l.Nombre, p.Precio, l.Editorial, p.Estado'
      'order by 5 desc')
    Left = 496
    Top = 256
  end
  object DataSource5: TDataSource
    DataSet = ADOQuery5
    Left = 496
    Top = 320
  end
  object ADOQuery6: TADOQuery
    Active = True
    Connection = ADOConnection1
    CursorType = ctStatic
    Parameters = <
      item
        Name = 'par1'
        Attributes = [paNullable]
        DataType = ftWideString
        NumericScale = 255
        Precision = 255
        Size = 510
        Value = 'null'
      end
      item
        Name = 'par2'
        Attributes = [paNullable]
        DataType = ftWideString
        NumericScale = 255
        Precision = 255
        Size = 510
        Value = 'null'
      end>
    SQL.Strings = (
      
        'select l.Nombre, l.Editorial, l.Precio, l.Cantidad_De_Paginas, l' +
        '.Idioma, l.ISBN, l.Fecha_De_Edicion, l.Sinopsis, l.Id_Autor, l.T' +
        'apa'
      'from Autor a inner join Libro l on a.Id_Autor= l.Id_Autor'
      
        'where (a.Nombre like '#39'%'#39' + :par1 + '#39'%'#39' or a.Apellido like '#39'%'#39' + ' +
        ':par2 + '#39'%'#39')   and  l.Eliminado = False')
    Left = 536
    Top = 40
    object ADOQuery6Nombre: TWideStringField
      FieldName = 'Nombre'
      Size = 255
    end
    object ADOQuery6Editorial: TWideStringField
      FieldName = 'Editorial'
      Size = 255
    end
    object ADOQuery6Precio: TBCDField
      FieldName = 'Precio'
      Precision = 19
    end
    object ADOQuery6Cantidad_De_Paginas: TIntegerField
      FieldName = 'Cantidad_De_Paginas'
    end
    object ADOQuery6Idioma: TWideStringField
      FieldName = 'Idioma'
      Size = 255
    end
    object ADOQuery6ISBN: TWideStringField
      FieldName = 'ISBN'
      Size = 255
    end
    object ADOQuery6Fecha_De_Edicion: TDateTimeField
      FieldName = 'Fecha_De_Edicion'
    end
    object ADOQuery6Sinopsis: TWideStringField
      FieldName = 'Sinopsis'
      Size = 255
    end
    object ADOQuery6Id_Autor: TIntegerField
      FieldName = 'Id_Autor'
    end
    object ADOQuery6Tapa: TWideStringField
      FieldName = 'Tapa'
      Size = 255
    end
  end
  object DataSource6: TDataSource
    DataSet = ADOQuery6
    Left = 536
    Top = 96
  end
  object ADOQuery7: TADOQuery
    Active = True
    Connection = ADOConnection1
    CursorType = ctStatic
    Parameters = <
      item
        Name = 'par1'
        Attributes = [paNullable]
        DataType = ftWideString
        NumericScale = 255
        Precision = 255
        Size = 510
        Value = 'null'
      end>
    SQL.Strings = (
      'select * '
      'from Libro '
      'where Nombre like '#39'%'#39' + :par1 + '#39'%'#39'    and  Eliminado = False')
    Left = 32
    Top = 112
    object ADOQuery7Id_Libro: TAutoIncField
      FieldName = 'Id_Libro'
      ReadOnly = True
    end
    object ADOQuery7Nombre: TWideStringField
      FieldName = 'Nombre'
      Size = 255
    end
    object ADOQuery7Editorial: TWideStringField
      FieldName = 'Editorial'
      Size = 255
    end
    object ADOQuery7Sinopsis: TWideStringField
      FieldName = 'Sinopsis'
      Size = 255
    end
    object ADOQuery7Tapa: TWideStringField
      FieldName = 'Tapa'
      Size = 255
    end
    object ADOQuery7Precio: TBCDField
      FieldName = 'Precio'
      Precision = 19
    end
    object ADOQuery7Id_Autor: TIntegerField
      FieldName = 'Id_Autor'
    end
    object ADOQuery7Cantidad_De_Paginas: TIntegerField
      FieldName = 'Cantidad_De_Paginas'
    end
    object ADOQuery7Idioma: TWideStringField
      FieldName = 'Idioma'
      Size = 255
    end
    object ADOQuery7Fecha_De_Edicion: TDateTimeField
      FieldName = 'Fecha_De_Edicion'
    end
    object ADOQuery7Eliminado: TBooleanField
      FieldName = 'Eliminado'
    end
    object ADOQuery7ISBN: TWideStringField
      FieldName = 'ISBN'
      Size = 255
    end
  end
  object DataSource7: TDataSource
    DataSet = ADOQuery7
    Left = 32
    Top = 176
  end
end
