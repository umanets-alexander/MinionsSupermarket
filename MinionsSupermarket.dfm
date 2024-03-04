object MinionsSupermarketForm: TMinionsSupermarketForm
  Left = 0
  Top = 0
  Caption = #1052#1080#1085#1100#1086#1085#1099' '#1074' '#1089#1091#1087#1077#1088#1084#1072#1088#1082#1077#1090#1077
  ClientHeight = 453
  ClientWidth = 782
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -17
  Font.Name = 'Segoe UI'
  Font.Style = []
  TextHeight = 23
  object Panel1: TPanel
    Left = 0
    Top = 0
    Width = 782
    Height = 89
    Align = alTop
    TabOrder = 0
    ExplicitWidth = 780
    object Label1: TLabel
      Left = 8
      Top = 50
      Width = 184
      Height = 23
      Caption = #1050#1086#1083#1080#1095#1077#1089#1090#1074#1086' '#1052#1080#1085#1100#1086#1085#1086#1074':'
    end
    object Label2: TLabel
      Left = 8
      Top = 13
      Width = 241
      Height = 23
      Caption = #1056#1072#1079#1084#1077#1088' '#1082#1086#1088#1079#1080#1085#1099' '#1087#1088#1086#1076#1091#1082#1090#1086#1074#1086#1081':'
    end
    object EditSize: TEdit
      Left = 262
      Top = 10
      Width = 123
      Height = 31
      TabOrder = 0
      Text = '100'
    end
    object EditNum: TEdit
      Left = 208
      Top = 47
      Width = 177
      Height = 31
      TabOrder = 1
      Text = '7'
    end
    object BtnStart: TButton
      Left = 393
      Top = 26
      Width = 122
      Height = 40
      Caption = #1047#1072#1082#1091#1087#1072#1077#1084#1089#1103'!'
      TabOrder = 2
      OnClick = BtnStartClick
    end
    object BtnStop: TButton
      Left = 521
      Top = 26
      Width = 122
      Height = 40
      Caption = #1055#1088#1077#1088#1074#1072#1090#1100#1089#1103
      Enabled = False
      TabOrder = 3
      OnClick = BtnStopClick
    end
    object BtnFAQ: TButton
      Left = 649
      Top = 26
      Width = 122
      Height = 40
      Caption = 'FAQ'
      TabOrder = 4
    end
  end
  object Panel2: TPanel
    Left = 0
    Top = 89
    Width = 385
    Height = 364
    Align = alLeft
    TabOrder = 1
    ExplicitHeight = 356
    object Label3: TLabel
      Left = 8
      Top = 6
      Width = 196
      Height = 23
      Caption = #1055#1086#1076#1088#1086#1073#1085#1099#1081' '#1074#1080#1076' '#1079#1072#1082#1091#1087#1086#1082':'
    end
    object MemoDetail: TMemo
      Left = 7
      Top = 35
      Width = 372
      Height = 318
      Lines.Strings = (
        #1053#1072#1095#1072#1083#1086' '#1079#1072#1093#1086#1076#1072' '#1074' '#1089#1091#1087#1077#1088#1084#1072#1088#1082#1077#1090' '#1084#1080#1085#1100#1086#1085#1086#1074':'
        '')
      ScrollBars = ssVertical
      TabOrder = 0
    end
  end
  object Panel3: TPanel
    Left = 385
    Top = 89
    Width = 397
    Height = 364
    Align = alClient
    TabOrder = 2
    ExplicitWidth = 395
    ExplicitHeight = 356
    object Label4: TLabel
      Left = 6
      Top = 67
      Width = 165
      Height = 23
      Caption = #1056#1077#1079#1091#1083#1100#1090#1072#1090' '#1084#1080#1085#1100#1086#1085#1086#1074':'
    end
    object Label5: TLabel
      Left = 6
      Top = 6
      Width = 238
      Height = 46
      Caption = #1047#1072#1087#1086#1083#1085#1077#1085#1085#1086#1089#1090#1100' '#1082#1086#1088#1079#1080#1085#1099' - 0% '#13'(0 '#1080#1079' 100 '#1096#1090')'
    end
    object MemoResult: TMemo
      Left = 6
      Top = 96
      Width = 379
      Height = 257
      Lines.Strings = (
        #1052#1080#1085#1100#1086#1085' [1], '#1074#1099#1089#1086#1082#1080#1081' '#1087#1088#1080#1086#1088#1080#1090#1077#1090' - 0 '
        #1090#1086#1074#1072#1088#1086#1074';'
        #1052#1080#1085#1100#1086#1085' [2], '#1085#1080#1078#1072#1081#1096#1080#1081' '#1087#1088#1080#1086#1088#1080#1090#1077#1090' - 0 '
        #1090#1086#1074#1072#1088#1086#1074';'
        #1052#1080#1085#1100#1086#1085' [3], '#1085#1080#1079#1082#1080#1081' '#1087#1088#1080#1086#1088#1080#1090#1077#1090' - 0 '#1090#1086#1074#1072#1088#1086#1074';'
        #1052#1080#1085#1100#1086#1085' [4], '#1085#1086#1088#1084#1072#1083#1100#1085#1099#1081' '#1087#1088#1080#1086#1088#1080#1090#1077#1090' - 0 '
        #1090#1086#1074#1072#1088#1086#1074';'
        #1052#1080#1085#1100#1086#1085' [5], '#1074#1099#1089#1086#1082#1080#1081' '#1087#1088#1080#1086#1088#1080#1090#1077#1090' - 0 '
        #1090#1086#1074#1072#1088#1086#1074';'
        #1052#1080#1085#1100#1086#1085' [6], '#1074#1099#1089#1086#1095#1072#1081#1096#1080#1081' '#1087#1088#1080#1086#1088#1080#1090#1077#1090' - 0 '
        #1090#1086#1074#1072#1088#1086#1074';'
        #1052#1080#1085#1100#1086#1085' [7], '#1082#1088#1080#1090#1080#1095#1077#1089#1082#1080#1081' '#1087#1088#1080#1086#1088#1080#1090#1077#1090' - 0 '
        #1090#1086#1074#1072#1088#1086#1074';')
      ScrollBars = ssVertical
      TabOrder = 0
    end
  end
end
