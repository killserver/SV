unit Unit5;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Grids, DBGrids, DB, ADODB, ExtCtrls, DBCtrls, StdCtrls;

type
  TForm5 = class(TForm)
    ADOConnection1: TADOConnection;
    ADOQuery1: TADOQuery;
    DataSource1: TDataSource;
    lbl1: TLabel;
    edt1: TEdit;
    lbl2: TLabel;
    edt2: TEdit;
    lbl3: TLabel;
    edt3: TEdit;
    lbl4: TLabel;
    edt4: TEdit;
    lbl5: TLabel;
    edt5: TEdit;
    lbl6: TLabel;
    edt6: TEdit;
    lbl7: TLabel;
    edt7: TEdit;
    lbl8: TLabel;
    edt8: TEdit;
    lbl9: TLabel;
    edt9: TEdit;
    qry1: TADOQuery;
    btn1: TButton;
    btn2: TButton;
    btn3: TButton;
    btn4: TButton;
    btn5: TButton;
    btn6: TButton;
    btn7: TButton;
    procedure FormCreate(Sender: TObject);
    procedure btn2Click(Sender: TObject);
    procedure btn1Click(Sender: TObject);
    procedure btn3Click(Sender: TObject);
    procedure btn6Click(Sender: TObject);
    procedure btn7Click(Sender: TObject);
    procedure btn4Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form5: TForm5;
  now_view: Integer;
  page_max:Integer;
  IsEdit:Boolean;

implementation

{$R *.dfm}

procedure TForm5.FormCreate(Sender: TObject);
begin
  IsEdit:=False;
  now_view:=1;
   qry1.Active:=False;
   qry1.SQL.Clear;
   qry1.SQL.Add('SELECT * From [Учасники]');
   qry1.Active:=True;
   page_max:=qry1.Recordset.RecordCount;
    if(page_max>0) then
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
end;


procedure TForm5.btn2Click(Sender: TObject);
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
procedure TForm5.btn1Click(Sender: TObject);
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

procedure TForm5.btn3Click(Sender: TObject);
begin
       edt2.Enabled:=True;
       edt3.Enabled:=True;
       edt4.Enabled:=True;
       edt5.Enabled:=True;
       edt6.Enabled:=True;
       edt7.Enabled:=True;
       edt8.Enabled:=True;
       edt9.Enabled:=True;

       edt2.Text:= '';
       edt3.Text:= '';
       edt4.Text:= '';
       edt5.Text:= '';
       edt6.Text:= '';
       edt7.Text:= '';
       edt8.Text:= '';
       edt9.Text:= '';
       lbl1.Visible:=False;
       edt1.Visible:=False;
       btn6.Visible:=True;
       btn7.Visible:=True;
       btn1.Enabled:=False;
       btn2.Enabled:=False;
       btn3.Visible:=False;
       btn4.Visible:=False;
       btn5.Visible:=False;
end;

procedure TForm5.btn6Click(Sender: TObject);
begin
       qry1.Active:=False;
       qry1.SQL.Clear;
       if(IsEdit=False) then begin
         qry1.SQL.Add('INSERT INTO [Учасники] ');
         qry1.SQL.Add('([Пірзвище], [Ім’я], [По батькові], [Дата народження], ');
         qry1.SQL.Add('[Домашня адреса], [Розряд], [Код тренера], ');
         qry1.SQL.Add('[Рейтенг учасника]) ');
         qry1.SQL.Add('VALUES (:fam, :imya, :otch, :happy_day, :home, :level, :code_traner, :rating)');
       end else begin
         qry1.SQL.Add('UPDATE [Учасники] SET ');
         qry1.SQL.Add('[Пірзвище] = :fam,');
         qry1.SQL.Add('[Ім’я] = :imya,');
         qry1.SQL.Add('[По батькові] = :otch,');
         qry1.SQL.Add('[Дата народження] = :happy_day,');
         qry1.SQL.Add('[Домашня адреса] = :home,');
         qry1.SQL.Add('[Розряд] = :level,');
         qry1.SQL.Add('[Код тренера] = :code_traner,');
         qry1.SQL.Add('[Рейтенг учасника] = :rating ');
         qry1.SQL.Add('WHERE [Код учасника] = '+inttostr(now_view));
       end;
       qry1.Parameters.ParamByName('fam').Value := edt2.Text;
       qry1.Parameters.ParamByName('imya').Value := edt3.Text;
       qry1.Parameters.ParamByName('otch').Value := edt4.Text;
       qry1.Parameters.ParamByName('happy_day').Value := StrToDateTime(edt5.Text);
       qry1.Parameters.ParamByName('home').Value := edt6.Text;
       qry1.Parameters.ParamByName('level').Value := edt7.Text;
       qry1.Parameters.ParamByName('code_traner').Value := StrToInt(edt8.Text);
       qry1.Parameters.ParamByName('rating').Value := StrToInt(edt9.Text);

          qry1.ExecSQL;

       lbl1.Visible:=True;
       edt1.Visible:=True;
       btn6.Visible:=False;
       btn7.Visible:=False;
       btn1.Enabled:=True;
       btn2.Enabled:=True;
       btn3.Visible:=True;
       btn4.Visible:=True;
       btn5.Visible:=True;
       IsEdit:=False; 

       edt2.Enabled:=False;
       edt3.Enabled:=False;
       edt4.Enabled:=False;
       edt5.Enabled:=False;
       edt6.Enabled:=False;
       edt7.Enabled:=False;
       edt8.Enabled:=False;
       edt9.Enabled:=False;
end;

procedure TForm5.btn7Click(Sender: TObject);
begin      
   if(now_view>0) then begin
      btn1.Enabled:=True;
      btn2.Enabled:=True;
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
   end;
       lbl1.Visible:=True;
       edt1.Visible:=True;
       btn6.Visible:=False;
       btn7.Visible:=False;
       btn1.Enabled:=True;
       btn2.Enabled:=True;
       btn3.Visible:=True;
       btn4.Visible:=True;
       btn5.Visible:=True;

       edt2.Enabled:=False;
       edt3.Enabled:=False;
       edt4.Enabled:=False;
       edt5.Enabled:=False;
       edt6.Enabled:=False;
       edt7.Enabled:=False;
       edt8.Enabled:=False;
       edt9.Enabled:=False;
end;

procedure TForm5.btn4Click(Sender: TObject);
begin
       IsEdit:=True;
       
       edt2.Enabled:=True;
       edt3.Enabled:=True;
       edt4.Enabled:=True;
       edt5.Enabled:=True;
       edt6.Enabled:=True;
       edt7.Enabled:=True;
       edt8.Enabled:=True;
       edt9.Enabled:=True;

       btn6.Visible:=True;
       btn7.Visible:=True;
       btn1.Enabled:=False;
       btn2.Enabled:=False;
       btn3.Visible:=False;
       btn4.Visible:=False;
       btn5.Visible:=False;
end;

end.
 