object Form1: TForm1
  Left = 0
  Top = 0
  Caption = 'Form1'
  ClientHeight = 521
  ClientWidth = 877
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  OnCreate = FormCreate
  PixelsPerInch = 96
  TextHeight = 13
  object Label1: TLabel
    Left = 64
    Top = 32
    Width = 27
    Height = 13
    Caption = 'Name'
  end
  object Label2: TLabel
    Left = 64
    Top = 112
    Width = 24
    Height = 13
    Caption = 'Email'
  end
  object Label3: TLabel
    Left = 64
    Top = 72
    Width = 19
    Height = 13
    Caption = 'Age'
  end
  object Label4: TLabel
    Left = 440
    Top = 112
    Width = 3
    Height = 13
  end
  object Edit1: TEdit
    Left = 144
    Top = 29
    Width = 121
    Height = 21
    TabOrder = 0
  end
  object Edit2: TEdit
    Left = 144
    Top = 69
    Width = 121
    Height = 21
    TabOrder = 1
  end
  object Edit3: TEdit
    Left = 144
    Top = 109
    Width = 121
    Height = 21
    TabOrder = 2
  end
  object Button1: TButton
    Left = 168
    Top = 160
    Width = 75
    Height = 25
    Caption = 'Customer'
    TabOrder = 3
    OnClick = Button1Click
  end
  object Button2: TButton
    Left = 64
    Top = 160
    Width = 75
    Height = 25
    Caption = 'Person'
    TabOrder = 4
    OnClick = Button2Click
  end
  object Button3: TButton
    Left = 424
    Top = 44
    Width = 75
    Height = 25
    Caption = 'Print All'
    TabOrder = 5
    OnClick = Button3Click
  end
  object ListBox1: TListBox
    Left = 424
    Top = 144
    Width = 353
    Height = 297
    ItemHeight = 13
    TabOrder = 6
  end
  object Button4: TButton
    Left = 538
    Top = 44
    Width = 104
    Height = 25
    Caption = 'Print Customers'
    TabOrder = 7
    OnClick = Button4Click
  end
  object Button5: TButton
    Left = 680
    Top = 44
    Width = 97
    Height = 25
    Caption = 'Info Message'
    TabOrder = 8
    OnClick = Button5Click
  end
  object Button6: TButton
    Left = 538
    Top = 75
    Width = 87
    Height = 25
    Caption = 'Customer Email'
    TabOrder = 9
    OnClick = Button6Click
  end
end
