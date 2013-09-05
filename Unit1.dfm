object Form1: TForm1
  Left = 0
  Top = 0
  BorderIcons = [biSystemMenu, biMinimize]
  BorderStyle = bsSingle
  Caption = 'Md5Hack by serega6531'
  ClientHeight = 405
  ClientWidth = 438
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 25
    Top = 18
    Width = 50
    Height = 13
    Caption = 'Md5 hash:'
  end
  object Label6: TLabel
    Left = 147
    Top = 376
    Width = 72
    Height = 13
    Caption = 'By serega6531'
  end
  object Label7: TLabel
    Left = 242
    Top = 376
    Width = 167
    Height = 13
    Caption = #1048#1089#1087#1086#1083#1100#1079#1086#1074#1072#1085#1072' '#1087#1088#1086#1075#1088#1072#1084#1084#1072' BarsWF'
  end
  object Label8: TLabel
    Left = 39
    Top = 241
    Width = 106
    Height = 13
    Caption = #1055#1077#1088#1077#1073#1086#1088' '#1089' '#1087#1086#1084#1086#1097#1100#1102':'
  end
  object Label9: TLabel
    Left = 39
    Top = 295
    Width = 69
    Height = 13
    Caption = #1056#1072#1079#1088#1103#1076#1085#1086#1089#1090#1100':'
  end
  object Label2: TLabel
    Left = 25
    Top = 37
    Width = 122
    Height = 13
    Caption = #1057#1080#1084#1074#1086#1083#1099' '#1076#1083#1103' '#1087#1077#1088#1077#1073#1086#1088#1072':'
  end
  object Edit1: TEdit
    Left = 184
    Top = 15
    Width = 225
    Height = 21
    TabOrder = 0
  end
  object CheckBox1: TCheckBox
    Left = 25
    Top = 56
    Width = 120
    Height = 17
    Caption = #1057#1090#1088#1086#1095#1085#1099#1077' '#1073#1091#1082#1074#1099
    Checked = True
    State = cbChecked
    TabOrder = 1
  end
  object CheckBox2: TCheckBox
    Left = 25
    Top = 79
    Width = 120
    Height = 17
    Caption = #1047#1072#1075#1083#1072#1074#1085#1099#1077' '#1073#1091#1082#1074#1099
    TabOrder = 2
  end
  object CheckBox3: TCheckBox
    Left = 25
    Top = 102
    Width = 64
    Height = 17
    Caption = #1062#1080#1092#1088#1099
    Checked = True
    State = cbChecked
    TabOrder = 3
  end
  object CheckBox4: TCheckBox
    Left = 25
    Top = 125
    Width = 144
    Height = 17
    Caption = #1057#1087#1077#1094#1080#1072#1083#1100#1085#1099#1077' '#1089#1080#1084#1074#1086#1083#1099
    TabOrder = 4
  end
  object Edit2: TEdit
    Left = 184
    Top = 157
    Width = 233
    Height = 21
    Enabled = False
    TabOrder = 5
  end
  object Edit3: TEdit
    Left = 184
    Top = 184
    Width = 233
    Height = 21
    Enabled = False
    TabOrder = 6
  end
  object ComboBox1: TComboBox
    Left = 184
    Top = 211
    Width = 233
    Height = 21
    Enabled = False
    TabOrder = 7
    Text = '1'
    Items.Strings = (
      '1'
      '2'
      '3'
      '4'
      '5'
      '6'
      '7'
      '8'
      '9'
      '10'
      '11'
      '12'
      '13'
      '14'
      '15')
  end
  object ComboBox2: TComboBox
    Left = 184
    Top = 238
    Width = 233
    Height = 21
    Style = csDropDownList
    ItemIndex = 0
    TabOrder = 8
    TabStop = False
    Text = #1055#1088#1086#1094#1077#1089#1089#1086#1088#1072
    OnChange = ComboBox2Change
    Items.Strings = (
      #1055#1088#1086#1094#1077#1089#1089#1086#1088#1072
      #1042#1080#1076#1077#1086#1082#1072#1088#1090#1099)
  end
  object ComboBox3: TComboBox
    Left = 184
    Top = 265
    Width = 233
    Height = 21
    Style = csDropDownList
    Enabled = False
    TabOrder = 9
    TabStop = False
    Items.Strings = (
      'Radeon'
      'Nvidia')
  end
  object ComboBox4: TComboBox
    Left = 184
    Top = 292
    Width = 233
    Height = 21
    TabOrder = 10
    Text = 'x32'
    Items.Strings = (
      'x32'
      'x64')
  end
  object Button1: TButton
    Left = 25
    Top = 336
    Width = 176
    Height = 25
    Caption = 'HACK IT!'
    Font.Charset = RUSSIAN_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Segoe Script'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 11
    OnClick = Button1Click
  end
  object CheckBox6: TCheckBox
    Left = 22
    Top = 161
    Width = 156
    Height = 17
    Caption = #1044#1086#1073#1072#1074#1080#1090#1100' '#1076#1088#1091#1075#1080#1077' '#1089#1080#1084#1074#1086#1083#1099':'
    TabOrder = 12
    OnClick = CheckBox6Click
  end
  object CheckBox7: TCheckBox
    Left = 127
    Top = 188
    Width = 51
    Height = 17
    Caption = #1042' HEX:'
    TabOrder = 13
    OnClick = CheckBox7Click
  end
  object CheckBox8: TCheckBox
    Left = 22
    Top = 215
    Width = 156
    Height = 17
    Caption = #1052#1080#1085#1080#1084#1072#1083#1100#1085#1072#1103' '#1076#1083#1080#1085#1072' '#1089#1090#1088#1086#1082#1080':'
    TabOrder = 14
    OnClick = CheckBox8Click
  end
  object Button2: TButton
    Left = 229
    Top = 335
    Width = 188
    Height = 25
    Caption = #1055#1088#1086#1076#1086#1083#1078#1080#1090#1100' '#1089' '#1090#1086#1095#1082#1080' '#1089#1086#1093#1088#1072#1085#1077#1085#1080#1103
    TabOrder = 15
    OnClick = Button2Click
  end
end
