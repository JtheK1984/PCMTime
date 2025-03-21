object frm_PCM_Konfession: Tfrm_PCM_Konfession
  Left = 565
  Top = 212
  BorderIcons = [biSystemMenu]
  BorderStyle = bsSingle
  Caption = 'Konfession bearbeiten'
  ClientHeight = 243
  ClientWidth = 516
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
    Width = 516
    Height = 243
    Align = alClient
    TabOrder = 0
    AutoSize = True
    LayoutLookAndFeel = dm_PCM.dxLayoutSkinLookAndFeel1
    object grd_Konfession: TcxGrid
      Left = 12
      Top = 82
      Width = 492
      Height = 149
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
      object grdDBTblView_Konfession: TcxGridDBTableView
        Navigator.Buttons.CustomButtons = <>
        FilterBox.CustomizeDialog = False
        ScrollbarAnnotations.CustomAnnotations = <>
        DataController.DataSource = frm_Userze.ds_Contact_Konfession
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
        object grdDBTblView_KonfessionBezeichnung: TcxGridDBColumn
          Caption = 'Konfession'
          DataBinding.FieldName = 'Bezeichnung'
          Width = 475
        end
      end
      object grdLvl_Konfession: TcxGridLevel
        GridView = grdDBTblView_Konfession
      end
    end
    object dxBarDockControl1: TdxBarDockControl
      Left = 12
      Top = 12
      Width = 492
      Height = 63
      Align = dalNone
      BarManager = brmgr_Konfession
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
      CaptionOptions.Text = 'grd_Konfession'
      CaptionOptions.Visible = False
      Control = grd_Konfession
      ControlOptions.OriginalHeight = 243
      ControlOptions.OriginalWidth = 516
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
    object dxLayoutItem2: TdxLayoutItem
      Parent = dxLayoutGroup1
      AlignHorz = ahClient
      AlignVert = avTop
      CaptionOptions.Text = 'New Item'
      CaptionOptions.Visible = False
      Control = dxBarDockControl1
      ControlOptions.AutoColor = True
      ControlOptions.OriginalHeight = 63
      ControlOptions.OriginalWidth = 516
      ControlOptions.ShowBorder = False
      Index = 0
    end
  end
  object brmgr_Konfession: TdxBarManager
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
    UseSystemFont = True
    Left = 288
    Top = 120
    PixelsPerInch = 96
    object tb_konfession: TdxBar
      Caption = 'tb_konfession'
      CaptionButtons = <>
      DockControl = dxBarDockControl1
      DockedDockControl = dxBarDockControl1
      DockedLeft = 0
      DockedTop = 0
      FloatLeft = 610
      FloatTop = 2
      FloatClientWidth = 0
      FloatClientHeight = 0
      ItemLinks = <
        item
          Visible = True
          ItemName = 'btn_KonfessionNew'
        end
        item
          Visible = True
          ItemName = 'btn_KonfessionSave'
        end
        item
          Visible = True
          ItemName = 'btn_KonfessionCancel'
        end
        item
          Visible = True
          ItemName = 'btn_KonfessionDelete'
        end
        item
          Visible = True
          ItemName = 'btn_KonfessionClose'
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
    object btn_KonfessionNew: TdxBarLargeButton
      Caption = 'Konfession anlegen'
      Category = 0
      Hint = 'Konfession anlegen'
      Visible = ivAlways
      OnClick = btn_KonfessionNewClick
      AutoGrayScale = False
      LargeImageIndex = 27
    end
    object btn_KonfessionSave: TdxBarLargeButton
      Caption = 'Konfession speichern'
      Category = 0
      Hint = 'Konfession speichern'
      Visible = ivAlways
      OnClick = btn_KonfessionSaveClick
      AutoGrayScale = False
      LargeImageIndex = 12
    end
    object btn_KonfessionClose: TdxBarLargeButton
      Caption = 'Schlie'#223'en'
      Category = 0
      Hint = 'Schlie'#223'en'
      Visible = ivAlways
      OnClick = btn_KonfessionCloseClick
      AutoGrayScale = False
      LargeImageIndex = 23
    end
    object btn_KonfessionCancel: TdxBarLargeButton
      Caption = 'Abbrechen'
      Category = 0
      Hint = 'Abbrechen'
      Visible = ivAlways
      OnClick = btn_KonfessionCancelClick
      AutoGrayScale = False
      LargeImageIndex = 0
    end
    object btn_KonfessionDelete: TdxBarLargeButton
      Caption = 'Konfession l'#246'schen'
      Category = 0
      Hint = 'Konfession l'#246'schen'
      Visible = ivAlways
      OnClick = btn_KonfessionDeleteClick
      AutoGrayScale = False
      LargeImageIndex = 24
    end
  end
end
