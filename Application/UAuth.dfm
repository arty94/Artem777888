object fAuth: TfAuth
  Left = 787
  Top = 225
  Width = 221
  Height = 173
  BorderIcons = [biSystemMenu]
  Caption = 'MoBika ('#1072#1074#1090#1086#1088#1080#1079#1072#1094#1080#1103')'
  Color = clPurple
  Constraints.MaxHeight = 173
  Constraints.MaxWidth = 221
  Constraints.MinHeight = 173
  Constraints.MinWidth = 221
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Gothic'
  Font.Style = []
  KeyPreview = True
  OldCreateOrder = False
  OnKeyPress = FormKeyPress
  PixelsPerInch = 96
  TextHeight = 11
  object SpeedButton1: TSpeedButton
    Left = 24
    Top = 104
    Width = 57
    Height = 30
    Caption = #1042#1086#1081#1090#1080
    Font.Charset = RUSSIAN_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Corbel'
    Font.Style = [fsBold, fsItalic]
    ParentFont = False
    OnClick = SpeedButton1Click
  end
  object SpeedButton2: TSpeedButton
    Left = 128
    Top = 104
    Width = 57
    Height = 30
    Caption = #1042#1099#1081#1090#1080
    Font.Charset = RUSSIAN_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Corbel'
    Font.Style = [fsBold, fsItalic]
    ParentFont = False
    OnClick = SpeedButton2Click
  end
  object LabeledEdit1: TLabeledEdit
    Left = 16
    Top = 24
    Width = 177
    Height = 21
    EditLabel.Width = 30
    EditLabel.Height = 13
    EditLabel.Caption = #1051#1086#1075#1080#1085
    EditLabel.Font.Charset = RUSSIAN_CHARSET
    EditLabel.Font.Color = clWindowText
    EditLabel.Font.Height = -11
    EditLabel.Font.Name = 'Corbel'
    EditLabel.Font.Style = [fsBold, fsItalic]
    EditLabel.ParentFont = False
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlack
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
    TabOrder = 0
  end
  object LabeledEdit2: TLabeledEdit
    Left = 16
    Top = 72
    Width = 177
    Height = 21
    EditLabel.Width = 37
    EditLabel.Height = 13
    EditLabel.Caption = #1055#1072#1088#1086#1083#1100
    EditLabel.Font.Charset = RUSSIAN_CHARSET
    EditLabel.Font.Color = clWindowText
    EditLabel.Font.Height = -11
    EditLabel.Font.Name = 'Corbel'
    EditLabel.Font.Style = [fsBold, fsItalic]
    EditLabel.ParentFont = False
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clBlack
    Font.Height = -11
    Font.Name = 'MS Sans Serif'
    Font.Style = []
    ParentFont = False
    PasswordChar = '*'
    TabOrder = 1
  end
end
