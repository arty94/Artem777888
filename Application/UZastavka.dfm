object fZastavka: TfZastavka
  Left = 617
  Top = 357
  BorderStyle = bsNone
  ClientHeight = 346
  ClientWidth = 829
  Color = clFuchsia
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 600
    Top = 280
    Width = 111
    Height = 24
    Caption = #1047#1072#1075#1088#1091#1079#1082#1072' 0%'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -19
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
  end
  object Label2: TLabel
    Left = 64
    Top = 16
    Width = 708
    Height = 255
    Caption = 'Mobika'
    Color = clAqua
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -227
    Font.Name = 'Times New Roman'
    Font.Style = []
    ParentColor = False
    ParentFont = False
  end
  object ProgressBar1: TProgressBar
    Left = 0
    Top = 304
    Width = 825
    Height = 41
    TabOrder = 0
  end
  object XPManifest1: TXPManifest
    Left = 16
    Top = 256
  end
  object Timer1: TTimer
    Interval = 500
    OnTimer = Timer1Timer
    Left = 8
    Top = 8
  end
end
