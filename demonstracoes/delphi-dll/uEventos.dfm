object Eventos: TEventos
  Left = 437
  Top = 104
  Width = 831
  Height = 492
  Caption = 'Eventos'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object pgcPageControlEventos: TPageControl
    Left = 0
    Top = 0
    Width = 809
    Height = 441
    ActivePage = tsCancelarNFe
    TabOrder = 0
    object tsCancelarNFe: TTabSheet
      Caption = 'Cancelar NF-e'
      ImageIndex = 3
      object Label9: TLabel
        Left = 8
        Top = 8
        Width = 96
        Height = 16
        Caption = 'Cancelar NFe'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -15
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label10: TLabel
        Left = 624
        Top = 32
        Width = 60
        Height = 13
        Caption = 'Fuso Hor'#225'rio'
      end
      object btnDataHrCancel: TSpeedButton
        Left = 592
        Top = 87
        Width = 22
        Height = 20
        Hint = 'Inserir data e hora atual'
        Glyph.Data = {
          76010000424D7601000000000000760000002800000020000000100000000100
          04000000000000010000120B0000120B00001000000000000000000000000000
          800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
          FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333333333
          3333333333FFFFF3333333333000003333333333F77777FFF333333009999900
          3333333777777777FF33330998FFF899033333777333F3777FF33099FFFCFFF9
          903337773337333777F3309FFFFFFFCF9033377333F3337377FF098FF0FFFFFF
          890377F3373F3333377F09FFFF0FFFFFF90377F3F373FFFFF77F09FCFFF90000
          F90377F733377777377F09FFFFFFFFFFF90377F333333333377F098FFFFFFFFF
          890377FF3F33333F3773309FCFFFFFCF9033377F7333F37377F33099FFFCFFF9
          90333777FF37F3377733330998FCF899033333777FF7FF777333333009999900
          3333333777777777333333333000003333333333377777333333}
        NumGlyphs = 2
        ParentShowHint = False
        ShowHint = True
        OnClick = btnDataHrCancelClick
      end
      object edtChaveNotaCancel: TLabeledEdit
        Left = 8
        Top = 48
        Width = 393
        Height = 21
        EditLabel.Width = 54
        EditLabel.Height = 13
        EditLabel.Caption = 'Chave NFe'
        TabOrder = 0
      end
      object edtJustifCancel: TLabeledEdit
        Left = 8
        Top = 88
        Width = 393
        Height = 21
        EditLabel.Width = 141
        EditLabel.Height = 13
        EditLabel.Caption = 'Justificativa de Cancelamento'
        TabOrder = 1
        Text = 'Teste de cancelamento de nota'
      end
      object edtNumProtCancel: TLabeledEdit
        Left = 408
        Top = 48
        Width = 209
        Height = 21
        EditLabel.Width = 119
        EditLabel.Height = 13
        EditLabel.Caption = 'Protocolo de Autoriza'#231#227'o'
        TabOrder = 2
      end
      object edtDataHrCancel: TLabeledEdit
        Left = 408
        Top = 88
        Width = 177
        Height = 21
        EditLabel.Width = 110
        EditLabel.Height = 13
        EditLabel.Caption = 'Data e Hora do Evento'
        TabOrder = 3
      end
      object cbFusoHrCancel: TComboBox
        Left = 624
        Top = 48
        Width = 169
        Height = 21
        ItemHeight = 13
        ItemIndex = 1
        TabOrder = 4
        Text = '-03:00'
        Items.Strings = (
          '-02:00'
          '-03:00'
          '-04:00')
      end
      object mmXmlCancel: TMemo
        Left = 8
        Top = 112
        Width = 785
        Height = 297
        TabOrder = 5
      end
      object btnCancelarPorEvento: TButton
        Left = 624
        Top = 83
        Width = 169
        Height = 25
        Caption = 'Cancelar por Evento'
        TabOrder = 6
        OnClick = btnCancelarPorEventoClick
      end
    end
    object tsCCe: TTabSheet
      Caption = 'Carta de Corre'#231#227'o - CCe'
      ImageIndex = 3
      object Label7: TLabel
        Left = 8
        Top = 8
        Width = 244
        Height = 16
        Caption = 'Carta de Corre'#231#227'o Eletr'#244'nica - CCe'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -15
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label8: TLabel
        Left = 416
        Top = 32
        Width = 60
        Height = 13
        Caption = 'Fuso Hor'#225'rio'
      end
      object btnDataHrCCe: TSpeedButton
        Left = 760
        Top = 46
        Width = 22
        Height = 22
        Hint = 'Inserir data e hora atual'
        Glyph.Data = {
          76010000424D7601000000000000760000002800000020000000100000000100
          04000000000000010000120B0000120B00001000000000000000000000000000
          800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
          FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333333333
          3333333333FFFFF3333333333000003333333333F77777FFF333333009999900
          3333333777777777FF33330998FFF899033333777333F3777FF33099FFFCFFF9
          903337773337333777F3309FFFFFFFCF9033377333F3337377FF098FF0FFFFFF
          890377F3373F3333377F09FFFF0FFFFFF90377F3F373FFFFF77F09FCFFF90000
          F90377F733377777377F09FFFFFFFFFFF90377F333333333377F098FFFFFFFFF
          890377FF3F33333F3773309FCFFFFFCF9033377F7333F37377F33099FFFCFFF9
          90333777FF37F3377733330998FCF899033333777FF7FF777333333009999900
          3333333777777777333333333000003333333333377777333333}
        NumGlyphs = 2
        ParentShowHint = False
        ShowHint = True
        OnClick = btnDataHrCCeClick
      end
      object edtChaveNotaCCe: TLabeledEdit
        Left = 8
        Top = 48
        Width = 393
        Height = 21
        EditLabel.Width = 54
        EditLabel.Height = 13
        EditLabel.Caption = 'Chave NFe'
        TabOrder = 0
      end
      object cbFusoHrCCe: TComboBox
        Left = 416
        Top = 48
        Width = 145
        Height = 21
        ItemHeight = 13
        ItemIndex = 1
        TabOrder = 1
        Text = '-03:00'
        Items.Strings = (
          '-02:00'
          '-03:00'
          '-04:00')
      end
      object edtDateCCe: TLabeledEdit
        Left = 576
        Top = 48
        Width = 177
        Height = 21
        EditLabel.Width = 110
        EditLabel.Height = 13
        EditLabel.Caption = 'Data e Hora do Evento'
        TabOrder = 2
      end
      object edtDescCorrecao: TLabeledEdit
        Left = 8
        Top = 88
        Width = 393
        Height = 21
        EditLabel.Width = 94
        EditLabel.Height = 13
        EditLabel.Caption = 'Descri'#231#227'o Corre'#231#227'o'
        TabOrder = 3
        Text = 'Teste de carta de correcao'
      end
      object edtUFCCe: TLabeledEdit
        Left = 416
        Top = 88
        Width = 81
        Height = 21
        EditLabel.Width = 50
        EditLabel.Height = 13
        EditLabel.Caption = 'C'#243'digo UF'
        TabOrder = 4
      end
      object edtIDLoteCCe: TLabeledEdit
        Left = 512
        Top = 88
        Width = 97
        Height = 21
        EditLabel.Width = 49
        EditLabel.Height = 13
        EditLabel.Caption = 'N'#250'm. Lote'
        TabOrder = 5
        Text = '1'
      end
      object edtSeqCCe: TLabeledEdit
        Left = 624
        Top = 88
        Width = 129
        Height = 21
        EditLabel.Width = 88
        EditLabel.Height = 13
        EditLabel.Caption = 'Sequ'#234'ncia Evento'
        TabOrder = 6
        Text = '1'
      end
      object mmXmlCCe: TMemo
        Left = 8
        Top = 152
        Width = 785
        Height = 257
        TabOrder = 12
      end
      object btnEnviaCCe: TButton
        Left = 8
        Top = 120
        Width = 137
        Height = 25
        Caption = 'Enviar Carta de Corre'#231#227'o'
        TabOrder = 7
        OnClick = btnEnviaCCeClick
      end
      object btnImprimirCCe: TButton
        Left = 496
        Top = 120
        Width = 97
        Height = 25
        Caption = 'Imprimir CCe'
        TabOrder = 11
        OnClick = btnImprimirCCeClick
      end
      object btnEditarCCe: TButton
        Left = 160
        Top = 120
        Width = 97
        Height = 25
        Caption = 'Editar CCe'
        TabOrder = 8
        OnClick = btnEditarCCeClick
      end
      object btnVisualizarCCe: TButton
        Left = 272
        Top = 120
        Width = 97
        Height = 25
        Caption = 'Visualizar CCe'
        TabOrder = 9
        OnClick = btnVisualizarCCeClick
      end
      object btnExportPDF: TButton
        Left = 384
        Top = 120
        Width = 97
        Height = 25
        Caption = 'Exportar PDF'
        TabOrder = 10
        OnClick = btnExportPDFClick
      end
      object btnEnviarEmailCCe: TButton
        Left = 608
        Top = 120
        Width = 113
        Height = 25
        Caption = 'Enviar E-mail CCe'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'MS Sans Serif'
        Font.Style = []
        ParentFont = False
        TabOrder = 13
        OnClick = btnEnviarEmailCCeClick
      end
    end
    object tsManifDest: TTabSheet
      Caption = 'Manifesta'#231#227'o'
      object Label1: TLabel
        Left = 8
        Top = 8
        Width = 204
        Height = 16
        Caption = 'Manifesta'#231#227'o do Destinat'#225'rio'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -15
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object Label2: TLabel
        Left = 592
        Top = 32
        Width = 60
        Height = 13
        Caption = 'Fuso Hor'#225'rio'
      end
      object Label3: TLabel
        Left = 8
        Top = 72
        Width = 58
        Height = 13
        Caption = 'Tipo Evento'
      end
      object Label4: TLabel
        Left = 8
        Top = 120
        Width = 26
        Height = 13
        Caption = 'XML'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = 15
        Font.Name = 'MS Sans Serif'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object btnDataHoraManif: TSpeedButton
        Left = 631
        Top = 86
        Width = 23
        Height = 22
        Hint = 'Inserir data e hora atual'
        Glyph.Data = {
          76010000424D7601000000000000760000002800000020000000100000000100
          04000000000000010000120B0000120B00001000000000000000000000000000
          800000800000008080008000000080008000808000007F7F7F00BFBFBF000000
          FF0000FF000000FFFF00FF000000FF00FF00FFFF0000FFFFFF00333333333333
          3333333333FFFFF3333333333000003333333333F77777FFF333333009999900
          3333333777777777FF33330998FFF899033333777333F3777FF33099FFFCFFF9
          903337773337333777F3309FFFFFFFCF9033377333F3337377FF098FF0FFFFFF
          890377F3373F3333377F09FFFF0FFFFFF90377F3F373FFFFF77F09FCFFF90000
          F90377F733377777377F09FFFFFFFFFFF90377F333333333377F098FFFFFFFFF
          890377FF3F33333F3773309FCFFFFFCF9033377F7333F37377F33099FFFCFFF9
          90333777FF37F3377733330998FCF899033333777FF7FF777333333009999900
          3333333777777777333333333000003333333333377777333333}
        NumGlyphs = 2
        ParentShowHint = False
        ShowHint = True
        OnClick = btnDataHoraManifClick
      end
      object edtChaveNotaManifes: TLabeledEdit
        Left = 8
        Top = 48
        Width = 393
        Height = 21
        EditLabel.Width = 54
        EditLabel.Height = 13
        EditLabel.Caption = 'Chave NFe'
        TabOrder = 0
      end
      object edtCNPJDest: TLabeledEdit
        Left = 408
        Top = 48
        Width = 177
        Height = 21
        EditLabel.Width = 86
        EditLabel.Height = 13
        EditLabel.Caption = 'CNPJ Destinat'#225'rio'
        TabOrder = 1
      end
      object cbFusoHrManif: TComboBox
        Left = 592
        Top = 48
        Width = 145
        Height = 21
        ItemHeight = 13
        ItemIndex = 1
        TabOrder = 2
        Text = '-03:00'
        Items.Strings = (
          '-02:00'
          '-03:00'
          '-04:00')
      end
      object cbTipoEvento: TComboBox
        Left = 8
        Top = 88
        Width = 250
        Height = 21
        ItemHeight = 13
        TabOrder = 3
        Items.Strings = (
          ''
          '1 - Confirma'#231#227'o da Opera'#231#227'o'
          '2 - Ci'#234'ncia da Opera'#231#227'o'
          '3 - Desconhecimento da Opera'#231#227'o'
          '4 - Opera'#231#227'o n'#227'o Realizada')
      end
      object edtJustificativa: TLabeledEdit
        Left = 264
        Top = 88
        Width = 177
        Height = 21
        EditLabel.Width = 122
        EditLabel.Height = 13
        EditLabel.Caption = 'Justificativa Manifesta'#231#227'o'
        TabOrder = 4
      end
      object edtDataManif: TLabeledEdit
        Left = 448
        Top = 88
        Width = 177
        Height = 21
        EditLabel.Width = 110
        EditLabel.Height = 13
        EditLabel.Caption = 'Data e Hora do Evento'
        TabOrder = 5
      end
      object btnEnviaManif: TButton
        Left = 672
        Top = 72
        Width = 121
        Height = 49
        Caption = 'Enviar Manifesta'#231#227'o'
        TabOrder = 6
        OnClick = btnEnviaManifClick
      end
      object mmXmlManif: TMemo
        Left = 8
        Top = 136
        Width = 785
        Height = 273
        TabOrder = 7
      end
    end
  end
  object dlgOpen: TOpenDialog
    Left = 664
    Top = 769
  end
end
