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
    Left = 32
    Top = 272
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
    PersistDataPacket.Data = {
      B50000009619E0BD010000001800000006000000000003000000B50003756964
      02004A000000010005574944544802000200FE0102756602004A000000010005
      574944544802000200FE0105737461746502004A000000010005574944544802
      000200FE0105636173657302004A000000010005574944544802000200FE0106
      64656174687302004A000000010005574944544802000200FE01086461746574
      696D6502004A000000010005574944544802000200FE010000}
    Active = True
    Aggregates = <>
    FieldDefs = <
      item
        Name = 'uid'
        DataType = ftWideString
        Size = 255
      end
      item
        Name = 'uf'
        DataType = ftWideString
        Size = 255
      end
      item
        Name = 'state'
        DataType = ftWideString
        Size = 255
      end
      item
        Name = 'cases'
        DataType = ftWideString
        Size = 255
      end
      item
        Name = 'deaths'
        DataType = ftWideString
        Size = 255
      end
      item
        Name = 'datetime'
        DataType = ftWideString
        Size = 255
      end>
    IndexDefs = <>
    Params = <>
    StoreDefs = True
    Left = 104
    Top = 272
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
    Active = True
    Dataset = cdsDadosApi
    FieldDefs = <>
    ResponseJSON = RESTResponse1
    RootElement = 'data'
    Left = 40
    Top = 88
  end
  object dsDadosPais: TDataSource
    DataSet = cdsDadosPais
    Left = 456
    Top = 184
  end
  object cdsDadosPais: TClientDataSet
    Aggregates = <>
    FieldDefs = <>
    IndexDefs = <>
    Params = <>
    StoreDefs = True
    Left = 456
    Top = 232
    object cdsDadosPaiscountry: TWideStringField
      FieldName = 'country'
      Size = 255
    end
    object cdsDadosPaiscases: TWideStringField
      FieldName = 'cases'
      Size = 255
    end
    object cdsDadosPaisconfirmed: TWideStringField
      FieldName = 'confirmed'
      Size = 255
    end
    object cdsDadosPaisdeaths: TWideStringField
      FieldName = 'deaths'
      Size = 255
    end
    object cdsDadosPaisrecovered: TWideStringField
      FieldName = 'recovered'
      Size = 255
    end
    object cdsDadosPaisupdated_at: TWideStringField
      FieldName = 'updated_at'
      Size = 255
    end
  end
  object RestAdapterPaises: TRESTResponseDataSetAdapter
    Dataset = cdsDadosPais
    FieldDefs = <>
    ResponseJSON = RESTResponse2
    RootElement = 'data'
    Left = 456
    Top = 128
  end
  object RESTResponse2: TRESTResponse
    ContentType = 'application/json'
    Left = 456
    Top = 70
  end
end
