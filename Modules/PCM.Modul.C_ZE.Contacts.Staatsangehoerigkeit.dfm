object frm_PCM_Staatsangehoerigkeit: Tfrm_PCM_Staatsangehoerigkeit
  Left = 565
  Top = 212
  BorderIcons = [biSystemMenu]
  BorderStyle = bsSingle
  Caption = 'Staatsangeh'#246'rigkeit bearbeiten'
  ClientHeight = 244
  ClientWidth = 654
  Color = clBtnFace
  Font.Charset = ANSI_CHARSET
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
    Width = 654
    Height = 244
    Align = alClient
    TabOrder = 0
    AutoSize = True
    LayoutLookAndFeel = dm_PCM.dxLayoutSkinLookAndFeel1
    object grd_Staatsangehoerigkeit: TcxGrid
      Left = 12
      Top = 77
      Width = 630
      Height = 155
      BorderStyle = cxcbsNone
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      TabOrder = 1
      LockedStateImageOptions.Effect = lsieDark
      LookAndFeel.Kind = lfFlat
      LookAndFeel.NativeStyle = False
      object grdDBTblView_Staatsangehoerigkeit: TcxGridDBTableView
        Navigator.Buttons.CustomButtons = <>
        FilterBox.CustomizeDialog = False
        ScrollbarAnnotations.CustomAnnotations = <>
        DataController.DataSource = frm_Userze.ds_Contact_Staatsangehoerigkeit
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
        OptionsData.Inserting = False
        OptionsView.CellEndEllipsis = True
        OptionsView.NoDataToDisplayInfoText = '<Keine Daten Vorhanden>'
        OptionsView.GroupByBox = False
        OptionsView.HeaderFilterButtonShowMode = fbmButton
        OptionsView.IndicatorWidth = 14
        object grdDBTblView_StaatsangehoerigkeitBezeichnung: TcxGridDBColumn
          Caption = 'Staatsangeh'#246'rigkeit'
          DataBinding.FieldName = 'Bezeichnung'
          Width = 600
        end
      end
      object grdlvl_Staatsangehoerigkeit: TcxGridLevel
        GridView = grdDBTblView_Staatsangehoerigkeit
      end
    end
    object dxBarDockControl1: TdxBarDockControl
      Left = 12
      Top = 12
      Width = 630
      Height = 58
      Align = dalNone
      BarManager = brmgr_Staatsangehoerigkeit
    end
    object dxLayoutControl1Group_Root: TdxLayoutGroup
      AlignHorz = ahClient
      AlignVert = avClient
      Hidden = True
      LayoutDirection = ldHorizontal
      ShowBorder = False
      Index = -1
    end
    object dxLayoutItem1: TdxLayoutItem
      Parent = dxLayoutGroup1
      AlignHorz = ahClient
      AlignVert = avClient
      CaptionOptions.Text = 'grd_Staatsangehoerigkeit'
      CaptionOptions.Visible = False
      Control = grd_Staatsangehoerigkeit
      ControlOptions.OriginalHeight = 244
      ControlOptions.OriginalWidth = 658
      ControlOptions.ShowBorder = False
      Index = 1
    end
    object dxLayoutGroup1: TdxLayoutGroup
      Parent = dxLayoutControl1Group_Root
      AlignHorz = ahClient
      AlignVert = avClient
      CaptionOptions.Text = 'New Group'
      ItemIndex = 1
      ShowBorder = False
      Index = 0
    end
    object dxLayoutItem3: TdxLayoutItem
      Parent = dxLayoutGroup1
      CaptionOptions.Text = 'dxBarDockControl1'
      CaptionOptions.Visible = False
      Control = dxBarDockControl1
      ControlOptions.AutoColor = True
      ControlOptions.OriginalHeight = 58
      ControlOptions.OriginalWidth = 100
      ControlOptions.ShowBorder = False
      Index = 0
    end
  end
  object brmgr_Staatsangehoerigkeit: TdxBarManager
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
    ImageOptions.LargeIcons = True
    ImageOptions.UseLargeImagesForLargeIcons = True
    NotDocking = [dsNone, dsLeft, dsTop, dsRight, dsBottom]
    PopupMenuLinks = <>
    Style = bmsUseLookAndFeel
    UseSystemFont = True
    Left = 392
    Top = 120
    PixelsPerInch = 96
    object tb_Staatsangehoerigkeit: TdxBar
      Caption = 'tb_Staatsangehoerigkeit'
      CaptionButtons = <>
      DockControl = dxBarDockControl1
      DockedDockControl = dxBarDockControl1
      DockedLeft = 0
      DockedTop = 0
      FloatLeft = 830
      FloatTop = 2
      FloatClientWidth = 0
      FloatClientHeight = 0
      ItemLinks = <
        item
          Visible = True
          ItemName = 'btn_StaatsangehoerigkeitNew'
        end
        item
          Visible = True
          ItemName = 'btn_StaatsangehoerigkeitSave'
        end
        item
          Visible = True
          ItemName = 'btn_StaatsangehoerigkeitCancel'
        end
        item
          Visible = True
          ItemName = 'btn_StaatsangehoerigkeitDelete'
        end
        item
          Visible = True
          ItemName = 'btn_StaatsangehoerigkeitClose'
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
    object btn_StaatsangehoerigkeitNew: TdxBarLargeButton
      Caption = 'Staatsangeh'#246'rigkeit anlegen'
      Category = 0
      Hint = 'Staatsangeh'#246'rigkeit anlegen'
      Visible = ivAlways
      OnClick = btn_StaatsangehoerigkeitNewClick
      AutoGrayScale = False
      LargeImageIndex = 27
    end
    object btn_StaatsangehoerigkeitCancel: TdxBarLargeButton
      Caption = 'Abbrechen'
      Category = 0
      Hint = 'Abbrechen'
      Visible = ivAlways
      OnClick = btn_StaatsangehoerigkeitCancelClick
      AutoGrayScale = False
      LargeImageIndex = 0
    end
    object btn_StaatsangehoerigkeitSave: TdxBarLargeButton
      Caption = 'Staatsangeh'#246'rigkeit speichern'
      Category = 0
      Hint = 'Staatsangeh'#246'rigkeit speichern'
      Visible = ivAlways
      OnClick = btn_StaatsangehoerigkeitSaveClick
      AutoGrayScale = False
      LargeImageIndex = 12
    end
    object btn_StaatsangehoerigkeitClose: TdxBarLargeButton
      Caption = 'Schlie'#223'en'
      Category = 0
      Hint = 'Schlie'#223'en'
      Visible = ivAlways
      OnClick = btn_StaatsangehoerigkeitCloseClick
      AutoGrayScale = False
      LargeImageIndex = 23
    end
    object btn_StaatsangehoerigkeitDelete: TdxBarLargeButton
      Caption = 'Staatsangeh'#246'rigkeit l'#246'schen'
      Category = 0
      Hint = 'Staatsangeh'#246'rigkeit l'#246'schen'
      Visible = ivAlways
      OnClick = btn_StaatsangehoerigkeitDeleteClick
      AutoGrayScale = False
      LargeImageIndex = 24
    end
  end
end
