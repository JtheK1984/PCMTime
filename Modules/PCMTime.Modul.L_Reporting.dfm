object frm_Reports: Tfrm_Reports
  Left = 0
  Top = 0
  Caption = 'PCM - Time: Reports'
  ClientHeight = 631
  ClientWidth = 630
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -12
  Font.Name = 'Segoe UI'
  Font.Style = []
  Position = poScreenCenter
  TextHeight = 15
  object dxLayoutControl1: TdxLayoutControl
    Left = 0
    Top = 0
    Width = 630
    Height = 631
    Align = alClient
    TabOrder = 0
    LayoutLookAndFeel = dm_PCM.dxLayoutSkinLookAndFeel1
    ExplicitWidth = 618
    ExplicitHeight = 424
    object cmbbx_Bericht: TcxComboBox
      Left = 107
      Top = 393
      Style.HotTrack = False
      Style.TransparentBorder = False
      TabOrder = 1
      Width = 501
    end
    object cmbbx_Typ: TcxComboBox
      Left = 107
      Top = 363
      Properties.Items.Strings = (
        'Personaldaten'
        'Monatswerte'
        'Jahreswerte'
        'variable Zeitauswertung')
      Properties.OnChange = cmbbx_TypPropertiesChange
      Style.HotTrack = False
      Style.TransparentBorder = False
      TabOrder = 0
      Width = 501
    end
    object cmbbx_Monat: TcxComboBox
      Left = 107
      Top = 513
      AutoSize = False
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
        'Dezember')
      Style.HotTrack = False
      Style.TransparentBorder = False
      TabOrder = 5
      Height = 23
      Width = 212
    end
    object cmbbx_Jahr: TcxComboBox
      Left = 401
      Top = 513
      AutoSize = False
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
      Style.HotTrack = False
      Style.TransparentBorder = False
      TabOrder = 6
      Height = 23
      Width = 207
    end
    object dedt_Von: TcxDateEdit
      Left = 107
      Top = 543
      Properties.ButtonGlyph.SourceDPI = 96
      Properties.ButtonGlyph.SourceHeight = 16
      Properties.ButtonGlyph.SourceWidth = 16
      Properties.ButtonGlyph.Data = {
        3C3F786D6C2076657273696F6E3D22312E302220656E636F64696E673D227574
        662D38223F3E0D0A3C212D2D2047656E657261746F723A2041646F626520496C
        6C7573747261746F722032312E312E302C20535647204578706F727420506C75
        672D496E202E205356472056657273696F6E3A20362E3030204275696C642030
        2920202D2D3E0D0A3C7376672076657273696F6E3D22312E31222069643D224C
        617965725F312220786D6C6E733D22687474703A2F2F7777772E77332E6F7267
        2F323030302F7376672220786D6C6E733A786C696E6B3D22687474703A2F2F77
        77772E77332E6F72672F313939392F786C696E6B2220783D223070782220793D
        22307078220D0A092076696577426F783D223020302033322033322220737479
        6C653D22656E61626C652D6261636B67726F756E643A6E657720302030203332
        2033323B2220786D6C3A73706163653D227072657365727665223E0D0A3C7374
        796C6520747970653D22746578742F637373223E0D0A092E426C75657B66696C
        6C3A233131373744373B7D0D0A092E59656C6C6F777B66696C6C3A2346464231
        31353B7D0D0A092E426C61636B7B66696C6C3A233732373237323B7D0D0A092E
        477265656E7B66696C6C3A233033394332333B7D0D0A092E5265647B66696C6C
        3A234431314331433B7D0D0A092E7374307B6F7061636974793A302E37353B7D
        0D0A092E7374317B6F7061636974793A302E353B7D0D0A3C2F7374796C653E0D
        0A3C672069643D2243616C656E646172223E0D0A093C7061746820636C617373
        3D225265642220643D224D32392C34682D33763363302C302E352D302E352C31
        2D312C31682D34632D302E352C302D312D302E352D312D315634682D38763363
        302C302E352D302E352C312D312C31483743362E352C382C362C372E352C362C
        37563448330D0A090943322E342C342C322C342E342C322C3576356832385635
        4333302C342E342C32392E362C342C32392C347A222F3E0D0A093C6720636C61
        73733D22737431223E0D0A09093C7265637420783D22382220793D2231342220
        636C6173733D22426C61636B222077696474683D223422206865696768743D22
        34222F3E0D0A09093C7265637420783D2231342220793D2232302220636C6173
        733D22426C61636B222077696474683D223422206865696768743D2234222F3E
        0D0A09093C7265637420783D22382220793D2232302220636C6173733D22426C
        61636B222077696474683D223422206865696768743D2234222F3E0D0A09093C
        7265637420783D2232302220793D2231342220636C6173733D22426C61636B22
        2077696474683D223422206865696768743D2234222F3E0D0A09093C72656374
        20783D2231342220793D2231342220636C6173733D22426C61636B2220776964
        74683D223422206865696768743D2234222F3E0D0A09093C7265637420783D22
        32302220793D2232302220636C6173733D22426C61636B222077696474683D22
        3422206865696768743D2234222F3E0D0A093C2F673E0D0A093C706174682063
        6C6173733D22426C61636B2220643D224D32382C313076313848345631304832
        76313963302C302E362C302E342C312C312C3168323663302E362C302C312D30
        2E342C312D315631304832387A222F3E0D0A093C7265637420783D2232322220
        793D22322220636C6173733D22426C61636B222077696474683D223222206865
        696768743D2234222F3E0D0A093C7265637420783D22382220793D2232222063
        6C6173733D22426C61636B222077696474683D223222206865696768743D2234
        222F3E0D0A3C2F673E0D0A3C2F7376673E0D0A}
      Style.HotTrack = False
      Style.TransparentBorder = False
      TabOrder = 7
      Width = 212
    end
    object dedt_Bis: TcxDateEdit
      Left = 401
      Top = 543
      Properties.ButtonGlyph.SourceDPI = 96
      Properties.ButtonGlyph.SourceHeight = 16
      Properties.ButtonGlyph.SourceWidth = 16
      Properties.ButtonGlyph.Data = {
        3C3F786D6C2076657273696F6E3D22312E302220656E636F64696E673D227574
        662D38223F3E0D0A3C212D2D2047656E657261746F723A2041646F626520496C
        6C7573747261746F722032312E312E302C20535647204578706F727420506C75
        672D496E202E205356472056657273696F6E3A20362E3030204275696C642030
        2920202D2D3E0D0A3C7376672076657273696F6E3D22312E31222069643D224C
        617965725F312220786D6C6E733D22687474703A2F2F7777772E77332E6F7267
        2F323030302F7376672220786D6C6E733A786C696E6B3D22687474703A2F2F77
        77772E77332E6F72672F313939392F786C696E6B2220783D223070782220793D
        22307078220D0A092076696577426F783D223020302033322033322220737479
        6C653D22656E61626C652D6261636B67726F756E643A6E657720302030203332
        2033323B2220786D6C3A73706163653D227072657365727665223E0D0A3C7374
        796C6520747970653D22746578742F637373223E0D0A092E426C75657B66696C
        6C3A233131373744373B7D0D0A092E59656C6C6F777B66696C6C3A2346464231
        31353B7D0D0A092E426C61636B7B66696C6C3A233732373237323B7D0D0A092E
        477265656E7B66696C6C3A233033394332333B7D0D0A092E5265647B66696C6C
        3A234431314331433B7D0D0A092E7374307B6F7061636974793A302E37353B7D
        0D0A092E7374317B6F7061636974793A302E353B7D0D0A3C2F7374796C653E0D
        0A3C672069643D2243616C656E646172223E0D0A093C7061746820636C617373
        3D225265642220643D224D32392C34682D33763363302C302E352D302E352C31
        2D312C31682D34632D302E352C302D312D302E352D312D315634682D38763363
        302C302E352D302E352C312D312C31483743362E352C382C362C372E352C362C
        37563448330D0A090943322E342C342C322C342E342C322C3576356832385635
        4333302C342E342C32392E362C342C32392C347A222F3E0D0A093C6720636C61
        73733D22737431223E0D0A09093C7265637420783D22382220793D2231342220
        636C6173733D22426C61636B222077696474683D223422206865696768743D22
        34222F3E0D0A09093C7265637420783D2231342220793D2232302220636C6173
        733D22426C61636B222077696474683D223422206865696768743D2234222F3E
        0D0A09093C7265637420783D22382220793D2232302220636C6173733D22426C
        61636B222077696474683D223422206865696768743D2234222F3E0D0A09093C
        7265637420783D2232302220793D2231342220636C6173733D22426C61636B22
        2077696474683D223422206865696768743D2234222F3E0D0A09093C72656374
        20783D2231342220793D2231342220636C6173733D22426C61636B2220776964
        74683D223422206865696768743D2234222F3E0D0A09093C7265637420783D22
        32302220793D2232302220636C6173733D22426C61636B222077696474683D22
        3422206865696768743D2234222F3E0D0A093C2F673E0D0A093C706174682063
        6C6173733D22426C61636B2220643D224D32382C313076313848345631304832
        76313963302C302E362C302E342C312C312C3168323663302E362C302C312D30
        2E342C312D315631304832387A222F3E0D0A093C7265637420783D2232322220
        793D22322220636C6173733D22426C61636B222077696474683D223222206865
        696768743D2234222F3E0D0A093C7265637420783D22382220793D2232222063
        6C6173733D22426C61636B222077696474683D223222206865696768743D2234
        222F3E0D0A3C2F673E0D0A3C2F7376673E0D0A}
      Style.HotTrack = False
      Style.TransparentBorder = False
      TabOrder = 8
      Width = 207
    end
    object cmbbx_Firma: TcxCheckComboBox
      Left = 107
      Top = 423
      Properties.EmptySelectionText = '<Alle Firmen>'
      Properties.Items = <>
      Properties.OnChange = cmbbx_FirmaPropertiesChange
      Style.HotTrack = False
      Style.TransparentBorder = False
      TabOrder = 2
      Width = 501
    end
    object cmbbx_Abteilung: TcxCheckComboBox
      Left = 107
      Top = 453
      Properties.EmptySelectionText = '<Alle Abteilungen>'
      Properties.Items = <>
      Properties.OnChange = cmbbx_AbteilungPropertiesChange
      Style.HotTrack = False
      Style.TransparentBorder = False
      TabOrder = 3
      Width = 501
    end
    object cmbbx_Personal: TcxCheckComboBox
      Left = 107
      Top = 483
      Properties.EmptySelectionText = '<Alle Mitarbeiter>'
      Properties.Items = <>
      Properties.OnChange = cmbbx_PersonalPropertiesChange
      Style.HotTrack = False
      Style.TransparentBorder = False
      TabOrder = 4
      Width = 501
    end
    object cxButton1: TcxButton
      Left = 107
      Top = 574
      Width = 501
      Height = 25
      Caption = 'Report erstellen'
      OptionsImage.ImageIndex = 44
      OptionsImage.Images = dm_PCM.imglst_16x16
      TabOrder = 9
      OnClick = cxButton1Click
    end
    object dxLayoutControl1Group_Root: TdxLayoutGroup
      AlignHorz = ahClient
      AlignVert = avClient
      Hidden = True
      ItemIndex = 1
      ShowBorder = False
      Index = -1
    end
    object dxLayoutGroup1: TdxLayoutGroup
      Parent = dxLayoutControl1Group_Root
      AlignHorz = ahClient
      AlignVert = avClient
      CaptionOptions.Text = 'Auswertungen'
      CaptionOptions.Visible = False
      Padding.AssignedValues = [lpavLeft, lpavRight]
      Index = 1
    end
    object loBericht: TdxLayoutItem
      Parent = dxLayoutGroup1
      Visible = False
      Padding.AssignedValues = [lpavLeft, lpavRight]
      CaptionOptions.Text = 'Bericht:'
      CaptionOptions.Width = 70
      Control = cmbbx_Bericht
      ControlOptions.OriginalHeight = 23
      ControlOptions.OriginalWidth = 121
      ControlOptions.ShowBorder = False
      Index = 1
    end
    object dxLayoutImageItem1: TdxLayoutImageItem
      Parent = dxLayoutGroup3
      CaptionOptions.Text = 'Image'
      CaptionOptions.Visible = False
      Image.SourceDPI = 96
      Image.SourceHeight = 300
      Image.SourceWidth = 300
      Image.Data = {
        3C3F786D6C2076657273696F6E3D22312E302220656E636F64696E673D225554
        462D38223F3E0D0A3C7376672076657273696F6E3D22312E31222069643D224C
        617965725F312220786D6C6E733D22687474703A2F2F7777772E77332E6F7267
        2F323030302F7376672220786D6C6E733A786C696E6B3D22687474703A2F2F77
        77772E77332E6F72672F313939392F786C696E6B2220783D223070782220793D
        22307078222076696577426F783D2230203020333220333222207374796C653D
        22656E61626C652D6261636B67726F756E643A6E657720302030203332203332
        3B2220786D6C3A73706163653D227072657365727665223E262331333B262331
        303B3C7374796C6520747970653D22746578742F6373732220786D6C3A737061
        63653D227072657365727665223E2E426C75657B66696C6C3A23313137374437
        3B7D262331333B262331303B2623393B2E59656C6C6F777B66696C6C3A234646
        423131353B7D262331333B262331303B2623393B2E5265647B66696C6C3A2344
        31314331433B7D262331333B262331303B2623393B2E477265656E7B66696C6C
        3A233033394332333B7D262331333B262331303B2623393B2E426C61636B7B66
        696C6C3A233732373237323B7D262331333B262331303B2623393B2E57686974
        657B66696C6C3A234646464646463B7D262331333B262331303B2623393B2E73
        74307B6F7061636974793A302E353B7D262331333B262331303B2623393B2E73
        74317B6F7061636974793A302E37353B7D262331333B262331303B2623393B2E
        7374327B646973706C61793A6E6F6E653B7D262331333B262331303B2623393B
        2E7374337B646973706C61793A696E6C696E653B66696C6C3A23464642313135
        3B7D262331333B262331303B2623393B2E7374347B646973706C61793A696E6C
        696E653B7D262331333B262331303B2623393B2E7374357B646973706C61793A
        696E6C696E653B6F7061636974793A302E37353B7D262331333B262331303B26
        23393B2E7374367B646973706C61793A696E6C696E653B6F7061636974793A30
        2E353B7D262331333B262331303B2623393B2E7374377B646973706C61793A69
        6E6C696E653B66696C6C3A233033394332333B7D262331333B262331303B2623
        393B2E7374387B646973706C61793A696E6C696E653B66696C6C3A2344313143
        31433B7D262331333B262331303B2623393B2E7374397B646973706C61793A69
        6E6C696E653B66696C6C3A233131373744373B7D262331333B262331303B2623
        393B2E737431307B646973706C61793A696E6C696E653B66696C6C3A23464646
        4646463B7D3C2F7374796C653E0D0A3C672069643D2244617368626F61726422
        3E0D0A09093C7061746820636C6173733D22426C75652220643D224D32362E33
        2C352E314C31362E342C31356C392E392C392E3963322E332D322E362C332E37
        2D362E312C332E372D392E395332382E362C372E382C32362E332C352E317A22
        2F3E0D0A09093C7061746820636C6173733D225265642220643D224D31342C31
        36762D31762D302E344C32342E392C332E374332322E322C312E342C31382E38
        2C302C31352C3043362E372C302C302C362E372C302C313563302C372E392C36
        2E322C31342E342C31342C31342E395631367A222F3E0D0A09093C7061746820
        636C6173733D2259656C6C6F772220643D224D31362C32392E3963332E342D30
        2E322C362E352D312E362C382E392D332E374C31362C31372E345632392E397A
        222F3E0D0A093C2F673E0D0A3C2F7376673E0D0A}
      Index = 0
    end
    object loFIrma: TdxLayoutItem
      Parent = dxLayoutGroup1
      Visible = False
      Padding.AssignedValues = [lpavRight]
      CaptionOptions.Text = 'Firma:'
      CaptionOptions.Width = 70
      Control = cmbbx_Firma
      ControlOptions.OriginalHeight = 23
      ControlOptions.OriginalWidth = 334
      ControlOptions.ShowBorder = False
      Index = 2
    end
    object loAbteilung: TdxLayoutItem
      Parent = dxLayoutGroup1
      Visible = False
      CaptionOptions.Text = 'Abteilung:'
      CaptionOptions.Width = 70
      Control = cmbbx_Abteilung
      ControlOptions.OriginalHeight = 23
      ControlOptions.OriginalWidth = 334
      ControlOptions.ShowBorder = False
      Index = 3
    end
    object dxLayoutItem7: TdxLayoutItem
      Parent = dxLayoutGroup1
      Padding.AssignedValues = [lpavLeft, lpavRight]
      CaptionOptions.Text = 'Typ:'
      CaptionOptions.Width = 70
      Control = cmbbx_Typ
      ControlOptions.OriginalHeight = 23
      ControlOptions.OriginalWidth = 527
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object loMitarbeiter: TdxLayoutItem
      Parent = dxLayoutGroup1
      Visible = False
      CaptionOptions.Text = 'Mitarbeiter:'
      CaptionOptions.Width = 70
      Control = cmbbx_Personal
      ControlOptions.OriginalHeight = 23
      ControlOptions.OriginalWidth = 521
      ControlOptions.ShowBorder = False
      Index = 4
    end
    object lgMonatJahr: TdxLayoutGroup
      Parent = dxLayoutGroup1
      AlignHorz = ahClient
      AlignVert = avTop
      CaptionOptions.Text = 'New Group'
      Visible = False
      ItemIndex = 1
      LayoutDirection = ldHorizontal
      ShowBorder = False
      Index = 5
    end
    object lgVonBis: TdxLayoutGroup
      Parent = dxLayoutGroup1
      AlignHorz = ahClient
      AlignVert = avTop
      CaptionOptions.Text = 'New Group'
      Visible = False
      LayoutDirection = ldHorizontal
      ShowBorder = False
      Index = 6
    end
    object loMonat: TdxLayoutItem
      Parent = lgMonatJahr
      AlignHorz = ahClient
      AlignVert = avClient
      CaptionOptions.Text = 'Monat:'
      CaptionOptions.Width = 70
      Control = cmbbx_Monat
      ControlOptions.OriginalHeight = 23
      ControlOptions.OriginalWidth = 121
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object loJahr: TdxLayoutItem
      Parent = lgMonatJahr
      AlignHorz = ahClient
      AlignVert = avClient
      CaptionOptions.Text = 'Jahr:'
      CaptionOptions.Width = 70
      Control = cmbbx_Jahr
      ControlOptions.OriginalHeight = 23
      ControlOptions.OriginalWidth = 121
      ControlOptions.ShowBorder = False
      Index = 1
    end
    object dxLayoutItem8: TdxLayoutItem
      Parent = lgVonBis
      AlignHorz = ahClient
      CaptionOptions.Text = 'Datum von:'
      CaptionOptions.Width = 70
      Control = dedt_Von
      ControlOptions.OriginalHeight = 24
      ControlOptions.OriginalWidth = 121
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object dxLayoutItem9: TdxLayoutItem
      Parent = lgVonBis
      AlignHorz = ahClient
      CaptionOptions.Text = 'Datum bis:'
      CaptionOptions.Width = 70
      Control = dedt_Bis
      ControlOptions.OriginalHeight = 24
      ControlOptions.OriginalWidth = 121
      ControlOptions.ShowBorder = False
      Index = 1
    end
    object loBtns: TdxLayoutGroup
      Parent = dxLayoutGroup1
      AlignHorz = ahClient
      AlignVert = avTop
      CaptionOptions.Text = 'New Group'
      Visible = False
      LayoutDirection = ldHorizontal
      ShowBorder = False
      Index = 7
    end
    object dxLayoutItem1: TdxLayoutItem
      Parent = loBtns
      AlignHorz = ahClient
      AlignVert = avTop
      CaptionOptions.Text = ' '
      CaptionOptions.Width = 80
      Control = cxButton1
      ControlOptions.OriginalHeight = 25
      ControlOptions.OriginalWidth = 75
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object dxLayoutGroup3: TdxLayoutGroup
      Parent = dxLayoutControl1Group_Root
      CaptionOptions.Text = 'New Group'
      CaptionOptions.Visible = False
      Enabled = False
      Index = 0
    end
  end
end
