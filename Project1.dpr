program Project1;

uses
  Forms,
  Unit1 in 'Unit1.pas' {Form1},
  login in 'login.pas' {Form2},
  daftar in 'daftar.pas' {Form3},
  Menu in 'Menu.pas' {Form4},
  ortu in 'ortu.pas' {Form5},
  siswa in 'siswa.pas' {Form6},
  waliKelas in 'waliKelas.pas' {Form7};

{$R *.res}

begin
  Application.Initialize;
  Application.CreateForm(TForm7, Form7);
  Application.CreateForm(TForm2, Form2);
  Application.CreateForm(TForm1, Form1);
  Application.CreateForm(TForm3, Form3);
  Application.CreateForm(TForm4, Form4);
  Application.CreateForm(TForm5, Form5);
  Application.CreateForm(TForm6, Form6);
  Application.Run;
end.
