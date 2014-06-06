object Form8: TForm8
  Left = 342
  Top = 165
  BorderIcons = [biSystemMenu]
  Caption = 'Autores'
  ClientHeight = 418
  ClientWidth = 782
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
  object Label2: TLabel
    Left = 24
    Top = 296
    Width = 72
    Height = 22
    Caption = 'Apellido:'
    Visible = False
  end
  object Label18: TLabel
    Left = 327
    Top = 296
    Width = 10
    Height = 22
    Caption = '*'
    Visible = False
  end
  object Label17: TLabel
    Left = 327
    Top = 227
    Width = 10
    Height = 22
    Caption = '*'
    Visible = False
  end
  object Label12: TLabel
    Left = 8
    Top = 329
    Width = 165
    Height = 22
    Caption = '* Datos obligatorios'
    Visible = False
  end
  object DBGrid1: TDBGrid
    Left = 24
    Top = 0
    Width = 729
    Height = 154
    DataSource = Form3.DSAUTOR
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
        Width = 348
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'Apellido'
        Width = 503
        Visible = True
      end>
  end
  object Button1: TButton
    Left = 24
    Top = 160
    Width = 185
    Height = 30
    Caption = 'Agregar'
    TabOrder = 1
    OnClick = Button1Click
  end
  object Button2: TButton
    Left = 224
    Top = 160
    Width = 161
    Height = 30
    Caption = 'Modificar'
    Enabled = False
    TabOrder = 2
    OnClick = Button2Click
  end
  object Button3: TButton
    Left = 399
    Top = 160
    Width = 154
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
    Top = 293
    Width = 208
    Height = 30
    TabOrder = 5
    Visible = False
  end
  object Button4: TButton
    Left = 184
    Top = 368
    Width = 153
    Height = 33
    Caption = 'Aceptar'
    TabOrder = 6
    Visible = False
    OnClick = Button4Click
  end
  object Button5: TButton
    Left = 8
    Top = 368
    Width = 165
    Height = 33
    Caption = 'Cancelar'
    TabOrder = 7
    Visible = False
    OnClick = Button5Click
  end
  object Button6: TButton
    Left = 568
    Top = 160
    Width = 161
    Height = 30
    Caption = 'Buscar'
    TabOrder = 8
    OnClick = Button6Click
  end
end
