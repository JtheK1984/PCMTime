object frm_Zeitplan: Tfrm_Zeitplan
  Left = 0
  Top = 0
  Caption = 'frm_Zeitplan'
  ClientHeight = 866
  ClientWidth = 1126
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -12
  Font.Name = 'Segoe UI'
  Font.Style = []
  OnActivate = FormActivate
  OnShow = FormShow
  TextHeight = 15
  object lactrl_Zeitplan: TdxLayoutControl
    Left = 0
    Top = 0
    Width = 1126
    Height = 866
    Align = alClient
    TabOrder = 0
    LayoutLookAndFeel = dm_PCM.dxLayoutSkinLookAndFeel1
    OptionsImage.Images = dm_PCM.imglst_16x16
    ExplicitWidth = 1132
    object brdckCtrl_WP: TdxBarDockControl
      Left = 10000
      Top = 10000
      Width = 1078
      Height = 58
      Align = dalNone
      BarManager = brmgr_Zeitplan
      Visible = False
    end
    object brdckCtrl_TP: TdxBarDockControl
      Left = 24
      Top = 46
      Width = 1078
      Height = 58
      Align = dalNone
      BarManager = brmgr_Zeitplan
    end
    object edt_TPKuerzel: TcxDBTextEdit
      Left = 109
      Top = 111
      DataBinding.DataField = 'Kuerzel'
      DataBinding.DataSource = ds_ZP
      Style.HotTrack = False
      Style.TransparentBorder = False
      TabOrder = 1
      Width = 993
    end
    object chkbx_PauseFix: TcxDBCheckBox
      Left = 662
      Top = 218
      AutoSize = False
      Caption = 'Feste Pause'
      DataBinding.DataField = 'FestePauseCheck'
      DataBinding.DataSource = ds_ZP
      Style.HotTrack = False
      Style.TransparentBorder = False
      TabOrder = 12
      Transparent = True
      Height = 19
      Width = 169
    end
    object chkbx_PauseMindest: TcxDBCheckBox
      Left = 923
      Top = 218
      AutoSize = False
      Caption = 'Mindestpause'
      DataBinding.DataField = 'MindestPausenCheck'
      DataBinding.DataSource = ds_ZP
      Style.HotTrack = False
      Style.TransparentBorder = False
      TabOrder = 13
      Transparent = True
      Height = 19
      Width = 169
    end
    object grd_WP: TcxGrid
      Left = 10000
      Top = 10000
      Width = 1078
      Height = 461
      BorderStyle = cxcbsNone
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      TabOrder = 26
      TabStop = False
      Visible = False
      LockedStateImageOptions.Effect = lsieDark
      object grdDBTblView_WP: TcxGridDBTableView
        Navigator.Buttons.CustomButtons = <>
        FilterBox.CustomizeDialog = False
        ScrollbarAnnotations.CustomAnnotations = <>
        DataController.DataSource = ds_Wp
        DataController.Filter.PercentWildcard = '*'
        DataController.Filter.UnderscoreWildcard = '?'
        DataController.Options = [dcoAnsiSort, dcoCaseInsensitive, dcoAssignGroupingValues, dcoAssignMasterDetailKeys, dcoSaveExpanding, dcoGroupsAlwaysExpanded]
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
        OptionsView.HeaderFilterButtonShowMode = fbmButton
        OptionsView.IndicatorWidth = 14
        object grdDBTblView_WPID: TcxGridDBColumn
          DataBinding.FieldName = 'ID'
          Visible = False
          Width = 150
        end
        object grdDBTblView_WPBeschreibung: TcxGridDBColumn
          DataBinding.FieldName = 'Beschreibung'
          Width = 150
        end
        object grdDBTblView_WPID_Firma: TcxGridDBColumn
          Caption = 'Firma'
          DataBinding.FieldName = 'ID_Firma'
          Visible = False
          OnGetDisplayText = grdDBTblView_WPID_FirmaGetDisplayText
          GroupIndex = 0
          Width = 150
        end
        object grdDBTblView_W1Mo: TcxGridDBColumn
          Caption = 'Montag'
          DataBinding.FieldName = 'Mon'
          PropertiesClassName = 'TcxLookupComboBoxProperties'
          Properties.KeyFieldNames = 'ID'
          Properties.ListColumns = <
            item
              FieldName = 'Beschreibung'
            end>
          Properties.ListSource = ds_ZP
          Width = 150
        end
        object grdDBTblView_WP2Di: TcxGridDBColumn
          Caption = 'Dienstag'
          DataBinding.FieldName = 'Die'
          PropertiesClassName = 'TcxLookupComboBoxProperties'
          Properties.KeyFieldNames = 'ID'
          Properties.ListColumns = <
            item
              FieldName = 'Beschreibung'
            end>
          Properties.ListSource = ds_ZP
          Width = 150
        end
        object grdDBTblView_WP3Mi: TcxGridDBColumn
          Caption = 'Mittwoch'
          DataBinding.FieldName = 'Mit'
          PropertiesClassName = 'TcxLookupComboBoxProperties'
          Properties.KeyFieldNames = 'ID'
          Properties.ListColumns = <
            item
              FieldName = 'Beschreibung'
            end>
          Properties.ListSource = ds_ZP
          Width = 150
        end
        object grdDBTblView_WP4Do: TcxGridDBColumn
          Caption = 'Donnerstag'
          DataBinding.FieldName = 'Don'
          PropertiesClassName = 'TcxLookupComboBoxProperties'
          Properties.KeyFieldNames = 'ID'
          Properties.ListColumns = <
            item
              FieldName = 'Beschreibung'
            end>
          Properties.ListSource = ds_ZP
          Width = 150
        end
        object grdDBTblView_WP5Fr: TcxGridDBColumn
          Caption = 'Freitag'
          DataBinding.FieldName = 'Fre'
          PropertiesClassName = 'TcxLookupComboBoxProperties'
          Properties.KeyFieldNames = 'ID'
          Properties.ListColumns = <
            item
              FieldName = 'Beschreibung'
            end>
          Properties.ListSource = ds_ZP
          Width = 150
        end
        object grdDBTblView_WP6Sa: TcxGridDBColumn
          Caption = 'Samstag'
          DataBinding.FieldName = 'Sam'
          PropertiesClassName = 'TcxLookupComboBoxProperties'
          Properties.KeyFieldNames = 'ID'
          Properties.ListColumns = <
            item
              FieldName = 'Beschreibung'
            end>
          Properties.ListSource = ds_ZP
          Width = 150
        end
        object grdDBTblView_WP7So: TcxGridDBColumn
          Caption = 'Sonntag'
          DataBinding.FieldName = 'Son'
          PropertiesClassName = 'TcxLookupComboBoxProperties'
          Properties.KeyFieldNames = 'ID'
          Properties.ListColumns = <
            item
              FieldName = 'Beschreibung'
            end>
          Properties.ListSource = ds_ZP
          Width = 150
        end
      end
      object grdlvl_WP: TcxGridLevel
        GridView = grdDBTblView_WP
      end
    end
    object grd_TP: TcxGrid
      Left = 24
      Top = 344
      Width = 1078
      Height = 498
      BorderStyle = cxcbsNone
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      TabOrder = 15
      TabStop = False
      LockedStateImageOptions.Effect = lsieDark
      object grdDBTblView_TP: TcxGridDBTableView
        Navigator.Buttons.CustomButtons = <>
        FilterBox.CustomizeDialog = False
        ScrollbarAnnotations.CustomAnnotations = <>
        DataController.DataSource = ds_ZP
        DataController.Filter.PercentWildcard = '*'
        DataController.Filter.UnderscoreWildcard = '?'
        DataController.Options = [dcoAnsiSort, dcoCaseInsensitive, dcoAssignGroupingValues, dcoAssignMasterDetailKeys, dcoSaveExpanding, dcoGroupsAlwaysExpanded]
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
        OptionsView.HeaderFilterButtonShowMode = fbmButton
        OptionsView.IndicatorWidth = 14
        object grdDBTblView_TPID: TcxGridDBColumn
          DataBinding.FieldName = 'ID'
          Visible = False
        end
        object grdDBTblView_TPKuerzel: TcxGridDBColumn
          DataBinding.FieldName = 'Kuerzel'
          SortIndex = 0
          SortOrder = soAscending
        end
        object grdDBTblView_TPBeschreibung: TcxGridDBColumn
          DataBinding.FieldName = 'Beschreibung'
          Width = 100
        end
        object grdDBTblView_TPID_Firma: TcxGridDBColumn
          Caption = 'Firma'
          DataBinding.FieldName = 'ID_Firma'
          Visible = False
          OnGetDisplayText = grdDBTblView_TPID_FirmaGetDisplayText
          GroupIndex = 0
        end
        object grdDBTblView_TPKommen_Von: TcxGridDBColumn
          Caption = 'Kommen von'
          DataBinding.FieldName = 'Kommen_Von'
          Width = 75
        end
        object grdDBTblView_TPKommen_Bis: TcxGridDBColumn
          Caption = 'Kommen bis'
          DataBinding.FieldName = 'Kommen_Bis'
          Width = 75
        end
        object grdDBTblView_TPGehen_Von: TcxGridDBColumn
          Caption = 'Gehen von'
          DataBinding.FieldName = 'Gehen_Von'
          Width = 75
        end
        object grdDBTblView_TPGehen_Bis: TcxGridDBColumn
          Caption = 'Gehen bis'
          DataBinding.FieldName = 'Gehen_Bis'
          Width = 75
        end
        object grdDBTblView_TPSollzeit: TcxGridDBColumn
          DataBinding.FieldName = 'Sollzeit'
        end
        object grdDBTblView_TPFestPause: TcxGridDBColumn
          Caption = 'Feste Pause'
          DataBinding.FieldName = 'FestePause'
          Width = 80
        end
        object grdDBTblView_TPFestBauseCheck: TcxGridDBColumn
          Caption = 'Pr'#252'fung feste Pause'
          DataBinding.FieldName = 'FestePauseCheck'
          PropertiesClassName = 'TcxCheckBoxProperties'
          Width = 120
        end
        object grdDBTblView_TPMindestPausenCheck: TcxGridDBColumn
          Caption = 'Pr'#252'fung Mindestpause'
          DataBinding.FieldName = 'MindestPausenCheck'
          PropertiesClassName = 'TcxCheckBoxProperties'
          Width = 120
        end
        object grdDBTblView_TPMindestPausenArt: TcxGridDBColumn
          Caption = 'Mindestpausenpr'#252'fung'
          DataBinding.FieldName = 'MindestPausenArt'
          PropertiesClassName = 'TcxImageComboBoxProperties'
          Properties.Alignment.Horz = taLeftJustify
          Properties.Items = <
            item
              Description = 'Mindestpause nach 6 und 9 Stunden'
              ImageIndex = 0
              Value = 1
            end
            item
              Description = 'Mindestpause nach genau 6 und genau 9 Stunden'
              Value = 2
            end>
          Width = 250
        end
        object grdDBTblView_TPTagesnetto: TcxGridDBColumn
          Caption = 'max. H'#246'chst.'
          DataBinding.FieldName = 'Tagesnetto'
          Width = 75
        end
        object grdDBTblView_TPTagesnettoCheck: TcxGridDBColumn
          Caption = 'Pr'#252'fung max. H'#246'chst.'
          DataBinding.FieldName = 'TagesnettoCheck'
          PropertiesClassName = 'TcxCheckBoxProperties'
          Width = 120
        end
      end
      object grdlvl_TP: TcxGridLevel
        GridView = grdDBTblView_TP
      end
    end
    object edt_TPBezeichnung: TcxDBTextEdit
      Left = 109
      Top = 141
      AutoSize = False
      DataBinding.DataField = 'Beschreibung'
      DataBinding.DataSource = ds_ZP
      Style.HotTrack = False
      Style.TransparentBorder = False
      TabOrder = 2
      Height = 23
      Width = 451
    end
    object cmbbx_Firma: TcxDBLookupComboBox
      Left = 652
      Top = 141
      AutoSize = False
      DataBinding.DataField = 'ID_Firma'
      DataBinding.DataSource = ds_ZP
      Properties.KeyFieldNames = 'ID'
      Properties.ListColumns = <
        item
          FieldName = 'Bezeichnung'
        end>
      Properties.ListSource = ds_Firma
      Style.HotTrack = False
      Style.TransparentBorder = False
      TabOrder = 3
      Height = 23
      Width = 450
    end
    object tedt_KommenVon: TcxDBTimeEdit
      Left = 119
      Top = 188
      AutoSize = False
      DataBinding.DataField = 'Kommen_Von'
      DataBinding.DataSource = ds_ZP
      Properties.SpinButtons.Visible = False
      Properties.TimeFormat = tfHourMin
      Style.HotTrack = False
      Style.TransparentBorder = False
      TabOrder = 4
      Height = 23
      Width = 170
    end
    object tedt_Sollzeit: TcxDBTimeEdit
      Left = 119
      Top = 248
      DataBinding.DataField = 'Sollzeit'
      DataBinding.DataSource = ds_ZP
      Properties.SpinButtons.Visible = False
      Properties.TimeFormat = tfHourMin
      Style.HotTrack = False
      Style.TransparentBorder = False
      TabOrder = 8
      Width = 431
    end
    object tedt_GehenBis: TcxDBTimeEdit
      Left = 381
      Top = 218
      DataBinding.DataField = 'Gehen_Bis'
      DataBinding.DataSource = ds_ZP
      Properties.SpinButtons.Visible = False
      Properties.TimeFormat = tfHourMin
      Style.HotTrack = False
      Style.TransparentBorder = False
      TabOrder = 7
      Width = 169
    end
    object tedt_GehenVon: TcxDBTimeEdit
      Left = 119
      Top = 218
      DataBinding.DataField = 'Gehen_Von'
      DataBinding.DataSource = ds_ZP
      Properties.SpinButtons.Visible = False
      Properties.TimeFormat = tfHourMin
      Style.HotTrack = False
      Style.TransparentBorder = False
      TabOrder = 6
      Width = 170
    end
    object tedt_KommenBis: TcxDBTimeEdit
      Left = 381
      Top = 188
      AutoSize = False
      DataBinding.DataField = 'Kommen_Bis'
      DataBinding.DataSource = ds_ZP
      Properties.SpinButtons.Visible = False
      Properties.TimeFormat = tfHourMin
      Style.HotTrack = False
      Style.TransparentBorder = False
      TabOrder = 5
      Height = 23
      Width = 169
    end
    object tedt_FP: TcxDBTimeEdit
      Left = 662
      Top = 188
      DataBinding.DataField = 'FestePause'
      DataBinding.DataSource = ds_ZP
      Properties.SpinButtons.Visible = False
      Properties.TimeFormat = tfHourMin
      Style.HotTrack = False
      Style.TransparentBorder = False
      TabOrder = 11
      Width = 430
    end
    object tedt_tagesnetto: TcxDBTimeEdit
      Left = 119
      Top = 278
      AutoSize = False
      DataBinding.DataField = 'Tagesnetto'
      DataBinding.DataSource = ds_ZP
      Properties.SpinButtons.Visible = False
      Properties.TimeFormat = tfHourMin
      Style.HotTrack = False
      Style.TransparentBorder = False
      TabOrder = 9
      Height = 23
      Width = 431
    end
    object rdgrp_Mindestpause: TcxDBRadioGroup
      Left = 577
      Top = 244
      Caption = 'Mindestpausenpr'#252'fung'
      DataBinding.DataField = 'MindestPausenArt'
      DataBinding.DataSource = ds_ZP
      Properties.Items = <
        item
          Caption = 'Mindestpause nach 6 und 9 Stunden'
          Value = 1
        end
        item
          Caption = 'Mindestpause nach genau 6 und genau 9 Stunden'
          Value = 2
        end>
      Style.TransparentBorder = False
      TabOrder = 14
      Height = 81
      Width = 515
    end
    object lucmbbx_Firma: TcxDBLookupComboBox
      Left = 10000
      Top = 10000
      AutoSize = False
      DataBinding.DataField = 'ID_Firma'
      DataBinding.DataSource = ds_Wp
      Properties.KeyFieldNames = 'ID'
      Properties.ListColumns = <
        item
          FieldName = 'Bezeichnung'
        end>
      Properties.ListSource = ds_Firma
      Style.HotTrack = False
      Style.TransparentBorder = False
      TabOrder = 17
      Visible = False
      Height = 23
      Width = 1001
    end
    object cxDBTextEdit1: TcxDBTextEdit
      Left = 10000
      Top = 10000
      DataBinding.DataField = 'Beschreibung'
      DataBinding.DataSource = ds_Wp
      Style.HotTrack = False
      Style.TransparentBorder = False
      TabOrder = 18
      Visible = False
      Width = 1001
    end
    object lucmbbx_1Montag: TcxDBLookupComboBox
      Left = 10000
      Top = 10000
      DataBinding.DataField = 'Mon'
      DataBinding.DataSource = ds_Wp
      Properties.KeyFieldNames = 'ID'
      Properties.ListColumns = <
        item
          FieldName = 'Beschreibung'
        end>
      Properties.ListSource = ds_ZP
      Style.HotTrack = False
      Style.TransparentBorder = False
      TabOrder = 19
      Visible = False
      Width = 1001
    end
    object lucmbbx_2Dienstag: TcxDBLookupComboBox
      Left = 10000
      Top = 10000
      DataBinding.DataField = 'Die'
      DataBinding.DataSource = ds_Wp
      Properties.KeyFieldNames = 'ID'
      Properties.ListColumns = <
        item
          FieldName = 'Beschreibung'
        end>
      Properties.ListSource = ds_ZP
      Style.HotTrack = False
      Style.TransparentBorder = False
      TabOrder = 20
      Visible = False
      Width = 1001
    end
    object lucmbbx_3Mittwoch: TcxDBLookupComboBox
      Left = 10000
      Top = 10000
      DataBinding.DataField = 'Mit'
      DataBinding.DataSource = ds_Wp
      Properties.KeyFieldNames = 'ID'
      Properties.ListColumns = <
        item
          FieldName = 'Beschreibung'
        end>
      Properties.ListSource = ds_ZP
      Style.HotTrack = False
      Style.TransparentBorder = False
      TabOrder = 21
      Visible = False
      Width = 1001
    end
    object lucmbbx_7Sonntag: TcxDBLookupComboBox
      Left = 10000
      Top = 10000
      DataBinding.DataField = 'Son'
      DataBinding.DataSource = ds_Wp
      Properties.KeyFieldNames = 'ID'
      Properties.ListColumns = <
        item
          FieldName = 'Beschreibung'
        end>
      Properties.ListSource = ds_ZP
      Style.HotTrack = False
      Style.TransparentBorder = False
      TabOrder = 25
      Visible = False
      Width = 1001
    end
    object lucmbbx_6Samstag: TcxDBLookupComboBox
      Left = 10000
      Top = 10000
      DataBinding.DataField = 'Sam'
      DataBinding.DataSource = ds_Wp
      Properties.KeyFieldNames = 'ID'
      Properties.ListColumns = <
        item
          FieldName = 'Beschreibung'
        end>
      Properties.ListSource = ds_ZP
      Style.HotTrack = False
      Style.TransparentBorder = False
      TabOrder = 24
      Visible = False
      Width = 1001
    end
    object lucmbbx_5Freitag: TcxDBLookupComboBox
      Left = 10000
      Top = 10000
      DataBinding.DataField = 'Fre'
      DataBinding.DataSource = ds_Wp
      Properties.KeyFieldNames = 'ID'
      Properties.ListColumns = <
        item
          FieldName = 'Beschreibung'
        end>
      Properties.ListSource = ds_ZP
      Style.HotTrack = False
      Style.TransparentBorder = False
      TabOrder = 23
      Visible = False
      Width = 1001
    end
    object lucmbbx_4Donnerstag: TcxDBLookupComboBox
      Left = 10000
      Top = 10000
      DataBinding.DataField = 'Don'
      DataBinding.DataSource = ds_Wp
      Properties.KeyFieldNames = 'ID'
      Properties.ListColumns = <
        item
          FieldName = 'Beschreibung'
        end>
      Properties.ListSource = ds_ZP
      Style.HotTrack = False
      Style.TransparentBorder = False
      TabOrder = 22
      Visible = False
      Width = 1001
    end
    object cxDBCheckBox1: TcxDBCheckBox
      Left = 119
      Top = 308
      AutoSize = False
      Caption = 'maximale H'#246'chstarbeitszeit'
      DataBinding.DataField = 'TagesnettoCheck'
      DataBinding.DataSource = ds_ZP
      Style.HotTrack = False
      Style.TransparentBorder = False
      TabOrder = 10
      Transparent = True
      Height = 19
      Width = 431
    end
    object lactrl_ZeitplanGroup_Root: TdxLayoutGroup
      AlignHorz = ahClient
      AlignVert = avClient
      Hidden = True
      ShowBorder = False
      Index = -1
    end
    object lagrp_Zeitplan: TdxLayoutGroup
      Parent = lactrl_ZeitplanGroup_Root
      AlignHorz = ahClient
      AlignVert = avClient
      CaptionOptions.Text = 'New Group'
      LayoutDirection = ldTabbed
      ShowBorder = False
      Index = 0
    end
    object lagrp_ZeitplanTag: TdxLayoutGroup
      Parent = lagrp_Zeitplan
      AlignHorz = ahClient
      AlignVert = avClient
      CaptionOptions.ImageIndex = 36
      CaptionOptions.Text = 'Tagesplan'
      ItemIndex = 3
      Index = 0
    end
    object lagrp_ZeitplanWoche: TdxLayoutGroup
      Parent = lagrp_Zeitplan
      AlignHorz = ahClient
      AlignVert = avClient
      CaptionOptions.ImageIndex = 38
      CaptionOptions.Text = 'Wochenplan'
      ItemIndex = 1
      Index = 1
    end
    object laitm_ZeitplanTagBar: TdxLayoutItem
      Parent = lagrp_ZeitplanTag
      AlignHorz = ahClient
      AlignVert = avTop
      CaptionOptions.Text = 'New Item'
      CaptionOptions.Visible = False
      Control = brdckCtrl_TP
      ControlOptions.AutoColor = True
      ControlOptions.OriginalHeight = 58
      ControlOptions.OriginalWidth = 917
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object dxLayoutItem2: TdxLayoutItem
      Parent = lagrp_ZeitplanWoche
      AlignHorz = ahClient
      AlignVert = avTop
      CaptionOptions.Text = 'New Item'
      CaptionOptions.Visible = False
      Control = brdckCtrl_WP
      ControlOptions.AutoColor = True
      ControlOptions.OriginalHeight = 58
      ControlOptions.OriginalWidth = 624
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object dxLayoutGroup4: TdxLayoutGroup
      Parent = lagrp_ZeitplanWoche
      AlignHorz = ahClient
      AlignVert = avClient
      CaptionOptions.Text = 'New Group'
      ItemIndex = 9
      ShowBorder = False
      Index = 1
    end
    object dxLayoutItem3: TdxLayoutItem
      Parent = dxLayoutGroup4
      AlignHorz = ahClient
      AlignVert = avTop
      CaptionOptions.Text = 'Firma:'
      Control = lucmbbx_Firma
      ControlOptions.OriginalHeight = 23
      ControlOptions.OriginalWidth = 450
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object dxLayoutItem4: TdxLayoutItem
      Parent = dxLayoutGroup4
      AlignHorz = ahClient
      AlignVert = avTop
      CaptionOptions.Text = 'Bezeichnung:'
      Control = cxDBTextEdit1
      ControlOptions.OriginalHeight = 23
      ControlOptions.OriginalWidth = 121
      ControlOptions.ShowBorder = False
      Index = 1
    end
    object dxLayoutItem12: TdxLayoutItem
      Parent = dxLayoutGroup4
      AlignHorz = ahClient
      AlignVert = avClient
      CaptionOptions.Text = 'New Item'
      CaptionOptions.Visible = False
      Control = grd_WP
      ControlOptions.OriginalHeight = 494
      ControlOptions.OriginalWidth = 1156
      ControlOptions.ShowBorder = False
      Index = 9
    end
    object lagrp_ZeitplanTagDetails: TdxLayoutGroup
      Parent = lagrp_ZeitplanTag
      AlignHorz = ahClient
      AlignVert = avTop
      CaptionOptions.Text = 'New Group'
      ItemIndex = 1
      LayoutDirection = ldHorizontal
      ShowBorder = False
      Index = 2
    end
    object laitm_ZeitplanTagKuerzel: TdxLayoutItem
      Parent = lagrp_ZeitplanTag
      AlignHorz = ahClient
      AlignVert = avTop
      CaptionOptions.Text = 'K'#252'rzel:'
      CaptionOptions.Width = 80
      Control = edt_TPKuerzel
      ControlOptions.OriginalHeight = 23
      ControlOptions.OriginalWidth = 60
      ControlOptions.ShowBorder = False
      Index = 1
    end
    object laitm_ZeitplanTagBez: TdxLayoutItem
      Parent = lagrp_ZeitplanTagDetails
      AlignHorz = ahClient
      AlignVert = avTop
      CaptionOptions.Text = 'Bezeichnung:'
      CaptionOptions.Width = 80
      Control = edt_TPBezeichnung
      ControlOptions.OriginalHeight = 23
      ControlOptions.OriginalWidth = 121
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object laitm_ZeitplanTagFirma: TdxLayoutItem
      Parent = lagrp_ZeitplanTagDetails
      AlignHorz = ahClient
      AlignVert = avTop
      CaptionOptions.Text = 'Firma:'
      CaptionOptions.Width = 80
      Control = cmbbx_Firma
      ControlOptions.OriginalHeight = 23
      ControlOptions.OriginalWidth = 121
      ControlOptions.ShowBorder = False
      Index = 1
    end
    object lagrp_ZeitplanTagArbeitsplanKommen: TdxLayoutGroup
      Parent = lagrp_ZeitplanTagArbeitsplan
      AlignHorz = ahClient
      AlignVert = avTop
      CaptionOptions.Text = 'New Group'
      ItemIndex = 1
      LayoutDirection = ldHorizontal
      ShowBorder = False
      Index = 0
    end
    object dxLayoutItem16: TdxLayoutItem
      Parent = lagrp_ZeitplanTagArbeitsplanKommen
      AlignHorz = ahClient
      AlignVert = avTop
      CaptionOptions.Text = 'Kommen von:'
      CaptionOptions.Width = 80
      Control = tedt_KommenVon
      ControlOptions.OriginalHeight = 23
      ControlOptions.OriginalWidth = 121
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object dxLayoutItem17: TdxLayoutItem
      Parent = lagrp_ZeitplanTagArbeitsplanKommen
      AlignHorz = ahClient
      AlignVert = avTop
      CaptionOptions.Text = 'Kommen bis:'
      CaptionOptions.Width = 80
      Control = tedt_KommenBis
      ControlOptions.OriginalHeight = 23
      ControlOptions.OriginalWidth = 121
      ControlOptions.ShowBorder = False
      Index = 1
    end
    object lagrp_ZeitplanTagArbeitsplanGehen: TdxLayoutGroup
      Parent = lagrp_ZeitplanTagArbeitsplan
      AlignHorz = ahClient
      AlignVert = avTop
      CaptionOptions.Text = 'New Group'
      ItemIndex = 1
      LayoutDirection = ldHorizontal
      ShowBorder = False
      Index = 1
    end
    object dxLayoutItem18: TdxLayoutItem
      Parent = lagrp_ZeitplanTagArbeitsplanGehen
      AlignHorz = ahClient
      AlignVert = avTop
      CaptionOptions.Text = 'Gehen von:'
      CaptionOptions.Width = 80
      Control = tedt_GehenVon
      ControlOptions.OriginalHeight = 23
      ControlOptions.OriginalWidth = 121
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object dxLayoutItem19: TdxLayoutItem
      Parent = lagrp_ZeitplanTagArbeitsplanGehen
      AlignHorz = ahClient
      AlignVert = avTop
      CaptionOptions.Text = 'Gehen bis:'
      CaptionOptions.Width = 80
      Control = tedt_GehenBis
      ControlOptions.OriginalHeight = 23
      ControlOptions.OriginalWidth = 121
      ControlOptions.ShowBorder = False
      Index = 1
    end
    object laitm_ZeitplanTagArbeitsplanSollzeit: TdxLayoutItem
      Parent = lagrp_ZeitplanTagArbeitsplan
      AlignHorz = ahClient
      AlignVert = avTop
      CaptionOptions.Text = 'Sollzeit:'
      CaptionOptions.Width = 80
      Control = tedt_Sollzeit
      ControlOptions.OriginalHeight = 23
      ControlOptions.OriginalWidth = 121
      ControlOptions.ShowBorder = False
      Index = 2
    end
    object dxLayoutItem21: TdxLayoutItem
      Parent = lagrp_ZeitplanTagPausenDetail
      AlignHorz = ahClient
      AlignVert = avTop
      CaptionOptions.Text = 'Feste Pause:'
      CaptionOptions.Width = 80
      Control = tedt_FP
      ControlOptions.OriginalHeight = 23
      ControlOptions.OriginalWidth = 121
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object lagrp_ZeitplanTagPausen: TdxLayoutGroup
      Parent = dxLayoutGroup5
      AlignHorz = ahClient
      AlignVert = avTop
      CaptionOptions.Text = 'New Group'
      ShowBorder = False
      Index = 1
    end
    object dxLayoutItem22: TdxLayoutItem
      Parent = lagrp_ZeitplanTagPausenCheck
      AlignHorz = ahClient
      AlignVert = avTop
      CaptionOptions.Text = 'Pr'#252'fung auf:'
      CaptionOptions.Width = 80
      Control = chkbx_PauseFix
      ControlOptions.OriginalHeight = 19
      ControlOptions.OriginalWidth = 121
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object dxLayoutItem24: TdxLayoutItem
      Parent = lagrp_ZeitplanTagPausenDetail
      AlignHorz = ahClient
      AlignVert = avTop
      CaptionOptions.Text = 'Mindespausen'
      CaptionOptions.Visible = False
      Control = rdgrp_Mindestpause
      ControlOptions.AutoColor = True
      ControlOptions.OriginalHeight = 81
      ControlOptions.OriginalWidth = 185
      ControlOptions.ShowBorder = False
      Index = 2
    end
    object dxLayoutItem1: TdxLayoutItem
      Parent = lagrp_ZeitplanTag
      AlignHorz = ahClient
      AlignVert = avClient
      CaptionOptions.Text = 'New Item'
      CaptionOptions.Visible = False
      Control = grd_TP
      ControlOptions.OriginalHeight = 494
      ControlOptions.OriginalWidth = 795
      ControlOptions.ShowBorder = False
      Index = 4
    end
    object lagrp_ZeitplanTagPausenDetail: TdxLayoutGroup
      Parent = lagrp_ZeitplanTagPausen
      AlignHorz = ahClient
      AlignVert = avTop
      CaptionOptions.Text = 'Pausen'
      ItemIndex = 1
      Index = 0
    end
    object dxLayoutItem13: TdxLayoutItem
      Parent = lagrp_ZeitplanTagPausenCheck
      AlignHorz = ahClient
      AlignVert = avTop
      CaptionOptions.Text = ' '
      CaptionOptions.Width = 80
      Control = chkbx_PauseMindest
      ControlOptions.OriginalHeight = 19
      ControlOptions.OriginalWidth = 121
      ControlOptions.ShowBorder = False
      Index = 1
    end
    object lagrp_ZeitplanTagPausenCheck: TdxLayoutGroup
      Parent = lagrp_ZeitplanTagPausenDetail
      AlignHorz = ahClient
      AlignVert = avTop
      CaptionOptions.Text = 'New Group'
      LayoutDirection = ldHorizontal
      ShowBorder = False
      Index = 1
    end
    object lagrp_ZeitplanTagArbeitsplan: TdxLayoutGroup
      Parent = dxLayoutGroup5
      AlignHorz = ahClient
      AlignVert = avTop
      CaptionOptions.Text = 'Arbeitsplan'
      ItemIndex = 4
      Index = 0
    end
    object dxLayoutGroup5: TdxLayoutGroup
      Parent = lagrp_ZeitplanTag
      AlignHorz = ahClient
      AlignVert = avTop
      CaptionOptions.Text = 'lagrp_ZeitplanTagArbeitsplanPausen'
      ItemIndex = 1
      LayoutDirection = ldHorizontal
      ShowBorder = False
      Index = 3
    end
    object laitm_ZeitplanTagArbeitsplanMaxNetto: TdxLayoutItem
      Parent = lagrp_ZeitplanTagArbeitsplan
      AlignHorz = ahClient
      AlignVert = avTop
      CaptionOptions.Text = 'max. H'#246'chst.:'
      Control = tedt_tagesnetto
      ControlOptions.OriginalHeight = 23
      ControlOptions.OriginalWidth = 121
      ControlOptions.ShowBorder = False
      Index = 3
    end
    object dxLayoutItem15: TdxLayoutItem
      Parent = dxLayoutGroup4
      AlignHorz = ahClient
      AlignVert = avTop
      CaptionOptions.Text = 'Montag:'
      Control = lucmbbx_1Montag
      ControlOptions.OriginalHeight = 23
      ControlOptions.OriginalWidth = 145
      ControlOptions.ShowBorder = False
      Index = 2
    end
    object dxLayoutItem23: TdxLayoutItem
      Parent = dxLayoutGroup4
      AlignHorz = ahClient
      AlignVert = avTop
      CaptionOptions.Text = 'Dienstag:'
      Control = lucmbbx_2Dienstag
      ControlOptions.OriginalHeight = 23
      ControlOptions.OriginalWidth = 145
      ControlOptions.ShowBorder = False
      Index = 3
    end
    object dxLayoutItem25: TdxLayoutItem
      Parent = dxLayoutGroup4
      AlignHorz = ahClient
      AlignVert = avTop
      CaptionOptions.Text = 'Mittwoch:'
      Control = lucmbbx_3Mittwoch
      ControlOptions.OriginalHeight = 23
      ControlOptions.OriginalWidth = 145
      ControlOptions.ShowBorder = False
      Index = 4
    end
    object dxLayoutItem26: TdxLayoutItem
      Parent = dxLayoutGroup4
      AlignHorz = ahClient
      AlignVert = avTop
      CaptionOptions.Text = 'Sonntag:'
      Control = lucmbbx_7Sonntag
      ControlOptions.OriginalHeight = 23
      ControlOptions.OriginalWidth = 145
      ControlOptions.ShowBorder = False
      Index = 8
    end
    object dxLayoutItem27: TdxLayoutItem
      Parent = dxLayoutGroup4
      AlignHorz = ahClient
      AlignVert = avTop
      CaptionOptions.Text = 'Samstag:'
      Control = lucmbbx_6Samstag
      ControlOptions.OriginalHeight = 23
      ControlOptions.OriginalWidth = 145
      ControlOptions.ShowBorder = False
      Index = 7
    end
    object dxLayoutItem28: TdxLayoutItem
      Parent = dxLayoutGroup4
      AlignHorz = ahClient
      AlignVert = avTop
      CaptionOptions.Text = 'Freitag:'
      Control = lucmbbx_5Freitag
      ControlOptions.OriginalHeight = 23
      ControlOptions.OriginalWidth = 145
      ControlOptions.ShowBorder = False
      Index = 6
    end
    object dxLayoutItem29: TdxLayoutItem
      Parent = dxLayoutGroup4
      AlignHorz = ahClient
      AlignVert = avTop
      CaptionOptions.Text = 'Donnerstag:'
      Control = lucmbbx_4Donnerstag
      ControlOptions.OriginalHeight = 23
      ControlOptions.OriginalWidth = 145
      ControlOptions.ShowBorder = False
      Index = 5
    end
    object laitm_ZeitplanTagArbeitsplanMaxNettoCheck: TdxLayoutItem
      Parent = lagrp_ZeitplanTagArbeitsplan
      CaptionOptions.Text = 'Pr'#252'fung auf:'
      Control = cxDBCheckBox1
      ControlOptions.OriginalHeight = 19
      ControlOptions.OriginalWidth = 169
      ControlOptions.ShowBorder = False
      Index = 4
    end
  end
  object brmgr_Zeitplan: TdxBarManager
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -12
    Font.Name = 'Segoe UI'
    Font.Style = []
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
    Left = 240
    Top = 408
    PixelsPerInch = 96
    object tb_Wochenplan: TdxBar
      Caption = 'Custom 1'
      CaptionButtons = <>
      DockControl = brdckCtrl_WP
      DockedDockControl = brdckCtrl_WP
      DockedLeft = 0
      DockedTop = 0
      FloatLeft = 652
      FloatTop = 2
      FloatClientWidth = 0
      FloatClientHeight = 0
      ItemLinks = <
        item
          Visible = True
          ItemName = 'btn_WPNew'
        end
        item
          Visible = True
          ItemName = 'btn_WPSave'
        end
        item
          Visible = True
          ItemName = 'btn_WPCancel'
        end
        item
          Visible = True
          ItemName = 'btn_WPDelete'
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
    object tb_Tagesplan: TdxBar
      Caption = 'Custom 2'
      CaptionButtons = <>
      DockControl = brdckCtrl_TP
      DockedDockControl = brdckCtrl_TP
      DockedLeft = 0
      DockedTop = 0
      FloatLeft = 946
      FloatTop = 3
      FloatClientWidth = 0
      FloatClientHeight = 0
      ItemLinks = <
        item
          Visible = True
          ItemName = 'btn_TPNew'
        end
        item
          Visible = True
          ItemName = 'btn_TPSave'
        end
        item
          Visible = True
          ItemName = 'btn_TPCancel'
        end
        item
          Visible = True
          ItemName = 'btn_TPDelete'
        end>
      OneOnRow = True
      Row = 0
      ShowMark = False
      UseOwnFont = False
      UseRestSpace = True
      Visible = True
      WholeRow = False
    end
    object btn_WPNew: TdxBarLargeButton
      Caption = 'Wochenplan anlegen'
      Category = 0
      Hint = 'Wochenplan anlegen'
      Visible = ivAlways
      OnClick = btn_WPNewClick
      AutoGrayScale = False
      LargeImageIndex = 0
      Width = 125
    end
    object btn_WPSave: TdxBarLargeButton
      Caption = 'Wochenplan speichern'
      Category = 0
      Hint = 'Wochenplan speichern'
      Visible = ivAlways
      OnClick = btn_WPSaveClick
      AutoGrayScale = False
      LargeImageIndex = 1
      Width = 125
    end
    object btn_WPCancel: TdxBarLargeButton
      Caption = 'Abbrechen'
      Category = 0
      Hint = 'Abbrechen'
      Visible = ivAlways
      OnClick = btn_WPCancelClick
      AutoGrayScale = False
      LargeImageIndex = 2
      Width = 125
    end
    object btn_WPDelete: TdxBarLargeButton
      Caption = 'Wochenplan l'#246'schen'
      Category = 0
      Hint = 'Wochenplan l'#246'schen'
      Visible = ivAlways
      OnClick = btn_WPDeleteClick
      AutoGrayScale = False
      LargeImageIndex = 3
      Width = 125
    end
    object btn_TPNew: TdxBarLargeButton
      Caption = 'Tagesplan anlegen'
      Category = 0
      Hint = 'Tagesplan anlegen'
      Visible = ivAlways
      OnClick = btn_TPNewClick
      AutoGrayScale = False
      LargeImageIndex = 0
      Width = 125
    end
    object btn_TPSave: TdxBarLargeButton
      Caption = 'Tagesplan speichern'
      Category = 0
      Hint = 'Tagesplan speichern'
      Visible = ivAlways
      OnClick = btn_TPSaveClick
      AutoGrayScale = False
      LargeImageIndex = 1
      Width = 125
    end
    object btn_TPCancel: TdxBarLargeButton
      Caption = 'Abbrechen'
      Category = 0
      Hint = 'Abbrechen'
      Visible = ivAlways
      OnClick = btn_TPCancelClick
      AutoGrayScale = False
      LargeImageIndex = 2
      Width = 125
    end
    object btn_TPDelete: TdxBarLargeButton
      Caption = 'Tagesplan l'#246'schen'
      Category = 0
      Hint = 'Tagesplan l'#246'schen'
      Visible = ivAlways
      OnClick = btn_TPDeleteClick
      AutoGrayScale = False
      LargeImageIndex = 3
      Width = 125
    end
  end
  object qry_ZP: TFDQuery
    Active = True
    AfterOpen = SetButtonsEnabledVisible
    AfterInsert = SetButtonsEnabledVisible
    AfterEdit = SetButtonsEnabledVisible
    AfterPost = SetButtonsEnabledVisible
    AfterCancel = SetButtonsEnabledVisible
    AfterDelete = SetButtonsEnabledVisible
    Connection = dm_PCM.con_PCM
    SQL.Strings = (
      'Select * From time_zeitplan')
    Left = 456
    Top = 440
  end
  object ds_ZP: TDataSource
    DataSet = qry_ZP
    Left = 456
    Top = 504
  end
  object qry_Firma: TFDQuery
    Connection = dm_PCM.con_PCM
    SQL.Strings = (
      
        'Select null as ID, null as Nummer , '#39'<F'#252'r alle Firmen g'#252'ltig>'#39' a' +
        's Bezeichnung, '#39#39' as Typ '
      'union all'
      
        'Select ID, Nummer, Bezeichnung, if(Typ = 1, '#39'Hauptsitz'#39', '#39'Arbeit' +
        'sort'#39') as Typ From time_Firma')
    Left = 889
    Top = 458
  end
  object ds_Firma: TDataSource
    DataSet = qry_Firma
    Left = 889
    Top = 531
  end
  object qry_wp: TFDQuery
    Active = True
    AfterOpen = SetButtonsEnabledVisible
    AfterInsert = SetButtonsEnabledVisible
    AfterEdit = SetButtonsEnabledVisible
    AfterPost = SetButtonsEnabledVisible
    AfterCancel = SetButtonsEnabledVisible
    AfterDelete = SetButtonsEnabledVisible
    Connection = dm_PCM.con_PCM
    SQL.Strings = (
      'Select * From time_wochenplan')
    Left = 368
    Top = 472
  end
  object ds_Wp: TDataSource
    DataSet = qry_wp
    Left = 368
    Top = 536
  end
end
