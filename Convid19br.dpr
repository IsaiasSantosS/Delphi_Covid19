program Convid19br;

uses
  Vcl.Forms,
  unApiRestCovid in 'unApiRestCovid.pas' {frmPrincipal},
  unDados in 'unDados.pas' {dmDados: TDataModule},
  unConsultarAPI in 'unConsultarAPI.pas';

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TfrmPrincipal, frmPrincipal);
  Application.Run;
end.
