object FormPas: TFormPas
  Left = 0
  Top = 0
  Caption = 'FormPas'
  ClientHeight = 204
  ClientWidth = 331
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
    Left = 8
    Top = 27
    Width = 78
    Height = 13
    Caption = #1057#1090#1072#1088#1099#1081' '#1087#1072#1088#1086#1083#1100
  end
  object Label2: TLabel
    Left = 8
    Top = 64
    Width = 72
    Height = 13
    Caption = #1053#1086#1074#1099#1081' '#1087#1072#1088#1086#1083#1100
  end
  object Label3: TLabel
    Left = 8
    Top = 91
    Width = 83
    Height = 13
    Caption = #1055#1086#1076#1090#1074#1077#1088#1078#1076#1077#1085#1080#1077
  end
  object Edit1: TEdit
    Left = 104
    Top = 24
    Width = 137
    Height = 21
    PasswordChar = '*'
    TabOrder = 0
  end
  object Edit2: TEdit
    Left = 104
    Top = 61
    Width = 137
    Height = 21
    PasswordChar = '*'
    TabOrder = 1
  end
  object Edit3: TEdit
    Left = 104
    Top = 88
    Width = 137
    Height = 21
    PasswordChar = '*'
    TabOrder = 2
  end
  object Button1: TButton
    Left = 104
    Top = 128
    Width = 137
    Height = 25
    Caption = 'OK'
    TabOrder = 3
    OnClick = Button1Click
  end
end
