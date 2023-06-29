unit Unit1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Menus, jpeg, ExtCtrls;

type
  TForm1 = class(TForm)
    MainMenu1: TMainMenu;
    f1: TMenuItem;
    Poin1: TMenuItem;
    Kelas1: TMenuItem;
    Ortu1: TMenuItem;
    siswa1: TMenuItem;
    wallikelas1: TMenuItem;
    User1: TMenuItem;
    Hubungan1: TMenuItem;
    Semester1: TMenuItem;
    Image1: TImage;
    procedure Poin1Click(Sender: TObject);
    procedure Kelas1Click(Sender: TObject);
    procedure Ortu1Click(Sender: TObject);
    procedure siswa1Click(Sender: TObject);
    procedure wallikelas1Click(Sender: TObject);
    procedure User1Click(Sender: TObject);
    procedure Hubungan1Click(Sender: TObject);
    procedure Semester1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

uses Unit2, TblKls, TblOrtu, TblSiswa, TblWalikelas, TblHubungan, TblUser,
  TblSemester;

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

procedure TForm1.wallikelas1Click(Sender: TObject);
begin
form6.ShowModal();
end;

procedure TForm1.User1Click(Sender: TObject);
begin
form7.showmodal();
end;

procedure TForm1.Hubungan1Click(Sender: TObject);
begin
form8.showmodal();
end;

procedure TForm1.Semester1Click(Sender: TObject);
begin
form9.showmodal();
end;

end.
end.
