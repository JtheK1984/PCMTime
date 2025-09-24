object frm_Firma: Tfrm_Firma
  Left = 0
  Top = 0
  Caption = 'PCM - Time: Firma'
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
  object lactrl_Company: TdxLayoutControl
    Left = 0
    Top = 0
    Width = 1200
    Height = 700
    Align = alClient
    TabOrder = 0
    AutoSize = True
    LayoutLookAndFeel = dm_PCM.dxLayoutSkinLookAndFeel1
    object brdckCtrl_Company: TdxBarDockControl
      Left = 12
      Top = 12
      Width = 1176
      Height = 58
      Align = dalNone
      BarManager = brmgr_Config
    end
    object grd_Company: TcxGrid
      Left = 22
      Top = 274
      Width = 1156
      Height = 200
      BorderStyle = cxcbsNone
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      TabOrder = 11
      TabStop = False
      LockedStateImageOptions.Effect = lsieDark
      object grdDBTblView_Company: TcxGridDBTableView
        Navigator.Buttons.CustomButtons = <>
        FilterBox.CustomizeDialog = False
        ScrollbarAnnotations.CustomAnnotations = <>
        DataController.DataSource = ds_Company
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
        object grdDBTblView_CompanyNummer: TcxGridDBColumn
          DataBinding.FieldName = 'Nummer'
          DataBinding.IsNullValueType = True
          SortIndex = 0
          SortOrder = soAscending
          Width = 80
        end
        object grdDBTblView_CompanyBezeichnung: TcxGridDBColumn
          DataBinding.FieldName = 'Bezeichnung'
          DataBinding.IsNullValueType = True
          Width = 250
        end
        object grdDBTblView_CompanyStrasse: TcxGridDBColumn
          DataBinding.FieldName = 'Strasse'
          DataBinding.IsNullValueType = True
          Width = 250
        end
        object grdDBTblView_CompanyPLZ: TcxGridDBColumn
          DataBinding.FieldName = 'PLZ'
          DataBinding.IsNullValueType = True
          Width = 80
        end
        object grdDBTblView_CompanyOrt: TcxGridDBColumn
          DataBinding.FieldName = 'Ort'
          DataBinding.IsNullValueType = True
          Width = 250
        end
        object grdDBTblView_CompanyTelefon: TcxGridDBColumn
          DataBinding.FieldName = 'Telefon'
          DataBinding.IsNullValueType = True
          Width = 150
        end
        object grdDBTblView_CompanyEmail: TcxGridDBColumn
          DataBinding.FieldName = 'Email'
          DataBinding.IsNullValueType = True
          Width = 150
        end
        object grdDBTblView_CompanyInternet: TcxGridDBColumn
          DataBinding.FieldName = 'Internet'
          DataBinding.IsNullValueType = True
          Width = 150
        end
      end
      object grdlvl_Company: TcxGridLevel
        GridView = grdDBTblView_Company
      end
    end
    object edt_FTKuerzel: TcxDBTextEdit
      AlignWithMargins = True
      Left = 107
      Top = 94
      DataBinding.DataField = 'Nummer'
      DataBinding.DataSource = ds_Company
      Properties.Alignment.Horz = taLeftJustify
      Style.HotTrack = False
      Style.TransparentBorder = False
      TabOrder = 1
      Width = 100
    end
    object edt_FTDesc: TcxDBTextEdit
      AlignWithMargins = True
      Left = 107
      Top = 124
      DataBinding.DataField = 'Bezeichnung'
      DataBinding.DataSource = ds_Company
      Style.HotTrack = False
      Style.TransparentBorder = False
      TabOrder = 3
      Width = 1071
    end
    object grd_FT: TcxGrid
      Left = 32
      Top = 498
      Width = 1136
      Height = 170
      BorderStyle = cxcbsNone
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      TabOrder = 12
      TabStop = False
      LockedStateImageOptions.Effect = lsieDark
      object grdDBTblView_FT: TcxGridDBTableView
        Navigator.Buttons.CustomButtons = <>
        FilterBox.CustomizeDialog = False
        ScrollbarAnnotations.CustomAnnotations = <>
        OnCustomDrawCell = grdDBTblView_FTCustomDrawCell
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
        object grdDBTblView_FTJahr: TcxGridDBColumn
          DataBinding.FieldName = 'Jahr'
          DataBinding.IsNullValueType = True
          SortIndex = 0
          SortOrder = soAscending
        end
        object grdDBTblView_FTMonat: TcxGridDBColumn
          DataBinding.FieldName = 'Monat'
          DataBinding.IsNullValueType = True
          SortIndex = 1
          SortOrder = soAscending
        end
        object grdDBTblView_FTTag: TcxGridDBColumn
          DataBinding.FieldName = 'Tag'
          DataBinding.IsNullValueType = True
          SortIndex = 2
          SortOrder = soAscending
        end
        object grdDBTblView_FTBezeichnung: TcxGridDBColumn
          DataBinding.FieldName = 'Bezeichnung'
          DataBinding.IsNullValueType = True
          SortIndex = 3
          SortOrder = soAscending
          Width = 500
        end
        object grdDBTblView_FTKategorie: TcxGridDBColumn
          DataBinding.FieldName = 'Kategorie'
          DataBinding.IsNullValueType = True
        end
      end
      object grdLvl_FT: TcxGridLevel
        GridView = grdDBTblView_FT
      end
    end
    object imgcmbbx_BL: TcxDBImageComboBox
      Left = 901
      Top = 154
      DataBinding.DataField = 'BL'
      DataBinding.DataSource = ds_Company
      Properties.Alignment.Horz = taLeftJustify
      Properties.Items = <
        item
          Description = 'Baden-W'#252'rttemberg'
          ImageIndex = 0
          Value = 0
        end
        item
          Description = 'Bayern'
          Value = 1
        end
        item
          Description = 'Berlin'
          Value = 2
        end
        item
          Description = 'Brandenburg'
          Value = 3
        end
        item
          Description = 'Bremen'
          Value = 4
        end
        item
          Description = 'Hamburg'
          Value = 5
        end
        item
          Description = 'Hessen'
          Value = 6
        end
        item
          Description = 'Mecklenburg-Vorpommern'
          Value = 7
        end
        item
          Description = 'Niedersachsen'
          Value = 8
        end
        item
          Description = 'Nordrhein-Westfalen'
          Value = 9
        end
        item
          Description = 'Rheinland-Pfalz'
          Value = 10
        end
        item
          Description = 'Saarland'
          Value = 11
        end
        item
          Description = 'Sachsen'
          Value = 12
        end
        item
          Description = 'Sachsen-Anhalt'
          Value = 13
        end
        item
          Description = 'Schleswig-Holstein'
          Value = 14
        end
        item
          Description = 'Th'#252'ringen'
          Value = 15
        end>
      Style.HotTrack = False
      Style.TransparentBorder = False
      TabOrder = 7
      Width = 277
    end
    object edt_KontaktStrasse: TcxDBTextEdit
      AlignWithMargins = True
      Left = 107
      Top = 154
      DataBinding.DataField = 'Strasse'
      DataBinding.DataSource = ds_Company
      Style.HotTrack = False
      Style.TransparentBorder = False
      TabOrder = 4
      Width = 280
    end
    object edt_KontaktPLZ: TcxDBTextEdit
      AlignWithMargins = True
      Left = 423
      Top = 154
      DataBinding.DataField = 'PLZ'
      DataBinding.DataSource = ds_Company
      Style.HotTrack = False
      Style.TransparentBorder = False
      TabOrder = 5
      Width = 100
    end
    object edt_KontaktOrt: TcxDBTextEdit
      AlignWithMargins = True
      Left = 556
      Top = 154
      DataBinding.DataField = 'Ort'
      DataBinding.DataSource = ds_Company
      Style.HotTrack = False
      Style.TransparentBorder = False
      TabOrder = 6
      Width = 267
    end
    object imgcmbbx_Arbeitsort: TcxDBImageComboBox
      Left = 277
      Top = 94
      DataBinding.DataField = 'Typ'
      DataBinding.DataSource = ds_Company
      Properties.Alignment.Horz = taLeftJustify
      Properties.Items = <
        item
          Description = 'Hauptsitz'
          ImageIndex = 0
          Value = 1
        end
        item
          Description = 'Arbeitsort'
          Value = 2
        end>
      Style.HotTrack = False
      Style.TransparentBorder = False
      TabOrder = 2
      Width = 901
    end
    object edt_Telefon: TcxDBTextEdit
      AlignWithMargins = True
      Left = 107
      Top = 184
      DataBinding.DataField = 'Telefon'
      DataBinding.DataSource = ds_Company
      Style.HotTrack = False
      Style.TransparentBorder = False
      TabOrder = 8
      Width = 1071
    end
    object edt_Mail: TcxDBTextEdit
      AlignWithMargins = True
      Left = 107
      Top = 214
      DataBinding.DataField = 'Email'
      DataBinding.DataSource = ds_Company
      Style.HotTrack = False
      Style.TransparentBorder = False
      TabOrder = 9
      Width = 1071
    end
    object edt_Internet: TcxDBTextEdit
      AlignWithMargins = True
      Left = 107
      Top = 244
      DataBinding.DataField = 'Internet'
      DataBinding.DataSource = ds_Company
      Style.HotTrack = False
      Style.TransparentBorder = False
      TabOrder = 10
      Width = 1071
    end
    object lagrp_CompRoot: TdxLayoutGroup
      AlignHorz = ahClient
      AlignVert = avClient
      Hidden = True
      ShowBorder = False
      Index = -1
    end
    object laitm_CompToolbar: TdxLayoutItem
      Parent = lagrp_CompMain
      AlignHorz = ahClient
      AlignVert = avTop
      CaptionOptions.Text = 'brdckCtrl_FT'
      CaptionOptions.Visible = False
      Control = brdckCtrl_Company
      ControlOptions.AutoColor = True
      ControlOptions.OriginalHeight = 58
      ControlOptions.OriginalWidth = 1600
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object lagrp_CompDetail: TdxLayoutGroup
      Parent = lagrp_CompMain
      AlignHorz = ahClient
      AlignVert = avClient
      CaptionOptions.Text = 'Fehltage'
      CaptionOptions.Visible = False
      Index = 1
    end
    object laitm_CompKuerzel: TdxLayoutItem
      Parent = lagrp_CompFirma
      CaptionOptions.Text = 'Firmen-Nr.:'
      CaptionOptions.Width = 80
      Control = edt_FTKuerzel
      ControlOptions.OriginalHeight = 23
      ControlOptions.OriginalWidth = 100
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object laitm_CompBeschreibung: TdxLayoutItem
      Parent = lagrp_CompEdit
      AlignHorz = ahClient
      AlignVert = avTop
      CaptionOptions.Text = 'Beschreibung:'
      CaptionOptions.Width = 80
      Control = edt_FTDesc
      ControlOptions.OriginalHeight = 23
      ControlOptions.OriginalWidth = 1582
      ControlOptions.ShowBorder = False
      Index = 1
    end
    object laitm_CompStrasse: TdxLayoutItem
      Parent = lagrp_CompAdresse
      AlignHorz = ahClient
      AlignVert = avTop
      CaptionOptions.Text = 'Stra'#223'e:'
      Control = edt_KontaktStrasse
      ControlOptions.OriginalHeight = 23
      ControlOptions.OriginalWidth = 210
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object laitm_CompPLZ: TdxLayoutItem
      Parent = lagrp_CompAdresse
      AlignHorz = ahLeft
      AlignVert = avTop
      CaptionOptions.Text = 'PLZ:'
      Control = edt_KontaktPLZ
      ControlOptions.OriginalHeight = 23
      ControlOptions.OriginalWidth = 100
      ControlOptions.ShowBorder = False
      Index = 1
    end
    object laitm_CompOrt: TdxLayoutItem
      Parent = lagrp_CompAdresse
      AlignHorz = ahClient
      AlignVert = avTop
      CaptionOptions.Text = 'Ort:'
      Control = edt_KontaktOrt
      ControlOptions.OriginalHeight = 23
      ControlOptions.OriginalWidth = 210
      ControlOptions.ShowBorder = False
      Index = 2
    end
    object laitm_CompGrid: TdxLayoutItem
      Parent = lagrp_CompEdit
      AlignHorz = ahClient
      AlignVert = avTop
      CaptionOptions.Text = 'grd_Feiertage'
      CaptionOptions.Visible = False
      Control = grd_Company
      ControlOptions.OriginalHeight = 200
      ControlOptions.OriginalWidth = 1594
      ControlOptions.ShowBorder = False
      Index = 6
    end
    object lagrp_CompMain: TdxLayoutGroup
      Parent = lagrp_CompRoot
      AlignHorz = ahClient
      AlignVert = avClient
      CaptionOptions.Text = 'New Group'
      ItemIndex = 1
      ShowBorder = False
      Index = 0
    end
    object lagrp_CompEdit: TdxLayoutGroup
      Parent = lagrp_CompDetail
      AlignHorz = ahClient
      AlignVert = avClient
      CaptionOptions.Text = 'New Group'
      ShowBorder = False
      Index = 0
    end
    object lagrp_CompAdresse: TdxLayoutGroup
      Parent = lagrp_CompEdit
      CaptionOptions.Text = 'New Group'
      ItemIndex = 3
      LayoutDirection = ldHorizontal
      ShowBorder = False
      Index = 2
    end
    object laitm_CompTelefon: TdxLayoutItem
      Parent = lagrp_CompEdit
      CaptionOptions.Text = 'Telefon:'
      Control = edt_Telefon
      ControlOptions.OriginalHeight = 23
      ControlOptions.OriginalWidth = 443
      ControlOptions.ShowBorder = False
      Index = 3
    end
    object laitm_CompMail: TdxLayoutItem
      Parent = lagrp_CompEdit
      CaptionOptions.Text = 'E-Mail:'
      Control = edt_Mail
      ControlOptions.OriginalHeight = 23
      ControlOptions.OriginalWidth = 443
      ControlOptions.ShowBorder = False
      Index = 4
    end
    object lagrp_CompInternet: TdxLayoutItem
      Parent = lagrp_CompEdit
      CaptionOptions.Text = 'Internet:'
      Control = edt_Internet
      ControlOptions.OriginalHeight = 23
      ControlOptions.OriginalWidth = 443
      ControlOptions.ShowBorder = False
      Index = 5
    end
    object laitm_CompGridFT: TdxLayoutItem
      Parent = lagrp_CompGridFT
      AlignHorz = ahClient
      AlignVert = avClient
      CaptionOptions.Text = 'New Item'
      CaptionOptions.Visible = False
      Control = grd_FT
      ControlOptions.OriginalHeight = 540
      ControlOptions.OriginalWidth = 1524
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object lagrp_CompGridFT: TdxLayoutGroup
      Parent = lagrp_CompEdit
      AlignHorz = ahClient
      AlignVert = avClient
      CaptionOptions.Text = 'Feiertage f'#252'r Firma:'
      Index = 7
    end
    object laitm_CompBL: TdxLayoutItem
      Parent = lagrp_CompAdresse
      AlignHorz = ahClient
      AlignVert = avTop
      CaptionOptions.Text = 'Bundesland:'
      Control = imgcmbbx_BL
      ControlOptions.OriginalHeight = 23
      ControlOptions.OriginalWidth = 210
      ControlOptions.ShowBorder = False
      Index = 3
    end
    object lagrp_CompFirma: TdxLayoutGroup
      Parent = lagrp_CompEdit
      CaptionOptions.Text = 'New Group'
      ItemIndex = 1
      LayoutDirection = ldHorizontal
      ShowBorder = False
      Index = 0
    end
    object laitm_CompTyp: TdxLayoutItem
      Parent = lagrp_CompFirma
      AlignHorz = ahClient
      AlignVert = avTop
      CaptionOptions.Text = 'Firmentyp:'
      Control = imgcmbbx_Arbeitsort
      ControlOptions.OriginalHeight = 23
      ControlOptions.OriginalWidth = 432
      ControlOptions.ShowBorder = False
      Index = 1
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
      DockControl = brdckCtrl_Company
      DockedDockControl = brdckCtrl_Company
      DockedLeft = 0
      DockedTop = 0
      FloatLeft = 1123
      FloatTop = 2
      FloatClientWidth = 125
      FloatClientHeight = 405
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
          ItemName = 'btn_Maps'
        end
        item
          Visible = True
          ItemName = 'btn_Mail'
        end
        item
          Visible = True
          ItemName = 'btn_Web'
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
      Caption = 'Firma anlegen'
      Category = 0
      Hint = 'Firma anlegen'
      Visible = ivAlways
      OnClick = btn_NewClick
      AutoGrayScale = False
      LargeImageIndex = 0
      Width = 125
    end
    object btn_Save: TdxBarLargeButton
      Caption = 'Firma speichern'
      Category = 0
      Hint = 'Firma speichern'
      Visible = ivAlways
      OnClick = btn_SaveClick
      AutoGrayScale = False
      LargeImageIndex = 1
      Width = 125
    end
    object btn_Delete: TdxBarLargeButton
      Caption = 'Firma l'#246'schen'
      Category = 0
      Hint = 'Firma l'#246'schen'
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
    object btn_Maps: TdxBarLargeButton
      Caption = 'Firma anzeigen'
      Category = 0
      Hint = 'Firma anzeigen'
      Visible = ivAlways
      OnClick = btn_MapsClick
      AutoGrayScale = False
      LargeImageIndex = 22
      Width = 125
    end
    object btn_Mail: TdxBarLargeButton
      Caption = 'E-Mail schreiben'
      Category = 0
      Hint = 'E-Mail schreiben'
      Visible = ivAlways
      OnClick = btn_MailClick
      AutoGrayScale = False
      LargeImageIndex = 24
      Width = 125
    end
    object btn_Web: TdxBarLargeButton
      Caption = 'Seite anzeigen'
      Category = 0
      Hint = 'Seite anzeigen'
      Visible = ivAlways
      OnClick = btn_WebClick
      AutoGrayScale = False
      LargeImageIndex = 25
      Width = 125
    end
  end
  object ds_Company: TDataSource
    DataSet = qry_Company
    Left = 224
    Top = 368
  end
  object qry_Company: TFDQuery
    AfterOpen = SetButtonsEnabledVisible
    AfterInsert = SetButtonsEnabledVisible
    AfterEdit = SetButtonsEnabledVisible
    AfterPost = SetButtonsEnabledVisible
    AfterCancel = SetButtonsEnabledVisible
    AfterDelete = SetButtonsEnabledVisible
    AfterScroll = qry_CompanyAfterScroll
    Connection = dm_PCM.con_PCM
    SQL.Strings = (
      'SELECT *'
      'FROM time_Firma'
      '')
    Left = 224
    Top = 304
  end
  object qry_FT: TFDQuery
    Connection = dm_PCM.con_PCM
    SQL.Strings = (
      
        'Select Jahr, Monat, Tag, Bezeichnung, Kategorie From time_feiert' +
        'age')
    Left = 416
    Top = 568
  end
  object ds_FT: TDataSource
    DataSet = qry_FT
    Left = 416
    Top = 632
  end
end
