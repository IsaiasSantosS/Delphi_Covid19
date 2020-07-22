unit unDados;

interface

uses
  System.SysUtils, System.Classes, REST.Types, Data.Bind.EngExt,
  Vcl.Bind.DBEngExt, REST.Response.Adapter, Data.Bind.Components, Data.DB,
  Datasnap.DBClient, REST.Client, Data.Bind.ObjectScope;

type
  TdmDados = class(TDataModule)
    RESTRequest1: TRESTRequest;
    RESTResponse1: TRESTResponse;
    dsDadosApi: TDataSource;
    RESTClient1: TRESTClient;
    cdsDadosApi: TClientDataSet;
    BindingsList1: TBindingsList;
    RestAdapter: TRESTResponseDataSetAdapter;
    cdsDadosApiuid: TWideStringField;
    cdsDadosApiuf: TWideStringField;
    cdsDadosApistate: TWideStringField;
    cdsDadosApicases: TWideStringField;
    cdsDadosApideaths: TWideStringField;
    cdsDadosApidatetime: TWideStringField;
    dsDadosPais: TDataSource;
    cdsDadosPais: TClientDataSet;
    RestAdapterPaises: TRESTResponseDataSetAdapter;
    cdsDadosPaiscountry: TWideStringField;
    cdsDadosPaiscases: TWideStringField;
    cdsDadosPaisconfirmed: TWideStringField;
    cdsDadosPaisdeaths: TWideStringField;
    cdsDadosPaisrecovered: TWideStringField;
    cdsDadosPaisupdated_at: TWideStringField;
    RESTResponse2: TRESTResponse;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  dmDados: TdmDados;

implementation

{%CLASSGROUP 'Vcl.Controls.TControl'}

{$R *.dfm}

end.
