object Form1: TForm1
  Left = 197
  Top = 136
  Caption = #1055#1088#1080#1073#1083#1080#1078#1077#1085#1085#1099#1077' '#1074#1099#1095#1080#1089#1083#1077#1085#1080#1103': '#1087#1086#1080#1089#1082' '#1082#1086#1088#1085#1103' '#1076#1074#1091#1084#1103' '#1084#1077#1090#1086#1076#1072#1084#1080
  ClientHeight = 517
  ClientWidth = 785
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 16
    Top = 16
    Width = 199
    Height = 13
    Caption = #1054#1090#1088#1077#1079#1086#1082' AB '#1080' '#1082#1086#1083#1080#1095#1077#1089#1090#1074#1086' N '#1090#1086#1095#1085#1086#1089#1090#1080' E'
  end
  object Label2: TLabel
    Left = 16
    Top = 56
    Width = 7
    Height = 13
    Caption = 'A'
  end
  object Label3: TLabel
    Left = 16
    Top = 96
    Width = 7
    Height = 13
    Caption = 'B'
  end
  object Label4: TLabel
    Left = 16
    Top = 136
    Width = 8
    Height = 13
    Caption = 'N'
  end
  object Label5: TLabel
    Left = 224
    Top = 32
    Width = 100
    Height = 13
    Caption = #1050#1086#1083#1080#1095#1077#1089#1090#1074#1086' '#1090#1086#1095#1077#1082' K'
  end
  object Label6: TLabel
    Left = 200
    Top = 56
    Width = 7
    Height = 13
    Caption = 'K'
  end
  object Chart1: TChart
    Left = 375
    Top = 136
    Width = 393
    Height = 353
    BackWall.Brush.Color = clWhite
    BackWall.Brush.Style = bsClear
    Legend.Visible = False
    Title.Text.Strings = (
      #1043#1088#1072#1092#1080#1082)
    View3D = False
    TabOrder = 0
    ColorPaletteIndex = 13
    object Series1: TLineSeries
      Marks.Arrow.Visible = True
      Marks.Callout.Brush.Color = clBlack
      Marks.Callout.Arrow.Visible = True
      Marks.Visible = False
      SeriesColor = clRed
      OnClick = Series1Click
      Pointer.InflateMargins = True
      Pointer.Style = psRectangle
      Pointer.Visible = False
      XValues.Name = 'X'
      XValues.Order = loAscending
      YValues.Name = 'Y'
      YValues.Order = loNone
    end
    object Series2: TLineSeries
      Marks.Arrow.Visible = True
      Marks.Callout.Brush.Color = clBlack
      Marks.Callout.Arrow.Visible = True
      Marks.Visible = False
      SeriesColor = clGreen
      Pointer.InflateMargins = True
      Pointer.Style = psRectangle
      Pointer.Visible = False
      XValues.Name = 'X'
      XValues.Order = loAscending
      YValues.Name = 'Y'
      YValues.Order = loNone
    end
    object Series3: TLineSeries
      Marks.Arrow.Visible = True
      Marks.Callout.Brush.Color = clBlack
      Marks.Callout.Arrow.Visible = True
      Marks.Visible = False
      SeriesColor = clBlue
      Pointer.InflateMargins = True
      Pointer.Style = psRectangle
      Pointer.Visible = False
      XValues.Name = 'X'
      XValues.Order = loAscending
      YValues.Name = 'Y'
      YValues.Order = loNone
    end
  end
  object Edit1: TEdit
    Left = 40
    Top = 56
    Width = 121
    Height = 21
    TabOrder = 1
    Text = '0,01'
    OnExit = Edit1Exit
  end
  object Edit2: TEdit
    Left = 40
    Top = 96
    Width = 121
    Height = 21
    TabOrder = 2
    Text = '1,99'
    OnExit = Edit2Exit
  end
  object Edit3: TEdit
    Left = 40
    Top = 136
    Width = 121
    Height = 21
    ReadOnly = True
    TabOrder = 3
    Text = '7'
  end
  object Button1: TButton
    Left = 16
    Top = 224
    Width = 177
    Height = 33
    Hint = #1056#1080#1089#1086#1074#1072#1090#1100' '#1075#1088#1072#1092#1080#1082' '#1076#1083#1103' 100 '#1090#1086#1095#1077#1082' '#1086#1090' A '#1076#1086' B'
    Caption = #1053#1072#1081#1090#1080' '#1082#1086#1088#1077#1085#1100
    ParentShowHint = False
    ShowHint = True
    TabOrder = 4
    OnClick = Button1Click
  end
  object Button2: TButton
    Left = 16
    Top = 176
    Width = 177
    Height = 33
    Hint = 
      #1053#1072#1081#1090#1080' '#1082#1086#1088#1085#1080' '#1076#1074#1091#1084#1103' '#1084#1077#1090#1086#1076#1072#1084#1080' '#1076#1083#1103' N '#1079#1085#1072#1095#1077#1085#1080#1081' '#1090#1086#1095#1085#1086#1089#1090#1080' E: 0,1; 0,01;' +
      ' 0,001; ...'
    Caption = #1043#1088#1072#1092#1080#1082
    ParentShowHint = False
    ShowHint = True
    TabOrder = 5
    OnClick = Button2Click
  end
  object Edit4: TEdit
    Left = 216
    Top = 56
    Width = 121
    Height = 21
    ReadOnly = True
    TabOrder = 6
    Text = '3'
  end
  object UpDown1: TUpDown
    Left = 161
    Top = 136
    Width = 16
    Height = 21
    Associate = Edit3
    Min = 1
    Max = 10
    Position = 7
    TabOrder = 7
  end
  object StringGrid1: TStringGrid
    Left = 375
    Top = 29
    Width = 313
    Height = 101
    ColCount = 4
    RowCount = 2
    FixedRows = 0
    TabOrder = 8
  end
  object StringGrid2: TStringGrid
    Left = 8
    Top = 272
    Width = 361
    Height = 233
    DefaultColWidth = 85
    RowCount = 8
    Options = [goFixedVertLine, goFixedHorzLine, goVertLine, goHorzLine, goRangeSelect, goColSizing]
    TabOrder = 9
    ColWidths = (
      85
      82
      50
      75
      85)
  end
  object UpDown2: TUpDown
    Left = 337
    Top = 56
    Width = 16
    Height = 21
    Associate = Edit4
    Min = 2
    Max = 200
    Position = 3
    TabOrder = 10
  end
  object Button3: TButton
    Left = 216
    Top = 88
    Width = 137
    Height = 41
    Hint = #1056#1072#1089#1089#1095#1080#1090#1072#1090#1100' '#1079#1085#1072#1095#1077#1085#1080#1077' '#1092#1091#1085#1082#1094#1080#1080' '#1074' K '#1090#1086#1095#1082#1072#1093' '#1086#1090' A '#1076#1086' B'
    Caption = #1055#1086#1089#1095#1080#1090#1072#1090#1100
    ParentShowHint = False
    ShowHint = True
    TabOrder = 11
    OnClick = Button3Click
  end
end
