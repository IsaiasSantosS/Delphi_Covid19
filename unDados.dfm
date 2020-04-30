object dmDados: TdmDados
  OldCreateOrder = False
  Height = 357
  Width = 567
  object RESTRequest1: TRESTRequest
    Client = RESTClient1
    Params = <
      item
        Name = 'pattern'
        Value = 'Madonna'
      end>
    Resource = 'api/report/v1'
    Response = RESTResponse1
    SynchronizedEvents = False
    Left = 120
    Top = 22
  end
  object RESTResponse1: TRESTResponse
    Left = 208
    Top = 22
  end
  object dsDadosApi: TDataSource
    DataSet = cdsDadosApi
    Left = 40
    Top = 200
  end
  object RESTClient1: TRESTClient
    Accept = 'application/json, text/plain; q=0.9, text/html;q=0.8,'
    AcceptCharset = 'utf-8, *;q=0.8'
    BaseURL = 'https://covid19-brazil-api.now.sh///'
    Params = <>
    Left = 40
    Top = 22
  end
  object cdsDadosApi: TClientDataSet
    Aggregates = <>
    FieldDefs = <>
    IndexDefs = <>
    Params = <>
    StoreDefs = True
    Left = 112
    Top = 200
    object cdsDadosApiuid: TWideStringField
      FieldName = 'uid'
      Size = 255
    end
    object cdsDadosApiuf: TWideStringField
      FieldName = 'uf'
      Size = 255
    end
    object cdsDadosApistate: TWideStringField
      FieldName = 'state'
      Size = 255
    end
    object cdsDadosApicases: TWideStringField
      FieldName = 'cases'
      Size = 255
    end
    object cdsDadosApideaths: TWideStringField
      FieldName = 'deaths'
      Size = 255
    end
    object cdsDadosApisuspects: TWideStringField
      FieldName = 'suspects'
      Size = 255
    end
    object cdsDadosApirefuses: TWideStringField
      FieldName = 'refuses'
      Size = 255
    end
    object cdsDadosApidatetime: TWideStringField
      FieldName = 'datetime'
      Size = 255
    end
  end
  object BindingsList1: TBindingsList
    Methods = <>
    OutputConverters = <>
    Left = 36
    Top = 147
  end
  object RestAdapter: TRESTResponseDataSetAdapter
    Dataset = cdsDadosApi
    FieldDefs = <>
    ResponseJSON = RESTResponse1
    RootElement = 'data'
    Left = 40
    Top = 88
  end
  object RESTClient2: TRESTClient
    Accept = 'application/json, text/plain; q=0.9, text/html;q=0.8,'
    AcceptCharset = 'utf-8, *;q=0.8'
    BaseURL = 'https://api.covid19.finspect.me/'
    Params = <>
    Left = 464
    Top = 32
  end
  object RESTRequest2: TRESTRequest
    Client = RESTClient2
    Params = <>
    Resource = 'brcovid19/region'
    Response = RESTResponse2
    SynchronizedEvents = False
    Left = 464
    Top = 88
  end
  object RESTResponse2: TRESTResponse
    ContentType = 'application/json'
    Left = 464
    Top = 152
  end
end
