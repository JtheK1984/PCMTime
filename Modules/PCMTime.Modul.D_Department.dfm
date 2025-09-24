object frm_Abteilung: Tfrm_Abteilung
  Left = 0
  Top = 0
  Caption = 'PCM - Time: Abteilung'
  ClientHeight = 700
  ClientWidth = 1200
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -12
  Font.Name = 'Segoe UI'
  Font.Style = []
  Position = poScreenCenter
  OnActivate = FormActivate
  OnShow = FormShow
  TextHeight = 15
  object lactrl_Department: TdxLayoutControl
    Left = 0
    Top = 0
    Width = 1200
    Height = 700
    Align = alClient
    TabOrder = 0
    AutoSize = True
    LayoutLookAndFeel = dm_PCM.dxLayoutSkinLookAndFeel1
    object brdckCtrl_Department: TdxBarDockControl
      Left = 12
      Top = 12
      Width = 1176
      Height = 58
      Align = dalNone
      BarManager = brmgr_Config
    end
    object grd_Department: TcxGrid
      Left = 22
      Top = 124
      Width = 1156
      Height = 554
      BorderStyle = cxcbsNone
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      TabOrder = 3
      TabStop = False
      LockedStateImageOptions.Effect = lsieDark
      object grdDBTblView_Department: TcxGridDBTableView
        Navigator.Buttons.CustomButtons = <>
        FilterBox.CustomizeDialog = False
        ScrollbarAnnotations.CustomAnnotations = <>
        DataController.DataSource = ds_Department
        DataController.Filter.PercentWildcard = '*'
        DataController.Filter.UnderscoreWildcard = '?'
        DataController.Options = [dcoAnsiSort, dcoCaseInsensitive, dcoAssignGroupingValues, dcoAssignMasterDetailKeys, dcoSaveExpanding]
        DataController.Summary.DefaultGroupSummaryItems = <>
        DataController.Summary.FooterSummaryItems = <
          item
            Kind = skCount
          end>
        DataController.Summary.SummaryGroups = <
          item
            Links = <
              item
              end>
            SummaryItems = <
              item
              end>
          end>
        OptionsBehavior.IncSearch = True
        OptionsBehavior.ShowHourglassCursor = False
        OptionsCustomize.ColumnsQuickCustomization = True
        OptionsData.Deleting = False
        OptionsData.Editing = False
        OptionsData.Inserting = False
        OptionsSelection.CellSelect = False
        OptionsView.CellEndEllipsis = True
        OptionsView.NoDataToDisplayInfoText = '<Keine Daten Vorhanden>'
        OptionsView.GroupByBox = False
        OptionsView.HeaderFilterButtonShowMode = fbmButton
        OptionsView.IndicatorWidth = 14
        object grdDBTblView_DepartmentNummer: TcxGridDBColumn
          AlternateCaption = '100'
          DataBinding.FieldName = 'Nummer'
          DataBinding.IsNullValueType = True
          Width = 100
        end
        object grdDBTblView_DepartmentBezeichnung: TcxGridDBColumn
          DataBinding.FieldName = 'Bezeichnung'
          DataBinding.IsNullValueType = True
          Width = 300
        end
      end
      object grdlvl_Department: TcxGridLevel
        GridView = grdDBTblView_Department
      end
    end
    object edt_Kuerzel: TcxDBTextEdit
      AlignWithMargins = True
      Left = 79
      Top = 94
      DataBinding.DataField = 'Nummer'
      DataBinding.DataSource = ds_Department
      Style.HotTrack = False
      Style.TransparentBorder = False
      TabOrder = 1
      Width = 150
    end
    object edt_Desc: TcxDBTextEdit
      AlignWithMargins = True
      Left = 321
      Top = 94
      DataBinding.DataField = 'Bezeichnung'
      DataBinding.DataSource = ds_Department
      Style.HotTrack = False
      Style.TransparentBorder = False
      TabOrder = 2
      Width = 857
    end
    object lagrp_DepartmentRoot: TdxLayoutGroup
      AlignHorz = ahClient
      AlignVert = avClient
      Hidden = True
      ShowBorder = False
      Index = -1
    end
    object laitm_DepartmentToolbar: TdxLayoutItem
      Parent = lagrp_DepartmentMain
      AlignHorz = ahClient
      AlignVert = avTop
      CaptionOptions.Text = 'brdckCtrl_FT'
      CaptionOptions.Visible = False
      Control = brdckCtrl_Department
      ControlOptions.AutoColor = True
      ControlOptions.OriginalHeight = 58
      ControlOptions.OriginalWidth = 1600
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object lagrp_DepartmentDetail: TdxLayoutGroup
      Parent = lagrp_DepartmentMain
      AlignHorz = ahClient
      AlignVert = avClient
      CaptionOptions.Text = 'Fehltage'
      CaptionOptions.Visible = False
      Index = 1
    end
    object laitm_DepartmentKuerzel: TdxLayoutItem
      Parent = lagrp_DepartmentNummerBez
      AlignHorz = ahLeft
      AlignVert = avTop
      CaptionOptions.Text = 'Nummer:'
      Control = edt_Kuerzel
      ControlOptions.OriginalHeight = 23
      ControlOptions.OriginalWidth = 150
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object laitm_DepartmentBeschreibung: TdxLayoutItem
      Parent = lagrp_DepartmentNummerBez
      AlignHorz = ahClient
      AlignVert = avTop
      CaptionOptions.Text = 'Bezeichnung:'
      CaptionOptions.Width = 80
      Control = edt_Desc
      ControlOptions.OriginalHeight = 23
      ControlOptions.OriginalWidth = 1582
      ControlOptions.ShowBorder = False
      Index = 1
    end
    object laitm_DepartmentGrid: TdxLayoutItem
      Parent = lagrp_DepartmentEdit
      AlignHorz = ahClient
      AlignVert = avClient
      CaptionOptions.Text = 'grd_Feiertage'
      CaptionOptions.Visible = False
      Control = grd_Department
      ControlOptions.OriginalHeight = 651
      ControlOptions.OriginalWidth = 1594
      ControlOptions.ShowBorder = False
      Index = 1
    end
    object lagrp_DepartmentMain: TdxLayoutGroup
      Parent = lagrp_DepartmentRoot
      AlignHorz = ahClient
      AlignVert = avClient
      CaptionOptions.Text = 'New Group'
      ShowBorder = False
      Index = 0
    end
    object lagrp_DepartmentEdit: TdxLayoutGroup
      Parent = lagrp_DepartmentDetail
      AlignHorz = ahClient
      AlignVert = avClient
      CaptionOptions.Text = 'New Group'
      ShowBorder = False
      Index = 0
    end
    object lagrp_DepartmentNummerBez: TdxLayoutGroup
      Parent = lagrp_DepartmentEdit
      AlignHorz = ahClient
      AlignVert = avTop
      CaptionOptions.Text = 'New Group'
      LayoutDirection = ldHorizontal
      ShowBorder = False
      Index = 0
    end
  end
  object brmgr_Config: TdxBarManager
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
    ImageOptions.LargeIcons = True
    NotDocking = [dsNone, dsLeft, dsTop, dsRight, dsBottom]
    PopupMenuLinks = <>
    Style = bmsUseLookAndFeel
    UseSystemFont = True
    Left = 400
    Top = 313
    PixelsPerInch = 96
    object tb_Feiertage: TdxBar
      Caption = 'tb_Feiertage'
      CaptionButtons = <>
      DockControl = brdckCtrl_Department
      DockedDockControl = brdckCtrl_Department
      DockedLeft = 0
      DockedTop = 0
      FloatLeft = 1123
      FloatTop = 2
      FloatClientWidth = 625
      FloatClientHeight = 81
      ItemLinks = <
        item
          Visible = True
          ItemName = 'btn_New'
        end
        item
          Visible = True
          ItemName = 'btn_Save'
        end
        item
          Visible = True
          ItemName = 'btn_Cancel'
        end
        item
          Visible = True
          ItemName = 'btn_Delete'
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
      Caption = 'Abteilung anlegen'
      Category = 0
      Hint = 'Abteilung anlegen'
      Visible = ivAlways
      OnClick = btn_NewClick
      AutoGrayScale = False
      LargeImageIndex = 0
      Width = 125
    end
    object btn_Save: TdxBarLargeButton
      Caption = 'Abteilung speichern'
      Category = 0
      Hint = 'Abteilung speichern'
      Visible = ivAlways
      OnClick = btn_SaveClick
      AutoGrayScale = False
      LargeImageIndex = 1
      Width = 125
    end
    object btn_Delete: TdxBarLargeButton
      Caption = 'Abteilung l'#246'schen'
      Category = 0
      Hint = 'Abteilung l'#246'schen'
      Visible = ivAlways
      OnClick = btn_DeleteClick
      AutoGrayScale = False
      LargeImageIndex = 3
      Width = 125
    end
    object btn_Cancel: TdxBarLargeButton
      Caption = 'Abbrechen'
      Category = 0
      Hint = 'Abbrechen'
      Visible = ivAlways
      OnClick = btn_CancelClick
      AutoGrayScale = False
      LargeImageIndex = 2
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
  end
  object qry_Department: TFDQuery
    AfterOpen = SetButtonsEnabledVisible
    AfterInsert = SetButtonsEnabledVisible
    AfterEdit = SetButtonsEnabledVisible
    AfterPost = SetButtonsEnabledVisible
    AfterCancel = SetButtonsEnabledVisible
    AfterDelete = SetButtonsEnabledVisible
    Connection = dm_PCM.con_PCM
    SQL.Strings = (
      'SELECT *'
      'FROM time_Abteilung'
      ''
      '')
    Left = 224
    Top = 72
  end
  object ds_Department: TDataSource
    DataSet = qry_Department
    Left = 224
    Top = 136
  end
end
