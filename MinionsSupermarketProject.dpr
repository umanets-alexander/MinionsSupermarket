program MinionsSupermarketProject;

uses
  Vcl.Forms,
  MinionsSupermarket in 'MinionsSupermarket.pas' {MinionsSupermarketForm},
  FAQform in 'FAQform.pas' {FForm};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TMinionsSupermarketForm, MinionsSupermarketForm);
  Application.CreateForm(TFForm, FForm);
  Application.Run;
end.
