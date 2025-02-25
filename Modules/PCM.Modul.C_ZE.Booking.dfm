object frm_Booking: Tfrm_Booking
  Left = 0
  Top = 0
  BorderIcons = []
  Caption = 'PCM - Manager: Buchungs'#252'bersicht'
  ClientHeight = 385
  ClientWidth = 913
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -12
  Font.Name = 'Segoe UI'
  Font.Style = []
  Position = poScreenCenter
  OnShow = FormShow
  TextHeight = 15
  object dxLayoutControl1: TdxLayoutControl
    AlignWithMargins = True
    Left = 0
    Top = 63
    Width = 913
    Height = 322
    Margins.Left = 0
    Margins.Top = 0
    Margins.Right = 0
    Margins.Bottom = 0
    Align = alClient
    Font.Charset = ANSI_CHARSET
    Font.Color = clWindowText
    Font.Height = -12
    Font.Name = 'Segoe UI'
    Font.Style = []
    ParentFont = False
    TabOrder = 0
    AutoSize = True
    LayoutLookAndFeel = dm_PCM.dxLayoutSkinLookAndFeel1
    object lucmbbx_Fehltag: TcxDBLookupComboBox
      AlignWithMargins = True
      Left = 670
      Top = 46
      Margins.Left = 6
      Margins.Top = 0
      Margins.Right = 6
      Margins.Bottom = 0
      TabStop = False
      AutoSize = False
      DataBinding.DataField = 'Fehltag'
      DataBinding.DataSource = frm_ZE.ds_Buchungen
      Enabled = False
      Properties.KeyFieldNames = 'Kuerzel'
      Properties.ListColumns = <
        item
          FieldName = 'Beschreibung'
        end>
      Properties.ListSource = frm_ZE.ds_Fehltag
      Style.HotTrack = False
      Style.TransparentBorder = False
      TabOrder = 3
      Height = 23
      Width = 220
    end
    object tedt_Gehen: TcxDBTimeEdit
      Left = 210
      Top = 123
      Margins.Left = 6
      Margins.Top = 0
      Margins.Right = 6
      Margins.Bottom = 0
      DataBinding.DataField = 'Gehen'
      DataBinding.DataSource = frm_ZE.ds_Buchungen
      Properties.SpinButtons.Visible = False
      Properties.TimeFormat = tfHourMin
      Style.HotTrack = False
      Style.TransparentBorder = False
      TabOrder = 5
      OnExit = btn_DataSaveClick
      Width = 80
    end
    object tedt_Kommen: TcxDBTimeEdit
      Left = 72
      Top = 123
      Margins.Left = 6
      Margins.Top = 0
      Margins.Right = 6
      Margins.Bottom = 0
      DataBinding.DataField = 'Kommen'
      DataBinding.DataSource = frm_ZE.ds_Buchungen
      Properties.SpinButtons.Visible = False
      Properties.TimeFormat = tfHourMin
      Style.HotTrack = False
      Style.TransparentBorder = False
      TabOrder = 4
      Width = 80
    end
    object tedt_Pause1Beginn: TcxDBTimeEdit
      AlignWithMargins = True
      Left = 370
      Top = 123
      Margins.Left = 6
      Margins.Top = 0
      Margins.Right = 6
      Margins.Bottom = 0
      DataBinding.DataField = 'Pause1Beginn'
      DataBinding.DataSource = frm_ZE.ds_Buchungen
      Properties.SpinButtons.Visible = False
      Properties.TimeFormat = tfHourMin
      Style.HotTrack = False
      Style.TransparentBorder = False
      TabOrder = 6
      Width = 80
    end
    object tedt_Pause1Ende: TcxDBTimeEdit
      AlignWithMargins = True
      Left = 510
      Top = 123
      Margins.Left = 6
      Margins.Top = 0
      Margins.Right = 6
      Margins.Bottom = 0
      DataBinding.DataField = 'Pause1Ende'
      DataBinding.DataSource = frm_ZE.ds_Buchungen
      Properties.SpinButtons.Visible = False
      Properties.TimeFormat = tfHourMin
      Style.HotTrack = False
      Style.TransparentBorder = False
      TabOrder = 7
      OnExit = btn_DataSaveClick
      Width = 80
    end
    object tedt_Pause2Beginn: TcxDBTimeEdit
      AlignWithMargins = True
      Left = 670
      Top = 123
      Margins.Left = 6
      Margins.Top = 0
      Margins.Right = 6
      Margins.Bottom = 0
      DataBinding.DataField = 'Pause2Beginn'
      DataBinding.DataSource = frm_ZE.ds_Buchungen
      Properties.SpinButtons.Visible = False
      Properties.TimeFormat = tfHourMin
      Style.HotTrack = False
      Style.TransparentBorder = False
      TabOrder = 8
      Width = 80
    end
    object tedt_Pause2Ende: TcxDBTimeEdit
      AlignWithMargins = True
      Left = 810
      Top = 123
      Margins.Left = 6
      Margins.Top = 0
      Margins.Right = 6
      Margins.Bottom = 0
      DataBinding.DataField = 'Pause2Ende'
      DataBinding.DataSource = frm_ZE.ds_Buchungen
      Properties.SpinButtons.Visible = False
      Properties.TimeFormat = tfHourMin
      Style.HotTrack = False
      Style.TransparentBorder = False
      TabOrder = 9
      OnExit = btn_DataSaveClick
      Width = 80
    end
    object imgcmbbx_Arbeitsort: TcxDBImageComboBox
      AlignWithMargins = True
      Left = 72
      Top = 198
      Margins.Left = 6
      Margins.Top = 0
      Margins.Right = 6
      Margins.Bottom = 0
      DataBinding.DataField = 'Buchungsart'
      DataBinding.DataSource = frm_ZE.ds_Buchungen
      Properties.Alignment.Horz = taLeftJustify
      Properties.Items = <
        item
          Description = 'B'#252'ro'
          ImageIndex = 0
          Value = 0
        end
        item
          Description = 'HomeOffice'
          Value = 1
        end
        item
          Value = -1
        end>
      Style.HotTrack = False
      Style.TransparentBorder = False
      TabOrder = 10
      Width = 816
    end
    object edt_101Tag: TcxDBSpinEdit
      Left = 210
      Top = 46
      AutoSize = False
      DataBinding.DataField = 'Tag'
      DataBinding.DataSource = frm_ZE.ds_Buchungen
      Enabled = False
      Properties.Alignment.Horz = taCenter
      Style.HotTrack = False
      Style.TransparentBorder = False
      TabOrder = 1
      Height = 23
      Width = 80
    end
    object edt_100Date: TcxDBDateEdit
      Left = 72
      Top = 46
      DataBinding.DataField = 'Datum'
      DataBinding.DataSource = frm_ZE.ds_Buchungen
      Enabled = False
      Style.HotTrack = False
      Style.TransparentBorder = False
      TabOrder = 0
      Width = 80
    end
    object lucmbbx_Feiertag: TcxDBImageComboBox
      Left = 372
      Top = 46
      AutoSize = False
      DataBinding.DataField = 'Feiertag'
      DataBinding.DataSource = frm_ZE.ds_Buchungen
      Enabled = False
      Properties.Alignment.Horz = taLeftJustify
      Properties.Items = <
        item
          ImageIndex = 0
          Value = 0
        end
        item
          Description = 'ganzer Feiertag'
          Value = 1
        end
        item
          Description = 'halber Feiertag'
          Value = 2
        end>
      Style.HotTrack = False
      Style.TransparentBorder = False
      TabOrder = 2
      Height = 23
      Width = 220
    end
    object edt_SollStd: TcxTextEdit
      Left = 72
      Top = 273
      AutoSize = False
      BiDiMode = bdRightToLeft
      Enabled = False
      ParentBiDiMode = False
      Style.HotTrack = False
      Style.TransparentBorder = False
      TabOrder = 11
      Text = '08:00'
      Height = 21
      Width = 40
    end
    object edt_SollDez: TcxTextEdit
      Left = 119
      Top = 273
      AutoSize = False
      BiDiMode = bdRightToLeft
      Enabled = False
      ParentBiDiMode = False
      Style.HotTrack = False
      Style.TransparentBorder = False
      TabOrder = 12
      Text = '08:00'
      Height = 21
      Width = 40
    end
    object edt_BruttoStd: TcxTextEdit
      Left = 258
      Top = 273
      AutoSize = False
      BiDiMode = bdRightToLeft
      Enabled = False
      ParentBiDiMode = False
      Style.HotTrack = False
      Style.TransparentBorder = False
      TabOrder = 13
      Text = '08:00'
      Height = 21
      Width = 40
    end
    object edt_BruttoDez: TcxTextEdit
      Left = 305
      Top = 273
      AutoSize = False
      BiDiMode = bdRightToLeft
      Enabled = False
      ParentBiDiMode = False
      Style.HotTrack = False
      Style.TransparentBorder = False
      TabOrder = 14
      Text = '08:00'
      Height = 21
      Width = 40
    end
    object edt_NettoStd: TcxTextEdit
      Left = 625
      Top = 273
      AutoSize = False
      BiDiMode = bdRightToLeft
      Enabled = False
      ParentBiDiMode = False
      Style.HotTrack = False
      Style.TransparentBorder = False
      TabOrder = 17
      Text = '08:00'
      Height = 21
      Width = 40
    end
    object edt_NettoDez: TcxTextEdit
      Left = 672
      Top = 273
      AutoSize = False
      BiDiMode = bdRightToLeft
      Enabled = False
      ParentBiDiMode = False
      Style.HotTrack = False
      Style.TransparentBorder = False
      TabOrder = 18
      Text = '08:00'
      Height = 21
      Width = 40
    end
    object edt_PauseDez: TcxTextEdit
      Left = 489
      Top = 273
      AutoSize = False
      BiDiMode = bdRightToLeft
      Enabled = False
      ParentBiDiMode = False
      Style.HotTrack = False
      Style.TransparentBorder = False
      TabOrder = 16
      Text = '08:00'
      Height = 21
      Width = 40
    end
    object edt_PauseStd: TcxTextEdit
      Left = 442
      Top = 273
      AutoSize = False
      BiDiMode = bdRightToLeft
      Enabled = False
      ParentBiDiMode = False
      Style.HotTrack = False
      Style.TransparentBorder = False
      TabOrder = 15
      Text = '08:00'
      Height = 21
      Width = 40
    end
    object edt_MAStd: TcxTextEdit
      Left = 799
      Top = 273
      AutoSize = False
      BiDiMode = bdRightToLeft
      Enabled = False
      ParentBiDiMode = False
      Style.HotTrack = False
      Style.TransparentBorder = False
      TabOrder = 19
      Text = '08:00'
      Height = 21
      Width = 40
    end
    object edt_MADez: TcxTextEdit
      Left = 846
      Top = 273
      AutoSize = False
      BiDiMode = bdRightToLeft
      Enabled = False
      ParentBiDiMode = False
      Style.HotTrack = False
      Style.TransparentBorder = False
      TabOrder = 20
      Text = '08:00'
      Height = 21
      Width = 40
    end
    object lagrp_Main: TdxLayoutGroup
      AlignHorz = ahClient
      AlignVert = avTop
      Hidden = True
      ItemIndex = 1
      ShowBorder = False
      Index = -1
    end
    object itm_101Tag: TdxLayoutItem
      Parent = lagrp_1Buchung
      AlignVert = avClient
      Offsets.Left = 16
      CaptionOptions.Text = 'Tag:'
      CaptionOptions.Width = 30
      Control = edt_101Tag
      ControlOptions.OriginalHeight = 23
      ControlOptions.OriginalWidth = 80
      ControlOptions.ShowBorder = False
      Enabled = False
      Index = 1
    end
    object itm_100Datum: TdxLayoutItem
      Parent = lagrp_1Buchung
      AlignHorz = ahLeft
      AlignVert = avTop
      CaptionOptions.Text = 'Datum:'
      CaptionOptions.Width = 46
      Control = edt_100Date
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 80
      ControlOptions.ShowBorder = False
      Enabled = False
      Index = 0
    end
    object dxLayoutItem8: TdxLayoutItem
      Parent = lagrp_4Stunden
      AlignHorz = ahLeft
      AlignVert = avTop
      CaptionOptions.Text = 'Soll:'
      Control = edt_SollStd
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 40
      ControlOptions.ShowBorder = False
      Enabled = False
      Index = 0
    end
    object itm_200Beginn: TdxLayoutItem
      Parent = lagrp_200Arbeitszeit
      AlignHorz = ahLeft
      AlignVert = avTop
      CaptionOptions.Text = 'Beginn:'
      CaptionOptions.Width = 46
      Control = tedt_Kommen
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 80
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object itm_200Ende: TdxLayoutItem
      Parent = lagrp_200Arbeitszeit
      AlignHorz = ahLeft
      AlignVert = avTop
      Offsets.Left = 16
      CaptionOptions.Text = 'Ende:'
      Control = tedt_Gehen
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 80
      ControlOptions.ShowBorder = False
      Index = 1
    end
    object itm_201Beginn: TdxLayoutItem
      Parent = lagrp_201Pause1
      CaptionOptions.Text = 'Beginn:'
      CaptionOptions.Width = 50
      Control = tedt_Pause1Beginn
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 80
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object itm_201Ende: TdxLayoutItem
      Parent = lagrp_201Pause1
      Offsets.Left = 18
      CaptionOptions.Text = 'Ende:'
      Control = tedt_Pause1Ende
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 80
      ControlOptions.ShowBorder = False
      Index = 1
    end
    object dxLayoutItem24: TdxLayoutItem
      Parent = lagrp_303Pause2
      AlignHorz = ahLeft
      AlignVert = avTop
      CaptionOptions.Text = 'Beginn:'
      CaptionOptions.Width = 50
      Control = tedt_Pause2Beginn
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 80
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object dxLayoutItem25: TdxLayoutItem
      Parent = lagrp_303Pause2
      Offsets.Left = 18
      CaptionOptions.Text = 'Ende:'
      Control = tedt_Pause2Ende
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 80
      ControlOptions.ShowBorder = False
      Index = 1
    end
    object lagrp_200Arbeitszeit: TdxLayoutGroup
      Parent = dxLayoutAutoCreatedGroup4
      AlignHorz = ahLeft
      AlignVert = avClient
      CaptionOptions.Text = 'Arbeitszeit'
      SizeOptions.Width = 200
      ItemIndex = 1
      LayoutDirection = ldHorizontal
      Index = 0
    end
    object lagrp_4Stunden: TdxLayoutGroup
      Parent = dxLayoutAutoCreatedGroup1
      AlignHorz = ahClient
      AlignVert = avTop
      CaptionOptions.Text = 'Tageswerte'
      ItemIndex = 1
      LayoutDirection = ldHorizontal
      Index = 2
    end
    object lagrp_303Pause2: TdxLayoutGroup
      Parent = dxLayoutAutoCreatedGroup4
      CaptionOptions.Text = 'Pause 2'
      ItemIndex = 1
      LayoutDirection = ldHorizontal
      Index = 2
    end
    object lagrp_201Pause1: TdxLayoutGroup
      Parent = dxLayoutAutoCreatedGroup4
      AlignVert = avTop
      CaptionOptions.Text = 'Pause 1'
      SizeOptions.Width = 257
      LayoutDirection = ldHorizontal
      Index = 1
    end
    object lagrp_1Buchung: TdxLayoutGroup
      Parent = lagrp_Main
      AlignHorz = ahLeft
      AlignVert = avTop
      CaptionOptions.Text = 'Buchungstag'
      SizeOptions.Width = 887
      ItemIndex = 3
      LayoutDirection = ldHorizontal
      Index = 0
    end
    object itm_103Fehltag: TdxLayoutItem
      Parent = lagrp_1Buchung
      AlignVert = avClient
      Offsets.Left = 18
      CaptionOptions.Text = 'Fehltag:'
      CaptionOptions.Width = 48
      Control = lucmbbx_Fehltag
      ControlOptions.OriginalHeight = 23
      ControlOptions.OriginalWidth = 220
      ControlOptions.ShowBorder = False
      Enabled = False
      Index = 3
    end
    object itm_102Feiertag: TdxLayoutItem
      Parent = lagrp_1Buchung
      AlignVert = avClient
      Offsets.Left = 22
      CaptionOptions.Text = 'Feiertag:'
      CaptionOptions.Width = 48
      Control = lucmbbx_Feiertag
      ControlOptions.OriginalHeight = 23
      ControlOptions.OriginalWidth = 220
      ControlOptions.ShowBorder = False
      Enabled = False
      Index = 2
    end
    object dxLayoutItem7: TdxLayoutItem
      Parent = dxLayoutGroup1
      CaptionOptions.Text = 'Ort:'
      CaptionOptions.Width = 46
      Control = imgcmbbx_Arbeitsort
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 816
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object dxLayoutGroup1: TdxLayoutGroup
      Parent = dxLayoutAutoCreatedGroup1
      AlignHorz = ahClient
      AlignVert = avTop
      CaptionOptions.Text = 'Buchungsort'
      LayoutDirection = ldHorizontal
      Index = 1
    end
    object dxLayoutAutoCreatedGroup1: TdxLayoutAutoCreatedGroup
      Parent = lagrp_Main
      AlignHorz = ahLeft
      AlignVert = avTop
      Index = 1
    end
    object dxLayoutAutoCreatedGroup4: TdxLayoutAutoCreatedGroup
      Parent = dxLayoutAutoCreatedGroup1
      AlignVert = avClient
      LayoutDirection = ldHorizontal
      Index = 0
    end
    object dxLayoutItem1: TdxLayoutItem
      Parent = lagrp_4Stunden
      AlignHorz = ahLeft
      AlignVert = avClient
      Control = edt_SollDez
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 40
      ControlOptions.ShowBorder = False
      Enabled = False
      Index = 1
    end
    object dxLayoutItem2: TdxLayoutItem
      Parent = lagrp_4Stunden
      AlignHorz = ahLeft
      AlignVert = avClient
      Offsets.Left = 50
      CaptionOptions.Text = 'Brutto:'
      Control = edt_BruttoStd
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 40
      ControlOptions.ShowBorder = False
      Enabled = False
      Index = 2
    end
    object dxLayoutItem3: TdxLayoutItem
      Parent = lagrp_4Stunden
      AlignHorz = ahLeft
      AlignVert = avClient
      Offsets.Left = 50
      CaptionOptions.Text = 'Pause:'
      Control = edt_PauseStd
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 40
      ControlOptions.ShowBorder = False
      Enabled = False
      Index = 4
    end
    object dxLayoutItem4: TdxLayoutItem
      Parent = lagrp_4Stunden
      AlignHorz = ahLeft
      AlignVert = avClient
      Offsets.Left = 50
      CaptionOptions.Text = 'Netto:'
      Control = edt_NettoStd
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 40
      ControlOptions.ShowBorder = False
      Enabled = False
      Index = 6
    end
    object dxLayoutGroup4: TdxLayoutGroup
      CaptionOptions.Text = 'New Group'
      Index = -1
    end
    object dxLayoutGroup5: TdxLayoutGroup
      CaptionOptions.Text = 'New Group'
      Index = -1
    end
    object dxLayoutItem5: TdxLayoutItem
      Parent = lagrp_4Stunden
      AlignHorz = ahLeft
      AlignVert = avClient
      Offsets.Left = 50
      CaptionOptions.Text = 'GLZ:'
      Control = edt_MAStd
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 40
      ControlOptions.ShowBorder = False
      Enabled = False
      Index = 8
    end
    object dxLayoutItem6: TdxLayoutItem
      Parent = lagrp_4Stunden
      AlignHorz = ahLeft
      AlignVert = avClient
      Control = edt_BruttoDez
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 40
      ControlOptions.ShowBorder = False
      Enabled = False
      Index = 3
    end
    object dxLayoutItem9: TdxLayoutItem
      Parent = lagrp_4Stunden
      AlignHorz = ahLeft
      AlignVert = avClient
      Control = edt_PauseDez
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 40
      ControlOptions.ShowBorder = False
      Enabled = False
      Index = 5
    end
    object dxLayoutItem10: TdxLayoutItem
      Parent = lagrp_4Stunden
      AlignHorz = ahLeft
      AlignVert = avClient
      Control = edt_NettoDez
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 40
      ControlOptions.ShowBorder = False
      Enabled = False
      Index = 7
    end
    object dxLayoutItem11: TdxLayoutItem
      Parent = lagrp_4Stunden
      AlignHorz = ahLeft
      AlignVert = avClient
      Control = edt_MADez
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 40
      ControlOptions.ShowBorder = False
      Enabled = False
      Index = 9
    end
  end
  object brmgr_Data: TdxBarManager
    AllowReset = False
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -12
    Font.Name = 'Segoe UI'
    Font.Style = []
    CanCustomize = False
    Categories.Strings = (
      'Default')
    Categories.ItemsVisibles = (
      2)
    Categories.Visibles = (
      True)
    ImageOptions.LargeImages = frm_ZE.imglst_32x32
    PopupMenuLinks = <>
    Style = bmsUseLookAndFeel
    UseSystemFont = True
    Left = 400
    Top = 200
    PixelsPerInch = 96
    DockControlHeights = (
      0
      0
      63
      0)
    object tb_Data: TdxBar
      Caption = 'Custom 1'
      CaptionButtons = <>
      DockedDockingStyle = dsTop
      DockedLeft = 0
      DockedTop = 0
      DockingStyle = dsTop
      FloatLeft = 652
      FloatTop = 2
      FloatClientWidth = 0
      FloatClientHeight = 0
      ItemLinks = <
        item
          Visible = True
          ItemName = 'btn_DataSave'
        end
        item
          Visible = True
          ItemName = 'btn_DataCancel'
        end
        item
          Visible = True
          ItemName = 'btn_DataPrev'
        end
        item
          Visible = True
          ItemName = 'btn_DataNext'
        end
        item
          Visible = True
          ItemName = 'btn_DataClose'
        end>
      NotDocking = [dsNone, dsLeft, dsTop, dsRight, dsBottom]
      OneOnRow = True
      Row = 0
      ShowMark = False
      SizeGrip = False
      UseOwnFont = False
      UseRestSpace = True
      Visible = True
      WholeRow = False
    end
    object btn_DataSave: TdxBarLargeButton
      Caption = '&Speichern'
      Category = 0
      Hint = 'Speichern'
      Visible = ivAlways
      OnClick = btn_DataSaveClick
      AutoGrayScale = False
      LargeImageIndex = 3
      Width = 120
    end
    object btn_DataCancel: TdxBarLargeButton
      Caption = '&Abbrechen'
      Category = 0
      Hint = 'Abbrechen'
      Visible = ivAlways
      OnClick = btn_DataCancelClick
      AutoGrayScale = False
      LargeImageIndex = 14
      Width = 120
    end
    object btn_DataPrev: TdxBarLargeButton
      Caption = '&vorheriger Datensatz'
      Category = 0
      Hint = 'vorheriger Datensatz'
      Visible = ivAlways
      OnClick = btn_DataPrevClick
      AutoGrayScale = False
      LargeImageIndex = 7
      Width = 120
    end
    object btn_DataNext: TdxBarLargeButton
      Caption = '&n'#228'chster Datensatz'
      Category = 0
      Hint = 'n'#228'chster Datensatz'
      Visible = ivAlways
      OnClick = btn_DataNextClick
      AutoGrayScale = False
      LargeImageIndex = 8
      Width = 125
    end
    object btn_DataClose: TdxBarLargeButton
      Align = iaRight
      Caption = 'S&chlie'#223'en'
      Category = 0
      Hint = 'Schlie'#223'en'
      Visible = ivAlways
      OnClick = btn_DataCloseClick
      AutoGrayScale = False
      LargeImageIndex = 6
      Width = 120
    end
  end
end
