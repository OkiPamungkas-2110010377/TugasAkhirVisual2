program Uas;

uses
  Forms,
  Unit1 in 'Unit1.pas' {Form1},
  Unit2 in 'Unit2.pas' {Form2},
  TblKls in 'TblKls.pas' {Form3},
  TblOrtu in 'TblOrtu.pas' {Form4},
  TblSiswa in 'TblSiswa.pas' {Form5},
  TblWalikelas in 'TblWalikelas.pas' {Form6},
  TblUser in 'TblUser.pas' {Form7},
  TblHubungan in 'TblHubungan.pas' {Form8},
  TblSemester in 'TblSemester.pas' {Form9},
  Unit10 in 'Unit10.pas' {Form10};

{$R *.res}

begin
  Application.Initialize;
  Application.CreateForm(TForm1, Form1);
  Application.CreateForm(TForm2, Form2);
  Application.CreateForm(TForm3, Form3);
  Application.CreateForm(TForm4, Form4);
  Application.CreateForm(TForm5, Form5);
  Application.CreateForm(TForm6, Form6);
  Application.CreateForm(TForm7, Form7);
  Application.CreateForm(TForm8, Form8);
  Application.CreateForm(TForm9, Form9);
  Application.CreateForm(TForm10, Form10);
  Application.Run;
end.
