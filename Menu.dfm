object Form4: TForm4
  Left = 330
  Top = 616
  Width = 465
  Height = 285
  Caption = 'Form4'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  Menu = mm1
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 192
    Top = 24
    Width = 64
    Height = 27
    Caption = 'MENU'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -19
    Font.Name = 'Arial Black'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Button1: TButton
    Left = 24
    Top = 80
    Width = 89
    Height = 33
    Caption = 'DATA ORTU'
    TabOrder = 0
    OnClick = Button1Click
  end
  object Button2: TButton
    Left = 128
    Top = 80
    Width = 89
    Height = 33
    Caption = 'Button2'
    TabOrder = 1
  end
  object Button3: TButton
    Left = 232
    Top = 80
    Width = 89
    Height = 33
    Caption = 'Button2'
    TabOrder = 2
  end
  object Button4: TButton
    Left = 336
    Top = 80
    Width = 89
    Height = 33
    Caption = 'Button2'
    TabOrder = 3
  end
  object Button5: TButton
    Left = 24
    Top = 128
    Width = 89
    Height = 33
    Caption = 'Button2'
    TabOrder = 4
  end
  object Button6: TButton
    Left = 128
    Top = 128
    Width = 89
    Height = 33
    Caption = 'Button2'
    TabOrder = 5
  end
  object Button7: TButton
    Left = 232
    Top = 128
    Width = 89
    Height = 33
    Caption = 'Button2'
    TabOrder = 6
  end
  object Button8: TButton
    Left = 336
    Top = 128
    Width = 89
    Height = 33
    Caption = 'KELUAR'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clRed
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    TabOrder = 7
  end
  object mm1: TMainMenu
    Left = 24
    Top = 24
    object Menu1: TMenuItem
      Caption = 'Menu'
    end
    object LogOut1: TMenuItem
      Caption = 'LogOut'
      OnClick = LogOut1Click
    end
  end
end
