object Form26: TForm26
  Left = 0
  Top = 0
  Caption = 'A propos'
  ClientHeight = 249
  ClientWidth = 372
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object RichEdit1: TRichEdit
    Left = 32
    Top = 24
    Width = 313
    Height = 153
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = []
    Lines.Strings = (
      ''
      '     Cette application est d'#233'velopp'#233' par : SAID Abdelhamid.'
      ''
      '     Ann'#233'e de d'#233'veloppement : 2018'
      ''
      '     Mail: said.abdelhamid.94@gmail.com'
      ''
      '     Localisation : Alger.'
      ''
      '     AL SALAM BANK OF ALGERIA')
    ParentFont = False
    ReadOnly = True
    TabOrder = 0
  end
  object Button1: TButton
    Left = 144
    Top = 192
    Width = 75
    Height = 25
    Caption = 'OK'
    TabOrder = 1
    OnClick = Button1Click
  end
end
