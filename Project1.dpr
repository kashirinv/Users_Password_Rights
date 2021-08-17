program Project1;

uses
  Forms,
  Unit1 in 'Unit1.pas' {FormReg},
  Unit2 in 'Unit2.pas' {FormAdd},
  Unit3 in 'Unit3.pas' {FormUser},
  Unit4 in 'Unit4.pas' {FormAdmin},
  Unit5 in 'Unit5.pas' {FormPas},
  Unit6 in 'Unit6.pas' {FormRights};

{$R *.res}

begin
  Application.Initialize;
  Application.CreateForm(TFormReg, FormReg);
  Application.CreateForm(TFormAdd, FormAdd);
  Application.CreateForm(TFormUser, FormUser);
  Application.CreateForm(TFormAdmin, FormAdmin);
  Application.CreateForm(TFormPas, FormPas);
  Application.CreateForm(TFormRights, FormRights);
  Application.Run;
end.
