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
    tmPausarConsulta: TTimer;
    btnInfor: TButton;
    procedure btnAtualizarClick(Sender: TObject);
    procedure FormCreate(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure tmPausarConsultaTimer(Sender: TObject);
    procedure btnInforClick(Sender: TObject);
    procedure FormShow(Sender: TObject);
  private
    { Private declarations }
    fConsultarAPI: TConsultarAPI;
    procedure ConfiguraDadosPais;
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

  prbAtualizar.Visible := false;
  btnAtualizar.Enabled := false;
end;

procedure TfrmPrincipal.btnInforClick(Sender: TObject);
begin
 MessageDlg(
 'Usando o Delphi Community Edition para consumir via REST a api '+
 'https://covid19-brazil-api-docs.now.sh/ ' +
 'com informações sobre o covid-19 ', mtInformation, [mbOK], 0);
end;

procedure TfrmPrincipal.ConfiguraDadosPais;
begin
  lblConfirmado.Caption := fConsultarAPI.Confirmados;
  lblRecuperados.Caption := fConsultarAPI.Recuperados;
  lblMortos.Caption := fConsultarAPI.Mortos;
  lblAtivos.Caption := fCOnsultarAPI.Ativos;
end;

procedure TfrmPrincipal.FormClose(Sender: TObject; var Action: TCloseAction);
begin
  fConsultarAPI.Free;
end;

procedure TfrmPrincipal.FormCreate(Sender: TObject);
begin
  fConsultarAPI := TConsultarAPI.Create;
end;

procedure TfrmPrincipal.FormShow(Sender: TObject);
begin
 btnAtualizarClick(Sender);
end;

procedure TfrmPrincipal.tmPausarConsultaTimer(Sender: TObject);
begin
  if not(btnAtualizar.Enabled) then
    btnAtualizar.Enabled := True;
end;

end.
