object FormAdmin: TFormAdmin
  Left = 0
  Top = 0
  Caption = 'FormAdmin'
  ClientHeight = 373
  ClientWidth = 435
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  OnActivate = FormActivate
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 138
    Top = 11
    Width = 48
    Height = 13
    Caption = 'Username'
  end
  object Label2: TLabel
    Left = 136
    Top = 35
    Width = 50
    Height = 13
    Caption = 'New name'
  end
  object Label3: TLabel
    Left = 221
    Top = 114
    Width = 29
    Height = 13
    Caption = 'Group'
    Visible = False
  end
  object Button1: TButton
    Left = 8
    Top = 8
    Width = 89
    Height = 25
    Caption = 'Add user'
    TabOrder = 0
    OnClick = Button1Click
  end
  object Button4: TButton
    Left = 287
    Top = 8
    Width = 106
    Height = 25
    Caption = 'Delete'
    TabOrder = 1
    OnClick = Button4Click
  end
  object Button5: TButton
    Left = 287
    Top = 56
    Width = 106
    Height = 25
    Caption = 'Change password'
    TabOrder = 2
    OnClick = Button5Click
  end
  object Button6: TButton
    Left = 287
    Top = 33
    Width = 106
    Height = 25
    Caption = 'Change user'
    TabOrder = 3
    OnClick = Button6Click
  end
  object Edit2: TEdit
    Left = 192
    Top = 32
    Width = 89
    Height = 21
    TabOrder = 4
  end
  object Button7: TButton
    Left = 8
    Top = 344
    Width = 105
    Height = 25
    Caption = 'Exit'
    TabOrder = 5
    OnClick = Button7Click
  end
  object Button8: TButton
    Left = 288
    Top = 80
    Width = 105
    Height = 25
    Caption = 'Set Group'
    TabOrder = 6
    Visible = False
    OnClick = Button8Click
  end
  object Button9: TButton
    Left = 287
    Top = 80
    Width = 106
    Height = 25
    Caption = 'Group'
    TabOrder = 7
    OnClick = Button9Click
  end
  object Button10: TButton
    Left = 8
    Top = 109
    Width = 89
    Height = 25
    Caption = 'Add New Group'
    TabOrder = 8
    Visible = False
    OnClick = Button10Click
  end
  object ComboBox1: TComboBox
    Left = 288
    Top = 111
    Width = 105
    Height = 21
    ItemHeight = 13
    TabOrder = 9
    Text = 'Group'
    Visible = False
  end
  object ComboBox2: TComboBox
    Left = 192
    Top = 8
    Width = 89
    Height = 21
    ItemHeight = 13
    TabOrder = 10
    Text = 'ComboBox2'
    OnClick = ComboBox2Click
  end
  object EditNewGroup: TEdit
    Left = 103
    Top = 111
    Width = 97
    Height = 21
    TabOrder = 11
    Visible = False
  end
  object Button2: TButton
    Left = 8
    Top = 109
    Width = 89
    Height = 25
    Caption = 'NewGroup'
    TabOrder = 12
    OnClick = Button2Click
  end
  object ButtonFileRights: TButton
    Left = 120
    Top = 344
    Width = 105
    Height = 25
    Caption = 'Set Rights'
    TabOrder = 13
    OnClick = ButtonFileRightsClick
  end
end
