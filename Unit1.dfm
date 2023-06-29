object Form1: TForm1
  Left = 268
  Top = 188
  Width = 1044
  Height = 540
  Caption = 'Form1'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  Menu = MainMenu1
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object MainMenu1: TMainMenu
    Left = 216
    Top = 72
    object f1: TMenuItem
      Caption = 'Menu'
      object Poin1: TMenuItem
        Caption = 'Poin'
        OnClick = Poin1Click
      end
      object Kelas1: TMenuItem
        Caption = 'Kelas'
        OnClick = Kelas1Click
      end
      object Ortu1: TMenuItem
        Caption = 'Ortu'
        OnClick = Ortu1Click
      end
      object siswa1: TMenuItem
        Caption = 'siswa'
        OnClick = siswa1Click
      end
      object wallikelas1: TMenuItem
        Caption = 'wallikelas'
        OnClick = wallikelas1Click
      end
      object User1: TMenuItem
        Caption = 'User'
        OnClick = User1Click
      end
      object Hubungan1: TMenuItem
        Caption = 'Hubungan'
        OnClick = Hubungan1Click
      end
      object Semester1: TMenuItem
        Caption = 'Semester'
        OnClick = Semester1Click
      end
    end
  end
end
