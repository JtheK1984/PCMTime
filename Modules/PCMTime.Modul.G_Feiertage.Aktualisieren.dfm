object frm_FeiertageAktualisieren: Tfrm_FeiertageAktualisieren
  Left = 629
  Top = 179
  BorderIcons = [biSystemMenu]
  BorderStyle = bsSingle
  Caption = 'PCM - Time: Feiertage aktualisieren'
  ClientHeight = 216
  ClientWidth = 328
  Color = clBtnFace
  Font.Charset = ANSI_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  Position = poScreenCenter
  TextHeight = 13
  object dxLayoutControl1: TdxLayoutControl
    Left = 0
    Top = 0
    Width = 328
    Height = 216
    Align = alClient
    TabOrder = 0
    AutoSize = True
    LayoutLookAndFeel = dm_PCM.dxLayoutSkinLookAndFeel1
    ExplicitWidth = 322
    ExplicitHeight = 199
    object dEdt_Von: TcxDateEdit
      Left = 46
      Top = 103
      Properties.SaveTime = False
      Properties.ShowTime = False
      Properties.WeekNumbers = True
      Style.HotTrack = False
      Style.TransparentBorder = False
      TabOrder = 0
      Width = 118
    end
    object dEdt_Bis: TcxDateEdit
      Left = 192
      Top = 103
      Properties.SaveTime = False
      Properties.ShowTime = False
      Properties.WeekNumbers = True
      Style.HotTrack = False
      Style.TransparentBorder = False
      TabOrder = 1
      Width = 117
    end
    object btn_Abort: TcxButton
      Left = 167
      Top = 139
      Width = 151
      Height = 25
      Caption = 'Abbrechen'
      OptionsImage.ImageIndex = 33
      OptionsImage.Images = dm_PCM.imglst_16x16
      TabOrder = 3
      OnClick = btn_AbortClick
    end
    object btn_OK: TcxButton
      Left = 10
      Top = 139
      Width = 151
      Height = 25
      Caption = 'Ok'
      OptionsImage.ImageIndex = 32
      OptionsImage.Images = dm_PCM.imglst_16x16
      TabOrder = 2
      OnClick = btn_OKClick
    end
    object dxLayoutControl1Group_Root: TdxLayoutGroup
      AlignHorz = ahClient
      AlignVert = avClient
      Hidden = True
      LayoutDirection = ldHorizontal
      ShowBorder = False
      Index = -1
    end
    object dxLayoutGroup5: TdxLayoutGroup
      Parent = dxLayoutGroup11
      AlignHorz = ahClient
      AlignVert = avTop
      CaptionOptions.Text = 'Hinweis'
      LayoutDirection = ldHorizontal
      Index = 0
    end
    object lbl_Hinweis: TdxLayoutLabeledItem
      Parent = dxLayoutGroup5
      AlignHorz = ahClient
      AlignVert = avClient
      SizeOptions.Height = 48
      SizeOptions.Width = 295
      CaptionOptions.AlignVert = tavTop
      CaptionOptions.Text = 
        'Wenn sich Feiertage in der Vergangenheit ge'#228'ndert haben, m'#252'ssen ' +
        'die Monate nach dem Aktualisieren der Feiertage neu berechnet we' +
        'rden!'
      CaptionOptions.WordWrap = True
      Index = 0
    end
    object dxLayoutGroup7: TdxLayoutGroup
      Parent = dxLayoutGroup11
      AlignHorz = ahClient
      AlignVert = avTop
      CaptionOptions.Text = 'Zeitraum f'#252'r Aktualisierung der Feiertage'
      LayoutDirection = ldHorizontal
      Index = 1
    end
    object dxLayoutItem1: TdxLayoutItem
      Parent = dxLayoutGroup7
      AlignHorz = ahClient
      AlignVert = avTop
      CaptionOptions.Text = 'von:'
      Control = dEdt_Von
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 105
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object dxLayoutItem2: TdxLayoutItem
      Parent = dxLayoutGroup7
      AlignHorz = ahClient
      AlignVert = avTop
      CaptionOptions.Text = 'bis:'
      Control = dEdt_Bis
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 105
      ControlOptions.ShowBorder = False
      Index = 1
    end
    object dxLayoutItem3: TdxLayoutItem
      Parent = dxLayoutGroup1
      AlignHorz = ahClient
      AlignVert = avTop
      CaptionOptions.Text = 'btn_OK'
      CaptionOptions.Visible = False
      Control = btn_OK
      ControlOptions.OriginalHeight = 25
      ControlOptions.OriginalWidth = 313
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object dxLayoutItem4: TdxLayoutItem
      Parent = dxLayoutGroup1
      AlignHorz = ahClient
      AlignVert = avTop
      CaptionOptions.Text = 'btn_Abort'
      CaptionOptions.Visible = False
      Control = btn_Abort
      ControlOptions.OriginalHeight = 25
      ControlOptions.OriginalWidth = 313
      ControlOptions.ShowBorder = False
      Index = 1
    end
    object dxLayoutGroup11: TdxLayoutGroup
      Parent = dxLayoutControl1Group_Root
      AlignHorz = ahClient
      AlignVert = avClient
      CaptionOptions.Text = 'New Group'
      ShowBorder = False
      Index = 0
    end
    object dxLayoutGroup1: TdxLayoutGroup
      Parent = dxLayoutGroup11
      AlignHorz = ahClient
      AlignVert = avTop
      CaptionOptions.Text = 'New Group'
      LayoutDirection = ldHorizontal
      ShowBorder = False
      Index = 2
    end
  end
end
