program TestPr;

uses
  Vcl.Forms,
  TestProject in 'TestProject.pas' {Form1},
  clsPerson in 'clsPerson.pas',
  clsCustomer in 'clsCustomer.pas';

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TForm1, Form1);
  Application.Run;
end.
