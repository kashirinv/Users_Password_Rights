unit Unit1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls;

type
  TFormReg = class(TForm)
    Edit1: TEdit;
    Edit2: TEdit;
    Button1: TButton;
    Label1: TLabel;
    Label2: TLabel;
    Button2: TButton;
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormReg: TFormReg;

implementation

uses Unit2,Unit3, Unit4, Unit5;

{$R *.dfm}

procedure TFormReg.Button1Click(Sender: TObject);
var
f,g,h:TStrings;
i:integer;

begin
f:=TStringlist.Create();
g:=TStringlist.Create();
h:=TStringlist.Create();

f.LoadFromFile('users.txt');
g.LoadFromFile('parols.txt');
h.LoadFromFile('reg.txt');

for i := 0 to f.Count - 1 do
begin
 if (FormReg.Edit1.Text=f.Strings[i])and(FormReg.Edit2.Text=g.Strings[i]) then
 begin
    ShowMessage('Correct');
    h.Strings[i]:= IntToStr(StrToInt(h.Strings[i]) + 1);//??????????? ??????? ???????????
    h.SaveToFile('reg.txt');
    if h.Strings[i]='10' then
    begin
      ShowMessage('Your Password is old');
      f.Free;
      g.Free;
      FormPas.ShowModal;
      h.Strings[i]:='0';
      h.SaveToFile('reg.txt');
      h.Free;
    end;
    if FormReg.Edit1.Text='admin'
      then FormAdmin.ShowModal   //????????? ??????
      else FormUser.ShowModal;   // ????????? ????? ?????
      break;
 end
 else
  begin
   //ShowMessage('Invalid username or password');

  end;
end;
f.free;
g.Free;
h.Free;
end;

procedure TFormReg.Button2Click(Sender: TObject);
begin
FormReg.Close;
end;

end.
