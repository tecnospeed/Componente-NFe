object frmDestinadas: TfrmDestinadas
  Left = 503
  Top = 210
  Width = 782
  Height = 520
  Caption = 'NFe - Notas Destinadas'
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  OldCreateOrder = False
  OnCreate = FormCreate
  OnDestroy = FormDestroy
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object GroupBox1: TGroupBox
    Left = 360
    Top = 0
    Width = 401
    Height = 259
    Caption = 'Operaca'#231#245'es'
    TabOrder = 0
    object Label1: TLabel
      Left = 8
      Top = 24
      Width = 50
      Height = 13
      Caption = 'Certificado'
    end
    object cbCertificadoDest: TComboBox
      Left = 8
      Top = 40
      Width = 385
      Height = 21
      ItemHeight = 13
      TabOrder = 0
      Text = 'Selecione um Certificado'
      OnChange = cbCertificadoDestChange
    end
    object btnManifestarNota: TButton
      Left = 207
      Top = 130
      Width = 186
      Height = 35
      Caption = '&2 - Manifestar nota'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 1
      OnClick = btnManifestarNotaClick
    end
    object btnConsultarPelaChave: TButton
      Left = 103
      Top = 185
      Width = 186
      Height = 35
      Caption = '&3 - Download da Nota'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 2
      OnClick = btnConsultarPelaChaveClick
    end
    object btnConsultarDistribuicao: TButton
      Left = 8
      Top = 130
      Width = 185
      Height = 35
      Caption = '&1 - Consultar Distribui'#231#227'oDFe'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 3
      OnClick = btnConsultarDistribuicaoClick
    end
  end
  object GroupBox2: TGroupBox
    Left = 2
    Top = 0
    Width = 353
    Height = 259
    Caption = 'Dados'
    TabOrder = 1
    object Label5: TLabel
      Left = 8
      Top = 26
      Width = 53
      Height = 13
      Caption = 'UF Emissor'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
    end
    object Label10: TLabel
      Left = 8
      Top = 176
      Width = 58
      Height = 13
      Caption = #218'ltimo NSU:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clRed
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      Transparent = True
    end
    object lblUltNSU: TLabel
      Left = 68
      Top = 176
      Width = 106
      Height = 13
      Caption = '000000000000000'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clRed
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      Transparent = True
    end
    object Label11: TLabel
      Left = 14
      Top = 192
      Width = 52
      Height = 13
      Caption = 'M'#225'x. NSU:'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clRed
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = []
      ParentFont = False
      Transparent = True
    end
    object lblMaxNSU: TLabel
      Left = 68
      Top = 192
      Width = 106
      Height = 13
      Caption = '000000000000000'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clRed
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      Transparent = True
    end
    object Label8: TLabel
      Left = 40
      Top = 208
      Width = 26
      Height = 13
      Caption = 'NSU:'
      Transparent = True
    end
    object lblConsultaNSU: TLabel
      Left = 68
      Top = 208
      Width = 106
      Height = 13
      Caption = '000000000000000'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'MS Sans Serif'
      Font.Style = [fsBold]
      ParentFont = False
      Transparent = True
    end
    object cbUFEmi: TComboBox
      Left = 8
      Top = 45
      Width = 57
      Height = 21
      ItemHeight = 13
      ItemIndex = 15
      ParentShowHint = False
      ShowHint = False
      TabOrder = 0
      Text = 'PR'
      Items.Strings = (
        'AC'
        'AL'
        'AP'
        'AM'
        'BA'
        'CE'
        'DF'
        'ES'
        'GO'
        'MA'
        'MT'
        'MS'
        'MG'
        'PA'
        'PB'
        'PR'
        'PE'
        'PI'
        'RJ'
        'RN'
        'RS'
        'RO'
        'RR'
        'SC'
        'SP'
        'SE'
        'TO')
    end
    object edtCNPJDest: TLabeledEdit
      Left = 8
      Top = 90
      Width = 336
      Height = 21
      EditLabel.Width = 117
      EditLabel.Height = 13
      EditLabel.Caption = 'CNPJ / CPF Destinat'#225'rio'
      EditLabel.Font.Charset = DEFAULT_CHARSET
      EditLabel.Font.Color = clWindowText
      EditLabel.Font.Height = -11
      EditLabel.Font.Name = 'MS Sans Serif'
      EditLabel.Font.Style = []
      EditLabel.ParentFont = False
      TabOrder = 1
    end
    object edtChaveNotaDest: TLabeledEdit
      Left = 8
      Top = 138
      Width = 336
      Height = 21
      EditLabel.Width = 72
      EditLabel.Height = 13
      EditLabel.Caption = 'Chave da Nota'
      EditLabel.Font.Charset = DEFAULT_CHARSET
      EditLabel.Font.Color = clWindowText
      EditLabel.Font.Height = -11
      EditLabel.Font.Name = 'MS Sans Serif'
      EditLabel.Font.Style = []
      EditLabel.ParentFont = False
      TabOrder = 2
    end
  end
  object mmXml: TMemo
    Left = 3
    Top = 264
    Width = 758
    Height = 217
    TabOrder = 2
  end
end
