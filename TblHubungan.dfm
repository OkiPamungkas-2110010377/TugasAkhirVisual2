object Form8: TForm8
  Left = 346
  Top = 157
  Width = 1044
  Height = 540
  Caption = 'Form Hubungan'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object l1: TLabel
    Left = 64
    Top = 128
    Width = 150
    Height = 16
    Caption = 'STATUS HUBUNGAN ANAK'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
  end
  object l2: TLabel
    Left = 64
    Top = 176
    Width = 77
    Height = 16
    Caption = 'KETERANGAN'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
  end
  object l3: TLabel
    Left = 64
    Top = 48
    Width = 56
    Height = 16
    Caption = 'ID SISWA'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
  end
  object l4: TLabel
    Left = 64
    Top = 88
    Width = 49
    Height = 16
    Caption = 'ID ORTU'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
  end
  object l5: TLabel
    Left = 64
    Top = 216
    Width = 85
    Height = 16
    Caption = 'STATUS ORTU'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
  end
  object Edit1: TEdit
    Left = 224
    Top = 128
    Width = 161
    Height = 21
    TabOrder = 0
  end
  object Edit2: TEdit
    Left = 224
    Top = 176
    Width = 161
    Height = 21
    TabOrder = 1
  end
  object c1: TComboBox
    Left = 224
    Top = 48
    Width = 161
    Height = 21
    ItemHeight = 13
    TabOrder = 2
    Items.Strings = (
      '')
  end
  object c2: TComboBox
    Left = 224
    Top = 88
    Width = 161
    Height = 21
    ItemHeight = 13
    TabOrder = 3
    Items.Strings = (
      '')
  end
  object Edit3: TEdit
    Left = 224
    Top = 216
    Width = 161
    Height = 21
    TabOrder = 4
  end
  object b1: TButton
    Left = 56
    Top = 272
    Width = 89
    Height = 49
    Caption = 'BARU'
    TabOrder = 5
    OnClick = b1Click
  end
  object b2: TButton
    Left = 160
    Top = 272
    Width = 89
    Height = 49
    Caption = 'SIMPAN'
    TabOrder = 6
    OnClick = b2Click
  end
  object b3: TButton
    Left = 264
    Top = 272
    Width = 89
    Height = 49
    Caption = 'EDIT'
    TabOrder = 7
    OnClick = b3Click
  end
  object b4: TButton
    Left = 368
    Top = 272
    Width = 89
    Height = 49
    Caption = 'HAPUS'
    TabOrder = 8
    OnClick = b4Click
  end
  object b5: TButton
    Left = 472
    Top = 272
    Width = 89
    Height = 49
    Caption = 'BATAL'
    TabOrder = 9
    OnClick = b5Click
  end
  object b6: TButton
    Left = 576
    Top = 272
    Width = 89
    Height = 49
    Caption = 'LAPORAN'
    TabOrder = 10
  end
  object dg1: TDBGrid
    Left = 408
    Top = 48
    Width = 545
    Height = 201
    DataSource = ds1
    TabOrder = 11
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'MS Sans Serif'
    TitleFont.Style = []
    OnCellClick = dg1CellClick
  end
  object con1: TZConnection
    ControlsCodePage = cGET_ACP
    UTF8StringsAsWideField = False
    AutoEncodeStrings = False
    Connected = True
    HostName = 'localhost'
    Port = 3306
    Database = 'db_sekolahh'
    User = 'root'
    Protocol = 'mysql'
    LibraryLocation = 'D:\kuliah\UasVisual2\libmysql.dll'
    Left = 72
    Top = 336
  end
  object zqry1: TZQuery
    Connection = con1
    Active = True
    SQL.Strings = (
      'select * from tbl_hubungan')
    Params = <>
    Left = 128
    Top = 336
  end
  object ds1: TDataSource
    DataSet = zqry1
    Left = 184
    Top = 344
  end
  object zqry2: TZQuery
    Connection = con1
    Active = True
    SQL.Strings = (
      'select * from tbl_siswa')
    Params = <>
    Left = 136
    Top = 384
  end
  object zqry3: TZQuery
    Connection = con1
    Active = True
    SQL.Strings = (
      'select * from tbl_ortu')
    Params = <>
    Left = 192
    Top = 384
  end
end
