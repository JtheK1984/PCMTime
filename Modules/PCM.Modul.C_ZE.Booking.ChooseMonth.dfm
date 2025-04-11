object frm_ChooseDate: Tfrm_ChooseDate
  Left = 0
  Top = 0
  Caption = 'Bitte Monat und Jahr ausw'#228'hlen'
  ClientHeight = 97
  ClientWidth = 434
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -12
  Font.Name = 'Segoe UI'
  Font.Style = []
  Position = poScreenCenter
  OnCreate = FormCreate
  TextHeight = 15
  object lactrl_Datechoose: TdxLayoutControl
    Left = 0
    Top = 0
    Width = 434
    Height = 97
    Align = alClient
    TabOrder = 0
    AutoSize = True
    LayoutLookAndFeel = dm_PCM.dxLayoutSkinLookAndFeel1
    object btn_Cancel: TcxButton
      Left = 221
      Top = 59
      Width = 201
      Height = 25
      Caption = 'Abbrechen'
      OptionsImage.ImageIndex = 57
      OptionsImage.Images = dm_PCM.imglst_16x16
      TabOrder = 3
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      OnClick = btn_CancelClick
    end
    object btn_Ok: TcxButton
      Left = 12
      Top = 59
      Width = 202
      Height = 25
      Caption = 'Ok'
      OptionsImage.ImageIndex = 56
      OptionsImage.Images = dm_PCM.imglst_16x16
      TabOrder = 2
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      OnClick = btn_OkClick
    end
    object cbx_Month: TcxComboBox
      Left = 12
      Top = 33
      ParentFont = False
      Properties.Items.Strings = (
        'Januar'
        'Februar'
        'M'#228'rz'
        'April'
        'Mai'
        'Juni'
        'Juli'
        'August'
        'September'
        'Oktober'
        'November'
        'Dezember'
        'ganzes Jahr')
      Style.Font.Charset = DEFAULT_CHARSET
      Style.Font.Color = clWindowText
      Style.Font.Height = -11
      Style.Font.Name = 'Tahoma'
      Style.Font.Style = []
      Style.HotTrack = False
      Style.TransparentBorder = False
      Style.IsFontAssigned = True
      TabOrder = 0
      Width = 202
    end
    object cbx_Year: TcxComboBox
      Left = 221
      Top = 33
      ParentFont = False
      Properties.Items.Strings = (
        '2020'
        '2021'
        '2022'
        '2023'
        '2024'
        '2025'
        '2026'
        '2027'
        '2028'
        '2029'
        '2030'
        '2031'
        '2032'
        '2033'
        '2034'
        '2035'
        '2036'
        '2037'
        '2038'
        '2039'
        '2040'
        '2041'
        '2042'
        '2043'
        '2044'
        '2045'
        '2046'
        '2047'
        '2048'
        '2049'
        '2050'
        '2051'
        '2052'
        '2053'
        '2054'
        '2055'
        '2056'
        '2057'
        '2058'
        '2059'
        '2060'
        '2061'
        '2062'
        '2063'
        '2064'
        '2065'
        '2066'
        '2067'
        '2068'
        '2069'
        '2070'
        '2071'
        '2072'
        '2073'
        '2074'
        '2075'
        '2076'
        '2077'
        '2078'
        '2079'
        '2080'
        '2081'
        '2082'
        '2083'
        '2084'
        '2085'
        '2086'
        '2087'
        '2088'
        '2089'
        '2090'
        '2091'
        '2092'
        '2093'
        '2094'
        '2095'
        '2096'
        '2097'
        '2098'
        '2099')
      Style.Font.Charset = DEFAULT_CHARSET
      Style.Font.Color = clWindowText
      Style.Font.Height = -11
      Style.Font.Name = 'Tahoma'
      Style.Font.Style = []
      Style.HotTrack = False
      Style.TransparentBorder = False
      Style.IsFontAssigned = True
      TabOrder = 1
      Width = 201
    end
    object lactrl_DatechooseGroup_Root: TdxLayoutGroup
      AlignHorz = ahClient
      AlignVert = avClient
      Hidden = True
      LayoutDirection = ldHorizontal
      ShowBorder = False
      Index = -1
    end
    object dxLayoutItem1: TdxLayoutItem
      Parent = dxLayoutGroup6
      AlignHorz = ahClient
      AlignVert = avTop
      CaptionOptions.Text = 'Monat:'
      CaptionOptions.Layout = clTop
      Control = cbx_Month
      ControlOptions.OriginalHeight = 19
      ControlOptions.OriginalWidth = 205
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object dxLayoutItem2: TdxLayoutItem
      Parent = dxLayoutGroup6
      AlignHorz = ahClient
      AlignVert = avTop
      CaptionOptions.Text = 'Jahr:'
      CaptionOptions.Layout = clTop
      Control = cbx_Year
      ControlOptions.OriginalHeight = 19
      ControlOptions.OriginalWidth = 205
      ControlOptions.ShowBorder = False
      Index = 1
    end
    object dxLayoutItem3: TdxLayoutItem
      Parent = dxLayoutGroup7
      AlignHorz = ahClient
      AlignVert = avTop
      CaptionOptions.Text = 'btn_Ok'
      CaptionOptions.Visible = False
      Control = btn_Ok
      ControlOptions.OriginalHeight = 25
      ControlOptions.OriginalWidth = 417
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object dxLayoutItem4: TdxLayoutItem
      Parent = dxLayoutGroup7
      AlignHorz = ahClient
      AlignVert = avTop
      CaptionOptions.Text = 'btn_Cancel'
      CaptionOptions.Visible = False
      Control = btn_Cancel
      ControlOptions.OriginalHeight = 25
      ControlOptions.OriginalWidth = 417
      ControlOptions.ShowBorder = False
      Index = 1
    end
    object dxLayoutGroup5: TdxLayoutGroup
      Parent = lactrl_DatechooseGroup_Root
      AlignHorz = ahClient
      AlignVert = avClient
      CaptionOptions.Text = 'New Group'
      ShowBorder = False
      Index = 0
    end
    object dxLayoutGroup6: TdxLayoutGroup
      Parent = dxLayoutGroup5
      AlignHorz = ahClient
      AlignVert = avTop
      CaptionOptions.Text = 'New Group'
      ItemIndex = 1
      LayoutDirection = ldHorizontal
      ShowBorder = False
      Index = 0
    end
    object dxLayoutGroup7: TdxLayoutGroup
      Parent = dxLayoutGroup5
      AlignHorz = ahClient
      AlignVert = avTop
      CaptionOptions.Text = 'New Group'
      ItemIndex = 1
      LayoutDirection = ldHorizontal
      ShowBorder = False
      Index = 1
    end
  end
end
