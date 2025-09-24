object frm_Fehltage: Tfrm_Fehltage
  Left = 0
  Top = 0
  BorderIcons = []
  Caption = 'PCM - Time: Fehltage'
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
  object lactrl_Fehltage: TdxLayoutControl
    Left = 0
    Top = 0
    Width = 1200
    Height = 700
    Align = alClient
    TabOrder = 0
    AutoSize = True
    LayoutLookAndFeel = dm_PCM.dxLayoutSkinLookAndFeel1
    object brdckCtrl_Fehltage: TdxBarDockControl
      Left = 12
      Top = 12
      Width = 1176
      Height = 58
      Align = dalNone
      BarManager = brmgr_Fehltage
    end
    object grd_Fehltage: TcxGrid
      Left = 22
      Top = 184
      Width = 1156
      Height = 494
      BorderStyle = cxcbsNone
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      TabOrder = 9
      TabStop = False
      LockedStateImageOptions.Effect = lsieDark
      object grdDBTblView_Fehltage: TcxGridDBTableView
        Navigator.Buttons.CustomButtons = <>
        FilterBox.CustomizeDialog = False
        ScrollbarAnnotations.CustomAnnotations = <>
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
        object grdDBTblViewCol_FeiertageKuerzel: TcxGridDBColumn
          Caption = 'K'#252'rzel'
          DataBinding.FieldName = 'Kuerzel'
          Width = 80
        end
        object grdDBTblViewCol_FeiertageBeschreibung: TcxGridDBColumn
          DataBinding.FieldName = 'Beschreibung'
          Width = 200
        end
        object grdDBTblViewCol_FeiertageTyp: TcxGridDBColumn
          Caption = 'Fehltagstyp'
          DataBinding.FieldName = 'Typ'
          PropertiesClassName = 'TcxImageComboBoxProperties'
          Properties.Alignment.Horz = taLeftJustify
          Properties.Items = <
            item
              Description = 'Urlaub'
              ImageIndex = 0
              Value = 1
            end
            item
              Description = 'Krankheit'
              Value = 2
            end
            item
              Description = 'Sonderurlaub'
              Value = 3
            end
            item
              Description = 'bezahlte Abwesenheit'
              Value = 4
            end
            item
              Description = 'unbezahlte Abwesenheit'
              Value = 5
            end>
          Width = 200
        end
        object grdDBTblViewCol_FeiertageFaktor: TcxGridDBColumn
          Caption = 'Gutschrift'
          DataBinding.FieldName = 'Faktor'
          PropertiesClassName = 'TcxImageComboBoxProperties'
          Properties.Alignment.Horz = taLeftJustify
          Properties.Items = <
            item
              Description = 'keine Gutschrift'
              ImageIndex = 0
              Value = 0
            end
            item
              Description = 'Gutschrift ganzer Tag'
              Value = 1
            end
            item
              Description = 'Gutschrift halber Tag'
              Value = 2
            end>
          Width = 150
        end
        object grdDBTblViewCol_FeiertageBezahlt: TcxGridDBColumn
          Caption = 'Sollstunden'
          DataBinding.FieldName = 'Bezahlt'
          PropertiesClassName = 'TcxImageComboBoxProperties'
          Properties.Items = <
            item
              Description = 'keine Sollzeitgutschrift'
              ImageIndex = 0
              Value = 0
            end
            item
              Description = 'Sollzeitgutschrift'
              Value = 1
            end>
          Width = 150
        end
        object grdDBTblViewCol_FeiertageColor: TcxGridDBColumn
          Caption = 'Termin'
          DataBinding.FieldName = 'Color'
          PropertiesClassName = 'TcxColorComboBoxProperties'
          Properties.ColorBoxWidth = 66
          Properties.CustomColors = <>
          Properties.NamingConvention = cxncHTML4
          Width = 70
        end
        object grdDBTblViewCol_FeiertageColorFont: TcxGridDBColumn
          Caption = 'Schrift'
          DataBinding.FieldName = 'ColorFont'
          PropertiesClassName = 'TcxColorComboBoxProperties'
          Properties.ColorBoxWidth = 66
          Properties.CustomColors = <>
          Properties.NamingConvention = cxncHTML4
          Width = 70
        end
      end
      object grdlvl_Fehltage: TcxGridLevel
        GridView = grdDBTblView_Fehltage
      end
    end
    object edt_FehltageKuerzel: TcxDBTextEdit
      AlignWithMargins = True
      Left = 107
      Top = 94
      DataBinding.DataField = 'Kuerzel'
      DataBinding.DataSource = ds_FT
      Style.HotTrack = False
      Style.TransparentBorder = False
      TabOrder = 1
      Width = 490
    end
    object edt_FehltageDesc: TcxDBTextEdit
      AlignWithMargins = True
      Left = 689
      Top = 94
      DataBinding.DataField = 'Beschreibung'
      DataBinding.DataSource = ds_FT
      Style.HotTrack = False
      Style.TransparentBorder = False
      TabOrder = 2
      Width = 489
    end
    object imgcmbbx_FehltageSoll: TcxDBImageComboBox
      Left = 689
      Top = 124
      DataBinding.DataField = 'Bezahlt'
      DataBinding.DataSource = ds_FT
      Properties.Items = <
        item
          Description = 'keine Sollzeitgutschrift'
          ImageIndex = 0
          Value = 0
        end
        item
          Description = 'Sollzeitgutschrift'
          Value = 1
        end>
      Style.HotTrack = False
      Style.TransparentBorder = False
      TabOrder = 5
      Width = 198
    end
    object imgcmbbx_FehltageGutschrift: TcxDBImageComboBox
      Left = 398
      Top = 124
      DataBinding.DataField = 'Faktor'
      DataBinding.DataSource = ds_FT
      Properties.Alignment.Horz = taLeftJustify
      Properties.Items = <
        item
          Description = 'keine Gutschrift'
          ImageIndex = 0
          Value = 0
        end
        item
          Description = 'Gutschrift ganzer Tag'
          Value = 1
        end
        item
          Description = 'Gutschrift halber Tag'
          Value = 2
        end>
      Style.HotTrack = False
      Style.TransparentBorder = False
      TabOrder = 4
      Width = 199
    end
    object imgcmbbx_FehltageTyp: TcxDBImageComboBox
      Left = 107
      Top = 124
      DataBinding.DataField = 'Typ'
      DataBinding.DataSource = ds_FT
      Properties.Alignment.Horz = taLeftJustify
      Properties.Items = <
        item
          Description = 'Urlaub'
          ImageIndex = 0
          Value = 1
        end
        item
          Description = 'Krankheit'
          Value = 2
        end
        item
          Description = 'Sonderurlaub'
          Value = 3
        end
        item
          Description = 'bezahlte Abwesenheit'
          Value = 4
        end
        item
          Description = 'unbezahlte Abwesenheit'
          Value = 5
        end>
      Style.HotTrack = False
      Style.TransparentBorder = False
      TabOrder = 3
      Width = 199
    end
    object colcmbbx_FehltageFarbeFehltag: TcxDBColorComboBox
      Left = 107
      Top = 154
      DataBinding.DataField = 'Color'
      DataBinding.DataSource = ds_FT
      Properties.AllowSelectColor = True
      Properties.ColorBoxWidth = 170
      Properties.CustomColors = <>
      Properties.DefaultDescription = 'Keine Farbe gew'#228'hlt'
      Properties.NamingConvention = cxncHTML4
      Style.HotTrack = False
      Style.TransparentBorder = False
      TabOrder = 7
      Width = 490
    end
    object colcmbbx_FehltageFarbeFont: TcxDBColorComboBox
      Left = 689
      Top = 154
      DataBinding.DataField = 'ColorFont'
      DataBinding.DataSource = ds_FT
      Properties.AllowSelectColor = True
      Properties.ColorBoxWidth = 170
      Properties.CustomColors = <>
      Properties.NamingConvention = cxncHTML4
      Style.HotTrack = False
      Style.TransparentBorder = False
      TabOrder = 8
      Width = 489
    end
    object imgcmbbx_FehltageSollAbzug: TcxDBImageComboBox
      Left = 979
      Top = 124
      DataBinding.DataField = 'SollAbziehen'
      DataBinding.DataSource = ds_FT
      Properties.Items = <
        item
          Description = 'nicht Abziehen'
          ImageIndex = 0
          Value = 0
        end
        item
          Description = 'Abziehen'
          Value = 1
        end>
      Style.HotTrack = False
      Style.TransparentBorder = False
      TabOrder = 6
      Width = 199
    end
    object lagrp_FehltageRoot: TdxLayoutGroup
      AlignHorz = ahClient
      AlignVert = avClient
      Hidden = True
      ShowBorder = False
      Index = -1
    end
    object laitm_FehltageToolbar: TdxLayoutItem
      Parent = lagrp_FehltageMain
      AlignHorz = ahClient
      AlignVert = avTop
      CaptionOptions.Text = 'brdckCtrl_FT'
      CaptionOptions.Visible = False
      Control = brdckCtrl_Fehltage
      ControlOptions.AutoColor = True
      ControlOptions.OriginalHeight = 58
      ControlOptions.OriginalWidth = 1600
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object lagrp_FehltageDetail: TdxLayoutGroup
      Parent = lagrp_FehltageMain
      AlignHorz = ahClient
      AlignVert = avClient
      CaptionOptions.Text = 'Fehltage'
      Index = 1
    end
    object laitm_FehltageKuerzel: TdxLayoutItem
      Parent = lagrp_FehltageKuerzelBeschreibung
      AlignHorz = ahClient
      AlignVert = avTop
      CaptionOptions.Text = 'K'#252'rzel:'
      CaptionOptions.Width = 80
      Control = edt_FehltageKuerzel
      ControlOptions.OriginalHeight = 23
      ControlOptions.OriginalWidth = 100
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object laitm_FehltageBeschreibung: TdxLayoutItem
      Parent = lagrp_FehltageKuerzelBeschreibung
      AlignHorz = ahClient
      AlignVert = avTop
      CaptionOptions.Text = 'Beschreibung:'
      CaptionOptions.Width = 80
      Control = edt_FehltageDesc
      ControlOptions.OriginalHeight = 23
      ControlOptions.OriginalWidth = 100
      ControlOptions.ShowBorder = False
      Index = 1
    end
    object laitm_FehltageType: TdxLayoutItem
      Parent = lagrp_FehltageDetails
      AlignHorz = ahClient
      AlignVert = avTop
      CaptionOptions.Text = 'Fehltagstyp:'
      CaptionOptions.Width = 80
      Control = imgcmbbx_FehltageTyp
      ControlOptions.OriginalHeight = 23
      ControlOptions.OriginalWidth = 100
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object laitm_FehltageGutschrift: TdxLayoutItem
      Parent = lagrp_FehltageDetails
      AlignHorz = ahClient
      AlignVert = avTop
      CaptionOptions.Text = 'Gutschrift:'
      CaptionOptions.Width = 80
      Control = imgcmbbx_FehltageGutschrift
      ControlOptions.OriginalHeight = 23
      ControlOptions.OriginalWidth = 100
      ControlOptions.ShowBorder = False
      Index = 1
    end
    object laitm_FehltageSoll: TdxLayoutItem
      Parent = lagrp_FehltageDetails
      AlignHorz = ahClient
      AlignVert = avTop
      CaptionOptions.Text = 'Sollstunden:'
      CaptionOptions.Width = 80
      Control = imgcmbbx_FehltageSoll
      ControlOptions.OriginalHeight = 23
      ControlOptions.OriginalWidth = 100
      ControlOptions.ShowBorder = False
      Index = 2
    end
    object laitm_FehltageColorAbsence: TdxLayoutItem
      Parent = lagrp_FehltageColor
      AlignHorz = ahClient
      AlignVert = avTop
      CaptionOptions.Text = 'Farbe Fehltag:'
      CaptionOptions.Width = 80
      Control = colcmbbx_FehltageFarbeFehltag
      ControlOptions.OriginalHeight = 23
      ControlOptions.OriginalWidth = 100
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object laitm_FehltageColorFont: TdxLayoutItem
      Parent = lagrp_FehltageColor
      AlignHorz = ahClient
      AlignVert = avTop
      CaptionOptions.Text = 'Farbe Schrift:'
      CaptionOptions.Width = 80
      Control = colcmbbx_FehltageFarbeFont
      ControlOptions.OriginalHeight = 23
      ControlOptions.OriginalWidth = 100
      ControlOptions.ShowBorder = False
      Index = 1
    end
    object laitm_FehltageGrid: TdxLayoutItem
      Parent = lagrp_FehltageEdit
      AlignHorz = ahClient
      AlignVert = avClient
      CaptionOptions.Text = 'grd_Feiertage'
      CaptionOptions.Visible = False
      Control = grd_Fehltage
      ControlOptions.OriginalHeight = 651
      ControlOptions.OriginalWidth = 1594
      ControlOptions.ShowBorder = False
      Index = 3
    end
    object lagrp_FehltageMain: TdxLayoutGroup
      Parent = lagrp_FehltageRoot
      AlignHorz = ahClient
      AlignVert = avClient
      CaptionOptions.Text = 'New Group'
      ItemIndex = 1
      ShowBorder = False
      Index = 0
    end
    object lagrp_FehltageEdit: TdxLayoutGroup
      Parent = lagrp_FehltageDetail
      AlignHorz = ahClient
      AlignVert = avClient
      CaptionOptions.Text = 'New Group'
      ItemIndex = 3
      ShowBorder = False
      Index = 0
    end
    object lagrp_FehltageKuerzelBeschreibung: TdxLayoutGroup
      Parent = lagrp_FehltageEdit
      AlignHorz = ahClient
      AlignVert = avTop
      CaptionOptions.Text = 'New Group'
      ItemIndex = 1
      LayoutDirection = ldHorizontal
      ShowBorder = False
      Index = 0
    end
    object lagrp_FehltageColor: TdxLayoutGroup
      Parent = lagrp_FehltageEdit
      AlignHorz = ahClient
      AlignVert = avTop
      CaptionOptions.Text = 'New Group'
      LayoutDirection = ldHorizontal
      ShowBorder = False
      Index = 2
    end
    object lagrp_FehltageDetails: TdxLayoutGroup
      Parent = lagrp_FehltageEdit
      AlignHorz = ahClient
      AlignVert = avTop
      CaptionOptions.Text = 'New Group'
      ItemIndex = 3
      LayoutDirection = ldHorizontal
      ShowBorder = False
      Index = 1
    end
    object laitm_FehltageAbzug: TdxLayoutItem
      Parent = lagrp_FehltageDetails
      AlignHorz = ahClient
      AlignVert = avTop
      CaptionOptions.Text = 'Sollzeitabzug:'
      CaptionOptions.Width = 80
      Control = imgcmbbx_FehltageSollAbzug
      ControlOptions.OriginalHeight = 23
      ControlOptions.OriginalWidth = 100
      ControlOptions.ShowBorder = False
      Index = 3
    end
  end
  object qry_FT1: TFDQuery
    Active = True
    AfterOpen = SetButtonsEnabledVisible
    AfterInsert = SetButtonsEnabledVisible
    AfterEdit = SetButtonsEnabledVisible
    AfterPost = SetButtonsEnabledVisible
    AfterCancel = SetButtonsEnabledVisible
    AfterDelete = SetButtonsEnabledVisible
    Connection = dm_PCM.con_PCM
    SQL.Strings = (
      'SELECT *'
      'FROM time_Fehltag'
      'Where ID > 1'
      '')
    Left = 224
    Top = 72
  end
  object ds_FT: TDataSource
    DataSet = qry_FT1
    Left = 224
    Top = 136
  end
  object brmgr_Fehltage: TdxBarManager
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
      DockControl = brdckCtrl_Fehltage
      DockedDockControl = brdckCtrl_Fehltage
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
      Caption = 'Fehltag anlegen'
      Category = 0
      Hint = 'Fehltag anlegen'
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
        323B7D262331333B262331303B2623393B2E59656C6C6F777B66696C6C3A2346
        46423131353B7D262331333B262331303B2623393B2E426C75657B66696C6C3A
        233131373744373B7D262331333B262331303B2623393B2E5265647B66696C6C
        3A234431314331433B7D262331333B262331303B2623393B2E57686974657B66
        696C6C3A234646464646463B7D262331333B262331303B2623393B2E47726565
        6E7B66696C6C3A233033394332333B7D262331333B262331303B2623393B2E73
        74307B66696C6C3A233732373237323B7D262331333B262331303B2623393B2E
        7374317B6F7061636974793A302E353B7D262331333B262331303B2623393B2E
        7374327B6F7061636974793A302E37353B7D3C2F7374796C653E0D0A3C672069
        643D2241646446696C65223E0D0A09093C7061746820636C6173733D22426C61
        636B2220643D224D31362C3236483656346831387631346832563363302D302E
        352D302E352D312D312D31483543342E352C322C342C322E352C342C33763234
        63302C302E352C302E352C312C312C316831315632367A222F3E0D0A09093C70
        6F6C79676F6E20636C6173733D22477265656E2220706F696E74733D2233302C
        32342032362C32342032362C32302032322C32302032322C32342031382C3234
        2031382C32382032322C32382032322C33322032362C33322032362C32382033
        302C3238202623393B222F3E0D0A093C2F673E0D0A3C2F7376673E0D0A}
      OnClick = btn_NewClick
      AutoGrayScale = False
      LargeImageIndex = 1
      Width = 125
    end
    object btn_Save: TdxBarLargeButton
      Caption = 'Fehltag speichern'
      Category = 0
      Hint = 'Fehltag speichern'
      Visible = ivAlways
      LargeGlyph.SourceDPI = 96
      LargeGlyph.Data = {
        3C3F786D6C2076657273696F6E3D22312E302220656E636F64696E673D225554
        462D38223F3E0D0A3C7376672076657273696F6E3D22312E31222069643D224C
        617965725F312220786D6C6E733D22687474703A2F2F7777772E77332E6F7267
        2F323030302F7376672220786D6C6E733A786C696E6B3D22687474703A2F2F77
        77772E77332E6F72672F313939392F786C696E6B2220783D223070782220793D
        22307078222076696577426F783D223020302033322033322220656E61626C65
        2D6261636B67726F756E643D226E6577203020302033322033322220786D6C3A
        73706163653D227072657365727665223E262331333B262331303B3C706F6C79
        676F6E2066696C6C3D22233337374142352220706F696E74733D22322C322032
        2C33302033302C33302033302C362032362C3220222F3E0D0A3C726563742078
        3D22362220793D223134222066696C6C3D222346464646464622207769647468
        3D22323022206865696768743D223134222F3E0D0A3C7265637420783D223622
        20793D223222206F7061636974793D22302E36222066696C6C3D222346464646
        46462220656E61626C652D6261636B67726F756E643D226E6577202020202220
        77696474683D22313822206865696768743D223130222F3E0D0A3C7265637420
        783D2232302220793D2232222066696C6C3D2223333737414235222077696474
        683D223222206865696768743D2238222F3E0D0A3C2F7376673E0D0A}
      OnClick = btn_SaveClick
      AutoGrayScale = False
      LargeImageIndex = 3
      Width = 125
    end
    object btn_Delete: TdxBarLargeButton
      Caption = 'Fehltag l'#246'schen'
      Category = 0
      Hint = 'Fehltag l'#246'schen'
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
        323B7D262331333B262331303B2623393B2E59656C6C6F777B66696C6C3A2346
        46423131353B7D262331333B262331303B2623393B2E426C75657B66696C6C3A
        233131373744373B7D262331333B262331303B2623393B2E477265656E7B6669
        6C6C3A233033394332333B7D262331333B262331303B2623393B2E5265647B66
        696C6C3A234431314331433B7D262331333B262331303B2623393B2E57686974
        657B66696C6C3A234646464646463B7D262331333B262331303B2623393B2E73
        74307B6F7061636974793A302E37353B7D262331333B262331303B2623393B2E
        7374317B6F7061636974793A302E353B7D262331333B262331303B2623393B2E
        7374327B6F7061636974793A302E32353B7D3C2F7374796C653E0D0A3C672069
        643D2244656C6574654C697374223E0D0A09093C7061746820636C6173733D22
        426C61636B2220643D224D362C323656346831387631332E326C322D32563363
        302D302E362D302E342D312D312D31483543342E342C322C342C322E342C342C
        3376323463302C302E362C302E342C312C312C3168382E326C322D3248367A22
        2F3E0D0A09093C706F6C79676F6E20636C6173733D225265642220706F696E74
        733D2232382C32302032362C31382032322C32322031382C31382031362C3230
        2032302C32342031362C32382031382C33302032322C32362032362C33302032
        382C32382032342C3234202623393B222F3E0D0A093C2F673E0D0A3C2F737667
        3E0D0A}
      OnClick = btn_DeleteClick
      AutoGrayScale = False
      LargeImageIndex = 4
      Width = 125
    end
    object btn_Cancel: TdxBarLargeButton
      Caption = 'Abbrechen'
      Category = 0
      Hint = 'Abbrechen'
      Visible = ivAlways
      LargeGlyph.SourceDPI = 96
      LargeGlyph.Data = {
        3C3F786D6C2076657273696F6E3D22312E302220656E636F64696E673D225554
        462D38223F3E0D0A3C7376672076696577426F783D222D36202D362033322033
        322220786D6C6E733D22687474703A2F2F7777772E77332E6F72672F32303030
        2F7376672220786D6C6E733A786C696E6B3D22687474703A2F2F7777772E7733
        2E6F72672F313939392F786C696E6B223E0D0A093C672069643D224C61796572
        5F3122207472616E73666F726D3D227472616E736C617465282D362C202D3629
        22207374796C653D22656E61626C652D6261636B67726F756E643A6E65772030
        2030203332203332223E0D0A09093C672069643D2244656C657465223E0D0A09
        09093C673E0D0A090909093C7061746820643D224D31382E382C2031364C3235
        2E372C20392E314332362E312C20382E372032362E312C20382E312032352E37
        2C20372E374C32342E332C20362E334332332E392C20352E392032332E332C20
        352E392032322E392C20362E334C31362C2031332E324C392E312C20362E3343
        382E372C20352E3920382E312C20352E3920372E372C20362E334C362E332C20
        372E3743352E392C20382E3120352E392C20382E3720362E332C20392E314C31
        332E322C2031364C362E332C2032322E3943352E392C2032332E3320352E392C
        2032332E3920362E332C2032342E334C372E372C2032352E3743382E312C2032
        362E3120382E372C2032362E3120392E312C2032352E374C31362C2031382E38
        4C32322E392C2032352E374332332E332C2032362E312032332E392C2032362E
        312032342E332C2032352E374C32352E372C2032342E334332362E312C203233
        2E392032362E312C2032332E332032352E372C2032322E394C31382E382C2031
        367A222066696C6C3D22233131373744372220636C6173733D22426C7565222F
        3E0D0A0909093C2F673E0D0A09093C2F673E0D0A093C2F673E0D0A093C672069
        643D224C617965725F3122207472616E73666F726D3D227472616E736C617465
        282D362C202D362922207374796C653D22656E61626C652D6261636B67726F75
        6E643A6E657720302030203332203332223E0D0A09093C672069643D2244656C
        657465223E0D0A0909093C673E0D0A090909093C7061746820643D224D31382E
        382C2031364C32352E372C20392E314332362E312C20382E372032362E312C20
        382E312032352E372C20372E374C32342E332C20362E334332332E392C20352E
        392032332E332C20352E392032322E392C20362E334C31362C2031332E324C39
        2E312C20362E3343382E372C20352E3920382E312C20352E3920372E372C2036
        2E334C362E332C20372E3743352E392C20382E3120352E392C20382E3720362E
        332C20392E314C31332E322C2031364C362E332C2032322E3943352E392C2032
        332E3320352E392C2032332E3920362E332C2032342E334C372E372C2032352E
        3743382E312C2032362E3120382E372C2032362E3120392E312C2032352E374C
        31362C2031382E384C32322E392C2032352E374332332E332C2032362E312032
        332E392C2032362E312032342E332C2032352E374C32352E372C2032342E3343
        32362E312C2032332E392032362E312C2032332E332032352E372C2032322E39
        4C31382E382C2031367A222066696C6C3D22233131373744372220636C617373
        3D22426C7565222F3E0D0A0909093C2F673E0D0A09093C2F673E0D0A093C2F67
        3E0D0A3C2F7376673E0D0A}
      OnClick = btn_CancelClick
      AutoGrayScale = False
      LargeImageIndex = 14
      Width = 125
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
      LargeImageIndex = 6
      Width = 125
    end
  end
end
