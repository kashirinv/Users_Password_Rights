object FormRights: TFormRights
  Left = 0
  Top = 0
  Caption = 'FormRights'
  ClientHeight = 385
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
  object ComboBoxGroup: TComboBox
    Left = 8
    Top = 133
    Width = 113
    Height = 21
    ItemHeight = 13
    TabOrder = 0
  end
  object Panel1: TPanel
    Left = 175
    Top = 87
    Width = 153
    Height = 113
    TabOrder = 1
    object RadioButton1: TRadioButton
      Left = 32
      Top = 34
      Width = 113
      Height = 17
      Caption = 'Write'
      TabOrder = 0
    end
    object RadioButton2: TRadioButton
      Left = 32
      Top = 57
      Width = 113
      Height = 17
      Caption = 'Read'
      TabOrder = 1
    end
    object RadioButton3: TRadioButton
      Left = 32
      Top = 80
      Width = 113
      Height = 17
      Caption = 'No rights'
      Checked = True
      TabOrder = 2
      TabStop = True
    end
    object RadioButton0: TRadioButton
      Left = 32
      Top = 11
      Width = 113
      Height = 17
      Caption = 'Host'
      TabOrder = 3
    end
  end
  object ButtonAccept: TButton
    Left = 287
    Top = 304
    Width = 153
    Height = 41
    Caption = 'OK'
    TabOrder = 2
    OnClick = ButtonAcceptClick
  end
  object Panel2: TPanel
    Left = 8
    Top = 40
    Width = 121
    Height = 81
    TabOrder = 3
    object RadioButton4: TRadioButton
      Left = 17
      Top = 16
      Width = 113
      Height = 17
      Caption = 'Group'
      TabOrder = 0
      OnClick = RadioButton4Click
    end
    object RadioButton5: TRadioButton
      Left = 16
      Top = 47
      Width = 97
      Height = 17
      Caption = 'User'
      TabOrder = 1
      OnClick = RadioButton5Click
    end
  end
  object ComboBoxFileName: TComboBox
    Left = 175
    Top = 40
    Width = 153
    Height = 21
    ItemHeight = 13
    TabOrder = 4
    Text = 'Com'
  end
  object ButtonExit: TButton
    Left = 287
    Top = 344
    Width = 153
    Height = 41
    Caption = 'Exit'
    TabOrder = 5
    OnClick = ButtonExitClick
  end
end
