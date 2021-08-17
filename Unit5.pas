unit Unit5;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls;

type
  TFormPas = class(TForm)
    Edit1: TEdit;
    Edit2: TEdit;
    Edit3: TEdit;
    Button1: TButton;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    procedure Button1Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  FormPas: TFormPas;

implementation

uses Unit1, Unit2, Unit3, Unit4;

{$R *.dfm}

procedure TFormPas.Button1Click(Sender: TObject);
var
 g:TStrings;
 i:integer;
begin
  g:=TStringList.Create();
 g.LoadFromFile('parols.txt');
 if (FormPas.Edit1.Text=FormReg.Edit2.Text)and(FormPas.Edit2.Text=FormPas.Edit3.Text)then
     begin
        for i := 0 to g.Count - 1 do
         begin
          if g.Strings[i]=FormPas.Edit1.Text then
            begin
             g.Strings[i]:=FormPas.Edit2.Text;
             g.SaveToFile('parols.txt');
             ShowMessage('Password changed');
             FormPas.Close;
            end;
         end;
     end;
   g.Free;
end;

end.
