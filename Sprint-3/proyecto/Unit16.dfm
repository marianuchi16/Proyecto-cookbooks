object Form16: TForm16
  Left = 512
  Top = 443
  BorderIcons = [biSystemMenu]
  BorderStyle = bsDialog
  Caption = 'INFORMES'
  ClientHeight = 245
  ClientWidth = 774
  Color = 14134444
  Font.Charset = ANSI_CHARSET
  Font.Color = clBlack
  Font.Height = -19
  Font.Name = 'Times New Roman'
  Font.Style = [fsBold]
  OldCreateOrder = False
  Position = poDesigned
  PixelsPerInch = 96
  TextHeight = 22
  object Label1: TLabel
    Left = 8
    Top = 8
    Width = 393
    Height = 29
    Caption = 'Seleccione el informe que desea visualizar'
    WordWrap = True
  end
  object Label2: TLabel
    Left = 500
    Top = 51
    Width = 50
    Height = 22
    Caption = 'Desde'
    Visible = False
  end
  object Label3: TLabel
    Left = 502
    Top = 107
    Width = 48
    Height = 22
    Caption = 'Hasta'
    Visible = False
  end
  object Label4: TLabel
    Left = 8
    Top = 63
    Width = 467
    Height = 22
    AutoSize = False
    Caption = 'Informe de los clientes dados de alta entre dos fechas'
    Color = 12615808
    ParentColor = False
    Transparent = False
    OnClick = Label4Click
  end
  object Label5: TLabel
    Left = 8
    Top = 107
    Width = 467
    Height = 22
    AutoSize = False
    Caption = 'Informe de los libros mas vendidos entre dos fechas'
    Color = 12615808
    ParentColor = False
    Transparent = False
    OnClick = Label5Click
  end
  object Label6: TLabel
    Left = 8
    Top = 155
    Width = 467
    Height = 22
    AutoSize = False
    Caption = 'Informe de los 3 libros mas vendidos'
    Color = 12615808
    ParentColor = False
    Transparent = False
    OnClick = Label6Click
  end
  object Button3: TButton
    Left = 526
    Top = 171
    Width = 185
    Height = 38
    Caption = 'Buscar'
    TabOrder = 0
    Visible = False
    WordWrap = True
    OnClick = Button3Click
  end
  object DateTimePicker1: TDateTimePicker
    Left = 582
    Top = 43
    Width = 137
    Height = 30
    Date = 41640.640862071760000000
    Time = 41640.640862071760000000
    Checked = False
    TabOrder = 1
    Visible = False
    OnChange = DateTimePicker1Change
  end
  object DateTimePicker2: TDateTimePicker
    Left = 582
    Top = 99
    Width = 137
    Height = 30
    Date = 41640.641058090280000000
    Time = 41640.641058090280000000
    Checked = False
    TabOrder = 2
    Visible = False
    OnChange = DateTimePicker2Change
  end
end
