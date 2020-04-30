object frmPrincipal: TfrmPrincipal
  Left = 0
  Top = 0
  BorderIcons = [biSystemMenu]
  BorderStyle = bsSingle
  Caption = 'Dados COVID-19'
  ClientHeight = 417
  ClientWidth = 657
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poScreenCenter
  OnClose = FormClose
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object pnlTItulo: TPanel
    Left = 0
    Top = 0
    Width = 657
    Height = 41
    Align = alTop
    Caption = 'Informa'#231#245'es da COVID-19 no Brasil'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -21
    Font.Name = 'Times New Roman'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 0
    ExplicitWidth = 647
  end
  object pnlCabecalho: TPanel
    Left = 0
    Top = 41
    Width = 657
    Height = 56
    Align = alTop
    TabOrder = 1
    ExplicitWidth = 647
    object lblConfirmado: TLabel
      Left = 95
      Top = 29
      Width = 100
      Height = 15
      Alignment = taRightJustify
      AutoSize = False
      Caption = 'lblConfirmado'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'Arial'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object lblMortos: TLabel
      Left = 422
      Top = 29
      Width = 98
      Height = 15
      Alignment = taRightJustify
      AutoSize = False
      Caption = 'lblMortos'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'Arial'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object lblRecuperados: TLabel
      Left = 324
      Top = 29
      Width = 100
      Height = 15
      Alignment = taRightJustify
      AutoSize = False
      Caption = 'lblRecuperados'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'Arial'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object lblTituloTotalConfirmado: TLabel
      Left = 93
      Top = 15
      Width = 102
      Height = 13
      Caption = 'Total de Confirmados'
    end
    object lblTituloLetalidade: TLabel
      Left = 334
      Top = 15
      Width = 90
      Height = 13
      Caption = 'Total Recuperados'
    end
    object lblTituloMortos: TLabel
      Left = 470
      Top = 15
      Width = 48
      Height = 13
      Caption = 'N'#186' Mortos'
    end
    object lblTituloAtivos: TLabel
      Left = 244
      Top = 15
      Width = 57
      Height = 13
      Caption = 'Total Ativos'
    end
    object lblAtivos: TLabel
      Left = 201
      Top = 29
      Width = 100
      Height = 15
      Alignment = taRightJustify
      AutoSize = False
      Caption = 'lblAtivos'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -12
      Font.Name = 'Arial'
      Font.Style = [fsBold]
      ParentFont = False
    end
  end
  object pnlRodape: TPanel
    Left = 0
    Top = 376
    Width = 657
    Height = 41
    Align = alBottom
    TabOrder = 3
    ExplicitLeft = 446
    ExplicitTop = 232
    ExplicitWidth = 185
    object btnAtualizar: TButton
      Left = 564
      Top = 8
      Width = 75
      Height = 25
      Caption = 'Atualizar'
      TabOrder = 0
      OnClick = btnAtualizarClick
    end
    object prbAtualizar: TProgressBar
      Left = 254
      Top = 15
      Width = 150
      Height = 17
      Max = 10
      Step = 2
      TabOrder = 1
      Visible = False
    end
    object btnInfor: TButton
      Left = 8
      Top = 6
      Width = 75
      Height = 25
      Caption = 'Informa'#231#245'es'
      TabOrder = 2
      OnClick = btnInforClick
    end
  end
  object pnlEstados: TPanel
    Left = 0
    Top = 97
    Width = 369
    Height = 279
    Align = alLeft
    TabOrder = 2
    ExplicitHeight = 292
    object lblTituloEstados: TLabel
      Left = 107
      Top = 10
      Width = 155
      Height = 22
      Caption = 'Dados dos Estados'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -19
      Font.Name = 'Times New Roman'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object dbgDadosEstados: TDBGrid
      Left = 8
      Top = 38
      Width = 353
      Height = 230
      DataSource = dmDados.dsDadosApi
      Options = [dgTitles, dgIndicator, dgRowLines, dgTabs, dgRowSelect, dgConfirmDelete, dgCancelOnExit, dgTitleClick, dgTitleHotTrack]
      ReadOnly = True
      TabOrder = 0
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clWindowText
      TitleFont.Height = -11
      TitleFont.Name = 'Tahoma'
      TitleFont.Style = []
      Columns = <
        item
          Expanded = False
          FieldName = 'state'
          Title.Caption = 'Estados'
          Width = 110
          Visible = True
        end
        item
          Alignment = taRightJustify
          Expanded = False
          FieldName = 'cases'
          Title.Alignment = taCenter
          Title.Caption = 'Casos'
          Width = 40
          Visible = True
        end
        item
          Alignment = taRightJustify
          Expanded = False
          FieldName = 'deaths'
          Title.Alignment = taCenter
          Title.Caption = 'Mortos'
          Width = 45
          Visible = True
        end
        item
          Alignment = taRightJustify
          Expanded = False
          FieldName = 'suspects'
          Title.Alignment = taCenter
          Title.Caption = 'Suspeitos'
          Width = 55
          Visible = True
        end
        item
          Alignment = taRightJustify
          Expanded = False
          FieldName = 'refuses'
          Title.Alignment = taCenter
          Title.Caption = 'Recuperados'
          Width = 70
          Visible = True
        end>
    end
  end
  object pnlRegiao: TPanel
    Left = 369
    Top = 97
    Width = 288
    Height = 279
    Align = alRight
    TabOrder = 4
    ExplicitLeft = 370
    object lblTituloRegioes: TLabel
      Left = 111
      Top = 10
      Width = 65
      Height = 22
      Caption = 'Regi'#245'es'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -19
      Font.Name = 'Times New Roman'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object pnlCentroOeste: TPanel
      Left = 1
      Top = 230
      Width = 286
      Height = 48
      Align = alBottom
      TabOrder = 0
      ExplicitTop = 229
      object lblCentroOestePorcentagem: TLabel
        Left = 32
        Top = 17
        Width = 63
        Height = 13
        Caption = 'Porcentagem'
      end
      object lblTituloCentroOeste: TLabel
        Left = 111
        Top = 5
        Width = 71
        Height = 15
        Caption = 'Centro Oeste'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'Times New Roman'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object lblCentroOesteQuantidade: TLabel
        Left = 192
        Top = 17
        Width = 56
        Height = 13
        Caption = 'Quantidade'
      end
    end
    object pnlSul: TPanel
      Left = 1
      Top = 182
      Width = 286
      Height = 48
      Align = alBottom
      TabOrder = 1
      ExplicitLeft = 6
      ExplicitTop = 184
      object lblSulPorcentagem: TLabel
        Left = 32
        Top = 18
        Width = 63
        Height = 13
        Caption = 'Porcentagem'
      end
      object lblTituloSul: TLabel
        Left = 136
        Top = 5
        Width = 19
        Height = 15
        Caption = 'Sul'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'Times New Roman'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object lblSulQuantidade: TLabel
        Left = 192
        Top = 18
        Width = 56
        Height = 13
        Caption = 'Quantidade'
      end
    end
    object pnlNorte: TPanel
      Left = 1
      Top = 134
      Width = 286
      Height = 48
      Align = alBottom
      TabOrder = 2
      ExplicitLeft = -2
      object lblNortePorcentagem: TLabel
        Left = 32
        Top = 18
        Width = 63
        Height = 13
        Caption = 'Porcentagem'
      end
      object lblTituloNorte: TLabel
        Left = 129
        Top = 5
        Width = 30
        Height = 15
        Caption = 'Norte'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'Times New Roman'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object lblNorteQuantidade: TLabel
        Left = 192
        Top = 18
        Width = 56
        Height = 13
        Caption = 'Quantidade'
      end
    end
    object pnlNordeste: TPanel
      Left = 1
      Top = 86
      Width = 286
      Height = 48
      Align = alBottom
      TabOrder = 3
      ExplicitTop = 82
      object lblTituloNordeste: TLabel
        Left = 121
        Top = 5
        Width = 47
        Height = 15
        Caption = 'Nordeste'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'Times New Roman'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object lblNordestePorcentagem: TLabel
        Left = 32
        Top = 18
        Width = 63
        Height = 13
        Caption = 'Porcentagem'
      end
      object lblNordesteQuantidade: TLabel
        Left = 192
        Top = 18
        Width = 56
        Height = 13
        Caption = 'Quantidade'
      end
    end
    object pnlSudeste: TPanel
      Left = 1
      Top = 38
      Width = 286
      Height = 48
      Align = alBottom
      TabOrder = 4
      ExplicitTop = 33
      object lblTituloSudeste: TLabel
        Left = 123
        Top = 5
        Width = 42
        Height = 15
        Caption = 'Sudeste'
        Font.Charset = ANSI_CHARSET
        Font.Color = clWindowText
        Font.Height = -12
        Font.Name = 'Times New Roman'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object lblSudestePorcentagem: TLabel
        Left = 32
        Top = 17
        Width = 63
        Height = 13
        Caption = 'Porcentagem'
      end
      object lblSudesteQuantidade: TLabel
        Left = 192
        Top = 17
        Width = 56
        Height = 13
        Caption = 'Quantidade'
      end
    end
  end
  object tmPausarConsulta: TTimer
    Interval = 300000
    OnTimer = tmPausarConsultaTimer
    Left = 568
    Top = 8
  end
end
