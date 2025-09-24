object frm_Fehltageeintragen: Tfrm_Fehltageeintragen
  Left = 0
  Top = 0
  BorderIcons = []
  BorderStyle = bsDialog
  Caption = 'PCM - Time: Fehltage eintragen'
  ClientHeight = 545
  ClientWidth = 600
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
    Left = 0
    Top = 0
    Width = 600
    Height = 545
    Align = alClient
    TabOrder = 0
    AutoSize = True
    LayoutLookAndFeel = dm_PCM.dxLayoutSkinLookAndFeel1
    object brdckCtrl_Fehltage: TdxBarDockControl
      Left = 12
      Top = 12
      Width = 576
      Height = 58
      Align = dalNone
      BarManager = brmgr_Fehltage
    end
    object dedt_Von: TcxDateEdit
      Left = 22
      Top = 366
      Properties.OnChange = dedt_VonPropertiesChange
      Style.HotTrack = False
      Style.TransparentBorder = False
      TabOrder = 2
      Width = 556
    end
    object dedt_Bis: TcxDateEdit
      Left = 22
      Top = 417
      Style.HotTrack = False
      Style.TransparentBorder = False
      TabOrder = 3
      Width = 556
    end
    object cmbbx_Fehltage: TcxComboBox
      Left = 22
      Top = 468
      AutoSize = False
      Properties.DropDownListStyle = lsEditFixedList
      Style.HotTrack = False
      Style.TransparentBorder = False
      TabOrder = 4
      Height = 23
      Width = 556
    end
    object btn_FTSave: TcxButton
      Left = 22
      Top = 498
      Width = 275
      Height = 25
      Caption = 'Speichern'
      OptionsImage.ImageIndex = 32
      OptionsImage.Images = dm_PCM.imglst_16x16
      TabOrder = 5
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      OnClick = btn_FTSaveClick
    end
    object btn_FTCancel: TcxButton
      Left = 304
      Top = 498
      Width = 274
      Height = 25
      Caption = 'Abbrechen'
      OptionsImage.ImageIndex = 33
      OptionsImage.Images = dm_PCM.imglst_16x16
      TabOrder = 6
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      OnClick = btn_FTCancelClick
    end
    object grd_Booking: TcxGrid
      Left = 12
      Top = 77
      Width = 576
      Height = 244
      TabOrder = 1
      object grdDBTblView_Booking: TcxGridDBTableView
        Navigator.Buttons.CustomButtons = <>
        ScrollbarAnnotations.CustomAnnotations = <>
        DataController.DataSource = ds_FT
        DataController.Summary.DefaultGroupSummaryItems = <>
        DataController.Summary.FooterSummaryItems = <>
        DataController.Summary.SummaryGroups = <>
        OptionsData.CancelOnExit = False
        OptionsData.Deleting = False
        OptionsData.DeletingConfirmation = False
        OptionsData.Editing = False
        OptionsData.Inserting = False
        OptionsSelection.CellSelect = False
        OptionsView.GroupByBox = False
        OptionsView.HeaderFilterButtonShowMode = fbmButton
        OptionsView.Indicator = True
        OptionsView.IndicatorWidth = 16
        object grdDBTblView_BookingVon: TcxGridDBColumn
          DataBinding.FieldName = 'Von'
          DataBinding.IsNullValueType = True
          SortIndex = 0
          SortOrder = soAscending
        end
        object grdDBTblView_BookingBis: TcxGridDBColumn
          DataBinding.FieldName = 'Bis'
          DataBinding.IsNullValueType = True
        end
        object grdDBTblView_BookingKuerzel: TcxGridDBColumn
          DataBinding.FieldName = 'Kuerzel'
          DataBinding.IsNullValueType = True
          Width = 60
        end
        object grdDBTblView_BookingBeschreibung: TcxGridDBColumn
          DataBinding.FieldName = 'Beschreibung'
          DataBinding.IsNullValueType = True
          Width = 200
        end
        object grdDBTblView_BookingTage: TcxGridDBColumn
          DataBinding.FieldName = 'Tage'
          DataBinding.IsNullValueType = True
          Width = 50
        end
      end
      object grdLvl_Booking: TcxGridLevel
        GridView = grdDBTblView_Booking
      end
    end
    object dxLayoutControl1Group_Root: TdxLayoutGroup
      AlignHorz = ahClient
      AlignVert = avClient
      Hidden = True
      ShowBorder = False
      Index = -1
    end
    object dxLayoutItem1: TdxLayoutItem
      Parent = dxLayoutGroup8
      AlignHorz = ahClient
      AlignVert = avClient
      CaptionOptions.Text = 'grd_Booking'
      CaptionOptions.Visible = False
      Control = grd_Booking
      ControlOptions.OriginalHeight = 100
      ControlOptions.OriginalWidth = 480
      ControlOptions.ShowBorder = False
      Index = 1
    end
    object dxLayoutItem2: TdxLayoutItem
      Parent = dxLayoutGroup8
      CaptionOptions.Text = 'brdckCtrl_Fehltage'
      CaptionOptions.Visible = False
      Control = brdckCtrl_Fehltage
      ControlOptions.AutoColor = True
      ControlOptions.OriginalHeight = 58
      ControlOptions.OriginalWidth = 474
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object dxLayoutGroup3: TdxLayoutGroup
      Parent = dxLayoutGroup9
      AlignHorz = ahClient
      AlignVert = avTop
      Visible = False
      Index = 0
    end
    object dxLayoutItem3: TdxLayoutItem
      Parent = dxLayoutGroup3
      AlignHorz = ahClient
      AlignVert = avTop
      CaptionOptions.Text = 'Zeitraum Von:'
      CaptionOptions.Layout = clTop
      Control = dedt_Von
      ControlOptions.OriginalHeight = 23
      ControlOptions.OriginalWidth = 468
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object dxLayoutItem4: TdxLayoutItem
      Parent = dxLayoutGroup3
      AlignHorz = ahClient
      AlignVert = avTop
      CaptionOptions.Text = 'Zeitraum Bis:'
      CaptionOptions.Layout = clTop
      Control = dedt_Bis
      ControlOptions.OriginalHeight = 23
      ControlOptions.OriginalWidth = 468
      ControlOptions.ShowBorder = False
      Index = 1
    end
    object dxLayoutItem5: TdxLayoutItem
      Parent = dxLayoutGroup3
      AlignHorz = ahClient
      AlignVert = avTop
      CaptionOptions.Text = 'Fehltag:'
      CaptionOptions.Layout = clTop
      Control = cmbbx_Fehltage
      ControlOptions.OriginalHeight = 23
      ControlOptions.OriginalWidth = 468
      ControlOptions.ShowBorder = False
      Index = 2
    end
    object dxLayoutItem6: TdxLayoutItem
      Parent = dxLayoutGroup10
      AlignHorz = ahClient
      AlignVert = avTop
      CaptionOptions.Text = 'btn_FTSave'
      CaptionOptions.Visible = False
      Control = btn_FTSave
      ControlOptions.OriginalHeight = 25
      ControlOptions.OriginalWidth = 205
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object dxLayoutItem7: TdxLayoutItem
      Parent = dxLayoutGroup10
      AlignHorz = ahClient
      AlignVert = avTop
      CaptionOptions.Text = 'btn_FTCancel'
      CaptionOptions.Visible = False
      Control = btn_FTCancel
      ControlOptions.OriginalHeight = 25
      ControlOptions.OriginalWidth = 205
      ControlOptions.ShowBorder = False
      Index = 1
    end
    object dxLayoutGroup8: TdxLayoutGroup
      Parent = dxLayoutControl1Group_Root
      AlignHorz = ahClient
      AlignVert = avClient
      CaptionOptions.Text = 'New Group'
      ItemIndex = 1
      ShowBorder = False
      Index = 0
    end
    object dxLayoutGroup9: TdxLayoutGroup
      Parent = dxLayoutGroup8
      AlignHorz = ahClient
      AlignVert = avTop
      CaptionOptions.Text = 'New Group'
      ShowBorder = False
      Index = 2
    end
    object dxLayoutGroup10: TdxLayoutGroup
      Parent = dxLayoutGroup3
      AlignHorz = ahClient
      AlignVert = avTop
      CaptionOptions.Text = 'New Group'
      ItemIndex = 1
      LayoutDirection = ldHorizontal
      ShowBorder = False
      Index = 3
    end
  end
  object brmgr_Fehltage: TdxBarManager
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
    ImageOptions.LargeImages = dm_PCM.imglst_32x32
    NotDocking = [dsNone, dsLeft, dsTop, dsRight, dsBottom]
    PopupMenuLinks = <>
    Style = bmsUseLookAndFeel
    UseSystemFont = True
    Left = 200
    Top = 352
    PixelsPerInch = 96
    object tb_Fehltage: TdxBar
      AllowClose = False
      AllowCustomizing = False
      AllowQuickCustomizing = False
      AllowReset = False
      Caption = 'Custom 1'
      CaptionButtons = <>
      DockControl = brdckCtrl_Fehltage
      DockedDockControl = brdckCtrl_Fehltage
      DockedLeft = 0
      DockedTop = 0
      FloatLeft = 460
      FloatTop = 2
      FloatClientWidth = 0
      FloatClientHeight = 0
      ItemLinks = <
        item
          Visible = True
          ItemName = 'btn_New'
        end
        item
          Visible = True
          ItemName = 'btn_Delete'
        end
        item
          Visible = True
          ItemName = 'btn_AllDays'
        end
        item
          Visible = True
          ItemName = 'btn_Close'
        end>
      OneOnRow = True
      Row = 0
      ShowMark = False
      SizeGrip = False
      UseOwnFont = False
      UseRestSpace = True
      Visible = True
      WholeRow = False
    end
    object btn_New: TdxBarLargeButton
      Caption = 'Neu'
      Category = 0
      Hint = 'Neu'
      Visible = ivAlways
      OnClick = btn_NewClick
      AutoGrayScale = False
      LargeImageIndex = 0
      Width = 125
    end
    object btn_Delete: TdxBarLargeButton
      Caption = 'L'#246'schen'
      Category = 0
      Hint = 'L'#246'schen'
      Visible = ivAlways
      OnClick = btn_DeleteClick
      AutoGrayScale = False
      LargeImageIndex = 3
      Width = 125
    end
    object btn_Close: TdxBarLargeButton
      Align = iaRight
      Caption = 'Schlie'#223'en'
      Category = 0
      Hint = 'Schlie'#223'en'
      Visible = ivAlways
      OnClick = btn_CloseClick
      AutoGrayScale = False
      LargeImageIndex = 4
      Width = 125
    end
    object btn_AllDays: TdxBarLargeButton
      Caption = 'Alle Fehltage'
      Category = 0
      Hint = 'Alle Fehltage'
      Visible = ivAlways
      AutoGrayScale = False
      LargeImageIndex = 9
      Width = 125
    end
  end
  object qry_FT: TFDQuery
    AfterOpen = SetButtonsEnabledVisible
    AfterInsert = SetButtonsEnabledVisible
    AfterEdit = SetButtonsEnabledVisible
    AfterPost = SetButtonsEnabledVisible
    AfterCancel = SetButtonsEnabledVisible
    AfterDelete = SetButtonsEnabledVisible
    Connection = dm_PCM.con_PCM
    SQL.Strings = (
      'Select * From manager_Fehltage ')
    Left = 200
    Top = 240
  end
  object ds_FT: TDataSource
    DataSet = qry_FT
    Left = 264
    Top = 240
  end
  object cxGridPopupMenu1: TcxGridPopupMenu
    Grid = grd_Booking
    PopupMenus = <>
    Left = 88
    Top = 96
  end
end
