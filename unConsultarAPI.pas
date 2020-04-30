unit unConsultarAPI;

interface

uses unDados, System.JSON, System.SysUtils,
  System.JSON.Readers, System.Classes, System.UITypes, Dialogs,
  System.DateUtils;

type
  TDadosRegiao = record
    nome: string;
    porcentagem: string;
    quantidade: integer;
  end;

type
  TConsultarAPI = class
  private
    fDMDados: TDmDados;
    FConfirmados: String;
    FRecuperados: String;
    FMortos: String;
    FAtivos: String;
    procedure SetConfirmados(const Value: String);
    procedure SetRecuperados(const Value: String);
    procedure SetMortos(const Value: String);
    function Consultar(uri: string): TJSONValue;
    procedure SetAtivos(const Value: String);
  public
    DadosRegiao: array [0 .. 4] of TDadosRegiao;
    constructor Create;
    destructor Destroy; reintroduce;
    property Confirmados: String read FConfirmados write SetConfirmados;
    property Recuperados: String read FRecuperados write SetRecuperados;
    property Mortos: String read FMortos write SetMortos;
    property Ativos: String read FAtivos write SetAtivos;

    // Procedimento para consultar a api
    procedure BRTotal(uri: string);
    procedure BuscarEstados(uri: string);
    procedure BuscarRegioes;
  end;

implementation

{ TConsultarAPI }

procedure TConsultarAPI.BRTotal(uri: string);
var
  JSON: TJSONValue;
begin
  JSON := Consultar(uri);
  try
    SetConfirmados(JSON.GetValue<string>('data.confirmed'));
    SetRecuperados(JSON.GetValue<string>('data.recovered'));
    SetMortos(JSON.GetValue<string>('data.deaths'));
    SetAtivos(JSON.GetValue<string>('data.cases'));
  except
    on E: Exception do
    begin
      MessageDlg('Erro no dados de retorno da api', mtWarning, mbOKCancel, 0);
      Abort;
    end
  end;
end;

procedure TConsultarAPI.BuscarEstados(uri: string);
begin
  fDMDados.RestAdapter.Active := False;
  fDMDados.cdsDadosApi.Active := False;
  Consultar(uri);
end;

procedure TConsultarAPI.BuscarRegioes;
var
  StringRead: TStringReader;
  JSONTextRead: TJsonTextReader;
  JSON: TJSONValue;
  i: integer;
begin
  i := 0;
  try
    fDMDados.RESTRequest2.Execute;
    JSON := fDMDados.RESTResponse2.JSONValue;
    StringRead := TStringReader.Create(JSON.ToString);
    JSONTextRead := TJsonTextReader.Create(StringRead);
    while JSONTextRead.Read do
    begin
      if JSONTextRead.Value.ToString = 'name' then
      begin
        JSONTextRead.Read;
        DadosRegiao[i].nome := JSONTextRead.Value.AsString;
      end;
      if JSONTextRead.Value.ToString = 'percent' then
      begin
        JSONTextRead.Read;
        DadosRegiao[i].porcentagem := JSONTextRead.Value.AsString;
      end;
      if JSONTextRead.Value.ToString = 'qtd' then
      begin
        JSONTextRead.Read;
        DadosRegiao[i].quantidade := JSONTextRead.Value.AsInteger;
        Inc(i);
      end;
    end;
  except
    on E: Exception do
    begin
      MessageDlg('Erro ao consultar API', mtWarning, mbOKCancel, 0);
      Abort;
    end
  end;
end;

function TConsultarAPI.Consultar(uri: string): TJSONValue;
begin
  try
    fDMDados.RESTRequest1.Resource := uri;
    fDMDados.RESTRequest1.Execute;
  except
    on E: Exception do
    begin
      MessageDlg('Erro ao consultar API', mtWarning, mbOKCancel, 0);
      Abort;
    end;
  end;
  result := fDMDados.RESTResponse1.JSONValue;
end;

constructor TConsultarAPI.Create;
begin
  fDMDados := TDmDados.Create(nil);
end;

destructor TConsultarAPI.Destroy;
begin
  fDMDados.Free;
end;

procedure TConsultarAPI.SetAtivos(const Value: String);
begin
  FAtivos := Value;
end;

procedure TConsultarAPI.SetConfirmados(const Value: String);
begin
  FConfirmados := Value;
end;

procedure TConsultarAPI.SetRecuperados(const Value: String);
begin
  FRecuperados := Value;
end;

procedure TConsultarAPI.SetMortos(const Value: String);
begin
  FMortos := Value;
end;

end.