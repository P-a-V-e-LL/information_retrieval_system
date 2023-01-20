object TIME: TTIME
  Left = 303
  Top = 185
  Width = 633
  Height = 591
  Caption = 'TIME'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  Menu = MainMenu1
  OldCreateOrder = False
  OnCloseQuery = FormCloseQuery
  PixelsPerInch = 96
  TextHeight = 13
  object TLabel
    Left = 528
    Top = 276
    Width = 3
    Height = 13
  end
  object Name: TLabel
    Left = 340
    Top = 320
    Width = 28
    Height = 13
    Caption = 'Name'
  end
  object Surname: TLabel
    Left = 340
    Top = 348
    Width = 42
    Height = 13
    Caption = 'Surname'
  end
  object Number: TLabel
    Left = 340
    Top = 376
    Width = 37
    Height = 13
    Caption = 'Number'
  end
  object Passport: TLabel
    Left = 340
    Top = 404
    Width = 41
    Height = 13
    Caption = 'Passport'
  end
  object New: TLabel
    Left = 460
    Top = 280
    Width = 22
    Height = 13
    Caption = 'New'
  end
  object Search: TLabel
    Left = 144
    Top = 292
    Width = 34
    Height = 13
    Caption = 'Search'
  end
  object pass: TLabel
    Left = 72
    Top = 352
    Width = 22
    Height = 13
    Caption = 'pass'
  end
  object Label4: TLabel
    Left = 316
    Top = 436
    Width = 72
    Height = 13
    Caption = 'I want to insure'
  end
  object Label6: TLabel
    Left = 28
    Top = 320
    Width = 76
    Height = 13
    Caption = 'Choose criterion'
  end
  object Label7: TLabel
    Left = 240
    Top = 8
    Width = 95
    Height = 13
    Caption = 'Contract Information'
  end
  object StringGrid1: TStringGrid
    Left = 4
    Top = 32
    Width = 617
    Height = 213
    ColCount = 7
    RowCount = 1
    FixedRows = 0
    TabOrder = 0
    OnClick = StringGrid1Click
    ColWidths = (
      64
      89
      86
      86
      89
      98
      93)
  end
  object Edit1: TEdit
    Left = 412
    Top = 316
    Width = 141
    Height = 21
    MaxLength = 20
    TabOrder = 1
    OnKeyPress = Edit1KeyPress
  end
  object Edit2: TEdit
    Left = 412
    Top = 344
    Width = 141
    Height = 21
    MaxLength = 20
    TabOrder = 2
    OnKeyPress = Edit2KeyPress
  end
  object Edit3: TEdit
    Left = 412
    Top = 372
    Width = 141
    Height = 21
    MaxLength = 11
    TabOrder = 3
    OnKeyPress = Edit3KeyPress
  end
  object Edit4: TEdit
    Left = 412
    Top = 400
    Width = 141
    Height = 21
    MaxLength = 10
    TabOrder = 4
    OnKeyPress = Edit4KeyPress
  end
  object ComboBox1: TComboBox
    Left = 412
    Top = 432
    Width = 145
    Height = 21
    ItemHeight = 13
    TabOrder = 5
    Text = 'Choose your variant'
  end
  object Enter: TButton
    Left = 408
    Top = 476
    Width = 149
    Height = 45
    Caption = 'Enter'
    TabOrder = 6
    OnClick = EnterClick
  end
  object ShowAllContracts: TButton
    Left = 244
    Top = 252
    Width = 137
    Height = 33
    Caption = 'ShowAllContracts'
    TabOrder = 7
    OnClick = ShowAllContractsClick
  end
  object Delete: TButton
    Left = 252
    Top = 472
    Width = 145
    Height = 49
    Caption = 'Delete'
    TabOrder = 8
    OnClick = DeleteClick
  end
  object ComboBox3: TComboBox
    Left = 112
    Top = 316
    Width = 145
    Height = 21
    ItemHeight = 13
    TabOrder = 9
    OnChange = ComboBox3Change
  end
  object Edit6: TEdit
    Left = 112
    Top = 352
    Width = 145
    Height = 21
    MaxLength = 20
    TabOrder = 10
    OnKeyPress = Edit6KeyPress
  end
  object Find: TButton
    Left = 112
    Top = 388
    Width = 145
    Height = 37
    Caption = 'Find'
    TabOrder = 11
    OnClick = FindClick
  end
  object Button2: TButton
    Left = 92
    Top = 472
    Width = 149
    Height = 49
    Caption = 'Change'
    TabOrder = 12
    OnClick = Button2Click
  end
  object ComboBox4: TComboBox
    Left = 112
    Top = 352
    Width = 145
    Height = 21
    ItemHeight = 13
    TabOrder = 13
    Visible = False
  end
  object Button1: TButton
    Left = 12
    Top = 472
    Width = 75
    Height = 49
    Caption = 'Clear'
    TabOrder = 14
    OnClick = Button1Click
  end
  object MainMenu1: TMainMenu
    object FILE1: TMenuItem
      Caption = 'File'
      object Save1: TMenuItem
        Caption = 'Save'
        OnClick = Save1Click
      end
      object Open1: TMenuItem
        Caption = 'Open'
        OnClick = Open1Click
      end
      object Exit1: TMenuItem
        Caption = 'Exit'
        OnClick = Exit1Click
      end
    end
  end
  object OpenDialog1: TOpenDialog
    Filter = '*.txt'
    Left = 28
  end
  object SaveDialog1: TSaveDialog
    Filter = '*.txt'
    Left = 56
  end
end
