unit Unit6;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, ExtCtrls;

type
  TFormRights = class(TForm)
    ComboBoxGroup: TComboBox;
    Panel1: TPanel;
    RadioButton1: TRadioButton;
    RadioButton2: TRadioButton;
    RadioButton3: TRadioButton;
    ButtonAccept: TButton;
    Panel2: TPanel;
    RadioButton4: TRadioButton;
    RadioButton5: TRadioButton;
    ComboBoxFileName: TComboBox;
    ButtonExit: TButton;
    RadioButton0: TRadioButton;
    procedure ButtonExitClick(Sender: TObject);
    procedure RadioButton5Click(Sender: TObject);
    procedure RadioButton4Click(Sender: TObject);
    procedure ButtonAcceptClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormRights: TFormRights;

implementation

uses Unit3, Unit4;

{$R *.dfm}

procedure TFormRights.ButtonAcceptClick(Sender: TObject);
var
f,g:TStrings;
i,j:integer;
begin
f:=TStringList.Create();
g:=TStringList.Create();
f.LoadFromFile('AccessFiles.txt');
  for i := 1 to f.Count - 1 do
    if f.Strings[i]=ComboBoxFileName.Text then
      break;
 //ShowMessage(IntToStr(i));
 if RadioButton5.Checked then //Один пользователь
 begin
 f.LoadFromFile('users/'+ComboBoxGroup.text+'.txt');
 if RadioButton1.Checked then
   f.Strings[i]:='1';
 if RadioButton3.Checked then
   f.Strings[i]:='2';
 if RadioButton3.Checked then
   f.Strings[i]:='3';
 if RadioButton0.Checked then
   f.Strings[i]:='0';
 f.SaveToFile('users/'+ComboBoxGroup.text+'.txt');
 ShowMessage('Access allowed');
 end;

 if RadioButton4.Checked then //Группа
 begin
  f.LoadFromFile('users.txt');

  for j := 0 to f.Count - 1 do
   begin
     g.LoadFromFile('users/'+f.Strings[j]+'.txt');
      if g.Strings[0]=ComboBoxGroup.Text then
       begin
       if RadioButton1.Checked then
        g.Strings[i]:='1';
       if RadioButton2.Checked then
        g.Strings[i]:='2';
       if RadioButton3.Checked then
        g.Strings[i]:='3';
       if RadioButton0.Checked then
        g.Strings[i]:='0';
        g.SaveToFile('users/'+f.Strings[j]+'.txt');
       end;
    end;
 ShowMessage('Access denied');

 end;
  f.Free;
 g.Free;

end;

procedure TFormRights.ButtonExitClick(Sender: TObject);
begin
FormRights.Close;
end;

procedure TFormRights.RadioButton4Click(Sender: TObject);
begin
ComboBoxGroup.Items.LoadFromFile('Groups.txt');
end;

procedure TFormRights.RadioButton5Click(Sender: TObject);
begin
ComboBoxGroup.Items.LoadFromFile('Users.txt');
end;

end.
