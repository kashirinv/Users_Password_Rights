object FormUser: TFormUser
  Left = 0
  Top = 0
  Caption = 'FormUser'
  ClientHeight = 513
  ClientWidth = 702
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  OnCreate = FormCreate
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 551
    Top = 243
    Width = 27
    Height = 13
    Caption = #1082#1083#1102#1095
  end
  object Button1: TButton
    Left = 8
    Top = 440
    Width = 145
    Height = 33
    Caption = #1057#1084#1077#1085#1080#1090#1100' '#1089#1074#1086#1081' '#1087#1072#1088#1086#1083#1100
    TabOrder = 0
    OnClick = Button1Click
  end
  object Button2: TButton
    Left = 8
    Top = 472
    Width = 145
    Height = 33
    Caption = #1042#1099#1093#1086#1076
    TabOrder = 1
    OnClick = Button2Click
  end
  object Button3: TButton
    Left = 8
    Top = 152
    Width = 145
    Height = 33
    Caption = #1054#1095#1080#1089#1090#1080#1090#1100
    TabOrder = 2
    OnClick = Button3Click
  end
  object Memo1: TMemo
    Left = 168
    Top = 32
    Width = 361
    Height = 426
    Lines.Strings = (
      ''
      ''
      ''
      ''
      ''
      ''
      ''
      ''
      ''
      ''
      ''
      ''
      ''
      ''
      ''
      ''
      ''
      ''
      ''
      ''
      ''
      ''
      ''
      ''
      ''
      '')
    TabOrder = 3
  end
  object Button4: TButton
    Left = 8
    Top = 88
    Width = 145
    Height = 33
    Caption = #1047#1072#1075#1088#1091#1079#1080#1090#1100' '#1092#1072#1081#1083' '
    TabOrder = 4
    OnClick = Button4Click
  end
  object Button5: TButton
    Left = 8
    Top = 120
    Width = 145
    Height = 33
    Caption = #1057#1086#1093#1088#1072#1085#1080#1090#1100' '#1092#1072#1081#1083
    TabOrder = 5
    OnClick = Button5Click
  end
  object ButtonCreate: TButton
    Left = 549
    Top = 168
    Width = 145
    Height = 33
    Caption = #1057#1086#1079#1076#1072#1090#1100' '#1060#1072#1081#1083
    Enabled = False
    TabOrder = 6
    OnClick = ButtonCreateClick
  end
  object EditCreateFileName: TEdit
    Left = 549
    Top = 137
    Width = 145
    Height = 21
    TabOrder = 7
  end
  object ComboBox1: TComboBox
    Left = 24
    Top = 18
    Width = 121
    Height = 21
    ItemHeight = 0
    TabOrder = 8
  end
  object ButtonSetRights: TButton
    Left = 552
    Top = 16
    Width = 142
    Height = 25
    Caption = #1059#1089#1090#1072#1085#1086#1074#1080#1090#1100' '#1087#1088#1072#1074#1072
    TabOrder = 9
    OnClick = ButtonSetRightsClick
  end
  object ButtonDelete: TButton
    Left = 8
    Top = 56
    Width = 145
    Height = 33
    Caption = #1059#1076#1072#1083#1080#1090#1100' '#1092#1072#1081#1083
    TabOrder = 10
    OnClick = ButtonDeleteClick
  end
  object Button6: TButton
    Left = 549
    Top = 200
    Width = 145
    Height = 33
    Caption = #1047#1072#1096#1080#1092#1088#1086#1074#1072#1090#1100' '#1074' '#1060#1072#1081#1083
    TabOrder = 11
    OnClick = Button6Click
  end
  object EditKey: TEdit
    Left = 584
    Top = 240
    Width = 110
    Height = 21
    TabOrder = 12
  end
  object Button7: TButton
    Left = 549
    Top = 264
    Width = 145
    Height = 33
    Caption = #1056#1072#1089#1096#1080#1092#1088#1086#1074#1072#1090#1100' '#1060#1072#1081#1083
    TabOrder = 13
    OnClick = Button7Click
  end
end
