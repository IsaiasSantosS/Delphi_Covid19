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
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object pnlTItulo: TPanel
    Left = 0
    Top = 0
    Width = 657
    Height = 41
    Align = alTop
    Caption = 'Informa'#231#245'es da COVID-19 no Brasil e no Mundo'
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -21
    Font.Name = 'Times New Roman'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 0
  end
  object pnlCabecalho: TPanel
    Left = 0
    Top = 41
    Width = 657
    Height = 56
    Align = alTop
    TabOrder = 1
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
    Width = 328
    Height = 279
    Align = alLeft
    TabOrder = 2
    object lblTituloEstados: TLabel
      Left = 87
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
      Left = 11
      Top = 38
      Width = 306
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
          Width = 60
          Visible = True
        end
        item
          Alignment = taRightJustify
          Expanded = False
          FieldName = 'deaths'
          Title.Alignment = taCenter
          Title.Caption = 'Mortos'
          Width = 60
          Visible = True
        end>
    end
  end
  object pnlPaises: TPanel
    Left = 328
    Top = 97
    Width = 329
    Height = 279
    Align = alRight
    TabOrder = 4
    ExplicitLeft = 329
    object lblTitulosPaises: TLabel
      Left = 94
      Top = 10
      Width = 142
      Height = 22
      Caption = 'Dados dos Pa'#237'ses'
      Font.Charset = ANSI_CHARSET
      Font.Color = clWindowText
      Font.Height = -19
      Font.Name = 'Times New Roman'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object DBGrid1: TDBGrid
      Left = 11
      Top = 38
      Width = 307
      Height = 230
      DataSource = dmDados.dsDadosPais
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
          FieldName = 'country'
          Title.Caption = 'Pa'#237's'
          Width = 70
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'cases'
          Title.Alignment = taRightJustify
          Width = -1
          Visible = False
        end
        item
          Alignment = taRightJustify
          Expanded = False
          FieldName = 'confirmed'
          Title.Caption = 'Confirmado'
          Width = 60
          Visible = True
        end
        item
          Alignment = taRightJustify
          Expanded = False
          FieldName = 'deaths'
          Title.Alignment = taRightJustify
          Title.Caption = 'Mortos'
          Width = 70
          Visible = True
        end
        item
          Alignment = taRightJustify
          Expanded = False
          FieldName = 'recovered'
          Title.Caption = 'Recuperados'
          Width = 70
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'updated_at'
          Visible = False
        end>
    end
  end
  object tmPausarConsulta: TTimer
    Interval = 180000
    OnTimer = tmPausarConsultaTimer
    Left = 568
    Top = 8
  end
end
