unit ortu;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, DB, ZAbstractRODataset, ZAbstractDataset, ZDataset,
  ZAbstractConnection, ZConnection, Grids, DBGrids;

type
  TForm5 = class(TForm)
    Label4l2: TLabel;
    Label4l3: TLabel;
    Label4l4: TLabel;
    Label4l5: TLabel;
    Label4l6: TLabel;
    Label1: TLabel;
    Edit1: TEdit;
    Edit2: TEdit;
    Edit3: TEdit;
    Edit4: TEdit;
    Edit5: TEdit;
    dg1: TDBGrid;
    b1: TButton;
    b2: TButton;
    b3: TButton;
    b4: TButton;
    b5: TButton;
    Bb6: TButton;
    con1: TZConnection;
    zqry1: TZQuery;
    ds1: TDataSource;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    edt1: TEdit;
    edt2: TEdit;
    edt3: TEdit;
    ComboBox1: TComboBox;
    procedure b4Click(Sender: TObject);
    procedure posisiawal;
    procedure b1Click(Sender: TObject);
    procedure editbersih;
    procedure editenable;
    procedure FormShow(Sender: TObject);
    procedure b2Click(Sender: TObject);
    procedure b5Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form5: TForm5;
  id : string;

implementation

{$R *.dfm}

procedure TForm5.b4Click(Sender: TObject);
begin
if MessageDlg('APAKAH YAKIN MENGHAPUS DATA INI?',mtWarning,[mbYes,mbNo],0)= mryes then
begin
id:=dg1.DataSource.DataSet.FieldByName('idkostumer').AsString;
zqry1.SQL.Clear;
zqry1.SQL.Add(' delete from kostumer where idkostumer="'+id+'"');
zqry1. ExecSQL;
zqry1.SQL.Clear;
zqry1.SQL.Add('select * from kostumer');
zqry1.Open;
ShowMessage('DATA BERHASIL DIHAPUS');
posisiawal;
end else
begin
ShowMessage('DATA BATAL DIHAPUS');
posisiawal;
end;
end;

procedure TForm5.posisiawal;
begin
editbersih;

edit1.Enabled:= False;
edit2.Enabled:= False;
edit3.Enabled:= False;
edit4.Enabled:= False;
edit5.Enabled:= False;
edt1.Enabled:= False;
ComboBox1.Enabled:= False;
edt2.Enabled:= False;
edt3.Enabled:= False;

b1.Enabled:= True;
b2.Enabled:= False;
b3.Enabled:= False;
b4.Enabled:= False;
b5.Enabled:= False;
end;

procedure TForm5.b1Click(Sender: TObject);
begin
editbersih;
b1.Enabled:= false;
b2.Enabled:= True;
b3.Enabled:= False;
b4.Enabled:= False;
b5.Enabled:= True;

editenable;
end;

procedure TForm5.editbersih;
begin
Edit1.Clear;
Edit2.Clear;
Edit3.Clear;
Edit4.Clear;
Edit5.Clear;
edt1.Clear;
ComboBox1.Text := '';
edt2.Clear;
edt3.Clear;
end;

procedure TForm5.editenable;
begin
edit1.Enabled:= True;
edit2.Enabled:= True;
edit3.Enabled:= True;
edit4.Enabled:= True;
edit5.Enabled:= True;
edt1.Enabled:= True;
ComboBox1.Enabled:= True;
edt2.Enabled:= True;
edt3.Enabled:= True;
end;

procedure TForm5.FormShow(Sender: TObject);
begin
posisiawal;
end;

procedure TForm5.b2Click(Sender: TObject);
begin
if(Edit1.Text = '')or(Edit2.Text = '')or(Edit3.Text = '')or(Edit4.Text = '')or(Edit5.Text = '')or(edt1.Text = '')or(ComboBox1.Text = '')or(edt2.Text = '')or(edt3.Text = '')then
begin
  ShowMessage('DATA TIDAK BOLEH KOSONG !');
end else
if(zqry1.Locate('nik',Edit1.Text,[]))and(zqry1.Locate('nama',Edit2.Text,[]))then
begin
  ShowMessage('Data Ortu sudah digunakan');
  posisiawal;
end else
begin
zqry1.sql.clear;
zqry1.sql.Add('insert into tbl_ortu values(null,"'+edit1.Text+'","'+edit2.Text+'","'+edit3.Text+'","'+edit4.Text+'","'+edit5.Text+'","'+edt1.Text+'","'+ComboBox1.Text+'","'+edt2.Text+'","'+edt3.Text+'")');
zqry1.ExecSQL;

zqry1.SQL.Clear;
zqry1.SQL.Add('select * from tbl_ortu');
zqry1.Open;
ShowMessage('DATA BERHASIL DISIMPAN!!');
posisiawal;
end;
end;

procedure TForm5.b5Click(Sender: TObject);
begin
posisiawal;
end;

end.
