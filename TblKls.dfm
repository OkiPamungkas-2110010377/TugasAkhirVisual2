object Form3: TForm3
  Left = 256
  Top = 177
  Width = 1044
  Height = 540
  Caption = 'Form3'
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
  object Label1: TLabel
    Left = 152
    Top = 88
    Width = 57
    Height = 13
    Caption = 'Nama Kelas'
  end
  object Label2: TLabel
    Left = 152
    Top = 120
    Width = 37
    Height = 13
    Caption = 'Jurusan'
  end
  object Edit1: TEdit
    Left = 240
    Top = 80
    Width = 121
    Height = 21
    TabOrder = 0
  end
  object c1: TComboBox
    Left = 240
    Top = 120
    Width = 145
    Height = 21
    ItemHeight = 13
    TabOrder = 1
    Items.Strings = (
      'ipa'
      'ips')
  end
  object b1: TButton
    Left = 144
    Top = 160
    Width = 75
    Height = 25
    Caption = 'Baru'
    TabOrder = 2
    OnClick = b1Click
  end
  object b2: TButton
    Left = 248
    Top = 160
    Width = 75
    Height = 25
    Caption = 'Simpan'
    TabOrder = 3
    OnClick = b2Click
  end
  object b3: TButton
    Left = 344
    Top = 160
    Width = 75
    Height = 25
    Caption = 'Edit'
    TabOrder = 4
    OnClick = b3Click
  end
  object b4: TButton
    Left = 440
    Top = 160
    Width = 75
    Height = 25
    Caption = 'Hapus'
    TabOrder = 5
    OnClick = b4Click
  end
  object b5: TButton
    Left = 536
    Top = 160
    Width = 75
    Height = 25
    Caption = 'Batal'
    TabOrder = 6
    OnClick = b5Click
  end
  object b6: TButton
    Left = 632
    Top = 160
    Width = 75
    Height = 25
    Caption = 'Laporan'
    TabOrder = 7
  end
  object dg1: TDBGrid
    Left = 144
    Top = 200
    Width = 577
    Height = 201
    DataSource = ds1
    TabOrder = 8
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'MS Sans Serif'
    TitleFont.Style = []
    OnCellClick = dg1CellClick
  end
  object ds1: TDataSource
    DataSet = zqry1
    Left = 440
    Top = 64
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
    Left = 496
    Top = 64
  end
  object zqry1: TZQuery
    Connection = con1
    Active = True
    SQL.Strings = (
      'select * from tbl_kls')
    Params = <>
    Left = 544
    Top = 64
  end
end
