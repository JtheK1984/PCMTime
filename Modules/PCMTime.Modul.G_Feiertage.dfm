object frm_Feiertage: Tfrm_Feiertage
  Left = 0
  Top = 0
  Caption = 'PCM - Time: Feiertage'
  ClientHeight = 700
  ClientWidth = 1200
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -12
  Font.Name = 'Segoe UI'
  Font.Style = []
  Position = poScreenCenter
  OnShow = FormShow
  TextHeight = 15
  object lo_Feiertage: TdxLayoutControl
    Left = 0
    Top = 0
    Width = 1200
    Height = 700
    Align = alClient
    TabOrder = 0
    AutoSize = True
    LayoutLookAndFeel = dm_PCM.dxLayoutSkinLookAndFeel1
    object grd_Feiertage: TcxGrid
      Left = 22
      Top = 94
      Width = 1156
      Height = 584
      BorderStyle = cxcbsNone
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      TabOrder = 1
      TabStop = False
      LockedStateImageOptions.Effect = lsieDark
      object grdDBTblView_Feiertage: TcxGridDBTableView
        Navigator.Buttons.CustomButtons = <>
        FilterBox.CustomizeDialog = False
        ScrollbarAnnotations.CustomAnnotations = <>
        OnCustomDrawCell = grdDBTblView_FeiertageCustomDrawCell
        DataController.DataSource = ds_FT
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
        object grdDBTblView_FeiertageJahr: TcxGridDBColumn
          DataBinding.FieldName = 'Jahr'
          DataBinding.IsNullValueType = True
          SortIndex = 0
          SortOrder = soAscending
          Width = 80
        end
        object grdDBTblView_FeiertageMonat: TcxGridDBColumn
          DataBinding.FieldName = 'Monat'
          DataBinding.IsNullValueType = True
          SortIndex = 1
          SortOrder = soAscending
          Width = 80
        end
        object grdDBTblView_FeiertageTag: TcxGridDBColumn
          DataBinding.FieldName = 'Tag'
          DataBinding.IsNullValueType = True
          SortIndex = 2
          SortOrder = soAscending
          Width = 80
        end
        object grdDBTblView_FeiertageBezeichnung: TcxGridDBColumn
          DataBinding.FieldName = 'Bezeichnung'
          DataBinding.IsNullValueType = True
          Width = 300
        end
        object grdDBTblView_FeiertageKategorie: TcxGridDBColumn
          DataBinding.FieldName = 'Kategorie'
          DataBinding.IsNullValueType = True
        end
      end
      object grdlvl_Feiertage: TcxGridLevel
        GridView = grdDBTblView_Feiertage
      end
    end
    object brdckCtrl_Feiertage: TdxBarDockControl
      Left = 12
      Top = 12
      Width = 1176
      Height = 58
      Align = dalNone
      BarManager = brmgr_Feiertage
    end
    object lo_FeiertageGroup_Root: TdxLayoutGroup
      AlignHorz = ahClient
      AlignVert = avClient
      Hidden = True
      ShowBorder = False
      Index = -1
    end
    object laitem_FeiertageToolbar: TdxLayoutItem
      Parent = lagrp_FeiertageMain
      AlignHorz = ahClient
      AlignVert = avTop
      CaptionOptions.Text = 'brdckCtrl_Feiertage'
      CaptionOptions.Visible = False
      Control = brdckCtrl_Feiertage
      ControlOptions.AutoColor = True
      ControlOptions.OriginalHeight = 58
      ControlOptions.OriginalWidth = 1600
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object lagrp_FeiertageGrid: TdxLayoutGroup
      Parent = lagrp_FeiertageMain
      AlignHorz = ahClient
      AlignVert = avClient
      CaptionOptions.Text = 'Feiertage'
      LayoutDirection = ldHorizontal
      Index = 1
    end
    object laitm_FeiertageGrid: TdxLayoutItem
      Parent = lagrp_FeiertageGrid
      AlignHorz = ahClient
      AlignVert = avClient
      CaptionOptions.Text = 'grd_Feiertage'
      CaptionOptions.Visible = False
      Control = grd_Feiertage
      ControlOptions.OriginalHeight = 811
      ControlOptions.OriginalWidth = 1594
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object lagrp_FeiertageMain: TdxLayoutGroup
      Parent = lo_FeiertageGroup_Root
      AlignHorz = ahClient
      AlignVert = avClient
      CaptionOptions.Text = 'New Group'
      ShowBorder = False
      Index = 0
    end
  end
  object brmgr_Feiertage: TdxBarManager
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
      DockControl = brdckCtrl_Feiertage
      DockedDockControl = brdckCtrl_Feiertage
      DockedLeft = 0
      DockedTop = 0
      FloatLeft = 1123
      FloatTop = 2
      FloatClientWidth = 125
      FloatClientHeight = 162
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
          ItemName = 'btn_FeiertageWrite'
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
      Caption = 'Feiertage anlegen'
      Category = 0
      Hint = 'Feiertage anlegen'
      Visible = ivAlways
      OnClick = btn_NewClick
      AutoGrayScale = False
      LargeImageIndex = 0
      Width = 125
    end
    object btn_FeiertageWrite: TdxBarLargeButton
      Caption = 'Feiertage eintragen'
      Category = 0
      Hint = 'Feiertage eintragen'
      Visible = ivAlways
      OnClick = btn_FeiertageWriteClick
      AutoGrayScale = False
      LargeImageIndex = 10
      Width = 125
    end
    object btn_Delete: TdxBarLargeButton
      Caption = 'Feiertage l'#246'schen'
      Category = 0
      Hint = 'Feiertage l'#246'schen'
      Visible = ivAlways
      OnClick = btn_DeleteClick
      AutoGrayScale = False
      LargeImageIndex = 3
      Width = 125
      SyncImageIndex = False
      ImageIndex = -1
    end
    object btn_Close: TdxBarLargeButton
      Align = iaRight
      Caption = 'Schlie'#223'en'
      Category = 0
      Hint = 'Schlie'#223'en'
      Visible = ivAlways
      LargeGlyph.SourceDPI = 96
      LargeGlyph.Data = {
        3C3F786D6C2076657273696F6E3D22312E302220656E636F64696E673D225554
        462D38223F3E0D0A3C7376672076657273696F6E3D22312E31222069643D224C
        617965725F312220786D6C6E733D22687474703A2F2F7777772E77332E6F7267
        2F323030302F7376672220786D6C6E733A786C696E6B3D22687474703A2F2F77
        77772E77332E6F72672F313939392F786C696E6B2220783D223070782220793D
        22307078222076696577426F783D2230203020333220333222207374796C653D
        22656E61626C652D6261636B67726F756E643A6E657720302030203332203332
        3B2220786D6C3A73706163653D227072657365727665223E262331333B262331
        303B3C7374796C6520747970653D22746578742F6373732220786D6C3A737061
        63653D227072657365727665223E2E426C61636B7B66696C6C3A233732373237
        323B7D262331333B262331303B2623393B2E5265647B66696C6C3A2344313143
        31433B7D3C2F7374796C653E0D0A3C672069643D2245786974223E0D0A09093C
        706F6C79676F6E20636C6173733D225265642220706F696E74733D2231362C31
        302032322C31362031362C32322031362C313820322C313820322C3134203136
        2C3134202623393B222F3E0D0A09093C706F6C79676F6E20636C6173733D2242
        6C61636B2220706F696E74733D22382C3220382C31322031302C31322031302C
        342032382C342032382C32382031302C32382031302C323020382C323020382C
        33302033302C33302033302C32202623393B222F3E0D0A093C2F673E0D0A3C2F
        7376673E0D0A}
      OnClick = btn_CloseClick
      AutoGrayScale = False
      Width = 125
    end
  end
  object qry_FT1: TFDQuery
    AfterOpen = SetButtonsEnabledVisible
    AfterInsert = SetButtonsEnabledVisible
    AfterEdit = SetButtonsEnabledVisible
    AfterPost = SetButtonsEnabledVisible
    AfterCancel = SetButtonsEnabledVisible
    AfterDelete = SetButtonsEnabledVisible
    Connection = dm_PCM.con_PCM
    SQL.Strings = (
      
        'SELECT ID,Jahr,Monat,Tag,Bezeichnung, uebertragen,Datum, ID_Benu' +
        'tzer, Kategorie'
      'FROM time_Feiertage'
      'ORDER by Datum asc')
    Left = 224
    Top = 72
  end
  object ds_FT: TDataSource
    DataSet = qry_FT1
    Left = 224
    Top = 136
  end
end
