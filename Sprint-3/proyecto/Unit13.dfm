object Form13: TForm13
  Left = 583
  Top = 325
  BorderIcons = [biSystemMenu]
  BorderStyle = bsDialog
  Caption = 'Eliminar'
  ClientHeight = 92
  ClientWidth = 297
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
    Top = 12
    Width = 271
    Height = 26
    Caption = 'Esta seguro de eliminar el autor?'
  end
  object Button1: TButton
    Left = 41
    Top = 49
    Width = 75
    Height = 25
    Caption = 'Si'
    TabOrder = 0
    OnClick = Button1Click
  end
  object Button2: TButton
    Left = 160
    Top = 49
    Width = 75
    Height = 25
    Caption = 'No'
    TabOrder = 1
    OnClick = Button2Click
  end
end
