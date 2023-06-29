unit TblKls;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, ZAbstractRODataset, ZAbstractDataset, ZDataset,
  ZAbstractConnection, ZConnection, Grids, DBGrids, StdCtrls, frxClass,
  frxDBSet;

type
  TForm3 = class(TForm)
    Edit1: TEdit;
    c1: TComboBox;
    Label1: TLabel;
    Label2: TLabel;
    ds1: TDataSource;
    b1: TButton;
    b2: TButton;
    b3: TButton;
    b4: TButton;
    b5: TButton;
    b6: TButton;
    dg1: TDBGrid;
    con1: TZConnection;
    zqry1: TZQuery;
    frxReport1: TfrxReport;
    frxDBDataset1: TfrxDBDataset;
    procedure posisiawal;
    procedure editbersih;
    procedure editenable;
    procedure b1Click(Sender: TObject);
    procedure b2Click(Sender: TObject);
    procedure b3Click(Sender: TObject);
    procedure b4Click(Sender: TObject);
    procedure b5Click(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure dg1CellClick(Column: TColumn);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form3: TForm3;
  id:string;

implementation

{$R *.dfm}

procedure TForm3.editbersih;
begin
Edit1.Clear;

c1.text := '';
b5.Enabled:= False;
end;

procedure TForm3.editenable;
begin
edit1.Enabled:= True;

c1.Enabled:= True;
end;

procedure TForm3.posisiawal;
begin
editbersih;
edit1.Enabled:= False;
c1.Enabled:= False;

b1.Enabled:= True;
b2.Enabled:= False;
b3.Enabled:= False;
b4.Enabled:= False;
b5.Enabled:= False;
end;

procedure TForm3.b1Click(Sender: TObject);
begin
editbersih;

b1.Enabled:= false;
b2.Enabled:= True;
b3.Enabled:= False;
b4.Enabled:= False;
b5.Enabled:= True;

editenable;
end;

procedure TForm3.b2Click(Sender: TObject);
begin
if (Edit1.Text= '')or(c1.Text= '')then
begin
ShowMessage('DATA TIDAK BOLEH KOSONG!');
end else
if (zqry1.Locate('nama',Edit1.Text,[]))  then
begin
ShowMessage('DATA KELAS SUDAH DIGUNAKAN');
posisiawal;
end else
begin
//simpan
zqry1.SQL.Clear;
zqry1.SQL.Add('insert into tbl_kls values (null,"'+Edit1.Text+'","'+c1.Text+'")');
zqry1.ExecSQL;

zqry1.SQL.Clear;
zqry1.SQL.Add('select * from tbl_kls');
zqry1.Open;
ShowMessage('DATA BARHASIL DISIMPAN!');
posisiawal;

end;
end;

procedure TForm3.b3Click(Sender: TObject);
begin
if (Edit1.Text= '')or (c1.Text= '')then
begin
ShowMessage('INPUTAN WAJIB DIISI!');
end else
if (Edit1.Text = zqry1.Fields[1].AsString)  and (c1.Text = zqry1.Fields[2].AsString)then
begin
ShowMessage('DATA TIDAK ADA PERUBAHAN');
posisiawal;
end else
begin
id:=dg1.DataSource.DataSet.FieldByName('id_kelas').AsString;
ShowMessage('DATA BERHASIL DIUPDATE!'); //UPDATE
zqry1.SQL.Clear;
zqry1.SQL.Add('Update tbl_kls set nama= "'+Edit1.Text+'" where id_kelas="'+id+'"');
zqry1. ExecSQL;

zqry1.SQL.Clear;
zqry1.SQL.Add('select * from tbl_kls');
zqry1.Open;
posisiawal;
end;
end;

procedure TForm3.b4Click(Sender: TObject);
begin
if MessageDlg('APAKAH YAKIN MENGHAPUS DATA INI?',mtWarning,[mbYes,mbNo],0)= mryes then
begin
id:=dg1.DataSource.DataSet.FieldByName('id_kelas').AsString;
zqry1.SQL.Clear;
zqry1.SQL.Add(' delete from tbl_kls where id_kelas="'+id+'"');
zqry1. ExecSQL;
zqry1.SQL.Clear;
zqry1.SQL.Add('select * from tbl_kls');
zqry1.Open;
ShowMessage('DATA BERHASIL DIHAPUS');
posisiawal;
end else
begin
ShowMessage('DATA BATAL DIHAPUS');
posisiawal;
end;
end;



procedure TForm3.b5Click(Sender: TObject);
begin
editenable;
b1.Enabled:= true;
b2.Enabled:= False;
b3.Enabled:= True;
b4.Enabled:= True;
b5.Enabled:= True;
id:=zqry1.Fields[0].AsString;
Edit1.Text:= zqry1.FieldList[1].AsString;

c1.Text:= zqry1.FieldList[2].AsString;
end;

procedure TForm3.FormShow(Sender: TObject);
begin
posisiawal;
end;

procedure TForm3.dg1CellClick(Column: TColumn);
begin
editenable;
b1.Enabled:= true;
b2.Enabled:= False;
b3.Enabled:= True;
b4.Enabled:= True;
b5.Enabled:= True;
id:=zqry1.Fields[0].AsString;
Edit1.Text:= zqry1.FieldList[1].AsString;

c1.Text:= zqry1.FieldList[2].AsString;
end;

end.
