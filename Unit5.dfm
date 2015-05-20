object Form5: TForm5
  Left = 747
  Top = 309
  Width = 485
  Height = 359
  Caption = 'Form5'
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
  object lbl1: TLabel
    Left = 32
    Top = 8
    Width = 70
    Height = 13
    Caption = #1050#1086#1076' '#1091#1095#1072#1089#1085#1080#1082#1072
  end
  object lbl2: TLabel
    Left = 56
    Top = 32
    Width = 47
    Height = 13
    Caption = #1055#1110#1088#1079#1074#1080#1097#1077
  end
  object lbl3: TLabel
    Left = 80
    Top = 56
    Width = 18
    Height = 13
    Caption = #1030#1084#8217#1103
  end
  object lbl4: TLabel
    Left = 40
    Top = 80
    Width = 60
    Height = 13
    Caption = #1055#1086' '#1073#1072#1090#1100#1082#1086#1074#1110
  end
  object lbl5: TLabel
    Left = 8
    Top = 104
    Width = 92
    Height = 13
    Caption = #1044#1072#1090#1072' '#1085#1072#1088#1086#1076#1078#1077#1085#1085#1103
  end
  object lbl6: TLabel
    Left = 16
    Top = 128
    Width = 85
    Height = 13
    Caption = #1044#1086#1084#1072#1096#1085#1103' '#1072#1076#1088#1077#1089#1072
  end
  object lbl7: TLabel
    Left = 64
    Top = 152
    Width = 36
    Height = 13
    Caption = #1056#1086#1079#1088#1103#1076
  end
  object lbl8: TLabel
    Left = 32
    Top = 176
    Width = 65
    Height = 13
    Caption = #1050#1086#1076' '#1090#1088#1077#1085#1077#1088#1072
  end
  object lbl9: TLabel
    Left = 8
    Top = 200
    Width = 91
    Height = 13
    Caption = #1056#1077#1081#1090#1077#1085#1075' '#1091#1095#1072#1089#1085#1080#1082#1072
  end
  object edt1: TEdit
    Left = 112
    Top = 8
    Width = 313
    Height = 21
    Enabled = False
    TabOrder = 0
    Text = 'edt1'
  end
  object edt2: TEdit
    Left = 112
    Top = 32
    Width = 313
    Height = 21
    Enabled = False
    TabOrder = 1
    Text = 'edt2'
  end
  object edt3: TEdit
    Left = 112
    Top = 56
    Width = 313
    Height = 21
    Enabled = False
    TabOrder = 2
    Text = 'edt3'
  end
  object edt4: TEdit
    Left = 112
    Top = 80
    Width = 313
    Height = 21
    Enabled = False
    TabOrder = 3
    Text = 'edt4'
  end
  object edt5: TEdit
    Left = 112
    Top = 104
    Width = 313
    Height = 21
    Enabled = False
    TabOrder = 4
    Text = 'edt5'
  end
  object edt6: TEdit
    Left = 112
    Top = 128
    Width = 313
    Height = 21
    Enabled = False
    TabOrder = 5
    Text = 'edt6'
  end
  object edt7: TEdit
    Left = 112
    Top = 152
    Width = 313
    Height = 21
    Enabled = False
    TabOrder = 6
    Text = 'edt7'
  end
  object edt8: TEdit
    Left = 112
    Top = 176
    Width = 313
    Height = 21
    Enabled = False
    TabOrder = 7
    Text = 'edt8'
  end
  object edt9: TEdit
    Left = 112
    Top = 200
    Width = 313
    Height = 21
    Enabled = False
    TabOrder = 8
    Text = 'edt9'
  end
  object btn1: TButton
    Left = 16
    Top = 232
    Width = 43
    Height = 25
    Caption = '<<'
    Enabled = False
    TabOrder = 9
    OnClick = btn1Click
  end
  object btn2: TButton
    Left = 384
    Top = 232
    Width = 41
    Height = 25
    Caption = '>>'
    TabOrder = 10
    OnClick = btn2Click
  end
  object btn3: TButton
    Left = 80
    Top = 232
    Width = 75
    Height = 25
    Caption = #1044#1086#1073#1072#1074#1080#1090#1100
    TabOrder = 11
    OnClick = btn3Click
  end
  object btn4: TButton
    Left = 168
    Top = 232
    Width = 105
    Height = 25
    Caption = #1056#1077#1076#1072#1082#1090#1080#1088#1086#1074#1072#1090#1100
    TabOrder = 12
    OnClick = btn4Click
  end
  object btn5: TButton
    Left = 288
    Top = 232
    Width = 75
    Height = 25
    Caption = #1059#1076#1072#1083#1077#1085#1080#1077
    TabOrder = 13
    OnClick = btn5Click
  end
  object btn6: TButton
    Left = 80
    Top = 232
    Width = 75
    Height = 25
    Caption = #1057#1086#1093#1088#1072#1085#1080#1090#1100
    TabOrder = 14
    Visible = False
    OnClick = btn6Click
  end
  object btn7: TButton
    Left = 288
    Top = 232
    Width = 75
    Height = 25
    Caption = #1054#1090#1084#1077#1085#1080#1090#1100
    TabOrder = 15
    Visible = False
    OnClick = btn7Click
  end
  object ADOConnection1: TADOConnection
    Connected = True
    ConnectionString = 
      'Provider=Microsoft.Jet.OLEDB.4.0;User ID=Admin;Data Source=E:\KP' +
      '\soft\my_db.mdb;Mode=Share Deny None;Persist Security Info=False' +
      ';Jet OLEDB:System database="";Jet OLEDB:Registry Path="";Jet OLE' +
      'DB:Database Password="";Jet OLEDB:Engine Type=5;Jet OLEDB:Databa' +
      'se Locking Mode=1;Jet OLEDB:Global Partial Bulk Ops=2;Jet OLEDB:' +
      'Global Bulk Transactions=1;Jet OLEDB:New Database Password="";Je' +
      't OLEDB:Create System Database=False;Jet OLEDB:Encrypt Database=' +
      'False;Jet OLEDB:Don'#39't Copy Locale on Compact=False;Jet OLEDB:Com' +
      'pact Without Replica Repair=False;Jet OLEDB:SFP=False'
    LoginPrompt = False
    Mode = cmShareDenyNone
    Provider = 'Microsoft.Jet.OLEDB.4.0'
    Left = 192
    Top = 264
  end
  object ADOQuery1: TADOQuery
    Active = True
    Connection = ADOConnection1
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'SELECT * FROM ['#1059#1095#1072#1089#1085#1080#1082#1080']')
    Left = 216
    Top = 264
  end
  object DataSource1: TDataSource
    DataSet = ADOQuery1
    Left = 168
    Top = 264
  end
  object qry1: TADOQuery
    Connection = ADOConnection1
    Parameters = <>
    Left = 248
    Top = 264
  end
end
