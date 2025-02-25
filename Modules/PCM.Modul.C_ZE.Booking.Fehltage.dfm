object frm_Fehltage: Tfrm_Fehltage
  Left = 0
  Top = 0
  BorderIcons = []
  Caption = 'PCM - Zeiterfassung: Fehltage'
  ClientHeight = 900
  ClientWidth = 1600
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -12
  Font.Name = 'Segoe UI'
  Font.Style = []
  Position = poScreenCenter
  OnCreate = FormCreate
  TextHeight = 15
  object dxLayoutControl1: TdxLayoutControl
    Left = 0
    Top = 0
    Width = 1600
    Height = 900
    Align = alClient
    TabOrder = 0
    AutoSize = True
    LayoutLookAndFeel = dm_PCM.dxLayoutSkinLookAndFeel1
    object brdckCtrl_FT: TdxBarDockControl
      Left = 12
      Top = 12
      Width = 1576
      Height = 63
      Align = dalNone
      BarManager = brmgr_Config
    end
    object grd_Feiertage: TcxGrid
      Left = 21
      Top = 172
      Width = 1558
      Height = 651
      BorderStyle = cxcbsNone
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      TabOrder = 8
      TabStop = False
      LockedStateImageOptions.Effect = lsieDark
      object grdDBTblView_Feiertage: TcxGridDBTableView
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
        object grdDBTblView_FeiertageKuerzel: TcxGridDBColumn
          Caption = 'K'#252'rzel'
          DataBinding.FieldName = 'Kuerzel'
          DataBinding.IsNullValueType = True
          Width = 100
        end
        object grdDBTblView_FeiertageBeschreibung: TcxGridDBColumn
          DataBinding.FieldName = 'Beschreibung'
          DataBinding.IsNullValueType = True
          Width = 300
        end
        object grdDBTblView_FeiertageTyp: TcxGridDBColumn
          Caption = 'Fehltagstyp'
          DataBinding.FieldName = 'Typ'
          DataBinding.IsNullValueType = True
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
            end>
          Width = 300
        end
        object grdDBTblView_FeiertageFaktor: TcxGridDBColumn
          Caption = 'Gutschrift'
          DataBinding.FieldName = 'Faktor'
          DataBinding.IsNullValueType = True
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
          Width = 300
        end
        object grdDBTblView_FeiertageBezahlt: TcxGridDBColumn
          Caption = 'Sollstunden'
          DataBinding.FieldName = 'Bezahlt'
          DataBinding.IsNullValueType = True
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
          Width = 300
        end
        object grdDBTblView_FeiertageColor: TcxGridDBColumn
          Caption = 'Termin'
          DataBinding.FieldName = 'Color'
          DataBinding.IsNullValueType = True
          PropertiesClassName = 'TcxColorComboBoxProperties'
          Properties.ColorBoxWidth = 66
          Properties.CustomColors = <>
          Properties.NamingConvention = cxncHTML4
          Width = 70
        end
        object grdDBTblView_FeiertageColorFont: TcxGridDBColumn
          Caption = 'Schrift'
          DataBinding.FieldName = 'ColorFont'
          DataBinding.IsNullValueType = True
          PropertiesClassName = 'TcxColorComboBoxProperties'
          Properties.ColorBoxWidth = 66
          Properties.CustomColors = <>
          Properties.NamingConvention = cxncHTML4
          Width = 70
        end
      end
      object grdlvl_Feiertage: TcxGridLevel
        GridView = grdDBTblView_Feiertage
      end
    end
    object edt_FTKuerzel: TcxDBTextEdit
      AlignWithMargins = True
      Left = 106
      Top = 116
      DataBinding.DataField = 'Kuerzel'
      DataBinding.DataSource = ds_FT
      Style.HotTrack = False
      Style.TransparentBorder = False
      TabOrder = 1
      Width = 691
    end
    object edt_FTDesc: TcxDBTextEdit
      AlignWithMargins = True
      Left = 889
      Top = 116
      DataBinding.DataField = 'Beschreibung'
      DataBinding.DataSource = ds_FT
      Style.HotTrack = False
      Style.TransparentBorder = False
      TabOrder = 2
      Width = 690
    end
    object imgcmbbx_FTSoll: TcxDBImageComboBox
      Left = 718
      Top = 144
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
      Width = 230
    end
    object imgcmbbx_FTGutschrift: TcxDBImageComboBox
      Left = 406
      Top = 144
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
      Width = 234
    end
    object imgcmbbx_FTTyp: TcxDBImageComboBox
      Left = 106
      Top = 144
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
        end>
      Style.HotTrack = False
      Style.TransparentBorder = False
      TabOrder = 3
      Width = 232
    end
    object colcmbbx_FTEvent: TcxDBColorComboBox
      Left = 1035
      Top = 144
      DataBinding.DataField = 'Color'
      DataBinding.DataSource = ds_FT
      Properties.AllowSelectColor = True
      Properties.ColorBoxWidth = 170
      Properties.CustomColors = <>
      Properties.DefaultDescription = 'Keine Farbe gew'#228'hlt'
      Properties.NamingConvention = cxncHTML4
      Style.HotTrack = False
      Style.TransparentBorder = False
      TabOrder = 6
      Width = 231
    end
    object colcmbbx_FTFont: TcxDBColorComboBox
      Left = 1348
      Top = 144
      DataBinding.DataField = 'ColorFont'
      DataBinding.DataSource = ds_FT
      Properties.AllowSelectColor = True
      Properties.ColorBoxWidth = 170
      Properties.CustomColors = <>
      Properties.NamingConvention = cxncHTML4
      Style.HotTrack = False
      Style.TransparentBorder = False
      TabOrder = 7
      Width = 231
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
      AlignVert = avTop
      CaptionOptions.Text = 'brdckCtrl_FT'
      CaptionOptions.Visible = False
      Control = brdckCtrl_FT
      ControlOptions.AutoColor = True
      ControlOptions.OriginalHeight = 63
      ControlOptions.OriginalWidth = 1600
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object dxLayoutGroup2: TdxLayoutGroup
      Parent = dxLayoutGroup8
      CaptionOptions.Text = 'Fehltage'
      Index = 1
    end
    object dxLayoutItem2: TdxLayoutItem
      Parent = dxLayoutGroup9
      AlignHorz = ahClient
      AlignVert = avTop
      CaptionOptions.Text = 'K'#252'rzel:'
      CaptionOptions.Width = 80
      Control = edt_FTKuerzel
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 1582
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object dxLayoutItem3: TdxLayoutItem
      Parent = dxLayoutGroup9
      AlignHorz = ahClient
      AlignVert = avTop
      CaptionOptions.Text = 'Beschreibung:'
      CaptionOptions.Width = 80
      Control = edt_FTDesc
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 1582
      ControlOptions.ShowBorder = False
      Index = 1
    end
    object dxLayoutItem4: TdxLayoutItem
      Parent = dxLayoutGroup10
      AlignHorz = ahClient
      AlignVert = avTop
      CaptionOptions.Text = 'Fehltagstyp:'
      Control = imgcmbbx_FTTyp
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 210
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object dxLayoutItem5: TdxLayoutItem
      Parent = dxLayoutGroup10
      AlignHorz = ahClient
      AlignVert = avTop
      CaptionOptions.Text = 'Gutschrift:'
      Control = imgcmbbx_FTGutschrift
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 214
      ControlOptions.ShowBorder = False
      Index = 1
    end
    object dxLayoutItem6: TdxLayoutItem
      Parent = dxLayoutGroup10
      AlignHorz = ahClient
      AlignVert = avTop
      CaptionOptions.Text = 'Sollstunden:'
      Control = imgcmbbx_FTSoll
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 210
      ControlOptions.ShowBorder = False
      Index = 2
    end
    object dxLayoutItem7: TdxLayoutItem
      Parent = dxLayoutGroup10
      AlignHorz = ahClient
      AlignVert = avTop
      CaptionOptions.Text = 'Farbe Fehltag:'
      Control = colcmbbx_FTEvent
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 210
      ControlOptions.ShowBorder = False
      Index = 3
    end
    object dxLayoutItem8: TdxLayoutItem
      Parent = dxLayoutGroup10
      AlignHorz = ahClient
      AlignVert = avTop
      CaptionOptions.Text = 'Farbe Schrift:'
      Control = colcmbbx_FTFont
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 210
      ControlOptions.ShowBorder = False
      Index = 4
    end
    object dxLayoutItem9: TdxLayoutItem
      Parent = dxLayoutGroup1
      AlignHorz = ahClient
      AlignVert = avClient
      CaptionOptions.Text = 'grd_Feiertage'
      CaptionOptions.Visible = False
      Control = grd_Feiertage
      ControlOptions.OriginalHeight = 651
      ControlOptions.OriginalWidth = 1594
      ControlOptions.ShowBorder = False
      Index = 2
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
    object dxLayoutGroup1: TdxLayoutGroup
      Parent = dxLayoutGroup2
      CaptionOptions.Text = 'New Group'
      ItemIndex = 2
      ShowBorder = False
      Index = 0
    end
    object dxLayoutGroup9: TdxLayoutGroup
      Parent = dxLayoutGroup1
      AlignHorz = ahClient
      AlignVert = avTop
      CaptionOptions.Text = 'New Group'
      ItemIndex = 1
      LayoutDirection = ldHorizontal
      ShowBorder = False
      Index = 0
    end
    object dxLayoutGroup10: TdxLayoutGroup
      Parent = dxLayoutGroup1
      AlignHorz = ahClient
      AlignVert = avTop
      CaptionOptions.Text = 'New Group'
      LayoutDirection = ldHorizontal
      ShowBorder = False
      Index = 1
    end
  end
  object qry_FT1: TFDQuery
    Connection = dm_PCM.con_PCM
    SQL.Strings = (
      'SELECT *'
      'FROM manager_Fehltag'
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
    ImageOptions.LargeImages = frm_ZE.imglst_32x32
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
      DockControl = brdckCtrl_FT
      DockedDockControl = brdckCtrl_FT
      DockedLeft = 0
      DockedTop = 0
      FloatLeft = 1123
      FloatTop = 2
      FloatClientWidth = 125
      FloatClientHeight = 162
      ItemLinks = <
        item
          Visible = True
          ItemName = 'btn_FTNew'
        end
        item
          Visible = True
          ItemName = 'btn_FTSave'
        end
        item
          Visible = True
          ItemName = 'btn_FTCancel'
        end
        item
          Visible = True
          ItemName = 'btn_FTDelete'
        end
        item
          Visible = True
          ItemName = 'btn_FTClose'
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
    object btn_FTNew: TdxBarLargeButton
      Caption = 'Fehltag anlegen'
      Category = 0
      Hint = 'Fehltag anlegen'
      Visible = ivAlways
      OnClick = btn_FTNewClick
      AutoGrayScale = False
      LargeImageIndex = 1
      Width = 125
    end
    object btn_FTSave: TdxBarLargeButton
      Caption = 'Fehltag speichern'
      Category = 0
      Hint = 'Fehltag speichern'
      Visible = ivAlways
      OnClick = btn_FTSaveClick
      AutoGrayScale = False
      LargeImageIndex = 3
      Width = 125
    end
    object btn_FTDelete: TdxBarLargeButton
      Caption = 'Fehltag l'#246'schen'
      Category = 0
      Hint = 'Fehltag l'#246'schen'
      Visible = ivAlways
      OnClick = btn_FTDeleteClick
      AutoGrayScale = False
      LargeImageIndex = 4
      Width = 125
    end
    object btn_FTCancel: TdxBarLargeButton
      Caption = 'Abbrechen'
      Category = 0
      Hint = 'Abbrechen'
      Visible = ivAlways
      OnClick = btn_FTCancelClick
      AutoGrayScale = False
      LargeImageIndex = 14
      Width = 125
    end
    object btn_FTClose: TdxBarLargeButton
      Align = iaRight
      Caption = 'Schlie'#223'en'
      Category = 0
      Hint = 'Schlie'#223'en'
      Visible = ivAlways
      OnClick = btn_FTCloseClick
      AutoGrayScale = False
      LargeImageIndex = 6
      Width = 125
    end
  end
end
