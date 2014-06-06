object Form11: TForm11
  Left = 293
  Top = 110
  BorderIcons = [biSystemMenu]
  Caption = 'Lista de libros'
  ClientHeight = 535
  ClientWidth = 912
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
  object Label2: TLabel
    Left = 8
    Top = 505
    Width = 57
    Height = 22
    AutoSize = False
    Caption = 'Titulo:'
  end
  object DBGrid1: TDBGrid
    Left = 8
    Top = 8
    Width = 905
    Height = 473
    DataSource = Form3.DSLIBROS
    Options = [dgTitles, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgRowSelect, dgConfirmDelete, dgCancelOnExit, dgTitleClick, dgTitleHotTrack]
    TabOrder = 0
    TitleFont.Charset = ANSI_CHARSET
    TitleFont.Color = clBlack
    TitleFont.Height = -19
    TitleFont.Name = 'Times New Roman'
    TitleFont.Style = [fsBold]
    OnTitleClick = DBGrid1TitleClick
    Columns = <
      item
        Expanded = False
        FieldName = 'Nombre'
        Title.Caption = 'Titulo'
        Width = 388
        Visible = True
      end
      item
        Alignment = taCenter
        Expanded = False
        FieldName = 'Precio'
        Width = 104
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'Editorial'
        Width = 150
        Visible = True
      end
      item
        Alignment = taCenter
        Expanded = False
        FieldName = 'Cantidad_De_Paginas'
        Title.Caption = 'P'#225'ginas'
        Width = 98
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'Idioma'
        Width = 123
        Visible = True
      end>
  end
  object Edit1: TEdit
    Left = 63
    Top = 497
    Width = 466
    Height = 30
    TabOrder = 1
    OnChange = Edit1Change
  end
  object Button1: TButton
    Left = 535
    Top = 497
    Width = 129
    Height = 30
    Caption = 'Buscar'
    TabOrder = 2
    OnClick = Button1Click
  end
  object Button2: TButton
    Left = 703
    Top = 497
    Width = 201
    Height = 30
    Caption = 'Ver lista completa'
    TabOrder = 3
    OnClick = Button2Click
  end
end
