unit Unit4;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls;

type
  TFormAdmin = class(TForm)
    Button1: TButton;
    Button4: TButton;
    Button5: TButton;
    Button6: TButton;
    Edit2: TEdit;
    Button7: TButton;
    Label1: TLabel;
    Label2: TLabel;
    Button8: TButton;
    Label3: TLabel;
    Button9: TButton;
    Button10: TButton;
    ComboBox1: TComboBox;
    ComboBox2: TComboBox;
    EditNewGroup: TEdit;
    Button2: TButton;
    ButtonFileRights: TButton;
    procedure ButtonFileRightsClick(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure FormActivate(Sender: TObject);
    procedure ComboBox2Click(Sender: TObject);
    procedure Button10Click(Sender: TObject);
    procedure Button8Click(Sender: TObject);
    procedure Button9Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure Button7Click(Sender: TObject);
    procedure Button6Click(Sender: TObject);
    procedure Button5Click(Sender: TObject);
    procedure Button4Click(Sender: TObject);


    procedure Button1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormAdmin: TFormAdmin;
  counter:byte;

implementation

uses Unit1, Unit2, Unit5, Unit6;

{$R *.dfm}




procedure TFormAdmin.Button10Click(Sender: TObject);
var
 f:TStrings;
begin
 f:=TStringList.Create();
 f.LoadFromFile('groups.txt');
 f.Add(EditNewGroup.text);
 f.SaveToFile('groups.txt');
 f.free;
 ShowMessage('Group added');
 FormAdmin.Button2.Visible:=true;
 EditNewGroup.Visible:=False;
end;

procedure TFormAdmin.Button1Click(Sender: TObject);
begin
FormAdd.ShowModal;

end;


procedure TFormAdmin.Button2Click(Sender: TObject);
begin
Button2.Visible:=False;
Button10.Visible:=True;
EditNewGroup.Visible:=True;
end;

procedure TFormAdmin.Button4Click(Sender: TObject);
var
f,g,h,j,reg,reg2:TStrings;
i:integer;
begin
f:=TStringList.Create();
g:=TStringlist.Create();
reg:=TStringList.Create();
h:=TStringList.Create();
j:=TStringList.Create();
reg2:=TStringlist.Create();
f.LoadFromFile('users.txt');
g.LoadFromFile('parols.txt');
reg.LoadFromFile('reg.txt');
if ComboBox2.Text='admin' then
  ShowMessage('??????? ???!')
  else begin
for i := 0 to f.Count - 1 do
 begin
 if FormAdmin.ComboBox2.Text = f.Strings[i] then
    //DeleteFile(f.Strings[i])
 else
   begin
      h.Add(f.Strings[i]);
      j.Add(g.Strings[i]);
      reg2.Add(reg[i]);
   end;
 end;

 DeleteFile('users/'+ComboBox2.Text+'.txt');

 DeleteFile('users.txt');
 DeleteFile('parols.txt');
 DeleteFile('reg.txt');

 h.SaveToFile('users.txt');
 j.SaveToFile('parols.txt');
 reg2.SaveToFile('reg.txt');
 ComboBox2.Items.LoadFromFile('users.txt');
 FormAdmin.ComboBox2.Text:=f.Strings[0];
 f.Free;
 g.Free;
 h.Free;
 j.Free;
 reg.Free;
 reg2.Free;
 ShowMessage('User deleted');
 end;
end;

procedure TFormAdmin.Button5Click(Sender: TObject);
var
f,g:TStrings;
i:integer;
begin
f:=TStringList.Create();
g:=TStringList.Create();
f.LoadFromFile('users.txt');
g.LoadFromFile('parols.txt');
for i := 0 to f.Count - 1 do
   if f.Strings[i]=FormAdmin.ComboBox2.Text then
   FormReg.Edit2.Text:=g.Strings[i];
   FormPas.ShowModal;
f.Free;
g.Free;
   end;

procedure TFormAdmin.Button6Click(Sender: TObject);
var
f,g:TStrings;
i:integer;
flag:boolean;
begin
flag:=true;
f:=TStringList.Create();
g:=TStringList.Create();
f.LoadFromFile('users.txt');

for i := 0 to f.Count - 1 do
 if FormAdmin.Edit2.Text=f.Strings[i] then
  begin
  ShowMessage('Invalid username');
  flag:=false;
  end;
 for i := 0 to f.Count - 1 do
   if (flag)and(FormAdmin.ComboBox2.Text=f.Strings[i]) then
     begin
       g.LoadFromFile('users/'+ComboBox2.Text+'.txt');
       DeleteFile('users/'+ComboBox2.Text+'.txt');
       f.Strings[i]:=FormAdmin.Edit2.Text;
       f.SaveToFile('users.txt');
       ComboBox2.Items.LoadFromFile('users.txt');
       ComboBox2.Text:=Edit2.Text;
       g.SaveToFile('users/'+ComboBox2.Text+'.txt');
       ShowMessage('Username changed');
     end;
  f.free;
  g.Free;
end;

procedure TFormAdmin.Button7Click(Sender: TObject);
begin
FormAdmin.Close;
end;

procedure TFormAdmin.Button8Click(Sender: TObject); //????????
var
 f:TStrings;
begin
 f:=TStringlist.Create();      //??? ? ????? ???????? ?????? ? ???? ?????
 f.LoadFromFile('users/'+ComboBox2.Text+'.txt');
 f.Strings[0]:=ComboBox1.Text;
 f.SaveToFile('users/'+ComboBox2.Text+'.txt'); //? ??? ??? ???????!

Button8.Visible:=false;
ComboBox1.Visible:=false;
Label3.Visible:=false;
Button9.Visible:=True;
f.Free;
end;

procedure TFormAdmin.Button9Click(Sender: TObject);
begin
ComboBox1.Items.LoadFromFile('groups.txt');
ComboBox1.Visible:=true;    //????? ? ???????? ??? ??? ???????? ??????
label3.Visible:=true;
Button8.Visible:=true;
Button9.Visible:=false;
end;

procedure TFormAdmin.ButtonFileRightsClick(Sender: TObject);
begin
FormRights.ComboBoxFileName.Items.LoadFromFile('AccessFiles.txt');
FormRights.ComboBoxFileName.Items.Delete(0);
FormRights.ComboBoxFileName.Enabled:=true;
FormRights.ComboBoxFileName.Text:=FormRights.ComboBoxFileName.Items[0];
FormRights.ShowModal();
FormRights.ComboBoxFileName.Enabled:=false;
end;

procedure TFormAdmin.ComboBox2Click(Sender: TObject);
begin
//ComboBox2.Items.LoadFromFile('users.txt');
end;

procedure TFormAdmin.FormActivate(Sender: TObject);
begin
//ComboBox2.Items.LoadFromFile('Users.txt');
end;

procedure TFormAdmin.FormCreate(Sender: TObject);
var
f:TStrings;
begin
 ComboBox1.Items.LoadFromFile('Groups.txt');
 ComboBox2.Items.LoadFromFile('Users.txt');
 f:=TStringlist.Create();
 f.LoadFromFile('Users.txt');
 ComboBox2.Text:=f.Strings[0];
 f.Free;
end;

end.
