object Form13: TForm13
  Left = 342
  Top = 110
  BorderIcons = [biSystemMenu]
  Caption = 'Lista de Autores'
  ClientHeight = 532
  ClientWidth = 822
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
    Left = 549
    Top = 119
    Width = 81
    Height = 22
    AutoSize = False
    Caption = 'Nombre:'
  end
  object Label1: TLabel
    Left = 549
    Top = 185
    Width = 81
    Height = 23
    AutoSize = False
    Caption = 'Apellido:'
  end
  object Label3: TLabel
    Left = 549
    Top = 32
    Width = 252
    Height = 73
    AutoSize = False
    Caption = 'Ingrese un nombre y/o un apellido para realizar la busqueda'
    WordWrap = True
  end
  object DBGrid1: TDBGrid
    Left = 8
    Top = 8
    Width = 535
    Height = 473
    DataSource = Form3.DSAUTOR
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
        Width = 200
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'Apellido'
        Width = 200
        Visible = True
      end>
  end
  object Edit1: TEdit
    Left = 549
    Top = 147
    Width = 192
    Height = 30
    TabOrder = 1
  end
  object Button1: TButton
    Left = 612
    Top = 279
    Width = 129
    Height = 30
    Caption = 'Buscar'
    TabOrder = 2
    OnClick = Button1Click
  end
  object Edit2: TEdit
    Left = 549
    Top = 215
    Width = 192
    Height = 30
    TabOrder = 3
  end
  object Button2: TButton
    Left = 584
    Top = 448
    Width = 185
    Height = 33
    Caption = 'Ver lista completa'
    TabOrder = 4
    OnClick = Button2Click
  end
end
