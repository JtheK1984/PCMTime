object ImportForm: TImportForm
  Left = 0
  Top = 0
  Caption = 'Arbeitszeiten aus PDF importieren'
  ClientHeight = 591
  ClientWidth = 1184
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -13
  Font.Name = 'Segoe UI'
  Font.Style = []
  Position = poOwnerFormCenter
  TextHeight = 17
  object dxLayoutControl1: TdxLayoutControl
    Left = 0
    Top = 0
    Width = 1184
    Height = 591
    Align = alClient
    TabOrder = 0
    ExplicitLeft = 448
    ExplicitTop = 192
    ExplicitWidth = 625
    ExplicitHeight = 250
    object lstTage: TcxCheckListBox
      Left = 13
      Top = 121
      Width = 1158
      Height = 424
      Items = <>
      ParentFont = False
      Style.Font.Charset = DEFAULT_CHARSET
      Style.Font.Color = clWindowText
      Style.Font.Height = -13
      Style.Font.Name = 'Consolas'
      Style.Font.Style = []
      Style.HotTrack = False
      Style.TransparentBorder = False
      Style.IsFontAssigned = True
      TabOrder = 1
    end
    object cboOrt: TcxComboBox
      Left = 94
      Top = 39
      Properties.Items.Strings = (
        'Buero'
        'HomeOffice'
        '')
      Properties.OnChange = FillRows
      Style.HotTrack = False
      Style.TransparentBorder = False
      TabOrder = 0
      Width = 180
    end
    object btnImportieren: TcxButton
      Left = 953
      Top = 553
      Width = 105
      Height = 25
      Caption = 'Importieren'
      OptionsImage.Glyph.SourceDPI = 96
      OptionsImage.Glyph.SourceHeight = 16
      OptionsImage.Glyph.SourceWidth = 16
      OptionsImage.Glyph.Data = {
        3C3F786D6C2076657273696F6E3D22312E302220656E636F64696E673D225554
        462D38223F3E0D0A3C7376672076657273696F6E3D22312E31222069643D2241
        64645F446174615F536F757263652220786D6C6E733D22687474703A2F2F7777
        772E77332E6F72672F323030302F7376672220786D6C6E733A786C696E6B3D22
        687474703A2F2F7777772E77332E6F72672F313939392F786C696E6B2220783D
        223070782220793D22307078222076696577426F783D22302030203332203332
        22207374796C653D22656E61626C652D6261636B67726F756E643A6E65772030
        20302033322033323B2220786D6C3A73706163653D227072657365727665223E
        262331333B262331303B3C7374796C6520747970653D22746578742F63737322
        20786D6C3A73706163653D227072657365727665223E2E477265656E7B66696C
        6C3A233033394332333B7D262331333B262331303B2623393B2E59656C6C6F77
        7B66696C6C3A234646423131353B7D3C2F7374796C653E0D0A3C706174682063
        6C6173733D2259656C6C6F772220643D224D342C3130563663302D322E322C34
        2E352D342C31302D347331302C312E382C31302C34763463302C322E322D342E
        352C342D31302C3453342C31322E322C342C31307A204D31342C323063322E33
        2C302C342E332D302E332C362D302E385631366834762D3420202623393B6330
        2C322E322D342E352C342D31302C3453342C31342E322C342C3132763443342C
        31382E322C382E352C32302C31342C32307A204D31362C32312E394331352E34
        2C32322C31342E372C32322C31342C3232632D352E352C302D31302D312E382D
        31302D34763463302C322E322C342E352C342C31302C3420202623393B63302E
        372C302C312E342C302C322D302E315632312E397A222F3E0D0A3C706F6C7967
        6F6E20636C6173733D22477265656E2220706F696E74733D2233302C32322032
        362C32322032362C31382032322C31382032322C32322031382C32322031382C
        32362032322C32362032322C33302032362C33302032362C32362033302C3236
        20222F3E0D0A3C2F7376673E0D0A}
      TabOrder = 2
      OnClick = SaveRows
    end
    object btnAbbrechen: TcxButton
      Left = 1066
      Top = 553
      Width = 105
      Height = 25
      Caption = 'Abbrechen'
      ModalResult = 2
      OptionsImage.Glyph.SourceDPI = 96
      OptionsImage.Glyph.SourceHeight = 16
      OptionsImage.Glyph.SourceWidth = 16
      OptionsImage.Glyph.Data = {
        3C3F786D6C2076657273696F6E3D22312E302220656E636F64696E673D225554
        462D38223F3E0D0A3C7376672076657273696F6E3D22312E31222069643D224C
        617965725F312220786D6C6E733D22687474703A2F2F7777772E77332E6F7267
        2F323030302F7376672220786D6C6E733A786C696E6B3D22687474703A2F2F77
        77772E77332E6F72672F313939392F786C696E6B2220783D223070782220793D
        22307078222076696577426F783D2230203020333220333222207374796C653D
        22656E61626C652D6261636B67726F756E643A6E657720302030203332203332
        3B2220786D6C3A73706163653D227072657365727665223E262331333B262331
        303B3C7374796C6520747970653D22746578742F637373223E2E5265647B6669
        6C6C3A234431314331433B7D3C2F7374796C653E0D0A3C7061746820636C6173
        733D225265642220643D224D31382E382C31366C382D3863302E342D302E342C
        302E342D312C302D312E346C2D312E342D312E34632D302E342D302E342D312D
        302E342D312E342C306C2D382C386C2D382D38632D302E342D302E342D312D30
        2E342D312E342C304C352E322C362E3620202623393B43342E382C372C342E38
        2C372E362C352E322C386C382C386C2D382C38632D302E342C302E342D302E34
        2C312C302C312E346C312E342C312E3463302E342C302E342C312C302E342C31
        2E342C306C382D386C382C3863302E342C302E342C312C302E342C312E342C30
        6C312E342D312E3420202623393B63302E342D302E342C302E342D312C302D31
        2E344C31382E382C31367A222F3E0D0A3C2F7376673E0D0A}
      TabOrder = 3
    end
    object dxLayoutControl1Group_Root: TdxLayoutGroup
      AlignHorz = ahClient
      AlignVert = avClient
      Hidden = True
      ShowBorder = False
      Index = -1
    end
    object dxLayoutGroup1: TdxLayoutGroup
      Parent = dxLayoutControl1Group_Root
      AlignHorz = ahClient
      AlignVert = avClient
      CaptionOptions.Text = 'New Group'
      ItemIndex = 5
      ShowBorder = False
      Index = 0
    end
    object dxLayoutItem1: TdxLayoutItem
      Parent = dxLayoutGroup2
      AlignHorz = ahLeft
      AlignVert = avTop
      CaptionOptions.Text = 'Buchungsort:'
      Control = cboOrt
      ControlOptions.OriginalHeight = 25
      ControlOptions.OriginalWidth = 180
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object lblQuelle: TdxLayoutLabeledItem
      Parent = dxLayoutGroup1
      AlignHorz = ahClient
      AlignVert = avTop
      CaptionOptions.Text = 'Mitarbeiter und PDF-Quelle'
      Index = 0
    end
    object dxLayoutItem2: TdxLayoutItem
      Parent = dxLayoutGroup1
      AlignHorz = ahClient
      AlignVert = avClient
      CaptionOptions.Text = 'New Item'
      CaptionOptions.Visible = False
      Control = lstTage
      ControlOptions.OriginalHeight = 334
      ControlOptions.OriginalWidth = 1178
      ControlOptions.ShowBorder = False
      Index = 4
    end
    object chkErsetzen: TdxLayoutCheckBoxItem
      Parent = dxLayoutGroup2
      AlignHorz = ahClient
      AlignVert = avTop
      CaptionOptions.Text = 'Vorhandene Zeiten in den ausgewaehlten Tagen ersetzen'
      OnClick = FillRows
      Index = 1
    end
    object dxLayoutGroup2: TdxLayoutGroup
      Parent = dxLayoutGroup1
      CaptionOptions.Text = 'New Group'
      LayoutDirection = ldHorizontal
      ShowBorder = False
      Index = 1
    end
    object dxLayoutItem3: TdxLayoutItem
      Parent = dxLayoutGroup3
      AlignHorz = ahRight
      AlignVert = avClient
      CaptionOptions.Text = 'New Item'
      CaptionOptions.Visible = False
      Control = btnImportieren
      ControlOptions.OriginalHeight = 25
      ControlOptions.OriginalWidth = 105
      ControlOptions.ShowBorder = False
      Index = 1
    end
    object dxLayoutLabeledItem1: TdxLayoutLabeledItem
      Parent = dxLayoutGroup1
      AlignHorz = ahClient
      AlignVert = avTop
      CaptionOptions.Text = 
        '[SIZE=9][FONT=Consolas]   Datum        Beginn  Ende    Pause 1  ' +
        '     Pause 2        Netto   Status[/FONT][/SIZE]'
      Index = 3
    end
    object dxLayoutLabeledItem2: TdxLayoutLabeledItem
      Parent = dxLayoutGroup1
      AlignHorz = ahClient
      AlignVert = avTop
      CaptionOptions.Text = 
        'Erster Beginn / letztes Ende; Luecken = Pausen. Heute wird ignor' +
        'iert. Uebertraege und Monatssalden werden nicht aus der PDF uebe' +
        'rnommen.'
      Index = 2
    end
    object dxLayoutGroup3: TdxLayoutGroup
      Parent = dxLayoutGroup1
      AlignHorz = ahClient
      AlignVert = avBottom
      CaptionOptions.Text = 'New Group'
      ItemIndex = 2
      LayoutDirection = ldHorizontal
      ShowBorder = False
      Index = 5
    end
    object lblStatus: TdxLayoutLabeledItem
      Parent = dxLayoutGroup3
      AlignHorz = ahClient
      AlignVert = avClient
      CaptionOptions.Text = 'Bitte Buchungsort und Tagesauswahl pruefen.'
      Index = 0
    end
    object dxLayoutItem4: TdxLayoutItem
      Parent = dxLayoutGroup3
      AlignHorz = ahRight
      AlignVert = avClient
      CaptionOptions.Text = 'New Item'
      CaptionOptions.Visible = False
      Control = btnAbbrechen
      ControlOptions.OriginalHeight = 25
      ControlOptions.OriginalWidth = 105
      ControlOptions.ShowBorder = False
      Index = 2
    end
  end
end
