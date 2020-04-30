unit unApiRestCovid;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants,
  System.Classes, Vcl.Graphics, System.UITypes,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, REST.Types, System.Rtti,
  System.Bindings.Outputs, Vcl.Bind.Editors, Data.Bind.EngExt,
  Vcl.Bind.DBEngExt, Vcl.StdCtrls, Vcl.ExtCtrls, Data.Bind.Components,
  Data.Bind.ObjectScope, Data.DB, Vcl.DBCtrls,
  Vcl.Grids, Vcl.DBGrids, Datasnap.DBClient, unConsultarAPI, Vcl.ComCtrls;

type
  TfrmPrincipal = class(TForm)
    pnlTItulo: TPanel;
    btnAtualizar: TButton;
    lblConfirmado: TLabel;
    pnlCabecalho: TPanel;
    lblRecuperados: TLabel;
    lblMortos: TLabel;
    lblTituloTotalConfirmado: TLabel;
    lblTituloLetalidade: TLabel;
    lblTituloMortos: TLabel;
    pnlEstados: TPanel;
    dbgDadosEstados: TDBGrid;
    lblTituloAtivos: TLabel;
    lblAtivos: TLabel;
    lblTituloEstados: TLabel;
    pnlRodape: TPanel;
    prbAtualizar: TProgressBar;
    pnlRegiao: TPanel;
    lblTituloRegioes: TLabel;
    pnlCentroOeste: TPanel;
    pnlSul: TPanel;
    pnlNorte: TPanel;
    pnlNordeste: TPanel;
    pnlSudeste: TPanel;
    lblTituloSudeste: TLabel;
    lblSudestePorcentagem: TLabel;
    lblSudesteQuantidade: TLabel;
    lblTituloNordeste: TLabel;
    lblNordestePorcentagem: TLabel;
    lblNordesteQuantidade: TLabel;
    lblNortePorcentagem: TLabel;
    lblTituloNorte: TLabel;
    lblNorteQuantidade: TLabel;
    lblSulPorcentagem: TLabel;
    lblTituloSul: TLabel;
    lblSulQuantidade: TLabel;
    lblCentroOestePorcentagem: TLabel;
    lblTituloCentroOeste: TLabel;
    lblCentroOesteQuantidade: TLabel;
    tmPausarConsulta: TTimer;
    btnInfor: TButton;
    procedure btnAtualizarClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure tmPausarConsultaTimer(Sender: TObject);
    procedure btnInforClick(Sender: TObject);
  private
    { Private declarations }
    fConsultarAPI: TConsultarAPI;
    procedure ConfiguraDadosPais;
    procedure ConfigurarRegioes;
  public
    { Public declarations }
  end;

var
  frmPrincipal: TfrmPrincipal;

implementation

{$R *.dfm}

uses unDados;

procedure TfrmPrincipal.btnAtualizarClick(Sender: TObject);
begin
  prbAtualizar.Visible := true;

  fConsultarAPI.BRTotal('api/report/v1/brazil');
  prbAtualizar.StepIt;

  ConfiguraDadosPais;
  prbAtualizar.StepIt;

  fConsultarAPI.BuscarEstados('api/report/v1');
  prbAtualizar.StepIt;

  fConsultarAPI.BuscarRegioes;
  prbAtualizar.StepIt;

  ConfigurarRegioes;
  prbAtualizar.StepIt;

  prbAtualizar.Visible := false;
  btnAtualizar.Enabled := false;
end;

procedure TfrmPrincipal.btnInforClick(Sender: TObject);
begin
 MessageDlg(
 'Usando o Delphi Community Edition para consumir via REST as api´s '+
 'https://covid19-brazil-api-docs.now.sh/ ' +
 'e https://doc.covid.finspect.me/ '+
 'com informações sobre o covid-19 ', mtInformation, [mbOK], 0);
end;

procedure TfrmPrincipal.ConfiguraDadosPais;
begin
  lblConfirmado.Caption := fConsultarAPI.Confirmados;
  lblRecuperados.Caption := fConsultarAPI.Recuperados;
  lblMortos.Caption := fConsultarAPI.Mortos;
  lblAtivos.Caption := fCOnsultarAPI.Ativos;
end;

procedure TfrmPrincipal.ConfigurarRegioes;
begin
  //index 0
  lblTituloSudeste.Caption := fConsultarAPI.DadosRegiao[0].nome;
  lblSudestePorcentagem.Caption := fConsultarAPI.DadosRegiao[0].porcentagem;
  lblSudesteQuantidade.Caption := IntToStr(fConsultarAPI.DadosRegiao[0].quantidade);

  //index 1
  lblTituloNordeste.Caption := fConsultarAPI.DadosRegiao[1].nome;
  lblNordestePorcentagem.Caption := fConsultarAPI.DadosRegiao[1].porcentagem;
  lblNordesteQuantidade.Caption := IntToStr(fConsultarAPI.DadosRegiao[1].quantidade);

  //index 2
  lblTituloNorte.Caption := fConsultarAPI.DadosRegiao[2].nome;
  lblNortePorcentagem.Caption := fConsultarAPI.DadosRegiao[2].porcentagem;
  lblNorteQuantidade.Caption := IntToStr(fConsultarAPI.DadosRegiao[2].quantidade);

  //index 3
  lblTituloSul.Caption := fConsultarAPI.DadosRegiao[3].nome;
  lblSulPorcentagem.Caption := fConsultarAPI.DadosRegiao[3].porcentagem;
  lblSulQuantidade.Caption := IntToStr(fConsultarAPI.DadosRegiao[3].quantidade);

  //index 4
  lblTituloCentroOeste.Caption := fConsultarAPI.DadosRegiao[4].nome;
  lblCentroOestePorcentagem.Caption := fConsultarAPI.DadosRegiao[4].porcentagem;
  lblCentroOesteQuantidade.Caption := IntToStr(fConsultarAPI.DadosRegiao[4].quantidade);

end;

procedure TfrmPrincipal.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  fConsultarAPI.Free;
end;

procedure TfrmPrincipal.FormCreate(Sender: TObject);
begin
  fConsultarAPI := TConsultarAPI.Create;
end;

procedure TfrmPrincipal.tmPausarConsultaTimer(Sender: TObject);
begin
  if not(btnAtualizar.Enabled) then
    btnAtualizar.Enabled := True;
end;

end.
