object Form3: TForm3
  Left = 608
  Top = 238
  Width = 521
  Height = 343
  Caption = #1059#1095#1072#1089#1085#1080#1082#1080' '#1090#1091#1088#1085#1110#1088#1072
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
    Left = 8
    Top = 8
    Width = 70
    Height = 13
    Caption = #1050#1086#1076' '#1091#1095#1072#1089#1085#1080#1082#1072
  end
  object lbl2: TLabel
    Left = 32
    Top = 40
    Width = 47
    Height = 13
    Caption = #1055#1088'i'#1079#1074#1080#1097#1077
  end
  object lbl3: TLabel
    Left = 56
    Top = 72
    Width = 18
    Height = 13
    Caption = #1030#1084#8217#1103
  end
  object lbl4: TLabel
    Left = 16
    Top = 104
    Width = 60
    Height = 13
    Caption = #1055#1086' '#1073#1072#1090#1100#1082#1086#1074#1110
  end
  object lbl5: TLabel
    Left = 232
    Top = 8
    Width = 92
    Height = 13
    Caption = #1044#1072#1090#1072' '#1085#1072#1088#1086#1076#1078#1077#1085#1085#1103
  end
  object lbl6: TLabel
    Left = 240
    Top = 32
    Width = 85
    Height = 13
    Caption = #1044#1086#1084#1072#1096#1085#1103' '#1072#1076#1088#1077#1089#1072
  end
  object lbl7: TLabel
    Left = 288
    Top = 56
    Width = 36
    Height = 13
    Caption = #1056#1086#1079#1088#1103#1076
  end
  object lbl8: TLabel
    Left = 264
    Top = 80
    Width = 65
    Height = 13
    Caption = #1050#1086#1076' '#1090#1088#1077#1085#1077#1088#1072
  end
  object lbl9: TLabel
    Left = 240
    Top = 104
    Width = 91
    Height = 13
    Caption = #1056#1077#1081#1090#1077#1085#1075' '#1091#1095#1072#1089#1085#1080#1082#1072
  end
  object DBGrid1: TDBGrid
    Left = 96
    Top = 152
    Width = 321
    Height = 120
    DataSource = DataSource1
    TabOrder = 0
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
  end
  object edt1: TEdit
    Left = 88
    Top = 8
    Width = 121
    Height = 21
    TabOrder = 1
    Text = 'edt1'
  end
  object edt2: TEdit
    Left = 88
    Top = 40
    Width = 121
    Height = 21
    TabOrder = 2
    Text = 'edt2'
  end
  object btn1: TButton
    Left = 96
    Top = 272
    Width = 75
    Height = 25
    Caption = '<<'
    Enabled = False
    TabOrder = 3
    OnClick = btn1Click
  end
  object btn2: TButton
    Left = 344
    Top = 272
    Width = 75
    Height = 25
    Caption = '>>'
    Enabled = False
    TabOrder = 4
    OnClick = btn2Click
  end
  object edt3: TEdit
    Left = 88
    Top = 72
    Width = 121
    Height = 21
    TabOrder = 5
    Text = 'edt3'
  end
  object edt4: TEdit
    Left = 88
    Top = 104
    Width = 121
    Height = 21
    TabOrder = 6
    Text = 'edt4'
  end
  object edt5: TEdit
    Left = 336
    Top = 8
    Width = 121
    Height = 21
    TabOrder = 7
    Text = 'edt5'
  end
  object edt6: TEdit
    Left = 336
    Top = 32
    Width = 121
    Height = 21
    TabOrder = 8
    Text = 'edt6'
  end
  object edt7: TEdit
    Left = 336
    Top = 56
    Width = 121
    Height = 21
    TabOrder = 9
    Text = 'edt7'
  end
  object edt8: TEdit
    Left = 336
    Top = 80
    Width = 121
    Height = 21
    TabOrder = 10
    Text = 'edt8'
  end
  object edt9: TEdit
    Left = 336
    Top = 104
    Width = 121
    Height = 21
    TabOrder = 11
    Text = 'edt9'
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
    Left = 224
    Top = 272
  end
  object ADOQuery1: TADOQuery
    Connection = ADOConnection1
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'SELECT * FROM ['#1058#1088#1077#1085#1077#1088#1080' '#1090#1072' '#1091#1095#1085#1110']')
    Left = 256
    Top = 272
  end
  object DataSource1: TDataSource
    DataSet = ADOQuery1
    Left = 192
    Top = 272
  end
  object qry1: TADOQuery
    Connection = ADOConnection1
    DataSource = DataSource1
    Parameters = <>
    Left = 288
    Top = 272
  end
end
