object Form6: TForm6
  Left = 383
  Top = 190
  Width = 1044
  Height = 540
  Caption = 'WALIKELAS'
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
    Left = 48
    Top = 40
    Width = 51
    Height = 16
    Caption = 'NIK / NIP'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
  end
  object l2: TLabel
    Left = 48
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
    Left = 48
    Top = 128
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
    Left = 48
    Top = 176
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
    Left = 408
    Top = 40
    Width = 52
    Height = 16
    Caption = 'TELEPON'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
  end
  object l6: TLabel
    Left = 408
    Top = 80
    Width = 46
    Height = 16
    Caption = 'MATPEL'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
  end
  object l7: TLabel
    Left = 408
    Top = 120
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
    Left = 408
    Top = 160
    Width = 48
    Height = 16
    Caption = 'STATUS'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
  end
  object Edit1: TEdit
    Left = 184
    Top = 40
    Width = 161
    Height = 21
    TabOrder = 0
  end
  object Edit2: TEdit
    Left = 184
    Top = 88
    Width = 161
    Height = 21
    TabOrder = 1
  end
  object Edit3: TEdit
    Left = 184
    Top = 176
    Width = 161
    Height = 21
    TabOrder = 2
  end
  object Edit4: TEdit
    Left = 544
    Top = 40
    Width = 161
    Height = 21
    TabOrder = 3
  end
  object Edit5: TEdit
    Left = 544
    Top = 80
    Width = 161
    Height = 21
    TabOrder = 4
  end
  object Edit6: TEdit
    Left = 544
    Top = 120
    Width = 161
    Height = 21
    TabOrder = 5
  end
  object Edit7: TEdit
    Left = 544
    Top = 160
    Width = 161
    Height = 21
    TabOrder = 6
  end
  object c1: TComboBox
    Left = 184
    Top = 128
    Width = 161
    Height = 21
    ItemHeight = 13
    TabOrder = 7
    Items.Strings = (
      'L'
      'P')
  end
  object dg1: TDBGrid
    Left = 56
    Top = 216
    Width = 665
    Height = 193
    DataSource = ds1
    TabOrder = 8
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'MS Sans Serif'
    TitleFont.Style = []
    OnCellClick = dg1CellClick
  end
  object b1: TButton
    Left = 56
    Top = 424
    Width = 89
    Height = 49
    Caption = 'BARU'
    TabOrder = 9
    OnClick = b1Click
  end
  object b2: TButton
    Left = 160
    Top = 424
    Width = 89
    Height = 49
    Caption = 'SIMPAN'
    TabOrder = 10
    OnClick = b2Click
  end
  object b3: TButton
    Left = 264
    Top = 424
    Width = 89
    Height = 49
    Caption = 'EDIT'
    TabOrder = 11
    OnClick = b3Click
  end
  object b4: TButton
    Left = 368
    Top = 424
    Width = 89
    Height = 49
    Caption = 'HAPUS'
    TabOrder = 12
    OnClick = b4Click
  end
  object b5: TButton
    Left = 467
    Top = 424
    Width = 89
    Height = 49
    Caption = 'BATAL'
    TabOrder = 13
    OnClick = b5Click
  end
  object b6: TButton
    Left = 563
    Top = 424
    Width = 89
    Height = 49
    Caption = 'LAPORAN'
    TabOrder = 14
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
    Left = 728
    Top = 40
  end
  object zqry1: TZQuery
    Connection = con1
    Active = True
    SQL.Strings = (
      'select * from tbl_walikelas')
    Params = <>
    Left = 776
    Top = 40
  end
  object ds1: TDataSource
    DataSet = zqry1
    Left = 824
    Top = 40
  end
end
