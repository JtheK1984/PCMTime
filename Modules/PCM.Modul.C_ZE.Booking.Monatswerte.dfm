object frm_monatswerte: Tfrm_monatswerte
  Left = 0
  Top = 0
  Caption = 'PCM - Zeiterfassung: Monatswerte'
  ClientHeight = 900
  ClientWidth = 1650
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
    Width = 1650
    Height = 900
    Align = alClient
    TabOrder = 0
    LayoutLookAndFeel = dm_PCM.dxLayoutSkinLookAndFeel1
    object lbl_D6: TcxLabel
      Left = 273
      Top = 267
      AutoSize = False
      BiDiMode = bdRightToLeft
      Caption = '0,00'
      ParentBiDiMode = False
      Style.HotTrack = False
      Style.TransparentBorder = False
      TabOrder = 25
      Transparent = True
      Height = 19
      Width = 56
    end
    object lbl_D3: TcxLabel
      Left = 273
      Top = 189
      AutoSize = False
      BiDiMode = bdRightToLeft
      Caption = '0,00'
      ParentBiDiMode = False
      Style.HotTrack = False
      Style.TransparentBorder = False
      TabOrder = 19
      Transparent = True
      Height = 19
      Width = 56
    end
    object lbl_D4: TcxLabel
      Left = 273
      Top = 215
      AutoSize = False
      BiDiMode = bdRightToLeft
      Caption = '0,00'
      ParentBiDiMode = False
      Style.HotTrack = False
      Style.TransparentBorder = False
      TabOrder = 21
      Transparent = True
      Height = 19
      Width = 56
    end
    object lbl_D5: TcxLabel
      Left = 273
      Top = 241
      AutoSize = False
      BiDiMode = bdRightToLeft
      Caption = '0,00'
      ParentBiDiMode = False
      Style.HotTrack = False
      Style.TransparentBorder = False
      TabOrder = 23
      Transparent = True
      Height = 19
      Width = 56
    end
    object lbl_D7: TcxLabel
      Left = 273
      Top = 293
      AutoSize = False
      BiDiMode = bdRightToLeft
      Caption = '0,00'
      ParentBiDiMode = False
      ParentFont = False
      Style.Font.Charset = DEFAULT_CHARSET
      Style.Font.Color = clWindowText
      Style.Font.Height = -12
      Style.Font.Name = 'Segoe UI'
      Style.Font.Style = [fsBold]
      Style.HotTrack = False
      Style.TransparentBorder = False
      Style.IsFontAssigned = True
      TabOrder = 27
      Transparent = True
      Height = 19
      Width = 56
    end
    object lbl_TG1: TcxLabel
      Left = 210
      Top = 346
      AutoSize = False
      BiDiMode = bdRightToLeft
      Caption = '0,0'
      ParentBiDiMode = False
      Style.HotTrack = False
      Style.TransparentBorder = False
      TabOrder = 28
      Transparent = True
      Height = 19
      Width = 56
    end
    object lbl_TG2: TcxLabel
      Left = 210
      Top = 372
      AutoSize = False
      BiDiMode = bdRightToLeft
      Caption = '2'
      ParentBiDiMode = False
      Style.HotTrack = False
      Style.TransparentBorder = False
      TabOrder = 30
      Transparent = True
      Height = 19
      Width = 56
    end
    object lbl_TG1Dez: TcxLabel
      Left = 273
      Top = 346
      AutoSize = False
      BiDiMode = bdRightToLeft
      Caption = '00:00'
      ParentBiDiMode = False
      Style.HotTrack = False
      Style.TransparentBorder = False
      TabOrder = 29
      Transparent = True
      Height = 19
      Width = 56
    end
    object lbl_TG2Dez: TcxLabel
      Left = 273
      Top = 372
      AutoSize = False
      BiDiMode = bdRightToLeft
      Caption = '00:00'
      ParentBiDiMode = False
      Style.HotTrack = False
      Style.TransparentBorder = False
      TabOrder = 31
      Transparent = True
      Height = 19
      Width = 56
    end
    object lbl_TG3Dez: TcxLabel
      Left = 273
      Top = 398
      AutoSize = False
      BiDiMode = bdRightToLeft
      Caption = '00:00'
      ParentBiDiMode = False
      ParentFont = False
      Style.Font.Charset = DEFAULT_CHARSET
      Style.Font.Color = clWindowText
      Style.Font.Height = -12
      Style.Font.Name = 'Segoe UI'
      Style.Font.Style = [fsBold]
      Style.HotTrack = False
      Style.TransparentBorder = False
      Style.IsFontAssigned = True
      TabOrder = 33
      Transparent = True
      Height = 19
      Width = 56
    end
    object lbl_FTM: TcxLabel
      Left = 210
      Top = 450
      AutoSize = False
      BiDiMode = bdRightToLeft
      Caption = '0,0'
      ParentBiDiMode = False
      Style.HotTrack = False
      Style.TransparentBorder = False
      TabOrder = 36
      Transparent = True
      Height = 19
      Width = 56
    end
    object lbl_FTMDez: TcxLabel
      Left = 273
      Top = 450
      AutoSize = False
      BiDiMode = bdRightToLeft
      Caption = '00:00'
      ParentBiDiMode = False
      Style.HotTrack = False
      Style.TransparentBorder = False
      TabOrder = 37
      Transparent = True
      Height = 19
      Width = 56
    end
    object lbl_ULunb: TcxLabel
      Left = 210
      Top = 424
      AutoSize = False
      BiDiMode = bdRightToLeft
      Caption = '0,0'
      ParentBiDiMode = False
      Style.HotTrack = False
      Style.TransparentBorder = False
      TabOrder = 34
      Transparent = True
      Height = 19
      Width = 56
    end
    object lbl_ULunbDez: TcxLabel
      Left = 273
      Top = 424
      AutoSize = False
      BiDiMode = bdRightToLeft
      Caption = '00:00'
      ParentBiDiMode = False
      Style.HotTrack = False
      Style.TransparentBorder = False
      TabOrder = 35
      Transparent = True
      Height = 19
      Width = 56
    end
    object lbl_kr: TcxLabel
      Left = 210
      Top = 502
      AutoSize = False
      BiDiMode = bdRightToLeft
      Caption = '5'
      ParentBiDiMode = False
      Style.HotTrack = False
      Style.TransparentBorder = False
      TabOrder = 40
      Transparent = True
      Height = 19
      Width = 56
    end
    object lbl_krunb: TcxLabel
      Left = 210
      Top = 528
      AutoSize = False
      BiDiMode = bdRightToLeft
      Caption = '5'
      ParentBiDiMode = False
      Style.HotTrack = False
      Style.TransparentBorder = False
      TabOrder = 42
      Transparent = True
      Height = 19
      Width = 56
    end
    object lbl_krunbdez: TcxLabel
      Left = 273
      Top = 528
      AutoSize = False
      BiDiMode = bdRightToLeft
      Caption = '00:00'
      ParentBiDiMode = False
      Style.HotTrack = False
      Style.TransparentBorder = False
      TabOrder = 43
      Transparent = True
      Height = 19
      Width = 56
    end
    object lbl_krDez: TcxLabel
      Left = 273
      Top = 502
      AutoSize = False
      BiDiMode = bdRightToLeft
      Caption = '00:00'
      ParentBiDiMode = False
      Style.HotTrack = False
      Style.TransparentBorder = False
      TabOrder = 41
      Transparent = True
      Height = 19
      Width = 56
    end
    object lbl_Buero: TcxLabel
      Left = 210
      Top = 554
      AutoSize = False
      BiDiMode = bdRightToLeft
      Caption = '5'
      ParentBiDiMode = False
      Style.HotTrack = False
      Style.TransparentBorder = False
      TabOrder = 44
      Transparent = True
      Height = 19
      Width = 56
    end
    object lbl_HO: TcxLabel
      Left = 210
      Top = 580
      AutoSize = False
      BiDiMode = bdRightToLeft
      Caption = '5'
      ParentBiDiMode = False
      Style.HotTrack = False
      Style.TransparentBorder = False
      TabOrder = 46
      Transparent = True
      Height = 19
      Width = 56
    end
    object lbl_BueroDez: TcxLabel
      Left = 273
      Top = 554
      AutoSize = False
      BiDiMode = bdRightToLeft
      Caption = '00:00'
      ParentBiDiMode = False
      Style.HotTrack = False
      Style.TransparentBorder = False
      TabOrder = 45
      Transparent = True
      Height = 19
      Width = 56
    end
    object lbl_BHOGes: TcxLabel
      Left = 210
      Top = 606
      AutoSize = False
      BiDiMode = bdRightToLeft
      Caption = '5'
      ParentBiDiMode = False
      ParentFont = False
      Style.Font.Charset = DEFAULT_CHARSET
      Style.Font.Color = clWindowText
      Style.Font.Height = -12
      Style.Font.Name = 'Segoe UI'
      Style.Font.Style = [fsBold]
      Style.HotTrack = False
      Style.TransparentBorder = False
      Style.IsFontAssigned = True
      TabOrder = 48
      Transparent = True
      Height = 19
      Width = 56
    end
    object lbl_HODez: TcxLabel
      Left = 273
      Top = 580
      AutoSize = False
      BiDiMode = bdRightToLeft
      Caption = '00:00'
      ParentBiDiMode = False
      Style.HotTrack = False
      Style.TransparentBorder = False
      TabOrder = 47
      Transparent = True
      Height = 19
      Width = 56
    end
    object lbl_BHOGesDez: TcxLabel
      Left = 273
      Top = 606
      AutoSize = False
      BiDiMode = bdRightToLeft
      Caption = '00:00'
      ParentBiDiMode = False
      ParentFont = False
      Style.Font.Charset = DEFAULT_CHARSET
      Style.Font.Color = clWindowText
      Style.Font.Height = -12
      Style.Font.Name = 'Segoe UI'
      Style.Font.Style = [fsBold]
      Style.HotTrack = False
      Style.TransparentBorder = False
      Style.IsFontAssigned = True
      TabOrder = 49
      Transparent = True
      Height = 19
      Width = 56
    end
    object lbl_TG3: TcxLabel
      Left = 210
      Top = 398
      AutoSize = False
      BiDiMode = bdRightToLeft
      Caption = '5'
      ParentBiDiMode = False
      ParentFont = False
      Style.Font.Charset = DEFAULT_CHARSET
      Style.Font.Color = clWindowText
      Style.Font.Height = -12
      Style.Font.Name = 'Segoe UI'
      Style.Font.Style = [fsBold]
      Style.HotTrack = False
      Style.TransparentBorder = False
      Style.IsFontAssigned = True
      TabOrder = 32
      Transparent = True
      Height = 19
      Width = 56
    end
    object dxBarDockControl1: TdxBarDockControl
      Left = 190
      Top = 51
      Width = 317
      Height = 42
      Align = dalNone
      BarManager = brmgr_MW
    end
    object AuswertungsJahr: TcxSpinEdit
      Left = 507
      Top = 51
      ParentFont = False
      Properties.MinValue = 2.000000000000000000
      Properties.UseCtrlIncrement = True
      Properties.OnChange = AuswertungsJahrPropertiesChange
      Style.HotTrack = False
      Style.TextStyle = [fsBold]
      Style.TransparentBorder = False
      TabOrder = 1
      Value = 2014
      Width = 53
    end
    object lbl_RulVJ: TcxLabel
      Left = 685
      Top = 47
      AutoSize = False
      BiDiMode = bdRightToLeft
      Caption = '1'
      ParentBiDiMode = False
      ParentFont = False
      Style.Font.Charset = DEFAULT_CHARSET
      Style.Font.Color = clWindowText
      Style.Font.Height = -12
      Style.Font.Name = 'Segoe UI'
      Style.Font.Style = []
      Style.HotTrack = False
      Style.TransparentBorder = False
      Style.IsFontAssigned = True
      TabOrder = 2
      Transparent = True
      Height = 19
      Width = 27
    end
    object lbl_genULGes: TcxLabel
      Left = 685
      Top = 66
      AutoSize = False
      BiDiMode = bdRightToLeft
      Caption = '1'
      ParentBiDiMode = False
      ParentFont = False
      Style.Font.Charset = DEFAULT_CHARSET
      Style.Font.Color = clWindowText
      Style.Font.Height = -12
      Style.Font.Name = 'Segoe UI'
      Style.Font.Style = []
      Style.HotTrack = False
      Style.TransparentBorder = False
      Style.IsFontAssigned = True
      TabOrder = 7
      Transparent = True
      Height = 19
      Width = 27
    end
    object lbl_geplULGes: TcxLabel
      Left = 848
      Top = 47
      AutoSize = False
      BiDiMode = bdRightToLeft
      Caption = '1'
      ParentBiDiMode = False
      ParentFont = False
      Style.Font.Charset = DEFAULT_CHARSET
      Style.Font.Color = clWindowText
      Style.Font.Height = -12
      Style.Font.Name = 'Segoe UI'
      Style.Font.Style = []
      Style.HotTrack = False
      Style.TransparentBorder = False
      Style.IsFontAssigned = True
      TabOrder = 3
      Transparent = True
      Height = 19
      Width = 27
    end
    object lbl_VerfUL: TcxLabel
      Left = 848
      Top = 66
      AutoSize = False
      BiDiMode = bdRightToLeft
      Caption = '1'
      ParentBiDiMode = False
      ParentFont = False
      Style.Font.Charset = DEFAULT_CHARSET
      Style.Font.Color = clWindowText
      Style.Font.Height = -12
      Style.Font.Name = 'Segoe UI'
      Style.Font.Style = []
      Style.HotTrack = False
      Style.TransparentBorder = False
      Style.IsFontAssigned = True
      TabOrder = 8
      Transparent = True
      Height = 19
      Width = 27
    end
    object lbl_bezKr: TcxLabel
      Left = 1134
      Top = 47
      AutoSize = False
      BiDiMode = bdRightToLeft
      Caption = '1'
      ParentBiDiMode = False
      ParentFont = False
      Style.Font.Charset = DEFAULT_CHARSET
      Style.Font.Color = clWindowText
      Style.Font.Height = -12
      Style.Font.Name = 'Segoe UI'
      Style.Font.Style = []
      Style.HotTrack = False
      Style.TransparentBorder = False
      Style.IsFontAssigned = True
      TabOrder = 5
      Transparent = True
      Height = 19
      Width = 27
    end
    object lbl_unbKr: TcxLabel
      Left = 1134
      Top = 66
      AutoSize = False
      BiDiMode = bdRightToLeft
      Caption = '1'
      ParentBiDiMode = False
      ParentFont = False
      Style.Font.Charset = DEFAULT_CHARSET
      Style.Font.Color = clWindowText
      Style.Font.Height = -12
      Style.Font.Name = 'Segoe UI'
      Style.Font.Style = []
      Style.HotTrack = False
      Style.TransparentBorder = False
      Style.IsFontAssigned = True
      TabOrder = 10
      Transparent = True
      Height = 19
      Width = 27
    end
    object lbl_HomeOffGes: TcxLabel
      Left = 1277
      Top = 66
      AutoSize = False
      BiDiMode = bdRightToLeft
      Caption = '1'
      ParentBiDiMode = False
      ParentFont = False
      Style.Font.Charset = DEFAULT_CHARSET
      Style.Font.Color = clWindowText
      Style.Font.Height = -12
      Style.Font.Name = 'Segoe UI'
      Style.Font.Style = []
      Style.HotTrack = False
      Style.TransparentBorder = False
      Style.IsFontAssigned = True
      TabOrder = 11
      Transparent = True
      Height = 19
      Width = 27
    end
    object lbl_OfficeGes: TcxLabel
      Left = 1277
      Top = 47
      AutoSize = False
      BiDiMode = bdRightToLeft
      Caption = '1'
      ParentBiDiMode = False
      ParentFont = False
      Style.Font.Charset = DEFAULT_CHARSET
      Style.Font.Color = clWindowText
      Style.Font.Height = -12
      Style.Font.Name = 'Segoe UI'
      Style.Font.Style = []
      Style.HotTrack = False
      Style.TransparentBorder = False
      Style.IsFontAssigned = True
      TabOrder = 6
      Transparent = True
      Height = 19
      Width = 27
    end
    object lbl_FT: TcxLabel
      Left = 991
      Top = 66
      AutoSize = False
      BiDiMode = bdRightToLeft
      Caption = '1'
      ParentBiDiMode = False
      ParentFont = False
      Style.Font.Charset = DEFAULT_CHARSET
      Style.Font.Color = clWindowText
      Style.Font.Height = -12
      Style.Font.Name = 'Segoe UI'
      Style.Font.Style = []
      Style.HotTrack = False
      Style.TransparentBorder = False
      Style.IsFontAssigned = True
      TabOrder = 9
      Transparent = True
      Height = 19
      Width = 27
    end
    object lbl_unbUL: TcxLabel
      Left = 991
      Top = 47
      AutoSize = False
      BiDiMode = bdRightToLeft
      Caption = '1'
      ParentBiDiMode = False
      ParentFont = False
      Style.Font.Charset = DEFAULT_CHARSET
      Style.Font.Color = clWindowText
      Style.Font.Height = -12
      Style.Font.Name = 'Segoe UI'
      Style.Font.Style = []
      Style.HotTrack = False
      Style.TransparentBorder = False
      Style.IsFontAssigned = True
      TabOrder = 4
      Transparent = True
      Height = 19
      Width = 27
    end
    object cxButton1: TcxButton
      Left = 1310
      Top = 12
      Width = 100
      Height = 61
      Caption = 'Berechne Monat'
      OptionsImage.ImageIndex = 12
      OptionsImage.Images = frm_PCM_Main.imglst_32x32
      OptionsImage.Layout = blGlyphTop
      TabOrder = 12
      OnClick = cxButton1Click
    end
    object cxButton2: TcxButton
      Left = 1417
      Top = 12
      Width = 99
      Height = 61
      Caption = 'Auswertungen'
      DropDownMenu = dxBarPopupMenu1
      Kind = cxbkDropDown
      OptionsImage.ImageIndex = 15
      OptionsImage.Images = frm_PCM_Main.imglst_32x32
      OptionsImage.Layout = blGlyphTop
      TabOrder = 13
    end
    object lbl_T2: TcxLabel
      Left = 210
      Top = 163
      AutoSize = False
      BiDiMode = bdRightToLeft
      Caption = '00:00'
      ParentBiDiMode = False
      Style.HotTrack = False
      Style.TransparentBorder = False
      TabOrder = 16
      Transparent = True
      Height = 19
      Width = 56
    end
    object lbl_T6: TcxLabel
      Left = 210
      Top = 267
      AutoSize = False
      BiDiMode = bdRightToLeft
      Caption = '00:00'
      ParentBiDiMode = False
      Style.HotTrack = False
      Style.TransparentBorder = False
      TabOrder = 24
      Transparent = True
      Height = 19
      Width = 56
    end
    object lbl_T7: TcxLabel
      Left = 210
      Top = 293
      AutoSize = False
      BiDiMode = bdRightToLeft
      Caption = '00:00'
      ParentBiDiMode = False
      ParentFont = False
      Style.Font.Charset = DEFAULT_CHARSET
      Style.Font.Color = clWindowText
      Style.Font.Height = -12
      Style.Font.Name = 'Segoe UI'
      Style.Font.Style = [fsBold]
      Style.HotTrack = False
      Style.TransparentBorder = False
      Style.IsFontAssigned = True
      TabOrder = 26
      Transparent = True
      Height = 19
      Width = 56
    end
    object lbl_T1: TcxLabel
      Left = 210
      Top = 137
      AutoSize = False
      BiDiMode = bdRightToLeft
      Caption = '00:00'
      ParentBiDiMode = False
      Style.HotTrack = False
      Style.TransparentBorder = False
      TabOrder = 14
      Transparent = True
      Height = 19
      Width = 56
    end
    object lbl_T3: TcxLabel
      Left = 210
      Top = 189
      AutoSize = False
      BiDiMode = bdRightToLeft
      Caption = '00:00'
      ParentBiDiMode = False
      Style.HotTrack = False
      Style.TransparentBorder = False
      TabOrder = 18
      Transparent = True
      Height = 19
      Width = 56
    end
    object lbl_D2: TcxLabel
      Left = 273
      Top = 163
      AutoSize = False
      BiDiMode = bdRightToLeft
      Caption = '0,00'
      ParentBiDiMode = False
      Style.HotTrack = False
      Style.TransparentBorder = False
      TabOrder = 17
      Transparent = True
      Height = 19
      Width = 56
    end
    object lbl_D1: TcxLabel
      Left = 273
      Top = 137
      AutoSize = False
      BiDiMode = bdRightToLeft
      Caption = '0,00'
      ParentBiDiMode = False
      Style.HotTrack = False
      Style.TransparentBorder = False
      TabOrder = 15
      Transparent = True
      Height = 19
      Width = 56
    end
    object lbl_T4: TcxLabel
      Left = 210
      Top = 215
      AutoSize = False
      BiDiMode = bdRightToLeft
      Caption = '00:00'
      ParentBiDiMode = False
      Style.HotTrack = False
      Style.TransparentBorder = False
      TabOrder = 20
      Transparent = True
      Height = 19
      Width = 56
    end
    object lbl_T5: TcxLabel
      Left = 210
      Top = 241
      AutoSize = False
      BiDiMode = bdRightToLeft
      Caption = '00:00'
      ParentBiDiMode = False
      Style.HotTrack = False
      Style.TransparentBorder = False
      TabOrder = 22
      Transparent = True
      Height = 19
      Width = 56
    end
    object grd_Tag: TcxGrid
      Left = 359
      Top = 120
      Width = 1269
      Height = 758
      BorderStyle = cxcbsNone
      TabOrder = 50
      LookAndFeel.NativeStyle = False
      object grd_TagDBTableView1: TcxGridDBTableView
        Navigator.Buttons.CustomButtons = <>
        Navigator.Buttons.First.Visible = True
        Navigator.Buttons.PriorPage.Visible = True
        Navigator.Buttons.Prior.Visible = True
        Navigator.Buttons.Next.Visible = True
        Navigator.Buttons.NextPage.Visible = True
        Navigator.Buttons.Last.Visible = True
        Navigator.Buttons.Insert.Visible = True
        Navigator.Buttons.Delete.Visible = True
        Navigator.Buttons.Edit.Visible = True
        Navigator.Buttons.Post.Visible = True
        Navigator.Buttons.Cancel.Visible = True
        Navigator.Buttons.Refresh.Visible = True
        Navigator.Buttons.SaveBookmark.Visible = True
        Navigator.Buttons.GotoBookmark.Visible = True
        Navigator.Buttons.Filter.Visible = True
        ScrollbarAnnotations.CustomAnnotations = <>
        DataController.DataSource = ds_Day
        DataController.Summary.DefaultGroupSummaryItems = <>
        DataController.Summary.FooterSummaryItems = <>
        DataController.Summary.SummaryGroups = <>
        OptionsCustomize.ColumnFiltering = False
        OptionsCustomize.ColumnGrouping = False
        OptionsData.Deleting = False
        OptionsData.Editing = False
        OptionsData.Inserting = False
        OptionsSelection.CellSelect = False
        OptionsView.ExpandButtonsForEmptyDetails = False
        OptionsView.GridLines = glVertical
        OptionsView.GroupByBox = False
        OptionsView.HeaderFilterButtonShowMode = fbmButton
        OptionsView.Indicator = True
        object grd_TagDBTableView1Column6: TcxGridDBColumn
          DataBinding.FieldName = 'ID'
          DataBinding.IsNullValueType = True
          Visible = False
          VisibleForCustomization = False
          VisibleForEditForm = bFalse
        end
        object grd_TagDBTableView1Tag: TcxGridDBColumn
          DataBinding.FieldName = 'Tag'
          DataBinding.IsNullValueType = True
          OnCustomDrawCell = grd_TagDBTableView1TagCustomDrawCell
          Width = 30
        end
        object grd_TagDBTableView1Datum: TcxGridDBColumn
          DataBinding.FieldName = 'Datum'
          DataBinding.IsNullValueType = True
          OnCustomDrawCell = grd_TagDBTableView1TagCustomDrawCell
          Width = 65
        end
        object grd_TagDBTableView1Sollstunden: TcxGridDBColumn
          Caption = 'Soll Std.'
          DataBinding.FieldName = 'SollStundenStd'
          DataBinding.IsNullValueType = True
          PropertiesClassName = 'TcxTextEditProperties'
          Properties.Alignment.Horz = taRightJustify
          OnCustomDrawCell = grd_TagDBTableView1TagCustomDrawCell
          Width = 50
        end
        object grd_TagDBTableView1Column1: TcxGridDBColumn
          Caption = 'Soll Dez.'
          DataBinding.FieldName = 'SollStundenDez'
          DataBinding.IsNullValueType = True
          PropertiesClassName = 'TcxCurrencyEditProperties'
          Properties.DisplayFormat = ',0.00;-,0.00'
          OnCustomDrawCell = grd_TagDBTableView1TagCustomDrawCell
          Width = 50
        end
        object grd_TagDBTableView1Tagesbrutto: TcxGridDBColumn
          Caption = 'Brutto Std.'
          DataBinding.FieldName = 'BruttotStd'
          DataBinding.IsNullValueType = True
          PropertiesClassName = 'TcxTextEditProperties'
          Properties.Alignment.Horz = taRightJustify
          OnCustomDrawCell = grd_TagDBTableView1TagCustomDrawCell
          Width = 65
        end
        object grd_TagDBTableView1Column2: TcxGridDBColumn
          Caption = 'Brutto Dez.'
          DataBinding.FieldName = 'BruttoDez'
          DataBinding.IsNullValueType = True
          PropertiesClassName = 'TcxCurrencyEditProperties'
          Properties.DisplayFormat = ',0.00;-,0.00'
          OnCustomDrawCell = grd_TagDBTableView1TagCustomDrawCell
          Width = 65
        end
        object grd_TagDBTableView1Pause: TcxGridDBColumn
          Caption = 'Pause Std.'
          DataBinding.FieldName = 'PausenStd'
          DataBinding.IsNullValueType = True
          PropertiesClassName = 'TcxTextEditProperties'
          Properties.Alignment.Horz = taRightJustify
          OnCustomDrawCell = grd_TagDBTableView1TagCustomDrawCell
          Width = 65
        end
        object grd_TagDBTableView1Column4: TcxGridDBColumn
          Caption = 'Pause Dez.'
          DataBinding.FieldName = 'PausenDez'
          DataBinding.IsNullValueType = True
          PropertiesClassName = 'TcxCurrencyEditProperties'
          Properties.DisplayFormat = ',0.00;-,0.00'
          OnCustomDrawCell = grd_TagDBTableView1TagCustomDrawCell
          Width = 65
        end
        object grd_TagDBTableView1Tagesnetto: TcxGridDBColumn
          Caption = 'Netto Std.'
          DataBinding.FieldName = 'NettoStd'
          DataBinding.IsNullValueType = True
          PropertiesClassName = 'TcxTextEditProperties'
          Properties.Alignment.Horz = taRightJustify
          OnCustomDrawCell = grd_TagDBTableView1TagCustomDrawCell
          Width = 60
        end
        object grd_TagDBTableView1Column3: TcxGridDBColumn
          Caption = 'Netto Dez.'
          DataBinding.FieldName = 'NettoDez'
          DataBinding.IsNullValueType = True
          PropertiesClassName = 'TcxCurrencyEditProperties'
          Properties.DisplayFormat = ',0.00;-,0.00'
          OnCustomDrawCell = grd_TagDBTableView1TagCustomDrawCell
          Width = 65
        end
        object grd_TagDBTableView1Mehrarbeit: TcxGridDBColumn
          Caption = 'GLZ Std.'
          DataBinding.FieldName = 'MehrarbeitStd'
          DataBinding.IsNullValueType = True
          PropertiesClassName = 'TcxTextEditProperties'
          Properties.Alignment.Horz = taRightJustify
          OnCustomDrawCell = grd_TagDBTableView1MehrarbeitCustomDrawCell
          Width = 55
        end
        object grd_TagDBTableView1Column5: TcxGridDBColumn
          Caption = 'GLZ Dez.'
          DataBinding.FieldName = 'MehrarbeitDez'
          DataBinding.IsNullValueType = True
          PropertiesClassName = 'TcxCurrencyEditProperties'
          Properties.DisplayFormat = ',0.00;-,0.00'
          OnCustomDrawCell = grd_TagDBTableView1MehrarbeitCustomDrawCell
          Width = 55
        end
        object grd_TagDBTableView1Fehltag: TcxGridDBColumn
          DataBinding.FieldName = 'Fehltag'
          DataBinding.IsNullValueType = True
          OnCustomDrawCell = grd_TagDBTableView1TagCustomDrawCell
          Width = 50
        end
        object grd_TagDBTableView1Feiertag: TcxGridDBColumn
          DataBinding.FieldName = 'Feiertag'
          DataBinding.IsNullValueType = True
          PropertiesClassName = 'TcxImageComboBoxProperties'
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
          OnCustomDrawCell = grd_TagDBTableView1TagCustomDrawCell
          Width = 90
        end
        object grd_TagDBTableView1BA: TcxGridDBColumn
          DataBinding.FieldName = 'Buchungsart'
          DataBinding.IsNullValueType = True
          PropertiesClassName = 'TcxImageComboBoxProperties'
          Properties.Alignment.Horz = taLeftJustify
          Properties.Items = <
            item
              ImageIndex = 0
              Value = -1
            end
            item
              Description = 'B'#252'ro'
              Value = 0
            end
            item
              Description = 'Homeoffice'
              Value = 1
            end>
          OnCustomDrawCell = grd_TagDBTableView1TagCustomDrawCell
          Width = 80
        end
      end
      object grd_TagDBTableView2: TcxGridDBTableView
        Navigator.Buttons.CustomButtons = <>
        Navigator.Buttons.First.Visible = True
        Navigator.Buttons.PriorPage.Visible = True
        Navigator.Buttons.Prior.Visible = True
        Navigator.Buttons.Next.Visible = True
        Navigator.Buttons.NextPage.Visible = True
        Navigator.Buttons.Last.Visible = True
        Navigator.Buttons.Insert.Visible = True
        Navigator.Buttons.Delete.Visible = True
        Navigator.Buttons.Edit.Visible = True
        Navigator.Buttons.Post.Visible = True
        Navigator.Buttons.Cancel.Visible = True
        Navigator.Buttons.Refresh.Visible = True
        Navigator.Buttons.SaveBookmark.Visible = True
        Navigator.Buttons.GotoBookmark.Visible = True
        Navigator.Buttons.Filter.Visible = True
        ScrollbarAnnotations.CustomAnnotations = <>
        DataController.Summary.DefaultGroupSummaryItems = <>
        DataController.Summary.FooterSummaryItems = <>
        DataController.Summary.SummaryGroups = <>
        OptionsData.Deleting = False
        OptionsData.Editing = False
        OptionsData.Inserting = False
        OptionsView.GroupByBox = False
        OptionsView.Indicator = True
      end
      object tvTageswerte: TcxGridDBTableView
        Navigator.Buttons.CustomButtons = <>
        Navigator.Buttons.First.Visible = True
        Navigator.Buttons.PriorPage.Visible = True
        Navigator.Buttons.Prior.Visible = True
        Navigator.Buttons.Next.Visible = True
        Navigator.Buttons.NextPage.Visible = True
        Navigator.Buttons.Last.Visible = True
        Navigator.Buttons.Insert.Visible = True
        Navigator.Buttons.Delete.Visible = True
        Navigator.Buttons.Edit.Visible = True
        Navigator.Buttons.Post.Visible = True
        Navigator.Buttons.Cancel.Visible = True
        Navigator.Buttons.Refresh.Visible = True
        Navigator.Buttons.SaveBookmark.Visible = True
        Navigator.Buttons.GotoBookmark.Visible = True
        Navigator.Buttons.Filter.Visible = True
        ScrollbarAnnotations.CustomAnnotations = <>
        DataController.DataModeController.SyncMode = False
        DataController.DetailKeyFieldNames = 'Datum'
        DataController.KeyFieldNames = 'AuftragNr'
        DataController.MasterKeyFieldNames = 'Datum'
        DataController.Summary.DefaultGroupSummaryItems = <>
        DataController.Summary.FooterSummaryItems = <>
        DataController.Summary.SummaryGroups = <>
        OptionsCustomize.ColumnFiltering = False
        OptionsData.Deleting = False
        OptionsData.Editing = False
        OptionsData.Inserting = False
        OptionsSelection.CellSelect = False
        OptionsView.GridLines = glVertical
        OptionsView.GroupByBox = False
        OptionsView.HeaderFilterButtonShowMode = fbmButton
        OptionsView.Indicator = True
        object tvTageswerteBuchungsArt: TcxGridDBColumn
          Tag = 6409508
          Caption = 'Art'
          DataBinding.FieldName = 'BuchungsArt'
          DataBinding.IsNullValueType = True
          Width = 29
        end
        object tvTageswerteMe1: TcxGridDBColumn
          Tag = 42559168
          Caption = '1. Buchung'
          DataBinding.FieldName = 'Me1'
          DataBinding.IsNullValueType = True
        end
        object tvTageswerteMe2: TcxGridDBColumn
          Tag = 42600172
          Caption = '2. Buchung'
          DataBinding.FieldName = 'Me2'
          DataBinding.IsNullValueType = True
        end
        object tvTageswerteBSumme: TcxGridDBColumn
          Tag = 42620740
          Caption = 'Summe'
          DataBinding.FieldName = 'BSumme'
          DataBinding.IsNullValueType = True
        end
        object tvTageswerteAuftragNr: TcxGridDBColumn
          Tag = 42624096
          Caption = 'Auftrag-Nr'
          DataBinding.FieldName = 'AuftragNr'
          DataBinding.IsNullValueType = True
        end
        object tvTageswerteTaetigkNr: TcxGridDBColumn
          Tag = 42699484
          Caption = 'Taetigk-Nr'
          DataBinding.FieldName = 'TaetigkNr'
          DataBinding.IsNullValueType = True
        end
        object tvTageswerteKostenstelle: TcxGridDBColumn
          Tag = 42700972
          DataBinding.FieldName = 'Kostenstelle'
          DataBinding.IsNullValueType = True
        end
      end
      object grd_TagLevel1: TcxGridLevel
        GridView = grd_TagDBTableView1
        Options.DetailFrameColor = clWindow
        Options.DetailFrameWidth = 4
      end
    end
    object lbl_KikTag: TcxLabel
      Left = 210
      Top = 476
      AutoSize = False
      BiDiMode = bdRightToLeft
      Caption = '0,0'
      ParentBiDiMode = False
      Style.HotTrack = False
      Style.TransparentBorder = False
      TabOrder = 38
      Transparent = True
      Height = 19
      Width = 56
    end
    object lbl_KikDez: TcxLabel
      Left = 273
      Top = 476
      AutoSize = False
      BiDiMode = bdRightToLeft
      Caption = '00:00'
      ParentBiDiMode = False
      Style.HotTrack = False
      Style.TransparentBorder = False
      TabOrder = 39
      Transparent = True
      Height = 19
      Width = 56
    end
    object dxLayoutControl1Group_Root: TdxLayoutGroup
      AlignHorz = ahClient
      AlignVert = avClient
      Hidden = True
      ShowBorder = False
      Index = -1
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
    object dxLayoutGroup2: TdxLayoutGroup
      Parent = dxLayoutGroup1
      AlignHorz = ahClient
      AlignVert = avTop
      CaptionOptions.Text = 'Abwesenheitswerte'
      ItemIndex = 2
      LayoutDirection = ldHorizontal
      ShowBorder = False
      Index = 0
    end
    object lagrp_MA: TdxLayoutGroup
      Parent = dxLayoutGroup2
      AlignHorz = ahLeft
      AlignVert = avClient
      CaptionOptions.Text = 'New Group'
      CaptionOptions.Visible = False
      LayoutLookAndFeel = dm_PCM.dxLayoutSkinLookAndFeel2
      Offsets.Left = -4
      Offsets.Right = -4
      SizeOptions.Width = 180
      ItemIndex = 3
      Index = 0
    end
    object dxLayoutLabeledItem1: TdxLayoutLabeledItem
      Parent = lagrp_MA
      Offsets.Bottom = 4
      CaptionOptions.Text = '[B]Zeiterfasser[/B]'
      Index = 0
    end
    object dxLayoutLabeledItem2: TdxLayoutLabeledItem
      Parent = laitm_MANachname
      AlignHorz = ahLeft
      AlignVert = avTop
      CaptionOptions.Text = '[B]Nachname:[/B]'
      CaptionOptions.Width = 70
      Index = 0
    end
    object dxLayoutLabeledItem3: TdxLayoutLabeledItem
      Parent = laitm_MAVorname
      AlignHorz = ahLeft
      AlignVert = avTop
      CaptionOptions.Text = '[B]Vorname:[/B]'
      CaptionOptions.Width = 70
      Index = 0
    end
    object lbl_name: TdxLayoutLabeledItem
      Parent = laitm_MANachname
      AlignVert = avClient
      CaptionOptions.Text = 'Label'
      Index = 1
    end
    object laitm_MASep: TdxLayoutSeparatorItem
      Parent = lagrp_MA
      CaptionOptions.Text = 'Separator'
      Index = 1
    end
    object laitm_MAVorname: TdxLayoutGroup
      Parent = lagrp_MA
      AlignHorz = ahClient
      AlignVert = avTop
      CaptionOptions.Text = 'New Group'
      LayoutLookAndFeel = dm_PCM.dxLayoutSkinLookAndFeel2
      LayoutDirection = ldHorizontal
      ShowBorder = False
      Index = 2
    end
    object laitm_MANachname: TdxLayoutGroup
      Parent = lagrp_MA
      AlignHorz = ahClient
      AlignVert = avTop
      CaptionOptions.Text = 'New Group'
      Offsets.Top = 8
      ItemIndex = 1
      LayoutDirection = ldHorizontal
      ShowBorder = False
      Index = 3
    end
    object lbl_nachname: TdxLayoutLabeledItem
      Parent = laitm_MAVorname
      AlignVert = avClient
      CaptionOptions.Text = 'Label'
      Index = 1
    end
    object lagrp_MW: TdxLayoutGroup
      Parent = dxLayoutGroup2
      AlignHorz = ahLeft
      AlignVert = avTop
      CaptionOptions.Text = 'New Group'
      CaptionOptions.Visible = False
      LayoutLookAndFeel = dm_PCM.dxLayoutSkinLookAndFeel2
      Offsets.Left = -4
      Offsets.Right = -4
      Index = 1
    end
    object grpbx_MonatInfo: TdxLayoutLabeledItem
      Parent = lagrp_MW
      CaptionOptions.Text = '[B]Monatsinfo[/B]'
      Index = 0
    end
    object dxLayoutSeparatorItem2: TdxLayoutSeparatorItem
      Parent = lagrp_MW
      Offsets.Top = 4
      CaptionOptions.Text = 'Separator'
      Index = 1
    end
    object dxLayoutItem1: TdxLayoutItem
      Parent = dxLayoutGroup6
      AlignHorz = ahClient
      AlignVert = avTop
      CaptionOptions.Text = 'New Item'
      CaptionOptions.Visible = False
      Control = dxBarDockControl1
      ControlOptions.AutoColor = True
      ControlOptions.OriginalHeight = 42
      ControlOptions.OriginalWidth = 317
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object lagrp_Values: TdxLayoutGroup
      Parent = dxLayoutGroup2
      AlignHorz = ahLeft
      AlignVert = avClient
      CaptionOptions.Text = 'New Group'
      CaptionOptions.Visible = False
      LayoutLookAndFeel = dm_PCM.dxLayoutSkinLookAndFeel2
      Offsets.Left = -4
      Offsets.Right = -4
      ItemIndex = 2
      Index = 2
    end
    object dxLayoutItem2: TdxLayoutItem
      Parent = dxLayoutGroup6
      CaptionOptions.Text = 'New Item'
      CaptionOptions.Visible = False
      Control = AuswertungsJahr
      ControlOptions.OriginalHeight = 23
      ControlOptions.OriginalWidth = 53
      ControlOptions.ShowBorder = False
      Index = 1
    end
    object dxLayoutItem3: TdxLayoutItem
      Parent = dxLayoutGroup7
      CaptionOptions.Text = 'New Item'
      CaptionOptions.Visible = False
      Control = lbl_OfficeGes
      ControlOptions.OriginalHeight = 19
      ControlOptions.OriginalWidth = 27
      ControlOptions.ShowBorder = False
      Index = 1
    end
    object grpbx_Stat: TdxLayoutLabeledItem
      Parent = lagrp_Values
      CaptionOptions.Text = 'Label'
      Index = 0
    end
    object dxLayoutItem4: TdxLayoutItem
      Parent = dxLayoutGroup8
      CaptionOptions.Text = 'New Item'
      CaptionOptions.Visible = False
      Control = lbl_bezKr
      ControlOptions.OriginalHeight = 19
      ControlOptions.OriginalWidth = 27
      ControlOptions.ShowBorder = False
      Index = 1
    end
    object dxLayoutSeparatorItem3: TdxLayoutSeparatorItem
      Parent = lagrp_Values
      CaptionOptions.Text = 'Separator'
      Index = 1
    end
    object dxLayoutGroup3: TdxLayoutGroup
      Parent = dxLayoutGroup39
      AlignHorz = ahClient
      AlignVert = avTop
      CaptionOptions.Text = 'New Group'
      LayoutDirection = ldHorizontal
      ShowBorder = False
      Index = 0
    end
    object dxLayoutItem5: TdxLayoutItem
      Parent = dxLayoutGroup5
      CaptionOptions.Text = 'New Item'
      CaptionOptions.Visible = False
      Control = lbl_unbUL
      ControlOptions.OriginalHeight = 19
      ControlOptions.OriginalWidth = 27
      ControlOptions.ShowBorder = False
      Index = 1
    end
    object dxLayoutItem6: TdxLayoutItem
      Parent = dxLayoutGroup4
      CaptionOptions.Text = 'New Item'
      CaptionOptions.Visible = False
      Control = lbl_geplULGes
      ControlOptions.OriginalHeight = 19
      ControlOptions.OriginalWidth = 27
      ControlOptions.ShowBorder = False
      Index = 1
    end
    object dxLayoutItem7: TdxLayoutItem
      Parent = dxLayoutGroup9
      CaptionOptions.Text = 'New Item'
      CaptionOptions.Visible = False
      Control = lbl_RulVJ
      ControlOptions.OriginalHeight = 19
      ControlOptions.OriginalWidth = 27
      ControlOptions.ShowBorder = False
      Index = 1
    end
    object dxLayoutGroup6: TdxLayoutGroup
      Parent = lagrp_MW
      CaptionOptions.Text = 'New Group'
      LayoutDirection = ldHorizontal
      ShowBorder = False
      Index = 2
    end
    object dxLayoutLabeledItem5: TdxLayoutLabeledItem
      Parent = dxLayoutGroup9
      AlignHorz = ahLeft
      CaptionOptions.Text = '[B]Resturlaub Vorjahr:[/B]'
      CaptionOptions.Width = 120
      Index = 0
    end
    object dxLayoutLabeledItem6: TdxLayoutLabeledItem
      Parent = dxLayoutGroup4
      Offsets.Left = 16
      CaptionOptions.Text = '[B]geplanter  Urlaub:[/B]'
      CaptionOptions.Width = 120
      Index = 0
    end
    object dxLayoutLabeledItem7: TdxLayoutLabeledItem
      Parent = dxLayoutGroup7
      Offsets.Left = 16
      CaptionOptions.Text = '[B]B'#252'rotage:[/B]'
      CaptionOptions.Width = 100
      Index = 0
    end
    object dxLayoutLabeledItem8: TdxLayoutLabeledItem
      Parent = dxLayoutGroup8
      Offsets.Left = 16
      CaptionOptions.Text = '[B]Krank bezahlt:[/B]'
      CaptionOptions.Width = 100
      Index = 0
    end
    object dxLayoutLabeledItem9: TdxLayoutLabeledItem
      Parent = dxLayoutGroup5
      Offsets.Left = 16
      CaptionOptions.Text = '[B]Urlaub unbezahlt:[/B]'
      CaptionOptions.Width = 100
      Index = 0
    end
    object dxLayoutGroup13: TdxLayoutGroup
      Parent = dxLayoutGroup39
      AlignHorz = ahClient
      AlignVert = avTop
      CaptionOptions.Text = 'New Group'
      LayoutDirection = ldHorizontal
      ShowBorder = False
      Index = 1
    end
    object dxLayoutLabeledItem10: TdxLayoutLabeledItem
      Parent = dxLayoutGroup38
      CaptionOptions.Text = '[B]genommener Urlaub:[/B]'
      CaptionOptions.Width = 120
      Index = 0
    end
    object dxLayoutItem8: TdxLayoutItem
      Parent = dxLayoutGroup38
      CaptionOptions.Text = 'New Item'
      CaptionOptions.Visible = False
      Control = lbl_genULGes
      ControlOptions.OriginalHeight = 19
      ControlOptions.OriginalWidth = 27
      ControlOptions.ShowBorder = False
      Index = 1
    end
    object dxLayoutLabeledItem11: TdxLayoutLabeledItem
      Parent = dxLayoutGroup35
      Offsets.Left = 16
      CaptionOptions.Text = '[B]verf'#252'gbarer Urlaub:[/B]'
      CaptionOptions.Width = 120
      Index = 0
    end
    object dxLayoutItem9: TdxLayoutItem
      Parent = dxLayoutGroup35
      CaptionOptions.Text = 'New Item'
      CaptionOptions.Visible = False
      Control = lbl_VerfUL
      ControlOptions.OriginalHeight = 19
      ControlOptions.OriginalWidth = 27
      ControlOptions.ShowBorder = False
      Index = 1
    end
    object dxLayoutLabeledItem12: TdxLayoutLabeledItem
      Parent = dxLayoutGroup12
      Offsets.Left = 16
      CaptionOptions.Text = '[B]Feiertage:[/B]'
      CaptionOptions.Width = 100
      Index = 0
    end
    object dxLayoutLabeledItem13: TdxLayoutLabeledItem
      Parent = dxLayoutGroup11
      Offsets.Left = 16
      CaptionOptions.Text = '[B]Krank unbezahlt:[/B]'
      CaptionOptions.Width = 100
      Index = 0
    end
    object dxLayoutLabeledItem14: TdxLayoutLabeledItem
      Parent = dxLayoutGroup10
      Offsets.Left = 16
      CaptionOptions.Text = '[B]HomeOfficetage:[/B]'
      CaptionOptions.Width = 100
      Index = 0
    end
    object dxLayoutItem10: TdxLayoutItem
      Parent = dxLayoutGroup10
      CaptionOptions.Text = 'New Item'
      CaptionOptions.Visible = False
      Control = lbl_HomeOffGes
      ControlOptions.OriginalHeight = 19
      ControlOptions.OriginalWidth = 27
      ControlOptions.ShowBorder = False
      Index = 1
    end
    object dxLayoutItem11: TdxLayoutItem
      Parent = dxLayoutGroup11
      CaptionOptions.Text = 'New Item'
      CaptionOptions.Visible = False
      Control = lbl_unbKr
      ControlOptions.OriginalHeight = 19
      ControlOptions.OriginalWidth = 27
      ControlOptions.ShowBorder = False
      Index = 1
    end
    object dxLayoutItem12: TdxLayoutItem
      Parent = dxLayoutGroup12
      CaptionOptions.Text = 'New Item'
      CaptionOptions.Visible = False
      Control = lbl_FT
      ControlOptions.OriginalHeight = 19
      ControlOptions.OriginalWidth = 27
      ControlOptions.ShowBorder = False
      Index = 1
    end
    object dxLayoutGroup14: TdxLayoutGroup
      Parent = dxLayoutGroup2
      AlignHorz = ahLeft
      AlignVert = avClient
      CaptionOptions.Text = 'New Group'
      CaptionOptions.Visible = False
      LayoutDirection = ldHorizontal
      ShowBorder = False
      Index = 3
    end
    object dxLayoutItem13: TdxLayoutItem
      Parent = dxLayoutGroup14
      CaptionOptions.Text = 'New Item'
      CaptionOptions.Visible = False
      Control = cxButton2
      ControlOptions.OriginalHeight = 61
      ControlOptions.OriginalWidth = 99
      ControlOptions.ShowBorder = False
      Index = 1
    end
    object dxLayoutItem14: TdxLayoutItem
      Parent = dxLayoutGroup14
      AlignHorz = ahClient
      AlignVert = avTop
      CaptionOptions.Text = 'New Item'
      CaptionOptions.Visible = False
      Control = cxButton1
      ControlOptions.OriginalHeight = 61
      ControlOptions.OriginalWidth = 100
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object dxLayoutGroup15: TdxLayoutGroup
      Parent = dxLayoutGroup1
      AlignHorz = ahClient
      AlignVert = avClient
      CaptionOptions.Text = 'Auswertung'
      LayoutLookAndFeel = dm_PCM.dxLayoutSkinLookAndFeel2
      LayoutDirection = ldHorizontal
      ShowBorder = False
      Index = 1
    end
    object dxLayoutGroup16: TdxLayoutGroup
      Parent = dxLayoutGroup15
      AlignHorz = ahLeft
      AlignVert = avClient
      CaptionOptions.Text = 'Monatswerte:'
      LayoutLookAndFeel = dm_PCM.dxLayoutSkinLookAndFeel1
      ItemIndex = 1
      Index = 0
    end
    object dxLayoutGroup17: TdxLayoutGroup
      Parent = dxLayoutGroup15
      AlignHorz = ahClient
      AlignVert = avClient
      CaptionOptions.Text = 'Tageswerte'
      LayoutLookAndFeel = dm_PCM.dxLayoutSkinLookAndFeel1
      Index = 1
    end
    object dxLayoutItem15: TdxLayoutItem
      Parent = dxLayoutGroup17
      AlignHorz = ahClient
      AlignVert = avClient
      CaptionOptions.Text = 'New Item'
      CaptionOptions.Visible = False
      Control = grd_Tag
      ControlOptions.OriginalHeight = 600
      ControlOptions.OriginalWidth = 1253
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object dxLayoutGroup19: TdxLayoutGroup
      Parent = dxLayoutGroup16
      AlignHorz = ahClient
      AlignVert = avTop
      CaptionOptions.Text = 
        '[B]Stundenwerte                                     hh:mm      D' +
        'ezimal[/B]'
      Index = 0
    end
    object dxLayoutGroup20: TdxLayoutGroup
      Parent = dxLayoutGroup19
      AlignHorz = ahClient
      AlignVert = avTop
      CaptionOptions.Text = 'New Group'
      LayoutDirection = ldHorizontal
      ShowBorder = False
      Index = 6
    end
    object dxLayoutItem16: TdxLayoutItem
      Parent = dxLayoutGroup23
      AlignHorz = ahRight
      AlignVert = avTop
      CaptionOptions.Text = 'New Item'
      CaptionOptions.Visible = False
      Control = lbl_D1
      ControlOptions.OriginalHeight = 19
      ControlOptions.OriginalWidth = 56
      ControlOptions.ShowBorder = False
      Index = 2
    end
    object dxLayoutItem17: TdxLayoutItem
      Parent = dxLayoutGroup23
      AlignHorz = ahRight
      AlignVert = avTop
      CaptionOptions.Text = 'New Item'
      CaptionOptions.Visible = False
      Control = lbl_T1
      ControlOptions.OriginalHeight = 19
      ControlOptions.OriginalWidth = 56
      ControlOptions.ShowBorder = False
      Index = 1
    end
    object dxLayoutLabeledItem15: TdxLayoutLabeledItem
      Parent = dxLayoutGroup23
      AlignHorz = ahClient
      AlignVert = avTop
      CaptionOptions.Text = 'Iststunden brutto:'
      Index = 0
    end
    object dxLayoutLabeledItem18: TdxLayoutLabeledItem
      Parent = dxLayoutGroup24
      AlignHorz = ahClient
      AlignVert = avTop
      CaptionOptions.Text = 'Pausen:'
      Index = 0
    end
    object dxLayoutLabeledItem19: TdxLayoutLabeledItem
      Parent = dxLayoutGroup27
      AlignHorz = ahClient
      AlignVert = avTop
      CaptionOptions.Text = 'Minder/Mehrarbeit:'
      Index = 0
    end
    object dxLayoutLabeledItem20: TdxLayoutLabeledItem
      Parent = dxLayoutGroup25
      AlignHorz = ahClient
      AlignVert = avTop
      CaptionOptions.Text = 'Sollstunden:'
      Index = 0
    end
    object dxLayoutLabeledItem21: TdxLayoutLabeledItem
      Parent = dxLayoutGroup28
      AlignHorz = ahClient
      AlignVert = avTop
      CaptionOptions.Text = 'Iststunden netto:'
      Index = 0
    end
    object dxLayoutLabeledItem22: TdxLayoutLabeledItem
      Parent = dxLayoutGroup20
      AlignHorz = ahClient
      AlignVert = avTop
      CaptionOptions.Text = '[B]Gleitzeit'#252'bertrag Folgemonat:[/B]'
      Index = 0
    end
    object dxLayoutItem18: TdxLayoutItem
      Parent = dxLayoutGroup25
      AlignHorz = ahRight
      AlignVert = avTop
      CaptionOptions.Text = 'New Item'
      CaptionOptions.Visible = False
      Control = lbl_T4
      ControlOptions.OriginalHeight = 19
      ControlOptions.OriginalWidth = 56
      ControlOptions.ShowBorder = False
      Index = 1
    end
    object dxLayoutItem19: TdxLayoutItem
      Parent = dxLayoutGroup28
      AlignHorz = ahRight
      AlignVert = avTop
      CaptionOptions.Text = 'New Item'
      CaptionOptions.Visible = False
      Control = lbl_T3
      ControlOptions.OriginalHeight = 19
      ControlOptions.OriginalWidth = 56
      ControlOptions.ShowBorder = False
      Index = 1
    end
    object dxLayoutItem20: TdxLayoutItem
      Parent = dxLayoutGroup24
      AlignHorz = ahRight
      AlignVert = avTop
      CaptionOptions.Text = 'New Item'
      CaptionOptions.Visible = False
      Control = lbl_D2
      ControlOptions.OriginalHeight = 19
      ControlOptions.OriginalWidth = 56
      ControlOptions.ShowBorder = False
      Index = 2
    end
    object dxLayoutItem21: TdxLayoutItem
      Parent = dxLayoutGroup24
      AlignHorz = ahRight
      AlignVert = avTop
      CaptionOptions.Text = 'New Item'
      CaptionOptions.Visible = False
      Control = lbl_T2
      ControlOptions.OriginalHeight = 19
      ControlOptions.OriginalWidth = 56
      ControlOptions.ShowBorder = False
      Index = 1
    end
    object dxLayoutLabeledItem17: TdxLayoutLabeledItem
      Parent = dxLayoutGroup26
      AlignHorz = ahClient
      AlignVert = avTop
      CaptionOptions.Text = 'Gleitzeit'#252'bertrag Vormonat:'
      Index = 0
    end
    object dxLayoutItem22: TdxLayoutItem
      Parent = dxLayoutGroup27
      AlignHorz = ahRight
      AlignVert = avTop
      CaptionOptions.Text = 'New Item'
      CaptionOptions.Visible = False
      Control = lbl_D5
      ControlOptions.OriginalHeight = 19
      ControlOptions.OriginalWidth = 56
      ControlOptions.ShowBorder = False
      Index = 2
    end
    object dxLayoutItem23: TdxLayoutItem
      Parent = dxLayoutGroup25
      AlignHorz = ahRight
      AlignVert = avTop
      CaptionOptions.Text = 'New Item'
      CaptionOptions.Visible = False
      Control = lbl_D4
      ControlOptions.OriginalHeight = 19
      ControlOptions.OriginalWidth = 56
      ControlOptions.ShowBorder = False
      Index = 2
    end
    object dxLayoutItem24: TdxLayoutItem
      Parent = dxLayoutGroup26
      AlignHorz = ahRight
      AlignVert = avTop
      CaptionOptions.Text = 'New Item'
      CaptionOptions.Visible = False
      Control = lbl_T6
      ControlOptions.OriginalHeight = 19
      ControlOptions.OriginalWidth = 56
      ControlOptions.ShowBorder = False
      Index = 1
    end
    object dxLayoutItem25: TdxLayoutItem
      Parent = dxLayoutGroup28
      AlignHorz = ahRight
      AlignVert = avTop
      CaptionOptions.Text = 'New Item'
      CaptionOptions.Visible = False
      Control = lbl_D3
      ControlOptions.OriginalHeight = 19
      ControlOptions.OriginalWidth = 56
      ControlOptions.ShowBorder = False
      Index = 2
    end
    object dxLayoutItem26: TdxLayoutItem
      Parent = dxLayoutGroup20
      AlignHorz = ahRight
      AlignVert = avTop
      CaptionOptions.Text = 'New Item'
      CaptionOptions.Visible = False
      Control = lbl_T7
      ControlOptions.OriginalHeight = 19
      ControlOptions.OriginalWidth = 56
      ControlOptions.ShowBorder = False
      Index = 1
    end
    object dxLayoutItem27: TdxLayoutItem
      Parent = dxLayoutGroup27
      AlignHorz = ahRight
      AlignVert = avTop
      CaptionOptions.Text = 'New Item'
      CaptionOptions.Visible = False
      Control = lbl_T5
      ControlOptions.OriginalHeight = 19
      ControlOptions.OriginalWidth = 56
      ControlOptions.ShowBorder = False
      Index = 1
    end
    object dxLayoutItem28: TdxLayoutItem
      Parent = dxLayoutGroup26
      AlignHorz = ahRight
      AlignVert = avTop
      CaptionOptions.Text = 'New Item'
      CaptionOptions.Visible = False
      Control = lbl_D6
      ControlOptions.OriginalHeight = 19
      ControlOptions.OriginalWidth = 56
      ControlOptions.ShowBorder = False
      Index = 2
    end
    object dxLayoutItem29: TdxLayoutItem
      Parent = dxLayoutGroup20
      AlignHorz = ahRight
      AlignVert = avTop
      CaptionOptions.Text = 'New Item'
      CaptionOptions.Visible = False
      Control = lbl_D7
      ControlOptions.OriginalHeight = 19
      ControlOptions.OriginalWidth = 56
      ControlOptions.ShowBorder = False
      Index = 2
    end
    object dxLayoutGroup23: TdxLayoutGroup
      Parent = dxLayoutGroup19
      AlignHorz = ahClient
      AlignVert = avTop
      CaptionOptions.Text = 'New Group'
      ItemIndex = 2
      LayoutDirection = ldHorizontal
      ShowBorder = False
      Index = 0
    end
    object dxLayoutGroup24: TdxLayoutGroup
      Parent = dxLayoutGroup19
      AlignHorz = ahClient
      AlignVert = avTop
      CaptionOptions.Text = 'New Group'
      ItemIndex = 2
      LayoutDirection = ldHorizontal
      ShowBorder = False
      Index = 1
    end
    object dxLayoutGroup25: TdxLayoutGroup
      Parent = dxLayoutGroup19
      AlignHorz = ahClient
      AlignVert = avTop
      CaptionOptions.Text = 'New Group'
      ItemIndex = 2
      LayoutDirection = ldHorizontal
      ShowBorder = False
      Index = 3
    end
    object dxLayoutGroup26: TdxLayoutGroup
      Parent = dxLayoutGroup19
      AlignHorz = ahClient
      AlignVert = avTop
      CaptionOptions.Text = 'New Group'
      ItemIndex = 2
      LayoutDirection = ldHorizontal
      ShowBorder = False
      Index = 5
    end
    object dxLayoutGroup27: TdxLayoutGroup
      Parent = dxLayoutGroup19
      AlignHorz = ahClient
      AlignVert = avTop
      CaptionOptions.Text = 'New Group'
      ItemIndex = 2
      LayoutDirection = ldHorizontal
      ShowBorder = False
      Index = 4
    end
    object dxLayoutGroup28: TdxLayoutGroup
      Parent = dxLayoutGroup19
      AlignHorz = ahClient
      AlignVert = avTop
      CaptionOptions.Text = 'New Group'
      ItemIndex = 2
      LayoutDirection = ldHorizontal
      ShowBorder = False
      Index = 2
    end
    object dxLayoutGroup18: TdxLayoutGroup
      Parent = dxLayoutGroup16
      AlignHorz = ahClient
      AlignVert = avTop
      CaptionOptions.Text = 
        '[B]Abwesenheitswerte                                Tage       h' +
        'h:mm[/B]'
      ItemIndex = 5
      Index = 1
    end
    object dxLayoutGroup21: TdxLayoutGroup
      Parent = dxLayoutGroup18
      AlignHorz = ahClient
      AlignVert = avTop
      CaptionOptions.Text = 'New Group'
      ItemIndex = 2
      LayoutDirection = ldHorizontal
      ShowBorder = False
      Index = 3
    end
    object dxLayoutGroup22: TdxLayoutGroup
      Parent = dxLayoutGroup18
      AlignHorz = ahClient
      AlignVert = avTop
      CaptionOptions.Text = 'New Group'
      LayoutDirection = ldHorizontal
      ShowBorder = False
      Index = 2
    end
    object dxLayoutGroup29: TdxLayoutGroup
      Parent = dxLayoutGroup18
      AlignHorz = ahClient
      AlignVert = avTop
      CaptionOptions.Text = 'New Group'
      LayoutDirection = ldHorizontal
      ShowBorder = False
      Index = 1
    end
    object dxLayoutGroup30: TdxLayoutGroup
      Parent = dxLayoutGroup18
      AlignHorz = ahClient
      AlignVert = avTop
      CaptionOptions.Text = 'New Group'
      LayoutDirection = ldHorizontal
      ShowBorder = False
      Index = 0
    end
    object dxLayoutLabeledItem16: TdxLayoutLabeledItem
      Parent = dxLayoutGroup30
      AlignHorz = ahClient
      AlignVert = avTop
      CaptionOptions.Text = 'Urlaub genommen:'
      CaptionOptions.Width = 170
      Index = 0
    end
    object dxLayoutItem30: TdxLayoutItem
      Parent = dxLayoutGroup30
      AlignHorz = ahRight
      AlignVert = avTop
      CaptionOptions.Text = 'New Item'
      CaptionOptions.Visible = False
      Control = lbl_TG1Dez
      ControlOptions.OriginalHeight = 19
      ControlOptions.OriginalWidth = 56
      ControlOptions.ShowBorder = False
      Index = 2
    end
    object dxLayoutItem31: TdxLayoutItem
      Parent = dxLayoutGroup30
      AlignHorz = ahRight
      AlignVert = avTop
      CaptionOptions.Text = 'New Item'
      CaptionOptions.Visible = False
      Control = lbl_TG1
      ControlOptions.OriginalHeight = 19
      ControlOptions.OriginalWidth = 56
      ControlOptions.ShowBorder = False
      Index = 1
    end
    object dxLayoutLabeledItem23: TdxLayoutLabeledItem
      Parent = dxLayoutGroup29
      AlignHorz = ahClient
      AlignVert = avTop
      CaptionOptions.Text = 'Urlaub geplant:'
      CaptionOptions.Width = 170
      Index = 0
    end
    object dxLayoutItem32: TdxLayoutItem
      Parent = dxLayoutGroup29
      AlignHorz = ahRight
      AlignVert = avTop
      CaptionOptions.Text = 'New Item'
      CaptionOptions.Visible = False
      Control = lbl_TG2Dez
      ControlOptions.OriginalHeight = 19
      ControlOptions.OriginalWidth = 56
      ControlOptions.ShowBorder = False
      Index = 2
    end
    object dxLayoutItem33: TdxLayoutItem
      Parent = dxLayoutGroup29
      AlignHorz = ahRight
      AlignVert = avTop
      CaptionOptions.Text = 'New Item'
      CaptionOptions.Visible = False
      Control = lbl_TG2
      ControlOptions.OriginalHeight = 19
      ControlOptions.OriginalWidth = 56
      ControlOptions.ShowBorder = False
      Index = 1
    end
    object dxLayoutLabeledItem24: TdxLayoutLabeledItem
      Parent = dxLayoutGroup22
      AlignHorz = ahClient
      AlignVert = avTop
      CaptionOptions.Text = '[B]Resturlaub:[/B]'
      CaptionOptions.Width = 170
      Index = 0
    end
    object dxLayoutItem34: TdxLayoutItem
      Parent = dxLayoutGroup22
      AlignHorz = ahRight
      AlignVert = avTop
      CaptionOptions.Text = 'New Item'
      CaptionOptions.Visible = False
      Control = lbl_TG3Dez
      ControlOptions.OriginalHeight = 19
      ControlOptions.OriginalWidth = 56
      ControlOptions.ShowBorder = False
      Index = 2
    end
    object dxLayoutItem35: TdxLayoutItem
      Parent = dxLayoutGroup22
      AlignHorz = ahRight
      AlignVert = avTop
      CaptionOptions.Text = 'New Item'
      CaptionOptions.Visible = False
      Control = lbl_TG3
      ControlOptions.OriginalHeight = 19
      ControlOptions.OriginalWidth = 56
      ControlOptions.ShowBorder = False
      Index = 1
    end
    object dxLayoutGroup31: TdxLayoutGroup
      Parent = dxLayoutGroup18
      AlignHorz = ahClient
      AlignVert = avTop
      CaptionOptions.Text = 'New Group'
      ItemIndex = 1
      LayoutDirection = ldHorizontal
      ShowBorder = False
      Index = 4
    end
    object dxLayoutGroup32: TdxLayoutGroup
      Parent = dxLayoutGroup18
      AlignHorz = ahClient
      AlignVert = avTop
      CaptionOptions.Text = 'New Group'
      LayoutDirection = ldHorizontal
      ShowBorder = False
      Index = 6
    end
    object dxLayoutGroup33: TdxLayoutGroup
      Parent = dxLayoutGroup18
      AlignHorz = ahClient
      AlignVert = avTop
      CaptionOptions.Text = 'New Group'
      LayoutDirection = ldHorizontal
      ShowBorder = False
      Index = 7
    end
    object dxLayoutGroup34: TdxLayoutGroup
      Parent = dxLayoutGroup18
      AlignHorz = ahClient
      AlignVert = avTop
      CaptionOptions.Text = 'New Group'
      LayoutDirection = ldHorizontal
      ShowBorder = False
      Index = 8
    end
    object dxLayoutGroup36: TdxLayoutGroup
      Parent = dxLayoutGroup18
      AlignHorz = ahClient
      AlignVert = avTop
      CaptionOptions.Text = 'New Group'
      ItemIndex = 2
      LayoutDirection = ldHorizontal
      ShowBorder = False
      Index = 9
    end
    object dxLayoutGroup37: TdxLayoutGroup
      Parent = dxLayoutGroup18
      AlignHorz = ahClient
      AlignVert = avTop
      CaptionOptions.Text = 'New Group'
      ItemIndex = 2
      LayoutDirection = ldHorizontal
      ShowBorder = False
      Index = 10
    end
    object dxLayoutLabeledItem25: TdxLayoutLabeledItem
      Parent = dxLayoutGroup33
      AlignHorz = ahClient
      AlignVert = avTop
      CaptionOptions.Text = 'Krank unbezahlt:'
      CaptionOptions.Width = 170
      Index = 0
    end
    object dxLayoutLabeledItem26: TdxLayoutLabeledItem
      Parent = dxLayoutGroup32
      AlignHorz = ahClient
      AlignVert = avTop
      CaptionOptions.Text = 'Krank bezahlt:'
      CaptionOptions.Width = 170
      Index = 0
    end
    object dxLayoutLabeledItem27: TdxLayoutLabeledItem
      Parent = dxLayoutGroup31
      AlignHorz = ahClient
      AlignVert = avTop
      CaptionOptions.Text = 'Feiertage:'
      CaptionOptions.Width = 170
      Index = 0
    end
    object dxLayoutLabeledItem28: TdxLayoutLabeledItem
      Parent = dxLayoutGroup21
      AlignHorz = ahClient
      AlignVert = avTop
      CaptionOptions.Text = 'Urlaub unbezahlt:'
      CaptionOptions.Width = 170
      Index = 0
    end
    object dxLayoutLabeledItem29: TdxLayoutLabeledItem
      Parent = dxLayoutGroup36
      AlignHorz = ahClient
      AlignVert = avTop
      CaptionOptions.Text = 'HomeOffice-Tage:'
      CaptionOptions.Width = 170
      Index = 0
    end
    object dxLayoutLabeledItem30: TdxLayoutLabeledItem
      Parent = dxLayoutGroup34
      AlignHorz = ahClient
      AlignVert = avTop
      CaptionOptions.Text = 'B'#252'ro-Tage:'
      CaptionOptions.Width = 170
      Index = 0
    end
    object dxLayoutLabeledItem31: TdxLayoutLabeledItem
      Parent = dxLayoutGroup37
      AlignHorz = ahClient
      AlignVert = avTop
      CaptionOptions.Text = '[B]Arbeitstage gesamt:[/B]'
      CaptionOptions.Width = 170
      Index = 0
    end
    object dxLayoutItem36: TdxLayoutItem
      Parent = dxLayoutGroup31
      AlignHorz = ahRight
      AlignVert = avTop
      CaptionOptions.Text = 'New Item'
      CaptionOptions.Visible = False
      Control = lbl_FTM
      ControlOptions.OriginalHeight = 19
      ControlOptions.OriginalWidth = 56
      ControlOptions.ShowBorder = False
      Index = 1
    end
    object dxLayoutItem37: TdxLayoutItem
      Parent = dxLayoutGroup21
      AlignHorz = ahRight
      AlignVert = avTop
      CaptionOptions.Text = 'New Item'
      CaptionOptions.Visible = False
      Control = lbl_ULunbDez
      ControlOptions.OriginalHeight = 19
      ControlOptions.OriginalWidth = 56
      ControlOptions.ShowBorder = False
      Index = 2
    end
    object dxLayoutItem38: TdxLayoutItem
      Parent = dxLayoutGroup21
      AlignHorz = ahRight
      AlignVert = avTop
      CaptionOptions.Text = 'New Item'
      CaptionOptions.Visible = False
      Control = lbl_ULunb
      ControlOptions.OriginalHeight = 19
      ControlOptions.OriginalWidth = 56
      ControlOptions.ShowBorder = False
      Index = 1
    end
    object dxLayoutItem39: TdxLayoutItem
      Parent = dxLayoutGroup31
      AlignHorz = ahRight
      AlignVert = avTop
      CaptionOptions.Text = 'New Item'
      CaptionOptions.Visible = False
      Control = lbl_FTMDez
      ControlOptions.OriginalHeight = 19
      ControlOptions.OriginalWidth = 56
      ControlOptions.ShowBorder = False
      Index = 2
    end
    object dxLayoutItem40: TdxLayoutItem
      Parent = dxLayoutGroup32
      AlignHorz = ahRight
      AlignVert = avTop
      CaptionOptions.Text = 'New Item'
      CaptionOptions.Visible = False
      Control = lbl_krDez
      ControlOptions.OriginalHeight = 19
      ControlOptions.OriginalWidth = 56
      ControlOptions.ShowBorder = False
      Index = 2
    end
    object dxLayoutItem41: TdxLayoutItem
      Parent = dxLayoutGroup32
      AlignHorz = ahRight
      AlignVert = avTop
      CaptionOptions.Text = 'New Item'
      CaptionOptions.Visible = False
      Control = lbl_kr
      ControlOptions.OriginalHeight = 19
      ControlOptions.OriginalWidth = 56
      ControlOptions.ShowBorder = False
      Index = 1
    end
    object dxLayoutItem42: TdxLayoutItem
      Parent = dxLayoutGroup33
      AlignHorz = ahRight
      AlignVert = avTop
      CaptionOptions.Text = 'New Item'
      CaptionOptions.Visible = False
      Control = lbl_krunb
      ControlOptions.OriginalHeight = 19
      ControlOptions.OriginalWidth = 56
      ControlOptions.ShowBorder = False
      Index = 1
    end
    object dxLayoutItem43: TdxLayoutItem
      Parent = dxLayoutGroup33
      AlignHorz = ahRight
      AlignVert = avTop
      CaptionOptions.Text = 'New Item'
      CaptionOptions.Visible = False
      Control = lbl_krunbdez
      ControlOptions.OriginalHeight = 19
      ControlOptions.OriginalWidth = 56
      ControlOptions.ShowBorder = False
      Index = 2
    end
    object dxLayoutItem44: TdxLayoutItem
      Parent = dxLayoutGroup34
      AlignHorz = ahRight
      AlignVert = avTop
      CaptionOptions.Text = 'New Item'
      CaptionOptions.Visible = False
      Control = lbl_Buero
      ControlOptions.OriginalHeight = 19
      ControlOptions.OriginalWidth = 56
      ControlOptions.ShowBorder = False
      Index = 1
    end
    object dxLayoutItem45: TdxLayoutItem
      Parent = dxLayoutGroup34
      AlignHorz = ahRight
      AlignVert = avTop
      CaptionOptions.Text = 'New Item'
      CaptionOptions.Visible = False
      Control = lbl_BueroDez
      ControlOptions.OriginalHeight = 19
      ControlOptions.OriginalWidth = 56
      ControlOptions.ShowBorder = False
      Index = 2
    end
    object dxLayoutItem46: TdxLayoutItem
      Parent = dxLayoutGroup36
      AlignHorz = ahRight
      AlignVert = avTop
      CaptionOptions.Text = 'New Item'
      CaptionOptions.Visible = False
      Control = lbl_HO
      ControlOptions.OriginalHeight = 19
      ControlOptions.OriginalWidth = 56
      ControlOptions.ShowBorder = False
      Index = 1
    end
    object dxLayoutItem47: TdxLayoutItem
      Parent = dxLayoutGroup36
      AlignHorz = ahRight
      AlignVert = avTop
      CaptionOptions.Text = 'New Item'
      CaptionOptions.Visible = False
      Control = lbl_HODez
      ControlOptions.OriginalHeight = 19
      ControlOptions.OriginalWidth = 56
      ControlOptions.ShowBorder = False
      Index = 2
    end
    object dxLayoutItem48: TdxLayoutItem
      Parent = dxLayoutGroup37
      AlignHorz = ahRight
      AlignVert = avTop
      CaptionOptions.Text = 'New Item'
      CaptionOptions.Visible = False
      Control = lbl_BHOGes
      ControlOptions.OriginalHeight = 19
      ControlOptions.OriginalWidth = 56
      ControlOptions.ShowBorder = False
      Index = 1
    end
    object dxLayoutItem49: TdxLayoutItem
      Parent = dxLayoutGroup37
      AlignHorz = ahRight
      AlignVert = avTop
      CaptionOptions.Text = 'New Item'
      CaptionOptions.Visible = False
      Control = lbl_BHOGesDez
      ControlOptions.OriginalHeight = 19
      ControlOptions.OriginalWidth = 56
      ControlOptions.ShowBorder = False
      Index = 2
    end
    object dxLayoutGroup4: TdxLayoutGroup
      Parent = dxLayoutGroup3
      AlignHorz = ahLeft
      AlignVert = avTop
      CaptionOptions.Text = 'New Group'
      ItemIndex = 1
      LayoutDirection = ldHorizontal
      ShowBorder = False
      Index = 1
    end
    object dxLayoutGroup5: TdxLayoutGroup
      Parent = dxLayoutGroup3
      AlignHorz = ahLeft
      AlignVert = avTop
      CaptionOptions.Text = 'New Group'
      ItemIndex = 1
      LayoutDirection = ldHorizontal
      ShowBorder = False
      Index = 2
    end
    object dxLayoutGroup7: TdxLayoutGroup
      Parent = dxLayoutGroup3
      AlignHorz = ahLeft
      AlignVert = avTop
      CaptionOptions.Text = 'New Group'
      ItemIndex = 1
      LayoutDirection = ldHorizontal
      ShowBorder = False
      Index = 4
    end
    object dxLayoutGroup8: TdxLayoutGroup
      Parent = dxLayoutGroup3
      AlignHorz = ahLeft
      AlignVert = avTop
      CaptionOptions.Text = 'New Group'
      ItemIndex = 1
      LayoutDirection = ldHorizontal
      ShowBorder = False
      Index = 3
    end
    object dxLayoutGroup9: TdxLayoutGroup
      Parent = dxLayoutGroup3
      AlignHorz = ahLeft
      AlignVert = avTop
      CaptionOptions.Text = 'New Group'
      LayoutDirection = ldHorizontal
      ShowBorder = False
      Index = 0
    end
    object dxLayoutGroup10: TdxLayoutGroup
      Parent = dxLayoutGroup13
      AlignHorz = ahLeft
      AlignVert = avTop
      CaptionOptions.Text = 'New Group'
      ItemIndex = 1
      LayoutDirection = ldHorizontal
      ShowBorder = False
      Index = 4
    end
    object dxLayoutGroup11: TdxLayoutGroup
      Parent = dxLayoutGroup13
      AlignHorz = ahLeft
      AlignVert = avTop
      CaptionOptions.Text = 'New Group'
      ItemIndex = 1
      LayoutDirection = ldHorizontal
      ShowBorder = False
      Index = 3
    end
    object dxLayoutGroup12: TdxLayoutGroup
      Parent = dxLayoutGroup13
      AlignHorz = ahLeft
      AlignVert = avTop
      CaptionOptions.Text = 'New Group'
      ItemIndex = 1
      LayoutDirection = ldHorizontal
      ShowBorder = False
      Index = 2
    end
    object dxLayoutGroup35: TdxLayoutGroup
      Parent = dxLayoutGroup13
      AlignHorz = ahLeft
      AlignVert = avTop
      CaptionOptions.Text = 'New Group'
      ItemIndex = 1
      LayoutDirection = ldHorizontal
      ShowBorder = False
      Index = 1
    end
    object dxLayoutGroup38: TdxLayoutGroup
      Parent = dxLayoutGroup13
      AlignHorz = ahLeft
      AlignVert = avTop
      CaptionOptions.Text = 'New Group'
      LayoutDirection = ldHorizontal
      ShowBorder = False
      Index = 0
    end
    object dxLayoutGroup39: TdxLayoutGroup
      Parent = lagrp_Values
      AlignHorz = ahClient
      AlignVert = avTop
      CaptionOptions.Text = 'New Group'
      ShowBorder = False
      Index = 2
    end
    object dxLayoutGroup40: TdxLayoutGroup
      Parent = dxLayoutGroup18
      CaptionOptions.Text = 'New Group'
      ItemIndex = 1
      LayoutDirection = ldHorizontal
      ShowBorder = False
      Index = 5
    end
    object dxLayoutLabeledItem4: TdxLayoutLabeledItem
      Parent = dxLayoutGroup40
      AlignHorz = ahClient
      AlignVert = avTop
      CaptionOptions.Text = 'Krank Kind'
      Index = 0
    end
    object dxLayoutItem50: TdxLayoutItem
      Parent = dxLayoutGroup40
      AlignHorz = ahRight
      AlignVert = avTop
      CaptionOptions.Text = 'New Item'
      CaptionOptions.Visible = False
      Control = lbl_KikDez
      ControlOptions.OriginalHeight = 19
      ControlOptions.OriginalWidth = 56
      ControlOptions.ShowBorder = False
      Index = 2
    end
    object dxLayoutItem51: TdxLayoutItem
      Parent = dxLayoutGroup40
      AlignHorz = ahRight
      AlignVert = avTop
      CaptionOptions.Text = 'New Item'
      CaptionOptions.Visible = False
      Control = lbl_KikTag
      ControlOptions.OriginalHeight = 19
      ControlOptions.OriginalWidth = 56
      ControlOptions.ShowBorder = False
      Index = 1
    end
  end
  object brmgr_MW: TdxBarManager
    AllowReset = False
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -12
    Font.Name = 'Segoe UI'
    Font.Style = []
    CanCustomize = False
    Categories.Strings = (
      'Default'
      'PopupMenu1')
    Categories.ItemsVisibles = (
      2
      2)
    Categories.Visibles = (
      True
      True)
    ImageOptions.LargeImages = imglst_16x16
    NotDocking = [dsNone, dsLeft, dsTop, dsRight, dsBottom]
    PopupMenuLinks = <>
    Style = bmsUseLookAndFeel
    UseFullReset = True
    UseSystemFont = True
    Left = 472
    Top = 224
    PixelsPerInch = 96
    object tb_MW: TdxBar
      BorderStyle = bbsNone
      Caption = 'Custom 1'
      CaptionButtons = <>
      DockControl = dxBarDockControl1
      DockedDockControl = dxBarDockControl1
      DockedLeft = 0
      DockedTop = 0
      FloatLeft = 991
      FloatTop = 2
      FloatClientWidth = 0
      FloatClientHeight = 0
      ItemLinks = <
        item
          Visible = True
          ItemName = 'btn_01'
        end
        item
          Visible = True
          ItemName = 'btn_02'
        end
        item
          Visible = True
          ItemName = 'btn_03'
        end
        item
          Visible = True
          ItemName = 'btn_04'
        end
        item
          Visible = True
          ItemName = 'btn_05'
        end
        item
          Visible = True
          ItemName = 'btn_06'
        end
        item
          Visible = True
          ItemName = 'btn_07'
        end
        item
          Visible = True
          ItemName = 'btn_08'
        end
        item
          Visible = True
          ItemName = 'btn_09'
        end
        item
          Visible = True
          ItemName = 'btn_10'
        end
        item
          Visible = True
          ItemName = 'btn_11'
        end
        item
          Visible = True
          ItemName = 'btn_12'
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
    object btn_01: TdxBarLargeButton
      Tag = 1
      Caption = '1'
      Category = 0
      Hint = '1'
      Visible = ivAlways
      OnClick = SetMonatswerte
      AutoGrayScale = False
      GlyphLayout = glBottom
      LargeImageIndex = 0
      Width = 25
      SyncImageIndex = False
      ImageIndex = -1
    end
    object btn_02: TdxBarLargeButton
      Tag = 2
      Caption = '2'
      Category = 0
      Hint = '2'
      Visible = ivAlways
      OnClick = SetMonatswerte
      AutoGrayScale = False
      GlyphLayout = glBottom
      Width = 25
    end
    object btn_03: TdxBarLargeButton
      Tag = 3
      Caption = '3'
      Category = 0
      Hint = '3'
      Visible = ivAlways
      OnClick = SetMonatswerte
      AutoGrayScale = False
      GlyphLayout = glBottom
      Width = 25
    end
    object btn_04: TdxBarLargeButton
      Tag = 4
      Caption = '4'
      Category = 0
      Hint = '4'
      Visible = ivAlways
      OnClick = SetMonatswerte
      AutoGrayScale = False
      GlyphLayout = glBottom
      Width = 25
    end
    object btn_05: TdxBarLargeButton
      Tag = 5
      Caption = '5'
      Category = 0
      Hint = '5'
      Visible = ivAlways
      OnClick = SetMonatswerte
      AutoGrayScale = False
      GlyphLayout = glBottom
      Width = 25
    end
    object btn_06: TdxBarLargeButton
      Tag = 6
      Caption = '6'
      Category = 0
      Hint = '6'
      Visible = ivAlways
      OnClick = SetMonatswerte
      AutoGrayScale = False
      GlyphLayout = glBottom
      Width = 25
    end
    object btn_07: TdxBarLargeButton
      Tag = 7
      Caption = '7'
      Category = 0
      Hint = '7'
      Visible = ivAlways
      OnClick = SetMonatswerte
      AutoGrayScale = False
      GlyphLayout = glBottom
      Width = 25
    end
    object btn_08: TdxBarLargeButton
      Tag = 8
      Caption = '8'
      Category = 0
      Hint = '8'
      Visible = ivAlways
      OnClick = SetMonatswerte
      AutoGrayScale = False
      GlyphLayout = glBottom
      Width = 25
    end
    object btn_09: TdxBarLargeButton
      Tag = 9
      Caption = '9'
      Category = 0
      Hint = '9'
      Visible = ivAlways
      OnClick = SetMonatswerte
      AutoGrayScale = False
      GlyphLayout = glBottom
      Width = 25
    end
    object btn_10: TdxBarLargeButton
      Tag = 10
      Caption = '10'
      Category = 0
      Hint = '10'
      Visible = ivAlways
      OnClick = SetMonatswerte
      AutoGrayScale = False
      GlyphLayout = glBottom
      Width = 25
    end
    object btn_11: TdxBarLargeButton
      Tag = 11
      Caption = '11'
      Category = 0
      Hint = '11'
      Visible = ivAlways
      OnClick = SetMonatswerte
      AutoGrayScale = False
      GlyphLayout = glBottom
    end
    object btn_12: TdxBarLargeButton
      Tag = 12
      Caption = '12'
      Category = 0
      Hint = '12'
      Visible = ivAlways
      OnClick = SetMonatswerte
      AutoGrayScale = False
      GlyphLayout = glBottom
    end
    object dxBarLargeButton1: TdxBarLargeButton
      Caption = 'New Button'
      Category = 0
      Hint = 'New Button'
      Visible = ivAlways
      LargeImageIndex = 12
    end
    object dxBarLargeButton2: TdxBarLargeButton
      Caption = 'New Button'
      Category = 0
      Hint = 'New Button'
      Visible = ivAlways
      LargeImageIndex = 15
    end
    object dxBarLargeButton3: TdxBarLargeButton
      Caption = 'New Button'
      Category = 0
      Hint = 'New Button'
      Visible = ivAlways
    end
    object dxBarLargeButton4: TdxBarLargeButton
      Caption = 'Nach &Excel exportieren...'
      Category = 0
      Hint = 'Nach Excel exportieren'
      Visible = ivAlways
      Glyph.SourceDPI = 96
      Glyph.SourceHeight = 16
      Glyph.SourceWidth = 16
      Glyph.Data = {
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
        323B7D262331333B262331303B2623393B2E426C75657B66696C6C3A23313137
        3744373B7D3C2F7374796C653E0D0A3C7061746820636C6173733D22426C6163
        6B2220643D224D382C3468313876366832563363302D302E352D302E352D312D
        312D31483743362E352C322C362C322E352C362C337637683256347A222F3E0D
        0A3C7061746820636C6173733D22426C61636B2220643D224D32362C32384838
        563138483676313163302C302E352C302E352C312C312C3168323063302E352C
        302C312D302E352C312D31563138682D325632387A222F3E0D0A3C7061746820
        636C6173733D22426C75652220643D224D32392C38682D31682D324838483648
        3543342E342C382C342C382E342C342C3976313063302C302E362C302E342C31
        2C312C31683168326831386832683163302E362C302C312D302E342C312D3156
        394333302C382E342C32392E362C382C32392C387A20202623393B204D31322E
        392C3132632D302E352D302E332D312D302E352D312E362D302E35632D302E37
        2C302D312E322C302E322D312E362C302E3743392E322C31322E362C392C3133
        2E332C392C313463302C302E372C302E322C312E332C302E362C312E3873302E
        392C302E372C312E362C302E3720202623393B63302E362C302C312E322D302E
        322C312E372D302E3576312E36632D302E352C302E332D312E322C302E342D32
        2C302E34632D312E312C302D322D302E332D322E362D31632D302E312D302E31
        2D302E322D302E322D302E322D302E33632D302E352D302E362D302E372D312E
        352D302E372D322E3420202623393B63302D312C302E322D312E382C302E372D
        322E3563302E312D302E322C302E322D302E332C302E342D302E3543392E312C
        31302E342C31302C31302C31312E312C313063302E372C302C312E332C302E31
        2C312E382C302E335631327A204D31392E322C31362E3820202623393B632D30
        2E322C302E332D302E342C302E352D302E362C302E37632D302E332C302E322D
        302E362C302E332D302E392C302E344331372E342C31372E392C31372C31382C
        31362E362C3138632D302E342C302D302E382C302D312E312D302E31632D302E
        342D302E312D302E372D302E322D302E392D302E33762D312E3720202623393B
        63302E332C302E332C302E362C302E352C302E392C302E3663302E332C302E31
        2C302E372C302E322C312C302E3263302E322C302C302E342C302C302E352D30
        2E3163302E322C302C302E332D302E312C302E342D302E3263302E312D302E31
        2C302E322D302E322C302E322D302E3220202623393B63302E312D302E312C30
        2E312D302E322C302E312D302E3363302D302E322C302D302E332D302E312D30
        2E34732D302E322D302E322D302E332D302E33732D302E332D302E322D302E35
        2D302E33732D302E342D302E322D302E362D302E33632D302E362D302E332D31
        2D302E362D312E322D302E3920202623393B732D302E342D302E382D302E342D
        312E3363302D302E342C302E312D302E372C302E322D3163302E312D302E332C
        302E342D302E352C302E362D302E3773302E362D302E332C302E392D302E3463
        302E332D302E312C302E372D302E312C312E312D302E3163302E342C302C302E
        372C302C312C302E3120202623393B63302E332C302C302E362C302E312C302E
        382C302E3276312E36632D302E312D302E312D302E332D302E322D302E342D30
        2E32632D302E312D302E312D302E332D302E312D302E342D302E32632D302E31
        2C302D302E332D302E312D302E342D302E31632D302E312C302D302E332C302D
        302E342C3020202623393B632D302E322C302D302E332C302D302E352C302E31
        632D302E312C302D302E332C302E312D302E342C302E32632D302E312C302E31
        2D302E322C302E312D302E322C302E32632D302E312C302E312D302E312C302E
        322D302E312C302E3363302C302E312C302C302E322C302E312C302E33202026
        23393B63302E312C302E312C302E322C302E322C302E332C302E3363302E312C
        302E312C302E332C302E322C302E342C302E3363302E322C302E312C302E342C
        302E322C302E362C302E3363302E332C302E312C302E352C302E332C302E382C
        302E3463302E322C302E312C302E342C302E332C302E362C302E352020262339
        3B63302E322C302E322C302E332C302E342C302E342C302E3663302E312C302E
        322C302E312C302E352C302E312C302E384331392E352C31362E312C31392E34
        2C31362E352C31392E322C31362E387A204D32362C31332E326C2D312E352C34
        2E37682D312E384C32302E332C31304832326C312E352C352E3520202623393B
        63302E312C302E332C302E312C302E352C302E312C302E38683063302D302E32
        2C302E312D302E352C302E322D302E386C312E352D352E3548323668314C3236
        2C31332E327A222F3E0D0A3C2F7376673E0D0A}
      OnClick = dxBarLargeButton4Click
    end
    object Monatsbericht1: TdxBarButton
      Caption = 'Monatsbericht'
      Category = 1
      Visible = ivAlways
      OnClick = Monatsbericht1Click
    end
    object Monatsbericht2: TdxBarButton
      Caption = 'Jahres'#252'bersicht'
      Category = 1
      Visible = ivAlways
      OnClick = Monatsbericht2Click
    end
  end
  object imglst_16x16: TcxImageList
    SourceDPI = 96
    FormatVersion = 1
    DesignInfo = 6291904
    ImageInfo = <
      item
        ImageClass = 'TdxPNGImage'
        Image.Data = {
          89504E470D0A1A0A0000000D49484452000000100000001008060000001FF3FF
          610000000774494D4507D8040F0D0D241E2F8BBB000000097048597300000B12
          00000B1201D2DD7EFC0000000467414D410000B18F0BFC61050000026C494441
          5478DA95934D4C13511485CFBC99C7D49676A653DA468510103086BF82104537
          A2B1413115D1C450E34258B0D3955BDD890B59991835511274A168C2CAB50B0D
          2E00B1048D12085025D062FF286DE9B433CF420221C48472972FE73BF7E5DC7B
          81FD1527D5160C4A35424869104EEF9305A47ABEAFFA6A09F33E7633A581C6AC
          C785163E5F58AEA7372C7261FF959E762E4163305510313819F790BCE01ADAC0
          087B7EB9FB2217CA2E21CA82501359308D2DEE69602D839CD132EFDBBD6EA366
          4A214A82585F4B63EADD9F0013D21DDB0636174A3742DA6DA099F8178DAD75E5
          8E720961B2049D6AF00DFAD37C81DE1919C7C2A681E412EE329ECEE5BE3A8453
          A05BB0A54EE8B595289DCDE7EA10D07E83D872F0801F5955BF131ACB8E6C6888
          A5913F2F14D0BEAEDB9D9CE3A8F59A1C13DEE6DE7973332A39C2F5B779CF6025
          BB08664B63FAC33262F3C9D791F1F4B3AD26BCD1298C5CEA6D351B2D46382A15
          ACFC0D1D63542B450A3D67BB4E1E31150B583346B01A4CC2F7D23F1D25AA0701
          A83B0CE84DC1AE3B4D153CE26A14529988D5C594CB7E582969F2D42284250832
          87CF0F7EA9BAAE5D58F7E90B3B33E289531B0EFD8CB7F176DD61AF3643D71894
          2A33AAEACB9114A3A04E0E130373882D24EE47263243BB43E6330124C8417D38
          3C99EC90CB8C4A51A505841068621A34D7393413C78F37FED1F0B7CCAD9C9EED
          36D89C427212CB10897BECE9CC723C9046A1C300D14A412D02469FCCA830A27B
          63A2FFDB93ED3D887E5D9FE329F37C7AF83DC97406E99009BE57F3C8A4B447E1
          2F99A9BC0FC67AC270BDB45DD6BD1F5B98EC1267518C0379C35B55D464B8676B
          34249566D1BD97F61FD720E66F1B2C9D580000000049454E44AE426082}
      end>
  end
  object qry_Day: TFDQuery
    Connection = dm_PCM.con_PCM
    FetchOptions.AssignedValues = [evMode, evRecordCountMode]
    FetchOptions.Mode = fmAll
    FetchOptions.RecordCountMode = cmTotal
    SQL.Strings = (
      '/*Select Datum, Tag, Sollstunden, '
      'SEC_TO_TIME((ArbeitszeitI + PausenI)*60) as Tagesbrutto,'
      'SEC_TO_TIME(ArbeitszeitI*60) as Tagesnetto,'
      'Mehrarbeit AS Mehrarbeit,'
      'SEC_TO_TIME(PausenI*60) as Pause, Fehltag, Feiertag, '
      
        'if(Buchungsart = -1,'#39#39', if(Buchungsart = 0 , '#39'B'#252'ro'#39','#39'Homeoffice'#39 +
        ')) as BA'
      'from manager_Buchungen*/'
      'SELECT '
      'ID,Datum, Tag, '
      'Kommen, Gehen,'
      'Pause1Beginn,'
      'Pause1Ende,'
      'Pause2Beginn,'
      'Pause2Ende,'
      'MinToHour(Sollstundeni) AS SollStundenStd,'
      'Round(Sollstundeni / 60,2) AS SollStundenDez,'
      'MinToHour(Arbeitszeiti) AS NettoStd,'
      'Round(Arbeitszeiti / 60,2) AS NettoDez,'
      ''
      'MinToHour(Arbeitszeiti  + Pauseni) AS BruttotStd,'
      'Round((Arbeitszeiti + Pauseni) / 60,2) AS BruttoDez,'
      ''
      'MinToHour(Pauseni) AS PausenStd,'
      'Round(Pauseni / 60,2) AS PausenDez,'
      ''
      'MinToHour(Mehrarbeiti) AS MehrarbeitStd,'
      'Round(Mehrarbeiti / 60,2) AS MehrarbeitDez,'
      'Buchungsart,'
      'Feiertag, '
      'Fehltag'
      'From time_Buchungen')
    Left = 552
    Top = 336
  end
  object ds_Day: TDataSource
    DataSet = qry_Day
    Left = 640
    Top = 336
  end
  object dxBarPopupMenu1: TdxBarPopupMenu
    BarManager = brmgr_MW
    ItemLinks = <
      item
        Visible = True
        ItemName = 'Monatsbericht1'
      end
      item
        Visible = True
        ItemName = 'Monatsbericht2'
      end>
    UseOwnFont = False
    Left = 1320
    Top = 420
    PixelsPerInch = 96
  end
  object pm_Buchungen: TcxGridPopupMenu
    Grid = grd_Tag
    PopupMenus = <
      item
        GridView = grd_TagDBTableView1
        HitTypes = [gvhtCell, gvhtRecord, gvhtIndicator]
        Index = 0
        PopupMenu = pmm_Buchungen
      end>
    Left = 864
    Top = 272
  end
  object pmm_Buchungen: TdxBarPopupMenu
    BarManager = brmgr_MW
    ItemLinks = <
      item
        Visible = True
        ItemName = 'dxBarLargeButton4'
      end>
    UseOwnFont = False
    Left = 640
    Top = 576
    PixelsPerInch = 96
  end
  object sdlg_Buchungen: TSaveDialog
    Filter = 'Excel (*.xls)|*.xls'
    Left = 392
    Top = 416
  end
end
