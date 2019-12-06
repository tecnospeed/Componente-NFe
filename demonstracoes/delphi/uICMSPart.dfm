object frmICMSPart: TfrmICMSPart
  Left = 580
  Top = 250
  BorderIcons = [biMinimize, biMaximize]
  BorderStyle = bsSingle
  Caption = 'ICMS Partilha'
  ClientHeight = 386
  ClientWidth = 329
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  Position = poScreenCenter
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object pnlICMSPart: TPanel
    Left = 0
    Top = 0
    Width = 329
    Height = 385
    Color = clWhite
    TabOrder = 0
    object lblOrigemICMSPart: TLabel
      Left = 10
      Top = 7
      Width = 33
      Height = 13
      Caption = 'Origem'
    end
    object lblCSTICMSPart: TLabel
      Left = 178
      Top = 7
      Width = 95
      Height = 13
      Caption = 'Tributa'#231#227'o do ICMS'
    end
    object lblModalidadeICMSPart: TLabel
      Left = 10
      Top = 54
      Width = 55
      Height = 13
      Caption = 'Modalidade'
    end
    object lblValorBCICMSPart: TLabel
      Left = 178
      Top = 54
      Width = 100
      Height = 13
      Caption = 'Valor da BC do ICMS'
    end
    object lblAliquotaICMSPart: TLabel
      Left = 178
      Top = 102
      Width = 40
      Height = 13
      Caption = 'Al'#237'quota'
    end
    object lblValorICMSPart: TLabel
      Left = 9
      Top = 149
      Width = 24
      Height = 13
      Caption = 'Valor'
    end
    object lblModBCSTICMSPart: TLabel
      Left = 178
      Top = 151
      Width = 118
      Height = 13
      Caption = 'Modalidade BC ICMS ST'
    end
    object lblpMVASTICMSPart: TLabel
      Left = 7
      Top = 195
      Width = 152
      Height = 13
      Caption = 'Percentual da margem ICMS ST'
    end
    object lblpREDBCSTICMSPart: TLabel
      Left = 170
      Top = 194
      Width = 158
      Height = 13
      Caption = 'Percentual Redu'#231#227'o BC ICMSST'
    end
    object lblvBCSTICMSPart: TLabel
      Left = 8
      Top = 240
      Width = 102
      Height = 13
      Caption = 'Valor da BC ICMS ST'
    end
    object lblpICMSSTICMSPart: TLabel
      Left = 177
      Top = 242
      Width = 86
      Height = 13
      Caption = 'Al'#237'quota ICMS ST'
    end
    object lblvICMSSTICMSPart: TLabel
      Left = 8
      Top = 288
      Width = 85
      Height = 13
      Caption = 'Valor do ICMS ST'
    end
    object lblpRedBCICMSPart: TLabel
      Left = 10
      Top = 103
      Width = 145
      Height = 13
      Caption = 'Percentual da Redu'#231#227'o de BC'
    end
    object lblpBCOpICMSPart: TLabel
      Left = 176
      Top = 289
      Width = 83
      Height = 13
      Caption = 'Percentual da BC'
    end
    object lblUFSTICMSPart: TLabel
      Left = 8
      Top = 336
      Width = 95
      Height = 13
      Caption = 'UF devido ICMS ST'
    end
    object cbOrigemICMSPart: TComboBox
      Left = 10
      Top = 23
      Width = 145
      Height = 21
      Style = csDropDownList
      TabOrder = 0
      Items.Strings = (
        'Nacional'
        'Estrangeira-Importa'#231#227'o Direta'
        'Estrangeira-Adquirida no mercado interno'
        'Nacional-Conte'#250'do de Importa'#231#227'o 40%'
        'Nacional-Produ'#231#227'o conforme processo produtivo'
        'Nacional-Conte'#250'do de Importa'#231#227'o menor 40%'
        'Estrangeira-Importa'#231#227'o Direta sem Similar Nacional (CAMEX)'
        
          'Estrangeira-Adquirida Mercado Interno sem SimilarNacional (CAMEX' +
          ')'
        
          'Nacional, mercadoria ou bem com Conte'#250'do de Importa'#231#227'o superior ' +
          'a 70%')
    end
    object edtCSTICMSPart: TEdit
      Left = 177
      Top = 23
      Width = 145
      Height = 21
      TabOrder = 1
    end
    object cbModalidadeICMSPart: TComboBox
      Left = 10
      Top = 70
      Width = 145
      Height = 21
      Style = csDropDownList
      ItemIndex = 0
      TabOrder = 2
      Text = 'Margem Valor Agregado'
      Items.Strings = (
        'Margem Valor Agregado'
        'Pauta'
        'Pre'#231'o Tabelado M'#225'ximo'
        'Valor da Opera'#231#227'o')
    end
    object edtValorBCICMSPart: TEdit
      Left = 177
      Top = 70
      Width = 145
      Height = 21
      TabOrder = 3
    end
    object edtAliquotaICMSPart: TEdit
      Left = 178
      Top = 118
      Width = 145
      Height = 21
      TabOrder = 5
    end
    object edtValorICMSPart: TEdit
      Left = 8
      Top = 165
      Width = 145
      Height = 21
      TabOrder = 6
    end
    object cbModSTICMSPart: TComboBox
      Left = 178
      Top = 167
      Width = 145
      Height = 21
      Style = csDropDownList
      ItemIndex = 0
      TabOrder = 7
      Text = 'Pre'#231'o tabelado ou m'#225'ximo sugerido'
      Items.Strings = (
        'Pre'#231'o tabelado ou m'#225'ximo sugerido'
        'Lista Negativa'
        'Lista Positiva'
        'Lista Neutra'
        'Margem Valor Agregado'
        'Pauta')
    end
    object edtpMVASTICMSPart: TEdit
      Left = 8
      Top = 211
      Width = 145
      Height = 21
      TabOrder = 8
    end
    object edtpRedBCSTICMSPart: TEdit
      Left = 177
      Top = 210
      Width = 145
      Height = 21
      TabOrder = 9
    end
    object edtvBCSTICMSPart: TEdit
      Left = 8
      Top = 256
      Width = 144
      Height = 21
      TabOrder = 10
    end
    object edtpICMSSTICMSPart: TEdit
      Left = 176
      Top = 257
      Width = 145
      Height = 21
      TabOrder = 11
    end
    object edtvICMSSTICMSPart: TEdit
      Left = 8
      Top = 303
      Width = 145
      Height = 21
      TabOrder = 12
    end
    object btnICMSPart: TButton
      Left = 245
      Top = 351
      Width = 75
      Height = 25
      Caption = 'Gravar'
      TabOrder = 15
      OnClick = btnICMSPartClick
    end
    object edtpRedBCICMSPart: TEdit
      Left = 9
      Top = 119
      Width = 144
      Height = 21
      TabOrder = 4
    end
    object edtpBCOpICMSPart: TEdit
      Left = 176
      Top = 304
      Width = 145
      Height = 21
      TabOrder = 13
    end
    object edtUFSTICMSPart: TEdit
      Left = 8
      Top = 352
      Width = 145
      Height = 21
      TabOrder = 14
    end
  end
end
