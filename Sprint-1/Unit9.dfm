object Form9: TForm9
  Left = 195
  Top = 0
  BorderIcons = [biSystemMenu]
  Caption = 'Libros'
  ClientHeight = 544
  ClientWidth = 924
  Color = clBtnFace
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
    Left = 24
    Top = 227
    Width = 71
    Height = 22
    Caption = 'Nombre:'
    Visible = False
  end
  object Label17: TLabel
    Left = 327
    Top = 227
    Width = 10
    Height = 22
    Caption = '*'
    Font.Charset = ANSI_CHARSET
    Font.Color = clRed
    Font.Height = -19
    Font.Name = 'Times New Roman'
    Font.Style = [fsBold]
    ParentFont = False
    Visible = False
  end
  object Label18: TLabel
    Left = 327
    Top = 268
    Width = 10
    Height = 22
    Caption = '*'
    Font.Charset = ANSI_CHARSET
    Font.Color = clRed
    Font.Height = -19
    Font.Name = 'Times New Roman'
    Font.Style = [fsBold]
    ParentFont = False
    Visible = False
  end
  object Label2: TLabel
    Left = 24
    Top = 268
    Width = 77
    Height = 22
    Caption = 'Editorial:'
    Visible = False
  end
  object Label12: TLabel
    Left = 360
    Top = 485
    Width = 177
    Height = 22
    Caption = 'Datos obligatorios (*)'
    Font.Charset = ANSI_CHARSET
    Font.Color = clRed
    Font.Height = -19
    Font.Name = 'Times New Roman'
    Font.Style = [fsBold]
    ParentFont = False
    Visible = False
  end
  object Label3: TLabel
    Left = 24
    Top = 312
    Width = 174
    Height = 22
    Caption = 'Cantidad de Paginas:'
    Visible = False
  end
  object Label4: TLabel
    Left = 24
    Top = 352
    Width = 62
    Height = 22
    Caption = 'Idioma:'
    Visible = False
  end
  object Label5: TLabel
    Left = 24
    Top = 392
    Width = 58
    Height = 22
    Caption = 'Precio:'
    Visible = False
  end
  object Label6: TLabel
    Left = 391
    Top = 421
    Width = 71
    Height = 22
    Caption = 'Nombre:'
    Visible = False
  end
  object Label7: TLabel
    Left = 391
    Top = 196
    Width = 102
    Height = 22
    Caption = 'Descripcion:'
    Visible = False
  end
  object Label8: TLabel
    Left = 632
    Top = 421
    Width = 72
    Height = 22
    Caption = 'Apellido:'
    Visible = False
  end
  object Label9: TLabel
    Left = 391
    Top = 398
    Width = 47
    Height = 22
    Caption = 'Autor'
    Visible = False
  end
  object label30: TLabel
    Left = 24
    Top = 432
    Width = 146
    Height = 22
    Caption = 'Fecha de Edicion:'
    Visible = False
  end
  object Label10: TLabel
    Left = 759
    Top = 227
    Width = 10
    Height = 22
    Caption = '*'
    Font.Charset = ANSI_CHARSET
    Font.Color = clRed
    Font.Height = -19
    Font.Name = 'Times New Roman'
    Font.Style = [fsBold]
    ParentFont = False
    Visible = False
  end
  object Label11: TLabel
    Left = 327
    Top = 306
    Width = 10
    Height = 22
    Caption = '*'
    Font.Charset = ANSI_CHARSET
    Font.Color = clRed
    Font.Height = -19
    Font.Name = 'Times New Roman'
    Font.Style = [fsBold]
    ParentFont = False
    Visible = False
  end
  object Label13: TLabel
    Left = 327
    Top = 347
    Width = 10
    Height = 22
    Caption = '*'
    Font.Charset = ANSI_CHARSET
    Font.Color = clRed
    Font.Height = -19
    Font.Name = 'Times New Roman'
    Font.Style = [fsBold]
    ParentFont = False
    Visible = False
  end
  object Label14: TLabel
    Left = 327
    Top = 383
    Width = 10
    Height = 22
    Caption = '*'
    Font.Charset = ANSI_CHARSET
    Font.Color = clRed
    Font.Height = -19
    Font.Name = 'Times New Roman'
    Font.Style = [fsBold]
    ParentFont = False
    Visible = False
  end
  object Label15: TLabel
    Left = 359
    Top = 432
    Width = 10
    Height = 22
    Caption = '*'
    Font.Charset = ANSI_CHARSET
    Font.Color = clRed
    Font.Height = -19
    Font.Name = 'Times New Roman'
    Font.Style = [fsBold]
    ParentFont = False
    Visible = False
  end
  object Label16: TLabel
    Left = 605
    Top = 457
    Width = 10
    Height = 22
    Caption = '*'
    Font.Charset = ANSI_CHARSET
    Font.Color = clRed
    Font.Height = -19
    Font.Name = 'Times New Roman'
    Font.Style = [fsBold]
    ParentFont = False
    Visible = False
  end
  object Label19: TLabel
    Left = 815
    Top = 452
    Width = 10
    Height = 22
    Caption = '*'
    Font.Charset = ANSI_CHARSET
    Font.Color = clRed
    Font.Height = -19
    Font.Name = 'Times New Roman'
    Font.Style = [fsBold]
    ParentFont = False
    Visible = False
  end
  object DBGrid1: TDBGrid
    Left = 24
    Top = 0
    Width = 729
    Height = 154
    DataSource = Form3.DSLIBROS
    Options = [dgTitles, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgConfirmDelete, dgCancelOnExit, dgTitleHotTrack]
    TabOrder = 0
    TitleFont.Charset = ANSI_CHARSET
    TitleFont.Color = clBlack
    TitleFont.Height = -19
    TitleFont.Name = 'Times New Roman'
    TitleFont.Style = [fsBold]
    OnCellClick = DBGrid1CellClick
    Columns = <
      item
        Expanded = False
        FieldName = 'Nombre'
        Width = 437
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'Precio'
        Width = 113
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'Editorial'
        Width = 154
        Visible = True
      end>
  end
  object Button1: TButton
    Left = 24
    Top = 160
    Width = 174
    Height = 30
    Caption = 'Agregar'
    TabOrder = 1
    OnClick = Button1Click
  end
  object Button2: TButton
    Left = 204
    Top = 160
    Width = 181
    Height = 30
    Caption = 'Modificar'
    Enabled = False
    TabOrder = 2
    OnClick = Button2Click
  end
  object Button3: TButton
    Left = 391
    Top = 160
    Width = 171
    Height = 30
    Caption = 'Eliminar'
    Enabled = False
    TabOrder = 3
    OnClick = Button3Click
  end
  object Edit1: TEdit
    Left = 113
    Top = 224
    Width = 208
    Height = 30
    TabOrder = 4
    Visible = False
  end
  object Edit2: TEdit
    Left = 113
    Top = 260
    Width = 208
    Height = 30
    TabOrder = 5
    Visible = False
  end
  object Button5: TButton
    Left = 8
    Top = 481
    Width = 165
    Height = 33
    Caption = 'Cancelar'
    TabOrder = 6
    Visible = False
    OnClick = Button5Click
  end
  object Button4: TButton
    Left = 184
    Top = 481
    Width = 153
    Height = 33
    Caption = 'Aceptar'
    TabOrder = 7
    Visible = False
    OnClick = Button4Click
  end
  object Edit3: TEdit
    Left = 208
    Top = 303
    Width = 113
    Height = 30
    NumbersOnly = True
    TabOrder = 8
    Visible = False
  end
  object Edit4: TEdit
    Left = 113
    Top = 344
    Width = 208
    Height = 30
    TabOrder = 9
    Visible = False
  end
  object Edit5: TEdit
    Left = 113
    Top = 380
    Width = 208
    Height = 30
    TabOrder = 10
    Visible = False
    OnKeyPress = Edit5KeyPress
  end
  object Edit6: TEdit
    Left = 391
    Top = 449
    Width = 208
    Height = 30
    TabOrder = 11
    Visible = False
  end
  object Edit8: TEdit
    Left = 632
    Top = 449
    Width = 177
    Height = 30
    TabOrder = 12
    Visible = False
  end
  object DateTimePicker1: TDateTimePicker
    Left = 167
    Top = 424
    Width = 186
    Height = 30
    Date = 41772.719488553240000000
    Time = 41772.719488553240000000
    TabOrder = 13
    Visible = False
  end
  object Memo1: TMemo
    Left = 391
    Top = 224
    Width = 362
    Height = 168
    TabOrder = 14
    Visible = False
  end
  object Button6: TButton
    Left = 568
    Top = 160
    Width = 161
    Height = 30
    Caption = 'Buscar'
    TabOrder = 15
    OnClick = Button6Click
  end
end
