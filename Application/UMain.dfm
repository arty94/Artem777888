object fMain: TfMain
  Left = 220
  Top = 221
  BorderIcons = [biSystemMenu, biMinimize]
  BorderStyle = bsSingle
  Caption = 'MoBika ('#1087#1088#1080#1083#1086#1078#1077#1085#1080#1077')'
  ClientHeight = 629
  ClientWidth = 1470
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = [fsBold]
  KeyPreview = True
  OldCreateOrder = False
  OnCloseQuery = FormCloseQuery
  OnCreate = FormCreate
  OnKeyPress = FormKeyPress
  PixelsPerInch = 96
  TextHeight = 13
  object PageControl1: TPageControl
    Left = 0
    Top = 0
    Width = 1470
    Height = 629
    ActivePage = TabSheet3
    Align = alClient
    Font.Charset = RUSSIAN_CHARSET
    Font.Color = clBlack
    Font.Height = -32
    Font.Name = 'Impact'
    Font.Style = []
    ParentFont = False
    TabOrder = 0
    object TabSheet1: TTabSheet
      Caption = #1055#1088#1086#1076#1072#1078#1072
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -16
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      object PageControl2: TPageControl
        Left = 0
        Top = 0
        Width = 1462
        Height = 575
        ActivePage = TabSheet4
        Align = alClient
        Font.Charset = RUSSIAN_CHARSET
        Font.Color = clWindowText
        Font.Height = -13
        Font.Name = 'Times New Roman'
        Font.Style = []
        ParentFont = False
        TabOrder = 0
        object TabSheet4: TTabSheet
          Caption = 'TabSheet4'
        end
        object TabSheet5: TTabSheet
          Caption = 'TabSheet5'
          ImageIndex = 1
        end
        object TabSheet6: TTabSheet
          Caption = 'TabSheet6'
          ImageIndex = 2
        end
      end
    end
    object TabSheet2: TTabSheet
      Caption = #1057#1082#1083#1072#1076
      ImageIndex = 1
      object PageControl3: TPageControl
        Left = 0
        Top = 0
        Width = 1462
        Height = 575
        ActivePage = TabSheet7
        Align = alClient
        Font.Charset = RUSSIAN_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Times New Roman'
        Font.Style = []
        ParentFont = False
        TabOrder = 0
        object TabSheet7: TTabSheet
          Caption = 'TabSheet7'
        end
        object TabSheet8: TTabSheet
          Caption = 'TabSheet8'
          ImageIndex = 1
        end
        object TabSheet9: TTabSheet
          Caption = 'TabSheet9'
          Font.Charset = RUSSIAN_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Times New Roman'
          Font.Style = []
          ImageIndex = 2
          ParentFont = False
        end
      end
    end
    object TabSheet3: TTabSheet
      Caption = #1054#1090#1076#1077#1083' '#1082#1072#1076#1088#1086#1074
      ImageIndex = 2
      object PageControl4: TPageControl
        Left = 0
        Top = 0
        Width = 1462
        Height = 575
        ActivePage = TabSheet10
        Align = alClient
        Font.Charset = RUSSIAN_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Cambria'
        Font.Style = []
        ParentFont = False
        TabOrder = 0
        object TabSheet10: TTabSheet
          Caption = #1057#1086#1090#1088#1091#1076#1085#1080#1082
          Font.Charset = RUSSIAN_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Times New Roman'
          Font.Style = []
          ParentFont = False
          object SpeedButton3: TSpeedButton
            Left = 40
            Top = 488
            Width = 129
            Height = 41
            Caption = #1044#1086#1083#1078#1085#1086#1089#1090#1100' ('#1088#1077#1076#1072#1082#1090#1080#1088#1086#1074#1072#1085#1080#1077')'
            OnClick = SpeedButton3Click
          end
          object DBGrid1: TDBGrid
            Left = 8
            Top = 8
            Width = 1417
            Height = 201
            DataSource = DM.DSSotrudnik
            Font.Charset = RUSSIAN_CHARSET
            Font.Color = clBlack
            Font.Height = -11
            Font.Name = 'Cambria'
            Font.Style = []
            ParentFont = False
            TabOrder = 0
            TitleFont.Charset = RUSSIAN_CHARSET
            TitleFont.Color = clBlack
            TitleFont.Height = -12
            TitleFont.Name = 'Cambria'
            TitleFont.Style = []
            OnCellClick = DBGrid1CellClick
            Columns = <
              item
                Expanded = False
                FieldName = 'SOTRUDNIK_ID'
                Visible = False
              end
              item
                Expanded = False
                FieldName = 'FAM'
                Title.Caption = #1060#1072#1084#1080#1083#1080#1103
                Width = 78
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'IMYA'
                Title.Caption = #1048#1084#1103
                Width = 81
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'OTCH'
                Title.Caption = #1054#1090#1095#1077#1089#1090#1074#1086
                Width = 87
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'DOLJNOST_ID'
                Visible = False
              end
              item
                Expanded = False
                FieldName = 'SERIA_NOM_PAS'
                Title.Caption = #1057#1077#1088#1080#1103' '#1080' '#1085#1086#1084#1077#1088' '#1087#1072#1089#1087#1086#1088#1090#1072
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'DATA_VIDACHI'
                Title.Caption = #1044#1072#1090#1072' '#1074#1099#1076#1072#1095#1080
                Width = 79
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'KEM_VIDAN'
                Title.Caption = #1050#1077#1084' '#1074#1099#1076#1072#1085
                Width = 150
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'DATA_ROJ'
                Title.Caption = #1044#1072#1090#1072' '#1088#1086#1078#1076#1077#1085#1080#1103
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'MESTO_ROJ'
                Title.Caption = #1052#1077#1089#1090#1086' '#1088#1086#1078#1076#1077#1085#1080#1103
                Width = 108
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'OKLAD'
                Title.Caption = #1047#1072#1088#1087#1083#1072#1090#1072
                Width = 78
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'ADRES'
                Title.Caption = #1040#1076#1088#1077#1089
                Width = 181
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'DOLJNOST_ID1'
                Visible = False
              end
              item
                Expanded = False
                FieldName = 'NAME_DOL'
                Title.Caption = #1053#1072#1079#1074#1072#1085#1080#1077' '#1076#1086#1083#1078#1085#1086#1089#1090#1080
                Visible = True
              end>
          end
          object GroupBox1: TGroupBox
            Left = 16
            Top = 240
            Width = 705
            Height = 241
            Caption = #1044#1086#1073#1072#1074#1083#1077#1085#1080#1077' '#1089#1086#1090#1088#1091#1076#1085#1080#1082#1072
            TabOrder = 1
            object Label1: TLabel
              Left = 24
              Top = 80
              Width = 127
              Height = 15
              Caption = #1057#1077#1088#1080#1103' '#1085#1086#1084#1077#1088' '#1087#1072#1089#1087#1086#1088#1090#1072
            end
            object Label2: TLabel
              Left = 176
              Top = 80
              Width = 69
              Height = 15
              Caption = #1044#1072#1090#1072' '#1074#1099#1076#1072#1095#1080
            end
            object Label3: TLabel
              Left = 488
              Top = 24
              Width = 60
              Height = 15
              Caption = #1050#1077#1084' '#1074#1099#1076#1072#1085
            end
            object Label4: TLabel
              Left = 24
              Top = 128
              Width = 84
              Height = 15
              Caption = #1044#1072#1090#1072' '#1088#1086#1078#1076#1077#1085#1080#1103
            end
            object SpeedButton1: TSpeedButton
              Left = 528
              Top = 168
              Width = 145
              Height = 49
              Caption = #1044#1086#1073#1072#1074#1080#1090#1100
              OnClick = SpeedButton1Click
            end
            object Label9: TLabel
              Left = 328
              Top = 80
              Width = 62
              Height = 15
              Caption = #1044#1086#1083#1078#1085#1086#1089#1090#1100
            end
            object LabeledEdit1: TLabeledEdit
              Left = 24
              Top = 40
              Width = 121
              Height = 23
              EditLabel.Width = 51
              EditLabel.Height = 15
              EditLabel.Caption = #1060#1072#1084#1080#1083#1080#1103
              TabOrder = 0
            end
            object LabeledEdit2: TLabeledEdit
              Left = 176
              Top = 40
              Width = 121
              Height = 23
              EditLabel.Width = 24
              EditLabel.Height = 15
              EditLabel.Caption = #1048#1084#1103
              TabOrder = 1
            end
            object LabeledEdit3: TLabeledEdit
              Left = 328
              Top = 40
              Width = 121
              Height = 23
              EditLabel.Width = 51
              EditLabel.Height = 15
              EditLabel.Caption = #1054#1090#1095#1077#1089#1090#1074#1086
              TabOrder = 2
            end
            object LabeledEdit4: TLabeledEdit
              Left = 24
              Top = 184
              Width = 121
              Height = 23
              EditLabel.Width = 50
              EditLabel.Height = 15
              EditLabel.Caption = #1047#1072#1088#1087#1083#1072#1090#1072
              TabOrder = 3
            end
            object LabeledEdit6: TLabeledEdit
              Left = 176
              Top = 144
              Width = 121
              Height = 23
              EditLabel.Width = 94
              EditLabel.Height = 15
              EditLabel.Caption = #1052#1077#1089#1090#1086' '#1088#1086#1078#1076#1077#1085#1080#1103
              TabOrder = 4
            end
            object LabeledEdit7: TLabeledEdit
              Left = 328
              Top = 144
              Width = 161
              Height = 23
              EditLabel.Width = 35
              EditLabel.Height = 15
              EditLabel.Caption = #1040#1076#1088#1077#1089
              TabOrder = 5
            end
            object MaskEdit2: TMaskEdit
              Left = 24
              Top = 96
              Width = 121
              Height = 23
              EditMask = '00 00 000000;1;_'
              MaxLength = 12
              TabOrder = 6
              Text = '            '
            end
            object Memo1: TMemo
              Left = 488
              Top = 40
              Width = 185
              Height = 73
              TabOrder = 7
            end
            object DBLookupComboBox1: TDBLookupComboBox
              Left = 328
              Top = 96
              Width = 129
              Height = 23
              KeyField = 'DOLJNOST_ID'
              ListField = 'NAME_DOL'
              ListSource = DM.DSDoljnost
              TabOrder = 8
            end
            object DateTimePicker1: TDateTimePicker
              Left = 176
              Top = 96
              Width = 113
              Height = 23
              Date = 42088.740919247680000000
              Time = 42088.740919247680000000
              TabOrder = 9
            end
            object DateTimePicker2: TDateTimePicker
              Left = 24
              Top = 144
              Width = 121
              Height = 23
              Date = 42088.740969050920000000
              Time = 42088.740969050920000000
              TabOrder = 10
            end
          end
          object GroupBox2: TGroupBox
            Left = 728
            Top = 240
            Width = 705
            Height = 241
            Caption = #1048#1079#1084#1077#1085#1077#1085#1080#1077' '#1089#1086#1090#1088#1091#1076#1085#1080#1082#1072
            TabOrder = 2
            object Label5: TLabel
              Left = 24
              Top = 80
              Width = 127
              Height = 15
              Caption = #1057#1077#1088#1080#1103' '#1085#1086#1084#1077#1088' '#1087#1072#1089#1087#1086#1088#1090#1072
            end
            object Label6: TLabel
              Left = 176
              Top = 80
              Width = 69
              Height = 15
              Caption = #1044#1072#1090#1072' '#1074#1099#1076#1072#1095#1080
            end
            object Label7: TLabel
              Left = 488
              Top = 24
              Width = 60
              Height = 15
              Caption = #1050#1077#1084' '#1074#1099#1076#1072#1085
            end
            object Label8: TLabel
              Left = 24
              Top = 128
              Width = 84
              Height = 15
              Caption = #1044#1072#1090#1072' '#1088#1086#1078#1076#1077#1085#1080#1103
            end
            object SpeedButton4: TSpeedButton
              Left = 528
              Top = 136
              Width = 105
              Height = 33
              Caption = #1048#1079#1084#1077#1085#1080#1090#1100
              OnClick = SpeedButton4Click
            end
            object SpeedButton2: TSpeedButton
              Left = 528
              Top = 184
              Width = 105
              Height = 33
              Caption = #1059#1076#1072#1083#1080#1090#1100' (Ctrl+D)'
              OnClick = SpeedButton2Click
            end
            object Label10: TLabel
              Left = 328
              Top = 80
              Width = 62
              Height = 15
              Caption = #1044#1086#1083#1078#1085#1086#1089#1090#1100
            end
            object LabeledEdit5: TLabeledEdit
              Left = 24
              Top = 40
              Width = 121
              Height = 23
              EditLabel.Width = 51
              EditLabel.Height = 15
              EditLabel.Caption = #1060#1072#1084#1080#1083#1080#1103
              TabOrder = 0
            end
            object LabeledEdit9: TLabeledEdit
              Left = 176
              Top = 40
              Width = 121
              Height = 23
              EditLabel.Width = 24
              EditLabel.Height = 15
              EditLabel.Caption = #1048#1084#1103
              TabOrder = 1
            end
            object LabeledEdit10: TLabeledEdit
              Left = 328
              Top = 40
              Width = 121
              Height = 23
              EditLabel.Width = 51
              EditLabel.Height = 15
              EditLabel.Caption = #1054#1090#1095#1077#1089#1090#1074#1086
              TabOrder = 2
            end
            object LabeledEdit11: TLabeledEdit
              Left = 24
              Top = 184
              Width = 121
              Height = 23
              EditLabel.Width = 50
              EditLabel.Height = 15
              EditLabel.Caption = #1047#1072#1088#1087#1083#1072#1090#1072
              TabOrder = 3
            end
            object LabeledEdit12: TLabeledEdit
              Left = 176
              Top = 144
              Width = 121
              Height = 23
              EditLabel.Width = 94
              EditLabel.Height = 15
              EditLabel.Caption = #1052#1077#1089#1090#1086' '#1088#1086#1078#1076#1077#1085#1080#1103
              TabOrder = 4
            end
            object LabeledEdit13: TLabeledEdit
              Left = 328
              Top = 144
              Width = 161
              Height = 23
              EditLabel.Width = 35
              EditLabel.Height = 15
              EditLabel.Caption = #1040#1076#1088#1077#1089
              TabOrder = 5
            end
            object MaskEdit5: TMaskEdit
              Left = 24
              Top = 96
              Width = 121
              Height = 23
              EditMask = '00 00 000000;1;_'
              MaxLength = 12
              TabOrder = 6
              Text = '            '
            end
            object Memo2: TMemo
              Left = 488
              Top = 40
              Width = 185
              Height = 73
              TabOrder = 7
            end
            object DBLookupComboBox2: TDBLookupComboBox
              Left = 328
              Top = 96
              Width = 129
              Height = 23
              KeyField = 'DOLJNOST_ID'
              ListField = 'NAME_DOL'
              ListSource = DM.DSDoljnost
              TabOrder = 8
            end
            object DateTimePicker3: TDateTimePicker
              Left = 176
              Top = 96
              Width = 113
              Height = 23
              Date = 42088.740919247680000000
              Time = 42088.740919247680000000
              TabOrder = 9
            end
            object DateTimePicker4: TDateTimePicker
              Left = 24
              Top = 144
              Width = 121
              Height = 23
              Date = 42088.740969050920000000
              Time = 42088.740969050920000000
              TabOrder = 10
            end
          end
        end
        object TabSheet11: TTabSheet
          Caption = #1057#1086#1073#1099#1090#1080#1077' '#1089#1086#1090#1088#1091#1076#1085#1080#1082#1072
          ImageIndex = 1
          object DBGrid2: TDBGrid
            Left = 16
            Top = 24
            Width = 1193
            Height = 249
            DataSource = DM.DSSobitie
            TabOrder = 0
            TitleFont.Charset = RUSSIAN_CHARSET
            TitleFont.Color = clBlack
            TitleFont.Height = -13
            TitleFont.Name = 'Cambria'
            TitleFont.Style = []
            OnCellClick = DBGrid2CellClick
            Columns = <
              item
                Expanded = False
                FieldName = 'SOBITIE_SOTR_ID'
                Visible = False
              end
              item
                Expanded = False
                FieldName = 'SOTRUDNIK_ID'
                Visible = False
              end
              item
                Expanded = False
                FieldName = 'SOBITIE_ID'
                Visible = False
              end
              item
                Expanded = False
                FieldName = 'FAM'
                Title.Caption = #1060#1072#1084#1080#1083#1080#1103
                Width = 81
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'IMYA'
                Title.Caption = #1048#1084#1103
                Width = 74
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'OTCH'
                Title.Caption = #1054#1090#1095#1077#1089#1090#1074#1086
                Width = 100
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'SOTRUDNIK_ID1'
                Visible = False
              end
              item
                Expanded = False
                FieldName = 'SERIA_NOM_PAS'
                Title.Caption = #1057#1077#1088#1080#1103' '#1080' '#1085#1086#1084#1077#1088' '#1087#1072#1089#1087#1086#1088#1090#1072
                Width = 149
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'SOBITIE_ID1'
                Visible = False
              end
              item
                Expanded = False
                FieldName = 'NAME_SOB'
                Title.Caption = #1053#1072#1080#1084#1077#1085#1086#1074#1072#1085#1080#1077' '#1089#1086#1073#1099#1090#1080#1103
                Width = 151
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'TIP_DOKUM'
                Title.Caption = #1058#1080#1087' '#1076#1086#1082#1091#1084#1077#1085#1090#1072
                Width = 104
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'DATA_UTVERJ'
                Title.Caption = #1044#1072#1090#1072' '#1091#1090#1074#1077#1088#1078#1076#1077#1085#1080#1103
                Visible = True
              end
              item
                Expanded = False
                FieldName = 'SODERJAN_DOKUM'
                Title.Caption = #1057#1086#1076#1077#1088#1078#1072#1085#1080#1077' '#1076#1086#1082#1091#1084#1077#1085#1090#1072' '
                Width = 344
                Visible = True
              end>
          end
          object GroupBox4: TGroupBox
            Left = 16
            Top = 288
            Width = 593
            Height = 225
            Caption = #1042#1099#1073#1088#1072#1090#1100' '#1089#1086#1073#1099#1090#1080#1077
            TabOrder = 1
          end
          object GroupBox5: TGroupBox
            Left = 648
            Top = 288
            Width = 569
            Height = 225
            Caption = #1044#1086#1073#1072#1074#1080#1090#1100' '#1089#1086#1073#1099#1090#1080#1077
            TabOrder = 2
            object DBLookupComboBox3: TDBLookupComboBox
              Left = 16
              Top = 32
              Width = 145
              Height = 23
              KeyField = 'SOTRUDNIK_ID'
              ListField = 'FAM'
              ListSource = DM.DSSobitie
              TabOrder = 0
            end
          end
        end
      end
    end
  end
end
