unit Unit3;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls;

type
  TFormUser = class(TForm)
    Button1: TButton;
    Button2: TButton;
    Button3: TButton;
    Memo1: TMemo;
    Button4: TButton;
    Button5: TButton;
    ButtonCreate: TButton;
    EditCreateFileName: TEdit;
    ComboBox1: TComboBox;
    ButtonSetRights: TButton;
    ButtonDelete: TButton;
    Button6: TButton;
    EditKey: TEdit;
    Label1: TLabel;
    Button7: TButton;
    procedure Button7Click(Sender: TObject);
    procedure Button6Click(Sender: TObject);
   { procedure ButtonDeleteDirClick(Sender: TObject);
    procedure ButtonDirClick(Sender: TObject); }
    procedure ButtonDeleteClick(Sender: TObject);
    procedure ButtonSetRightsClick(Sender: TObject);
    procedure ButtonCreateClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
    procedure Button5Click(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure Button4Click(Sender: TObject);

    procedure Button3Click(Sender: TObject);


    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormUser: TFormUser;

implementation

uses Unit1, Unit5, Unit6;

{$R *.dfm}
function GetRight(DocName,UserName:string):integer;
var
f,g:TStrings;
i:integer;
begin
f:=TStringList.Create;
f.LoadFromFile('AccessFiles.txt');
 for i := 1 to f.Count - 1 do
     begin
       if f.Strings[i]=DocName then   //?????????? ???? ?? ???????
        break;                           //? ?????????
     end;                                //? ??????? ??? ?????
  f.Free;
g:=TStringList.Create();
g.LoadFromFile('users/'+UserName+'.txt');
i:=StrToInt(g.Strings[i]);
g.Free;
Result:=i;
end;

procedure TFormUser.Button1Click(Sender: TObject);
begin
FormPas.ShowModal;
end;

procedure TFormUser.Button2Click(Sender: TObject);
begin
FormReg.Edit1.Enabled:=true;
FormUser.Close;
end;



procedure TFormUser.Button3Click(Sender: TObject);
begin
 Memo1.Clear;
 Memo1.Enabled:=True;
 ComboBox1.Enabled:=True;
end;

procedure TFormUser.Button4Click(Sender: TObject);
var
r:integer;
begin
r:=GetRight(ComboBox1.Text,FormReg.Edit1.Text);
 case r of                 //??? ???? ??????? ?????????? ????? ?? ???? ????
 0: begin   //???????????              //??????? ????????????(? ??? ?????? ?????)
     Memo1.lines.LoadFromFile('files/'+ComboBox1.Text+'.txt');
     ComboBox1.Enabled:=false;
    end;
 1: begin   //??????               //??????? ????????????(? ??? ?????? ?????)
     Memo1.lines.LoadFromFile('files/'+ComboBox1.Text+'.txt');
     ComboBox1.Enabled:=false;
    end;
 2: begin   //????????????
     Memo1.lines.LoadFromFile('files/'+ComboBox1.Text+'.txt');
     ComboBox1.Enabled:=false;
     Memo1.Enabled:=false;
    end;
 3: Memo1.Text:='? ??? ??? ???? ??? ????????? ????? ?????';//??????????????
 end;
end;

procedure TFormUser.Button5Click(Sender: TObject);
var
r:Integer;
begin
r:=GetRight(ComboBox1.Text,FormReg.Edit1.Text);
 case r of
 1:begin
    Memo1.Lines.SaveToFile('files/'+ComboBox1.Text+'.txt');
    ShowMessage('File Saved');
   end;
 0:begin
    Memo1.Lines.SaveToFile('files/'+ComboBox1.Text+'.txt');
    ShowMessage('File Saved');
   end;
 else ShowMessage('? ??? ??? ????');
end;
end;

procedure TFormUser.Button6Click(Sender: TObject);
var

f:TStrings;
i,j:integer;
str:string;
begin

for i := 0 to 10 do
EditKey.Text:=EditKey.Text+editkey.Text;

f:=TStringList.Create();
f.LoadFromFile(EditCreateFileName.Text+'.txt');
for i := 0 to f.Count - 1 do
begin
str:=f.Strings[i];

for j:=1 to Length(f.Strings[i])do
  begin
  if (ord(f.Strings[i][j])+ord(EditKey.Text[j]))>255 then
    str[j]:=chr(ord(f.Strings[i][j])+ord(EditKey.Text[j])-255) //ascii
     else
  str[j]:=chr(ord(f.Strings[i][j])+ord(EditKey.Text[j]));
  end;
 f.Strings[i]:=str;
 end;

f.SaveToFile(EditCreateFileName.Text+'.cry');
f.Free;
DeleteFile(EditCreateFileName.Text+'.txt');
EditKey.Clear;
end;

procedure TFormUser.Button7Click(Sender: TObject);
var
f:TStrings;
i,j:integer;
str:string;
begin
for i := 0 to 10 do
EditKey.Text:=EditKey.Text+editkey.Text;

f:=TStringList.Create();
f.LoadFromFile(EditCreateFileName.Text+'.cry');

for i := f.Count-1 downto 0 do
  begin
str:=f.Strings[i];

for j:=Length(f.Strings[i])downto 1 do
  begin
   if (ord(f.Strings[i][j])-ord(EditKey.Text[j]))>0 then
  str[j]:=chr(ord(f.Strings[i][j])-ord(EditKey.Text[j]))
  else
  str[j]:=chr(ord(f.Strings[i][j])-ord(EditKey.Text[j])+255); //ascii
  end;
 f.Strings[i]:=str;
 end;

f.SaveToFile(EditCreateFileName.Text+'.txt');
f.Free;
DeleteFile(EditCreateFileName.Text+'.cry');
EditKey.Clear;
end;

procedure TFormUser.ButtonCreateClick(Sender: TObject);
var
f,g:TStrings;
i:integer;
flag:boolean;
begin
flag:=true;
 f:=TStringList.Create();
 f.LoadFromFile('AccessFiles.txt');
 g:=TStringList.Create();
 for i := 1 to f.Count - 1 do
    begin  if f.strings[i]=EditCreateFileName.Text then
     flag:=false;
    end;
 if flag then
  begin
  Memo1.Lines.SaveToFile('files/'+EditCreateFileName.Text+'.txt');
//?????? ???? ????????? ??? ?????????????

f.Add(EditCreateFileName.Text);
f.SaveToFile('AccessFiles.txt');

g.LoadFromFile('users.txt');
 for i := 0 to g.Count - 1 do
   begin
    f.LoadFromFile('users/'+g.Strings[i]+'.txt');
   if g.Strings[i]=FormReg.Edit1.Text then
   f.Add('0')
   else f.Add('3');
    f.SaveToFile('users/'+g.Strings[i]+'.txt');

   end;
  end;
  if flag then
  begin
     ShowMessage('Congratulations! File Created Succesfully!');
   ComboBox1.Items.Add(EditCreateFileName.Text);
  end;
f.Free;
g.Free;

end;

procedure TFormUser.ButtonDeleteClick(Sender: TObject);
var                          
f,g:TStrings;
r,i,j:integer;
begin
 f:=TStringList.Create();
 g:=TStringlist.Create();
 g.LoadFromFile('users.txt');
 f.LoadFromFile('AccessFiles.txt');
 r:=GetRight(ComboBox1.Text,FormReg.Edit1.Text);
  if r=0 then
   begin
    DeleteFile('files/'+ComboBox1.Text+'.txt');
      for i := 1 to f.Count - 1 do
        if f.Strings[i]=ComboBox1.Text then
        begin
        f.Delete(i);
        f.SaveToFile('AccessFiles.txt');
        break;
        end;
      for j := 0 to g.Count - 1 do
        begin
          f.LoadFromFile('users/'+g.Strings[j]+'.txt');
          f.Delete(i);
          f.SaveToFile('users/'+g.Strings[j]+'.txt');

        end;
      ComboBox1.Items.Delete(i-1);
      ShowMessage('File deleted');
      ComboBox1.Text:=ComboBox1.Items[0];

   end
  else ShowMessage('?????????? ?????!');
f.Free;
g.Free;
end;


procedure TFormUser.ButtonSetRightsClick(Sender: TObject);
var
r:integer;
begin
r:=GetRight(ComboBox1.Text,FormReg.Edit1.Text);
case r of
 0:begin
     FormRights.ComboBoxFileName.Text:=ComboBox1.Text;
     FormRights.ComboBoxFileName.Enabled:=false;
     FormRights.ShowModal();
   end;
 else ShowMessage('?? ?? ?????? ????? ??? ?????????!!!');
end;
end;



procedure TFormUser.FormCreate(Sender: TObject);
begin
Memo1.Text:='';
ComboBox1.Items.LoadFromFile('AccessFiles.txt'); //?????? ?? ???????? Files
ComboBox1.Items.Delete(0);
ComboBox1.Text:=ComboBox1.Items[0];
//ComboBoxDir.Items:=???? ???-?? ??-??????? ?????????
end;

procedure TFormUser.FormShow(Sender: TObject);
var
f:TStrings;
begin
Memo1.Text:='??????????, ??????? ????????????.';
f:=TStringList.Create();
f.LoadFromFile('users/'+FormReg.Edit1.text+'.txt');
if f.Strings[0]='Creators' then
 ButtonCreate.Enabled:=true;
 f.Free;
end;
end.
