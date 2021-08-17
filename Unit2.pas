unit Unit2;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls;

type
  TFormAdd = class(TForm)
    Edit1: TEdit;
    Edit2: TEdit;
    Button1: TButton;
    Edit3: TEdit;
    Button2: TButton;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    procedure Button2Click(Sender: TObject);
    procedure Button1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormAdd: TFormAdd;

implementation

uses Unit3, Unit4;

{$R *.dfm}

procedure FillFile();  //�������, �� ��������.
var
f:TStrings;
i:integer;
begin
f:=TStringlist.Create();

f.LoadFromFile('AccessFiles.txt');

f.Strings[0]:=('people');
for i := 1 to f.Count - 1 do
 f.strings[i]:=('3');
 f.SaveToFile('users\'+FormAdd.Edit1.Text+'.txt');
f.Free;

end;

procedure TFormAdd.Button1Click(Sender: TObject);
 var
f,g,reg:TStrings;
I:integer;
flag:boolean;
begin
 f:=TStringList.Create();
 g:=TStringList.Create();
 reg:=TStringlist.Create();
 f.LoadFromFile('users.txt');
 g.LoadFromFile('parols.txt');
 reg.LoadFromFile('reg.txt');
 if FormAdd.Edit2.Text=FormAdd.Edit3.Text then
  begin
   flag:=false;
   for I := 0 to f.Count - 1 do
     if FormAdd.Edit1.Text=f.Strings[I] then
          flag:=true;
        if flag=false then
           begin
             f.Add(FormAdd.Edit1.Text);
             f.SaveToFile('users.txt');
             g.Add(FormAdd.Edit2.Text);
             g.SaveToFile('parols.txt');
             reg.Add('0');
             reg.SaveToFile('reg.txt');
             FillFile();
             ShowMessage('User added');
             FormAdmin.ComboBox2.Items.LoadFromFile('users.txt');
             {f.Free;
             g.Free;
             reg.Free; }
             FormAdd.Close;
           end
        else ShowMessage('Takoi polzovatel est');

  end;
f.Free;
g.Free;
reg.Free;
end;

procedure TFormAdd.Button2Click(Sender: TObject);
begin
FormAdd.Close;
end;

end.
