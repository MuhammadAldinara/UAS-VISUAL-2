object Form5: TForm5
  Left = 991
  Top = 216
  Width = 793
  Height = 675
  Caption = 'Form5'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object Label4l2: TLabel
    Left = 32
    Top = 77
    Width = 21
    Height = 15
    Caption = 'NIK'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Roboto'
    Font.Style = []
    ParentFont = False
  end
  object Label4l3: TLabel
    Left = 32
    Top = 101
    Width = 36
    Height = 15
    Caption = 'NAMA'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Roboto'
    Font.Style = []
    ParentFont = False
  end
  object Label4l4: TLabel
    Left = 32
    Top = 125
    Width = 75
    Height = 15
    Caption = 'PENDIDIKAN'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Roboto'
    Font.Style = []
    ParentFont = False
  end
  object Label4l5: TLabel
    Left = 32
    Top = 149
    Width = 70
    Height = 15
    Caption = 'PEKERJAAN'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Roboto'
    Font.Style = []
    ParentFont = False
  end
  object Label4l6: TLabel
    Left = 32
    Top = 173
    Width = 30
    Height = 15
    Caption = 'TELP'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Roboto'
    Font.Style = []
    ParentFont = False
  end
  object Label1: TLabel
    Left = 328
    Top = 24
    Width = 113
    Height = 23
    Caption = 'DATA ORTU'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -19
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
  end
  object Label2: TLabel
    Left = 32
    Top = 197
    Width = 50
    Height = 15
    Caption = 'ALAMAT'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Roboto'
    Font.Style = []
    ParentFont = False
  end
  object Label3: TLabel
    Left = 32
    Top = 221
    Width = 92
    Height = 15
    Caption = 'JENIS KELAMIN'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Roboto'
    Font.Style = []
    ParentFont = False
  end
  object Label4: TLabel
    Left = 32
    Top = 245
    Width = 44
    Height = 15
    Caption = 'AGAMA'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Roboto'
    Font.Style = []
    ParentFont = False
  end
  object Label5: TLabel
    Left = 32
    Top = 269
    Width = 49
    Height = 15
    Caption = 'STATUS'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Roboto'
    Font.Style = []
    ParentFont = False
  end
  object Edit1: TEdit
    Left = 224
    Top = 77
    Width = 455
    Height = 21
    TabOrder = 0
  end
  object Edit2: TEdit
    Left = 224
    Top = 101
    Width = 455
    Height = 21
    TabOrder = 1
  end
  object Edit3: TEdit
    Left = 224
    Top = 125
    Width = 455
    Height = 21
    TabOrder = 2
  end
  object Edit4: TEdit
    Left = 224
    Top = 149
    Width = 455
    Height = 21
    TabOrder = 3
  end
  object Edit5: TEdit
    Left = 224
    Top = 173
    Width = 455
    Height = 21
    TabOrder = 4
  end
  object dg1: TDBGrid
    Left = 32
    Top = 392
    Width = 713
    Height = 201
    DataSource = ds1
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    TabOrder = 5
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
  end
  object b1: TButton
    Left = 32
    Top = 325
    Width = 97
    Height = 44
    Caption = 'BARU'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    TabOrder = 6
    OnClick = b1Click
  end
  object b2: TButton
    Left = 152
    Top = 325
    Width = 97
    Height = 44
    Caption = 'SIMPAN'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    TabOrder = 7
    OnClick = b2Click
  end
  object b3: TButton
    Left = 264
    Top = 328
    Width = 97
    Height = 41
    Caption = 'EDIT'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    TabOrder = 8
  end
  object b4: TButton
    Left = 384
    Top = 325
    Width = 97
    Height = 44
    Caption = 'HAPUS'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    TabOrder = 9
    OnClick = b4Click
  end
  object b5: TButton
    Left = 504
    Top = 325
    Width = 97
    Height = 44
    Caption = 'BATAL'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    TabOrder = 10
    OnClick = b5Click
  end
  object Bb6: TButton
    Left = 624
    Top = 328
    Width = 97
    Height = 41
    Caption = 'LAPORAN'
    TabOrder = 11
  end
  object edt1: TEdit
    Left = 224
    Top = 197
    Width = 455
    Height = 21
    TabOrder = 12
  end
  object edt2: TEdit
    Left = 224
    Top = 245
    Width = 455
    Height = 21
    TabOrder = 13
  end
  object edt3: TEdit
    Left = 224
    Top = 269
    Width = 455
    Height = 21
    TabOrder = 14
  end
  object ComboBox1: TComboBox
    Left = 224
    Top = 222
    Width = 453
    Height = 21
    ItemHeight = 13
    TabOrder = 15
    Items.Strings = (
      'LAKI - LAKI'
      'PEREMPUAN')
  end
  object con1: TZConnection
    ControlsCodePage = cGET_ACP
    UTF8StringsAsWideField = False
    AutoEncodeStrings = False
    Connected = True
    HostName = 'localhost'
    Port = 3306
    Database = 'database_siswa'
    User = 'root'
    Protocol = 'mysql'
    LibraryLocation = 
      'E:\KULIAH\Semester4\PemrogramanVisual2\tugas\delphi baru\libmysq' +
      'l.dll'
    Left = 696
    Top = 112
  end
  object zqry1: TZQuery
    Connection = con1
    Active = True
    SQL.Strings = (
      'select * from tbl_ortu')
    Params = <>
    Left = 696
    Top = 160
  end
  object ds1: TDataSource
    DataSet = zqry1
    Left = 696
    Top = 208
  end
end
