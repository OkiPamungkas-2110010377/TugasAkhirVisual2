object Form7: TForm7
  Left = 304
  Top = 173
  Width = 1044
  Height = 540
  Caption = 'Form7'
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
    Left = 64
    Top = 40
    Width = 58
    Height = 16
    Caption = 'Username'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
  end
  object l2: TLabel
    Left = 64
    Top = 88
    Width = 55
    Height = 16
    Caption = 'Password'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
  end
  object l3: TLabel
    Left = 64
    Top = 128
    Width = 29
    Height = 16
    Caption = 'Level'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
  end
  object l4: TLabel
    Left = 64
    Top = 168
    Width = 36
    Height = 16
    Caption = 'Status'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
  end
  object Edit1: TEdit
    Left = 200
    Top = 40
    Width = 161
    Height = 21
    TabOrder = 0
  end
  object Edit2: TEdit
    Left = 200
    Top = 88
    Width = 161
    Height = 21
    TabOrder = 1
  end
  object Edit3: TEdit
    Left = 200
    Top = 128
    Width = 161
    Height = 21
    TabOrder = 2
  end
  object Edit4: TEdit
    Left = 200
    Top = 168
    Width = 161
    Height = 21
    TabOrder = 3
  end
  object b1: TButton
    Left = 64
    Top = 232
    Width = 89
    Height = 49
    Caption = 'BARU'
    TabOrder = 4
    OnClick = b1Click
  end
  object b2: TButton
    Left = 168
    Top = 232
    Width = 89
    Height = 49
    Caption = 'SIMPAN'
    TabOrder = 5
    OnClick = b2Click
  end
  object b3: TButton
    Left = 272
    Top = 232
    Width = 89
    Height = 49
    Caption = 'EDIT'
    TabOrder = 6
    OnClick = b3Click
  end
  object b4: TButton
    Left = 376
    Top = 232
    Width = 89
    Height = 49
    Caption = 'HAPUS'
    TabOrder = 7
    OnClick = b4Click
  end
  object b5: TButton
    Left = 480
    Top = 232
    Width = 89
    Height = 49
    Caption = 'BATAL'
    TabOrder = 8
    OnClick = b5Click
  end
  object b6: TButton
    Left = 584
    Top = 232
    Width = 89
    Height = 49
    Caption = 'LAPORAN'
    TabOrder = 9
  end
  object dg1: TDBGrid
    Left = 392
    Top = 40
    Width = 489
    Height = 177
    DataSource = ds1
    TabOrder = 10
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'MS Sans Serif'
    TitleFont.Style = []
    OnCellClick = dg1CellClick
  end
  object ds1: TDataSource
    DataSet = zqry1
    Left = 88
    Top = 304
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
    Left = 144
    Top = 304
  end
  object zqry1: TZQuery
    Connection = con1
    Active = True
    SQL.Strings = (
      'select * from tbl_user')
    Params = <>
    Left = 200
    Top = 304
  end
end
