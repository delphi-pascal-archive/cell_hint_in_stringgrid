object Form1: TForm1
  Left = 224
  Top = 128
  BorderIcons = [biSystemMenu, biMinimize]
  BorderStyle = bsSingle
  Caption = 'Cell hint in StringGrid'
  ClientHeight = 275
  ClientWidth = 530
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -14
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  Position = poScreenCenter
  ShowHint = True
  OnCreate = FormCreate
  PixelsPerInch = 120
  TextHeight = 16
  object StringGrid1: TStringGrid
    Left = 8
    Top = 8
    Width = 513
    Height = 257
    DefaultColWidth = 95
    FixedCols = 0
    RowCount = 9
    FixedRows = 0
    Options = [goFixedVertLine, goFixedHorzLine, goVertLine, goHorzLine, goRangeSelect, goEditing, goTabs, goThumbTracking]
    ParentShowHint = False
    ShowHint = True
    TabOrder = 0
  end
end
