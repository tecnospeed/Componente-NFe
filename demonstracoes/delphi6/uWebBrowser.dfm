object frmWebBrowser: TfrmWebBrowser
  Left = 297
  Top = 230
  BorderStyle = bsToolWindow
  Caption = 'Xml Identado '
  ClientHeight = 338
  ClientWidth = 535
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'MS Sans Serif'
  Font.Style = []
  Menu = MainMenu1
  OldCreateOrder = False
  Position = poMainFormCenter
  WindowState = wsMaximized
  OnClose = FormClose
  OnCreate = FormCreate
  OnShow = FormShow
  PixelsPerInch = 96
  TextHeight = 13
  object WebBrowser1: TWebBrowser
    Left = 0
    Top = 0
    Width = 535
    Height = 338
    Align = alClient
    TabOrder = 0
    ControlData = {
      4C0000004B370000EF2200000000000000000000000000000000000000000000
      000000004C000000000000000000000001000000E0D057007335CF11AE690800
      2B2E126208000000000000004C0000000114020000000000C000000000000046
      8000000000000000000000000000000000000000000000000000000000000000
      00000000000000000100000000000000000000000000000000000000}
  end
  object MainMenu1: TMainMenu
    Left = 112
    Top = 24
    object EscSair1: TMenuItem
      Caption = '[Esc - Sair]'
    end
  end
  object ActionList1: TActionList
    Left = 248
    Top = 80
    object Action1: TAction
      Caption = 'Action1'
      ShortCut = 27
      OnExecute = Action1Execute
    end
  end
end
