program Project1;

uses
  Forms,
  Unit1 in 'Unit1.pas' {Form1},
  login in 'login.pas' {Form2},
  daftar in 'daftar.pas' {Form3},
  Menu in 'Menu.pas' {Form4},
  ortu in 'ortu.pas' {Form5};

{$R *.res}

begin
  Application.Initialize;
  Application.CreateForm(TForm2, Form2);
  Application.CreateForm(TForm1, Form1);
  Application.CreateForm(TForm3, Form3);
  Application.CreateForm(TForm4, Form4);
  Application.CreateForm(TForm5, Form5);
  Application.Run;
end.
