object Form11: TForm11
  Left = 293
  Top = 110
  BorderIcons = [biSystemMenu]
  BorderStyle = bsDialog
  Caption = 'HISTORIAL'
  ClientHeight = 495
  ClientWidth = 888
  Color = 14134444
  Font.Charset = ANSI_CHARSET
  Font.Color = clBlack
  Font.Height = -19
  Font.Name = 'Times New Roman'
  Font.Style = [fsBold]
  OldCreateOrder = False
  Position = poDesigned
  Scaled = False
  PixelsPerInch = 96
  TextHeight = 22
  object DBGrid1: TDBGrid
    Left = 8
    Top = 8
    Width = 872
    Height = 409
    DataSource = Form3.DShistorial
    Options = [dgTitles, dgColLines, dgRowLines, dgTabs, dgConfirmDelete, dgCancelOnExit, dgTitleClick, dgTitleHotTrack]
    TabOrder = 0
    TitleFont.Charset = ANSI_CHARSET
    TitleFont.Color = clBlack
    TitleFont.Height = -19
    TitleFont.Name = 'Times New Roman'
    TitleFont.Style = [fsBold]
    Columns = <
      item
        Expanded = False
        FieldName = 'nombre'
        Width = 363
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'ISBN'
        Width = 139
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'Fecha_Pedido'
        Width = 134
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'Precio'
        Width = 89
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'total'
        Width = 81
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'Estado_Pedido'
        Title.Caption = 'Estado'
        Width = 150
        Visible = True
      end>
  end
end
