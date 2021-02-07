object Form1: TForm1
  Left = 0
  Top = 0
  Caption = 'API NFe Destinadas'
  ClientHeight = 456
  ClientWidth = 634
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poScreenCenter
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object lbl1: TLabel
    Left = 16
    Top = 6
    Width = 105
    Height = 13
    Caption = 'CNPJ Software House'
  end
  object lbl2: TLabel
    Left = 184
    Top = 6
    Width = 86
    Height = 13
    Caption = 'CNPJ Destinatario'
  end
  object lbl3: TLabel
    Left = 328
    Top = 7
    Width = 29
    Height = 13
    Caption = 'Token'
  end
  object lbl4: TLabel
    Left = 328
    Top = 47
    Width = 45
    Height = 13
    Caption = 'Protocolo'
  end
  object lbl5: TLabel
    Left = 328
    Top = 87
    Width = 68
    Height = 13
    Caption = 'Chave da NFe'
  end
  object lbl6: TLabel
    Left = 328
    Top = 128
    Width = 53
    Height = 13
    Caption = 'Data Inicial'
  end
  object lbl7: TLabel
    Left = 490
    Top = 128
    Width = 48
    Height = 13
    Caption = 'Data Final'
  end
  object lbl8: TLabel
    Left = 328
    Top = 171
    Width = 48
    Height = 13
    Caption = 'ID Evento'
  end
  object edtCNPJSH: TEdit
    Left = 16
    Top = 25
    Width = 145
    Height = 21
    TabOrder = 0
  end
  object edtCNPJDest: TEdit
    Left = 184
    Top = 25
    Width = 121
    Height = 21
    TabOrder = 1
  end
  object edtToken: TEdit
    Left = 328
    Top = 25
    Width = 289
    Height = 21
    TabOrder = 2
  end
  object pgc1: TPageControl
    Left = 0
    Top = 216
    Width = 634
    Height = 240
    ActivePage = tsRetorno
    Align = alBottom
    TabOrder = 3
    object tsRetorno: TTabSheet
      Caption = 'Retorno'
      object mmoRetorno1: TMemo
        Left = 0
        Top = 0
        Width = 626
        Height = 212
        Align = alClient
        TabOrder = 0
      end
    end
    object tsRetorno2: TTabSheet
      Caption = 'Retorno Tratado'
      ImageIndex = 1
      ExplicitLeft = 0
      ExplicitTop = 0
      ExplicitWidth = 0
      ExplicitHeight = 0
      object mmoRetornoTratado: TMemo
        Left = 0
        Top = 0
        Width = 626
        Height = 212
        Align = alClient
        TabOrder = 0
        ExplicitLeft = 168
        ExplicitTop = 80
        ExplicitWidth = 185
        ExplicitHeight = 89
      end
    end
  end
  object btnCadDestinatario: TButton
    Left = 165
    Top = 52
    Width = 122
    Height = 25
    Caption = 'Cad. Destinat'#225'rio'
    TabOrder = 4
    OnClick = btnCadDestinatarioClick
  end
  object edtProtocolo: TEdit
    Left = 328
    Top = 65
    Width = 289
    Height = 21
    TabOrder = 5
  end
  object btnAdcConsulta: TButton
    Left = 32
    Top = 83
    Width = 122
    Height = 25
    Caption = 'Adc. Consulta'
    TabOrder = 6
    OnClick = btnAdcConsultaClick
  end
  object btnConsProtocolo: TButton
    Left = 165
    Top = 83
    Width = 122
    Height = 25
    Caption = 'Cons. Protocolo'
    TabOrder = 7
    OnClick = btnConsProtocoloClick
  end
  object btnBaixarNotas: TButton
    Left = 32
    Top = 114
    Width = 122
    Height = 25
    Caption = 'Baixar Notas'
    TabOrder = 8
    OnClick = btnBaixarNotasClick
  end
  object btnBaixar1Nota: TButton
    Left = 165
    Top = 114
    Width = 122
    Height = 25
    Caption = 'Baixar 1 Nota'
    TabOrder = 9
    OnClick = btnBaixar1NotaClick
  end
  object btnListarEventos1Nt: TButton
    Left = 32
    Top = 145
    Width = 122
    Height = 25
    Caption = 'Listar Eventos 1 Nota'
    TabOrder = 10
    OnClick = btnListarEventos1NtClick
  end
  object btnBaixarXML1Evento: TButton
    Left = 165
    Top = 145
    Width = 122
    Height = 25
    Caption = 'Baixar XML Evento'
    TabOrder = 11
    OnClick = btnBaixarXML1EventoClick
  end
  object edtChaveNFe: TEdit
    Left = 328
    Top = 105
    Width = 289
    Height = 21
    TabOrder = 12
  end
  object btnStatus: TButton
    Left = 32
    Top = 52
    Width = 122
    Height = 25
    Caption = 'Status API'
    TabOrder = 13
    OnClick = btnStatusClick
  end
  object rgConsulta: TRadioGroup
    Left = 16
    Top = 171
    Width = 289
    Height = 39
    Caption = 'Gerar JSON por:'
    Columns = 2
    ItemIndex = 0
    Items.Strings = (
      'Per'#237'odo'
      'Chave')
    TabOrder = 14
  end
  object dtpDtInicio: TDateTimePicker
    Left = 328
    Top = 147
    Width = 127
    Height = 21
    Date = 44232.000000000000000000
    Time = 0.663945740743656600
    TabOrder = 15
  end
  object dtpDtFinal: TDateTimePicker
    Left = 490
    Top = 147
    Width = 127
    Height = 21
    Date = 44232.000000000000000000
    Time = 0.664112222220865100
    TabOrder = 16
  end
  object edtIDEvento: TEdit
    Left = 328
    Top = 189
    Width = 289
    Height = 21
    TabOrder = 17
  end
  object APINFeDest: TRESTClient
    BaseURL = 'https://api.nfe.tecnospeed.com.br/destinadas/v1'
    Params = <>
    RaiseExceptionOn500 = False
    Left = 24
    Top = 216
  end
  object APIRequest: TRESTRequest
    Client = APINFeDest
    Params = <>
    Response = APIResponse
    SynchronizedEvents = False
    Left = 28
    Top = 269
  end
  object APIResponse: TRESTResponse
    Left = 28
    Top = 317
  end
  object APIResponseDSAdapter: TRESTResponseDataSetAdapter
    Dataset = fdmTbResponse
    FieldDefs = <>
    Response = APIResponse
    Left = 28
    Top = 365
  end
  object fdmTbResponse: TFDMemTable
    FetchOptions.AssignedValues = [evMode]
    FetchOptions.Mode = fmAll
    ResourceOptions.AssignedValues = [rvSilentMode]
    ResourceOptions.SilentMode = True
    UpdateOptions.AssignedValues = [uvCheckRequired, uvAutoCommitUpdates]
    UpdateOptions.CheckRequired = False
    UpdateOptions.AutoCommitUpdates = True
    Left = 28
    Top = 413
  end
  object API1: TRESTClient
    Accept = 'application/json, text/plain; q=0.9, text/html;q=0.8,'
    AcceptCharset = 'utf-8, *;q=0.8'
    BaseURL = 'https://api.nfe.tecnospeed.com.br/destinadas/v1/destinatarios'
    ContentType = 'application/x-www-form-urlencoded'
    Params = <>
    RaiseExceptionOn500 = False
    Left = 288
    Top = 264
  end
  object API2: TRESTRequest
    Client = API1
    Method = rmPOST
    Params = <
      item
        Kind = pkHTTPHEADER
        Name = 'cpfCnpjSoftwareHouse'
        Value = '08187168000160'
      end
      item
        Kind = pkHTTPHEADER
        Name = 'cpfCnpjDestinatario'
        Value = '08187168000160'
      end
      item
        Kind = pkHTTPHEADER
        Name = 'Content-Type'
        Value = 'multipart/form-data'
      end
      item
        Kind = pkREQUESTBODY
        Name = 'uf'
        Value = '41'
      end
      item
        Kind = pkHTTPHEADER
        Name = 'token_sh'
        Value = 'uR4BwzifCN2t7Nuf7IOlo4Z0Vbnojlroa13x3dVu'
      end
      item
        Kind = pkREQUESTBODY
        Name = 'body'
        Options = [poDoNotEncode]
        ContentType = ctAPPLICATION_X_WWW_FORM_URLENCODED
      end>
    Response = API3
    SynchronizedEvents = False
    Left = 344
    Top = 264
  end
  object API3: TRESTResponse
    ContentType = 'application/json'
    Left = 376
    Top = 304
  end
end
