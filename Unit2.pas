unit Unit2;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, Menus, Grids, DBGrids, ComCtrls, ADODB, DBTables, StdCtrls;

type
  TForm2 = class(TForm)
    Button1: TButton;
    Button2: TButton;
    Button3: TButton;
    Button4: TButton;
    Button5: TButton;
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
    procedure Button4Click(Sender: TObject);
    procedure Button5Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form2: TForm2;

implementation

uses Unit3, Unit4, Unit5, Unit6, Unit7;

{$R *.dfm}

procedure TForm2.Button1Click(Sender: TObject);
begin
Form3.show;
end;

procedure TForm2.Button2Click(Sender: TObject);
begin
Form4.show;
end;

procedure TForm2.Button3Click(Sender: TObject);
begin
Form5.show;
end;

procedure TForm2.Button4Click(Sender: TObject);
begin
Form6.show;
end;

procedure TForm2.Button5Click(Sender: TObject);
begin
Form7.show;
end;

end.
