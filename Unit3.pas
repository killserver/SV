unit Unit3;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, DB, ADODB, Grids, DBGrids, ExtCtrls, DBCtrls, StdCtrls;

type
  TForm3 = class(TForm)
    DBGrid1: TDBGrid;
    ADOConnection1: TADOConnection;
    ADOQuery1: TADOQuery;
    DataSource1: TDataSource;
    qry1: TADOQuery;
    lbl1: TLabel;
    edt1: TEdit;
    lbl2: TLabel;
    edt2: TEdit;
    btn1: TButton;
    btn2: TButton;
    lbl3: TLabel;
    edt3: TEdit;
    lbl4: TLabel;
    edt4: TEdit;
    lbl5: TLabel;
    lbl6: TLabel;
    lbl7: TLabel;
    lbl8: TLabel;
    edt5: TEdit;
    edt6: TEdit;
    edt7: TEdit;
    edt8: TEdit;
    lbl9: TLabel;
    edt9: TEdit;
    procedure FormCreate(Sender: TObject);
    procedure btn2Click(Sender: TObject);
    procedure btn1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations } 
  end;

var
  Form3: TForm3;
  now_view: Integer;
  page_max:Integer;
implementation

{$R *.dfm}


procedure TForm3.FormCreate(Sender: TObject);
begin
  now_view:=1;
   qry1.Active:=False;
   qry1.SQL.Clear;
   qry1.SQL.Add('SELECT * From [Учасники]');
   qry1.Active:=True;
   page_max:=qry1.Recordset.RecordCount;
    if(page_max>0) then
      btn2.Enabled:=True;
      
   ADOQuery1.Active:=False;
   ADOQuery1.SQL.Clear;
   ADOQuery1.SQL.Add('SELECT [Код турніра], [Результат] From [Учасники турніра] WHERE [Код учасника] = '+intToStr(now_view));
   ADOQuery1.Active:=True;

   qry1.Active:=False;
   qry1.SQL.Clear;
   qry1.SQL.Add('SELECT * From [Учасники] WHERE [Код учасника] = '+intToStr(now_view));
   qry1.Active:=True;
   edt1.Text:= qry1.FieldByName('Код учасника').AsString;
   edt2.Text:= qry1.FieldByName('Пірзвище').AsString;
   edt3.Text:= qry1.FieldByName('Ім’я').AsString;
   edt4.Text:= qry1.FieldByName('По батькові').AsString;
   edt5.Text:= qry1.FieldByName('Дата народження').AsString;
   edt6.Text:= qry1.FieldByName('Домашня адреса').AsString;
   edt7.Text:= qry1.FieldByName('Розряд').AsString;
   edt8.Text:= qry1.FieldByName('Код тренера').AsString;
   edt9.Text:= qry1.FieldByName('Рейтенг учасника').AsString;
end;

procedure TForm3.btn2Click(Sender: TObject);
begin
   if(page_max>=(now_view+1)) then begin
      btn2.Enabled:=True;
      btn1.Enabled:=True;
      now_view:=now_view+1;
       qry1.Active:=False;
       qry1.SQL.Clear;
       qry1.SQL.Add('SELECT * From [Учасники] WHERE [Код учасника] = '+intToStr(now_view));
       qry1.Active:=True; 
       if(now_view=1) then
          btn1.Enabled:=False;
        if(page_max=now_view) then
          btn2.Enabled:=False;
       edt1.Text:= qry1.FieldByName('Код учасника').AsString;
       edt2.Text:= qry1.FieldByName('Пірзвище').AsString;
       edt3.Text:= qry1.FieldByName('Ім’я').AsString;
       edt4.Text:= qry1.FieldByName('По батькові').AsString;
       edt5.Text:= qry1.FieldByName('Дата народження').AsString;
       edt6.Text:= qry1.FieldByName('Домашня адреса').AsString;
       edt7.Text:= qry1.FieldByName('Розряд').AsString;
       edt8.Text:= qry1.FieldByName('Код тренера').AsString;
       edt9.Text:= qry1.FieldByName('Рейтенг учасника').AsString;
   end else btn2.Enabled:=False;
end;
procedure TForm3.btn1Click(Sender: TObject);
begin
   if((now_view-1)>0) then begin
      btn1.Enabled:=True;
      btn2.Enabled:=True;
      now_view:=now_view-1;
       qry1.Active:=False;
       qry1.SQL.Clear;
       qry1.SQL.Add('SELECT * From [Учасники] WHERE [Код учасника] = '+intToStr(now_view));
       qry1.Active:=True;
       if(now_view=1) then
          btn1.Enabled:=False;
       if(page_max>(now_view+1)) then
          btn2.Enabled:=True;
       edt1.Text:= qry1.FieldByName('Код учасника').AsString;
       edt2.Text:= qry1.FieldByName('Пірзвище').AsString;
       edt3.Text:= qry1.FieldByName('Ім’я').AsString;
       edt4.Text:= qry1.FieldByName('По батькові').AsString;
       edt5.Text:= qry1.FieldByName('Дата народження').AsString;
       edt6.Text:= qry1.FieldByName('Домашня адреса').AsString;
       edt7.Text:= qry1.FieldByName('Розряд').AsString;
       edt8.Text:= qry1.FieldByName('Код тренера').AsString;
       edt9.Text:= qry1.FieldByName('Рейтенг учасника').AsString;
   end else btn1.Enabled:=False;
end;

end.
 