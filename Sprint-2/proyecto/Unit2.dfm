object Form2: TForm2
  Left = 441
  Top = 192
  BorderStyle = bsDialog
  Caption = 'Acerca de'
  ClientHeight = 349
  ClientWidth = 500
  Color = 14134444
  Font.Charset = ANSI_CHARSET
  Font.Color = clBlack
  Font.Height = -19
  Font.Name = 'Times New Roman'
  Font.Style = [fsBold]
  OldCreateOrder = False
  Position = poDesigned
  OnClose = FormClose
  PixelsPerInch = 96
  TextHeight = 22
  object Memo1: TMemo
    Left = 8
    Top = 8
    Width = 481
    Height = 332
    TabStop = False
    Color = 14134444
    Lines.Strings = (
      'COOKBOOK ES UNA PAGINA DE VENTAS DE '
      'LIBROS DE COCINA.'
      'POSEEMOS LIBROS TANTO EN LENGUA '
      'ESPA'#209'OLA COMO DE OTROS '
      'IDIOMAS.'
      'NUESTRO OBJETIVO ES SATISFACER LAS '
      'NECESIDADES DE LOS'
      'CLIENTES DE LA COMUNIDAD DE COCINA A '
      'TRAV'#201'S DE LA M'#193'XIMA'
      'VARIEDAD DE PRODUCTOS, PRECIOS '
      'COMPETITIVOS Y EL MEJOR'
      'NIVEL DE SERVICIO DEL MERCADO.')
    ParentShowHint = False
    ReadOnly = True
    ShowHint = False
    TabOrder = 0
    Visible = False
  end
  object Memo2: TMemo
    Left = 8
    Top = 8
    Width = 481
    Height = 332
    TabStop = False
    Color = 14134444
    Lines.Strings = (
      ''
      ''
      ''
      ''
      '          PONTE EN CONTACTO CON NOSOTROS'
      ''
      '          EMAIL: CONTACTO@COOKBOOK.COM.AR'
      ''
      '          CUIDAD AUTONOMA DE BUENOS AIRES')
    ReadOnly = True
    TabOrder = 1
    Visible = False
  end
end
