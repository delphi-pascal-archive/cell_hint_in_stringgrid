program Demo;

uses
  Forms,
  UMain in 'UMain.pas' {Form1},
  CustomHints in 'CustomHints.pas';

{$R *.res}

begin
  Application.Initialize;
  Application.CreateForm(TForm1, Form1);
  Application.Run;
end.
