object Form5: TForm5
  Left = 512
  Top = 118
  BorderIcons = [biSystemMenu]
  BorderStyle = bsDialog
  Caption = 'CARRITO DE COMPRAS'
  ClientHeight = 571
  ClientWidth = 596
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
  object Label46: TLabel
    Left = 380
    Top = 506
    Width = 73
    Height = 22
    AutoSize = False
    Caption = 'TOTAL:'
    Color = clWhite
    ParentColor = False
    Transparent = False
  end
  object Label47: TLabel
    Left = 474
    Top = 506
    Width = 15
    Height = 22
    AutoSize = False
    Caption = '$'
    Color = clWhite
    ParentColor = False
    Transparent = False
  end
  object Label1: TLabel
    Left = 8
    Top = 541
    Width = 51
    Height = 22
    Caption = 'Ayuda'
    OnClick = Label1Click
  end
  object Button1: TButton
    Left = 8
    Top = 502
    Width = 161
    Height = 33
    Caption = 'COMPRAR'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -19
    Font.Name = 'Times New Roman'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 0
    OnClick = Button1Click
  end
  object Button2: TButton
    Left = 193
    Top = 502
    Width = 161
    Height = 33
    Caption = 'CANCELAR'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -19
    Font.Name = 'Times New Roman'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 1
    OnClick = Button2Click
  end
  object DBGrid1: TDBGrid
    Left = 8
    Top = 16
    Width = 580
    Height = 377
    DataSource = Form3.DSLISTA
    Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgConfirmDelete, dgCancelOnExit, dgTitleClick, dgTitleHotTrack]
    TabOrder = 2
    TitleFont.Charset = ANSI_CHARSET
    TitleFont.Color = clBlack
    TitleFont.Height = -19
    TitleFont.Name = 'Times New Roman'
    TitleFont.Style = [fsBold]
    OnCellClick = DBGrid1CellClick
    Columns = <
      item
        Color = 14134444
        Expanded = False
        FieldName = 'ISBN'
        Width = 200
        Visible = True
      end
      item
        Color = 14134444
        Expanded = False
        FieldName = 'precio'
        Width = 200
        Visible = True
      end
      item
        Color = 14134444
        Expanded = False
        FieldName = 'Cantidad'
        Width = 200
        Visible = True
      end>
  end
  object Edit1: TEdit
    Left = 489
    Top = 506
    Width = 102
    Height = 22
    Alignment = taRightJustify
    BorderStyle = bsNone
    TabOrder = 3
    Text = '0'
  end
  object Button3: TButton
    Left = 392
    Top = 407
    Width = 196
    Height = 26
    Caption = 'ELIMINAR LIBRO'
    Enabled = False
    TabOrder = 4
    OnClick = Button3Click
  end
end
