object Form3: TForm3
  Left = 256
  Top = 177
  Width = 1044
  Height = 540
  Caption = 'Form Kelas'
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
  object frxReport1: TfrxReport
    Version = '4.0.11'
    DotMatrixReport = False
    IniFile = '\Software\Fast Reports'
    PreviewOptions.Buttons = [pbPrint, pbLoad, pbSave, pbExport, pbZoom, pbFind, pbOutline, pbPageSetup, pbTools, pbEdit, pbNavigator, pbExportQuick]
    PreviewOptions.Zoom = 1.000000000000000000
    PrintOptions.Printer = 'Default'
    PrintOptions.PrintOnSheet = 0
    ReportOptions.CreateDate = 45106.986278611100000000
    ReportOptions.LastChange = 45106.986278611100000000
    ScriptLanguage = 'PascalScript'
    ScriptText.Strings = (
      'begin'
      ''
      'end.')
    Left = 592
    Top = 64
    Datasets = <
      item
        DataSet = frxDBDataset1
        DataSetName = 'frxDBDataset1'
      end>
    Variables = <>
    Style = <>
    object Data: TfrxDataPage
      Height = 1000.000000000000000000
      Width = 1000.000000000000000000
    end
    object Page1: TfrxReportPage
      PaperWidth = 210.000000000000000000
      PaperHeight = 297.000000000000000000
      PaperSize = 9
      object ReportTitle1: TfrxReportTitle
        Height = 22.677180000000000000
        Top = 18.897650000000000000
        Width = 793.701300000000000000
        object Memo1: TfrxMemoView
          Left = 325.039580000000000000
          Top = 3.779530000000000000
          Width = 94.488250000000000000
          Height = 18.897650000000000000
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Memo.UTF8 = (
            'LAPORAN DATA KELAS')
          ParentFont = False
        end
      end
      object PageHeader1: TfrxPageHeader
        Top = 64.252010000000000000
        Width = 793.701300000000000000
      end
      object MasterData1: TfrxMasterData
        Height = 18.897650000000000000
        Top = 124.724490000000000000
        Width = 793.701300000000000000
        DataSet = frxDBDataset1
        DataSetName = 'frxDBDataset1'
        RowCount = 0
        object Memo4: TfrxMemoView
          Left = 192.756030000000000000
          Width = 30.236240000000000000
          Height = 18.897650000000000000
          DataSet = frxDBDataset1
          DataSetName = 'frxDBDataset1'
          DisplayFormat.DecimalSeparator = ','
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            '[line]')
          ParentFont = False
        end
        object Memo6: TfrxMemoView
          Left = 222.992270000000000000
          Width = 136.063080000000000000
          Height = 18.897650000000000000
          DataField = 'nama'
          DataSet = frxDBDataset1
          DataSetName = 'frxDBDataset1'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            '[frxDBDataset1."nama"]')
          ParentFont = False
        end
        object Memo7: TfrxMemoView
          Left = 359.055350000000000000
          Width = 136.063080000000000000
          Height = 18.897650000000000000
          DataField = 'jenis'
          DataSet = frxDBDataset1
          DataSetName = 'frxDBDataset1'
          Font.Charset = DEFAULT_CHARSET
          Font.Color = clBlack
          Font.Height = -13
          Font.Name = 'Arial'
          Font.Style = []
          Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
          HAlign = haCenter
          Memo.UTF8 = (
            '[frxDBDataset1."jenis"]')
          ParentFont = False
        end
      end
      object Memo2: TfrxMemoView
        Left = 192.756030000000000000
        Top = 60.472480000000000000
        Width = 30.236240000000000000
        Height = 18.897650000000000000
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = []
        Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
        HAlign = haCenter
        Memo.UTF8 = (
          'NO')
        ParentFont = False
      end
      object Memo3: TfrxMemoView
        Left = 222.992270000000000000
        Top = 60.472480000000000000
        Width = 136.063080000000000000
        Height = 18.897650000000000000
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = []
        Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
        HAlign = haCenter
        Memo.UTF8 = (
          'NAMA')
        ParentFont = False
      end
      object Memo5: TfrxMemoView
        Left = 359.055350000000000000
        Top = 60.472480000000000000
        Width = 94.488250000000000000
        Height = 18.897650000000000000
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clBlack
        Font.Height = -13
        Font.Name = 'Arial'
        Font.Style = []
        Frame.Typ = [ftLeft, ftRight, ftTop, ftBottom]
        HAlign = haCenter
        Memo.UTF8 = (
          'JURUSAN')
        ParentFont = False
      end
    end
  end
  object frxDBDataset1: TfrxDBDataset
    UserName = 'frxDBDataset1'
    CloseDataSource = False
    DataSet = zqry1
    Left = 640
    Top = 72
  end
end
