object Form4: TForm4
  Left = 342
  Top = 0
  BorderIcons = [biSystemMenu]
  Caption = 'Registrarse'
  ClientHeight = 571
  ClientWidth = 781
  Color = clWhite
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
  object Label1: TLabel
    Left = 8
    Top = 24
    Width = 71
    Height = 22
    Caption = 'Nombre:'
    Font.Charset = ANSI_CHARSET
    Font.Color = clBlack
    Font.Height = -19
    Font.Name = 'Times New Roman'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label2: TLabel
    Left = 8
    Top = 64
    Width = 72
    Height = 22
    Caption = 'Apellido:'
    Font.Charset = ANSI_CHARSET
    Font.Color = clBlack
    Font.Height = -19
    Font.Name = 'Times New Roman'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label3: TLabel
    Left = 8
    Top = 104
    Width = 120
    Height = 22
    Caption = 'Codigo Postal:'
    Font.Charset = ANSI_CHARSET
    Font.Color = clBlack
    Font.Height = -19
    Font.Name = 'Times New Roman'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label4: TLabel
    Left = 8
    Top = 144
    Width = 48
    Height = 22
    Caption = 'Calle:'
    Font.Charset = ANSI_CHARSET
    Font.Color = clBlack
    Font.Height = -19
    Font.Name = 'Times New Roman'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label5: TLabel
    Left = 8
    Top = 184
    Width = 71
    Height = 22
    Caption = 'Numero:'
    Font.Charset = ANSI_CHARSET
    Font.Color = clBlack
    Font.Height = -19
    Font.Name = 'Times New Roman'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label6: TLabel
    Left = 8
    Top = 224
    Width = 40
    Height = 22
    Caption = 'Piso:'
    Font.Charset = ANSI_CHARSET
    Font.Color = clBlack
    Font.Height = -19
    Font.Name = 'Times New Roman'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label7: TLabel
    Left = 8
    Top = 264
    Width = 54
    Height = 22
    Caption = 'Depto:'
    Font.Charset = ANSI_CHARSET
    Font.Color = clBlack
    Font.Height = -19
    Font.Name = 'Times New Roman'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label8: TLabel
    Left = 8
    Top = 304
    Width = 86
    Height = 22
    Caption = 'Localidad:'
    Font.Charset = ANSI_CHARSET
    Font.Color = clBlack
    Font.Height = -19
    Font.Name = 'Times New Roman'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label13: TLabel
    Left = 463
    Top = 304
    Width = 10
    Height = 22
    Caption = '*'
  end
  object Label14: TLabel
    Left = 463
    Top = 192
    Width = 10
    Height = 22
    Caption = '*'
  end
  object Label15: TLabel
    Left = 463
    Top = 152
    Width = 10
    Height = 22
    Caption = '*'
  end
  object Label16: TLabel
    Left = 463
    Top = 112
    Width = 10
    Height = 22
    Caption = '*'
  end
  object Label17: TLabel
    Left = 463
    Top = 72
    Width = 10
    Height = 22
    Caption = '*'
  end
  object Label18: TLabel
    Left = 463
    Top = 29
    Width = 10
    Height = 22
    Caption = '*'
  end
  object Label19: TLabel
    Left = 319
    Top = 392
    Width = 10
    Height = 22
    Caption = '*'
  end
  object Label21: TLabel
    Left = 8
    Top = 350
    Width = 83
    Height = 22
    Caption = 'Provincia:'
  end
  object Label22: TLabel
    Left = 463
    Top = 350
    Width = 10
    Height = 22
    Caption = '*'
  end
  object Label23: TLabel
    Left = 518
    Top = 24
    Width = 69
    Height = 22
    Caption = 'Usuario:'
  end
  object Label24: TLabel
    Left = 518
    Top = 104
    Width = 100
    Height = 22
    Caption = 'Contrase'#241'a:'
  end
  object Label25: TLabel
    Left = 751
    Top = 29
    Width = 10
    Height = 22
    Caption = '*'
  end
  object Label26: TLabel
    Left = 751
    Top = 103
    Width = 10
    Height = 22
    Caption = '*'
  end
  object Label9: TLabel
    Left = 8
    Top = 396
    Width = 155
    Height = 22
    Caption = 'Numero de tarjeta:'
    Font.Charset = ANSI_CHARSET
    Font.Color = clBlack
    Font.Height = -19
    Font.Name = 'Times New Roman'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label12: TLabel
    Left = 21
    Top = 484
    Width = 165
    Height = 22
    Caption = '* Datos obligatorios'
  end
  object Edit1: TEdit
    Left = 152
    Top = 21
    Width = 305
    Height = 30
    CharCase = ecUpperCase
    TabOrder = 0
  end
  object Edit2: TEdit
    Left = 152
    Top = 64
    Width = 305
    Height = 30
    CharCase = ecUpperCase
    TabOrder = 1
  end
  object Edit3: TEdit
    Left = 152
    Top = 100
    Width = 305
    Height = 30
    NumbersOnly = True
    TabOrder = 2
  end
  object Edit4: TEdit
    Left = 152
    Top = 144
    Width = 305
    Height = 30
    TabOrder = 3
  end
  object Edit5: TEdit
    Left = 152
    Top = 184
    Width = 305
    Height = 30
    NumbersOnly = True
    TabOrder = 4
  end
  object Edit6: TEdit
    Left = 152
    Top = 221
    Width = 305
    Height = 30
    TabOrder = 5
  end
  object Edit7: TEdit
    Left = 152
    Top = 264
    Width = 305
    Height = 30
    TabOrder = 6
  end
  object Edit8: TEdit
    Left = 152
    Top = 301
    Width = 305
    Height = 30
    CharCase = ecUpperCase
    TabOrder = 7
  end
  object Button1: TButton
    Left = 184
    Top = 531
    Width = 129
    Height = 32
    Caption = 'Enviar'
    TabOrder = 8
    OnClick = Button1Click
  end
  object Edit11: TEdit
    Left = 152
    Top = 342
    Width = 305
    Height = 30
    CharCase = ecUpperCase
    TabOrder = 9
  end
  object Edit12: TEdit
    Left = 624
    Top = 21
    Width = 121
    Height = 30
    TabOrder = 10
    OnKeyPress = Edit12KeyPress
  end
  object Edit13: TEdit
    Left = 624
    Top = 100
    Width = 121
    Height = 30
    TabOrder = 11
    OnKeyPress = Edit13KeyPress
  end
  object Button2: TButton
    Left = 612
    Top = 67
    Width = 133
    Height = 25
    Caption = 'Disponibilidad '
    TabOrder = 12
    OnClick = Button2Click
  end
  object Edit9: TEdit
    Left = 184
    Top = 389
    Width = 121
    Height = 30
    MaxLength = 8
    NumbersOnly = True
    TabOrder = 13
  end
  object Button3: TButton
    Left = 518
    Top = 144
    Width = 227
    Height = 25
    Caption = 'Modificar mis datos'
    TabOrder = 14
    Visible = False
    OnClick = Button3Click
  end
  object Button4: TButton
    Left = 518
    Top = 208
    Width = 227
    Height = 25
    Caption = 'Eliminar  Mi cuenta'
    TabOrder = 15
    Visible = False
    OnClick = Button4Click
  end
  object Button5: TButton
    Left = 518
    Top = 264
    Width = 227
    Height = 25
    Caption = 'Ver historial de compras'
    TabOrder = 16
    Visible = False
  end
  object Button6: TButton
    Left = 518
    Top = 320
    Width = 227
    Height = 25
    Caption = 'Atras'
    TabOrder = 17
    Visible = False
    OnClick = Button6Click
  end
end
