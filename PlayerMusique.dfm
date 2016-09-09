object Form1: TForm1
  Left = 0
  Top = 0
  BorderIcons = [biSystemMenu, biMinimize]
  Caption = 'Delphi'#39'Player'
  ClientHeight = 79
  ClientWidth = 590
  Color = clBackground
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object Shape1: TShape
    Left = 0
    Top = 36
    Width = 65
    Height = 13
    Shape = stRoundRect
  end
  object Shape2: TShape
    Left = 87
    Top = 36
    Width = 65
    Height = 13
    Shape = stRoundRect
  end
  object Shape3: TShape
    Left = 176
    Top = 36
    Width = 65
    Height = 13
    Shape = stRoundRect
  end
  object MediaPlayer1: TMediaPlayer
    Left = 0
    Top = 0
    Width = 253
    Height = 30
    DoubleBuffered = True
    ParentDoubleBuffered = False
    TabOrder = 0
  end
  object Button1: TButton
    Left = 256
    Top = 0
    Width = 75
    Height = 30
    Caption = '&Open'
    TabOrder = 1
    OnClick = Button1Click
  end
  object RichEdit1: TRichEdit
    Left = 337
    Top = 0
    Width = 253
    Height = 49
    Color = clBlack
    Font.Charset = ANSI_CHARSET
    Font.Color = clYellow
    Font.Height = -11
    Font.Name = 'Tahoma'
    Font.Style = []
    Lines.Strings = (
      'RichEdit1')
    ParentFont = False
    TabOrder = 2
    Zoom = 100
  end
  object ProgressBar1: TProgressBar
    Left = 0
    Top = 55
    Width = 590
    Height = 17
    TabOrder = 3
  end
  object OpenDialog1: TOpenDialog
    Left = 104
    Top = 32
  end
  object Timer1: TTimer
    Enabled = False
    OnTimer = Timer1Timer
    Left = 136
    Top = 32
  end
  object Timer2: TTimer
    Enabled = False
    OnTimer = Timer2Timer
    Left = 176
    Top = 32
  end
  object Timer3: TTimer
    Enabled = False
    OnTimer = Timer3Timer
    Left = 216
    Top = 32
  end
  object Timer4: TTimer
    Enabled = False
    OnTimer = Timer4Timer
    Left = 256
    Top = 32
  end
  object Timer5: TTimer
    OnTimer = Timer5Timer
    Left = 296
    Top = 32
  end
end
