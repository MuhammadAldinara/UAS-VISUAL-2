unit Menu;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Menus;

type
  TForm4 = class(TForm)
    mm1: TMainMenu;
    Menu1: TMenuItem;
    LogOut1: TMenuItem;
    Button1: TButton;
    Label1: TLabel;
    Button2: TButton;
    Button3: TButton;
    Button4: TButton;
    Button5: TButton;
    Button6: TButton;
    Button7: TButton;
    Button8: TButton;
    procedure LogOut1Click(Sender: TObject);
    procedure Button1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form4: TForm4;

implementation

uses
  login, ortu;

{$R *.dfm}

procedure TForm4.LogOut1Click(Sender: TObject);
begin
hide;
Form2.Show;
end;

procedure TForm4.Button1Click(Sender: TObject);
begin
  hide;
Form5.Show;
end;

end.
