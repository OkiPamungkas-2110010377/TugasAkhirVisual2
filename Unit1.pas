unit Unit1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Menus;

type
  TForm1 = class(TForm)
    MainMenu1: TMainMenu;
    f1: TMenuItem;
    Poin1: TMenuItem;
    Kelas1: TMenuItem;
    Ortu1: TMenuItem;
    siswa1: TMenuItem;
    procedure Poin1Click(Sender: TObject);
    procedure Kelas1Click(Sender: TObject);
    procedure Ortu1Click(Sender: TObject);
    procedure siswa1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

uses Unit2, TblKls, TblOrtu, TblSiswa;

{$R *.dfm}

procedure TForm1.Poin1Click(Sender: TObject);
begin
Form2.ShowModal();
end;

procedure TForm1.Kelas1Click(Sender: TObject);
begin
form3.ShowModal();
end;

procedure TForm1.Ortu1Click(Sender: TObject);
begin
form4.ShowModal();
end;

procedure TForm1.siswa1Click(Sender: TObject);
begin
form5.ShowModal();
end;

end.
