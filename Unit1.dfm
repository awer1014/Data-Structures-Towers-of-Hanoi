object Form1: TForm1
  Left = 0
  Top = 0
  Caption = 'Form1'
  ClientHeight = 541
  ClientWidth = 565
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 102
    Top = 51
    Width = 20
    Height = 13
    Caption = 'n = '
  end
  object PageControl1: TPageControl
    Left = 128
    Top = 160
    Width = 289
    Height = 257
    ActivePage = TabSheet1
    TabOrder = 0
    object TabSheet1: TTabSheet
      Caption = 'Step'
      object Memo1: TMemo
        Left = -4
        Top = 0
        Width = 285
        Height = 233
        Lines.Strings = (
          'Memo1')
        TabOrder = 0
      end
    end
    object TabSheet2: TTabSheet
      Caption = 'Tracing'
      ImageIndex = 1
      ExplicitLeft = 0
      ExplicitTop = 0
      ExplicitWidth = 0
      ExplicitHeight = 0
      object Memo2: TMemo
        Left = -4
        Top = 0
        Width = 285
        Height = 233
        Lines.Strings = (
          'Memo2')
        TabOrder = 0
      end
    end
  end
  object Edit1: TEdit
    Left = 128
    Top = 48
    Width = 121
    Height = 21
    TabOrder = 1
    Text = 'Edit1'
  end
  object CheckBox1: TCheckBox
    Left = 102
    Top = 88
    Width = 97
    Height = 17
    Caption = 'Tracing'
    TabOrder = 2
  end
  object Button1: TButton
    Left = 280
    Top = 46
    Width = 75
    Height = 25
    Caption = 'Start'
    TabOrder = 3
    OnClick = Button1Click
  end
  object Button2: TButton
    Left = 280
    Top = 77
    Width = 75
    Height = 25
    Caption = 'Clear'
    TabOrder = 4
    OnClick = Button2Click
  end
end
