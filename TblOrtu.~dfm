object Form4: TForm4
  Left = 263
  Top = 215
  Width = 1044
  Height = 540
  Caption = 'Form Ortu'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object l1: TLabel
    Left = 96
    Top = 40
    Width = 19
    Height = 16
    Caption = 'NIK'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
  end
  object l2: TLabel
    Left = 96
    Top = 88
    Width = 34
    Height = 16
    Caption = 'NAMA'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
  end
  object l3: TLabel
    Left = 96
    Top = 288
    Width = 86
    Height = 16
    Caption = 'JENIS KELAMIN'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
  end
  object l4: TLabel
    Left = 96
    Top = 128
    Width = 69
    Height = 16
    Caption = 'PENDIDIKAN'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
  end
  object l5: TLabel
    Left = 96
    Top = 160
    Width = 65
    Height = 16
    Caption = 'PEKERJAAN'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
  end
  object l6: TLabel
    Left = 96
    Top = 208
    Width = 28
    Height = 16
    Caption = 'TELP'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
  end
  object l7: TLabel
    Left = 96
    Top = 248
    Width = 48
    Height = 16
    Caption = 'ALAMAT'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
  end
  object l8: TLabel
    Left = 96
    Top = 328
    Width = 42
    Height = 16
    Caption = 'AGAMA'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
  end
  object l9: TLabel
    Left = 96
    Top = 368
    Width = 43
    Height = 13
    Caption = 'STATUS'
  end
  object b1: TButton
    Left = 104
    Top = 440
    Width = 75
    Height = 25
    Caption = 'Baru'
    TabOrder = 0
    OnClick = b1Click
  end
  object b2: TButton
    Left = 208
    Top = 440
    Width = 75
    Height = 25
    Caption = 'Simpan'
    TabOrder = 1
    OnClick = b2Click
  end
  object b3: TButton
    Left = 304
    Top = 440
    Width = 75
    Height = 25
    Caption = 'Edit'
    TabOrder = 2
    OnClick = b3Click
  end
  object b4: TButton
    Left = 400
    Top = 440
    Width = 75
    Height = 25
    Caption = 'Hapus'
    TabOrder = 3
    OnClick = b4Click
  end
  object b5: TButton
    Left = 496
    Top = 440
    Width = 75
    Height = 25
    Caption = 'Batal'
    TabOrder = 4
    OnClick = b5Click
  end
  object b6: TButton
    Left = 592
    Top = 440
    Width = 75
    Height = 25
    Caption = 'Laporan'
    TabOrder = 5
  end
  object Edit1: TEdit
    Left = 184
    Top = 40
    Width = 161
    Height = 21
    TabOrder = 6
  end
  object Edit2: TEdit
    Left = 184
    Top = 88
    Width = 161
    Height = 21
    TabOrder = 7
  end
  object Edit3: TEdit
    Left = 184
    Top = 128
    Width = 161
    Height = 21
    TabOrder = 8
  end
  object Edit4: TEdit
    Left = 184
    Top = 168
    Width = 161
    Height = 21
    TabOrder = 9
  end
  object Edit5: TEdit
    Left = 184
    Top = 208
    Width = 161
    Height = 21
    TabOrder = 10
  end
  object Edit6: TEdit
    Left = 184
    Top = 248
    Width = 161
    Height = 21
    TabOrder = 11
  end
  object c1: TComboBox
    Left = 184
    Top = 288
    Width = 161
    Height = 21
    ItemHeight = 13
    TabOrder = 12
    Items.Strings = (
      'Laki-laki'
      'Perempuan')
  end
  object Edit7: TEdit
    Left = 184
    Top = 328
    Width = 161
    Height = 21
    TabOrder = 13
  end
  object Edit8: TEdit
    Left = 184
    Top = 368
    Width = 161
    Height = 21
    TabOrder = 14
  end
  object dg1: TDBGrid
    Left = 384
    Top = 152
    Width = 577
    Height = 249
    DataSource = ds1
    TabOrder = 15
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
    Left = 448
    Top = 40
  end
  object zqry1: TZQuery
    Connection = con1
    Active = True
    SQL.Strings = (
      'select * from tbl_ortu')
    Params = <>
    Left = 496
    Top = 40
  end
  object ds1: TDataSource
    DataSet = zqry1
    Left = 544
    Top = 40
  end
end
