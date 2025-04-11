object frm_PCM_Main: Tfrm_PCM_Main
  Left = 0
  Top = 0
  AlphaBlend = True
  BorderStyle = bsSingle
  Caption = 's'
  ClientHeight = 800
  ClientWidth = 1280
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  Position = poScreenCenter
  WindowState = wsMaximized
  OnClose = FormClose
  OnCreate = FormCreate
  OnDestroy = FormDestroy
  OnDeactivate = FormDeactivate
  OnHide = FormHide
  OnKeyPress = FormKeyPress
  OnKeyUp = FormKeyUp
  OnResize = FormResize
  OnShow = FormShow
  TextHeight = 13
  object navbr_main: TdxNavBar
    Left = 0
    Top = 35
    Width = 200
    Height = 765
    Align = alLeft
    ActiveGroupIndex = 0
    TabOrder = 0
    LookAndFeel.Kind = lfFlat
    View = 14
    OptionsImage.SmallImages = dm_PCM.imglst_16x16
    OptionsStyle.CustomStyles.Background = navbrStyleIt_main
    ExplicitTop = 30
    ExplicitHeight = 770
    object navbrgrp_Optionen: TdxNavBarGroup
      Caption = 'Optionen'
      SelectedLinkIndex = -1
      TopVisibleLinkIndex = 0
      Links = <
        item
          Item = iBenutzerverwaltung
        end
        item
          Item = iDesign
        end>
    end
    object navbrgrp_Stammdaten: TdxNavBarGroup
      Caption = 'Stammdaten'
      SelectedLinkIndex = -1
      TopVisibleLinkIndex = 0
      Links = <
        item
          Item = iMitarbeiter
        end
        item
          Item = iFehltag
        end
        item
          Item = iFeiertage
        end>
    end
    object navbrgrp_Bewegungsdaten: TdxNavBarGroup
      Caption = 'Bewegungsdaten'
      SelectedLinkIndex = -1
      TopVisibleLinkIndex = 0
      Links = <
        item
          Item = iFehltage
        end
        item
          Item = iZeiterfassung
        end
        item
          Item = iBuchungen
        end
        item
          Item = iKalender
        end>
    end
    object navbrgrp_Auswertung: TdxNavBarGroup
      Caption = 'Auswertung'
      SelectedLinkIndex = -1
      TopVisibleLinkIndex = 0
      Links = <
        item
          Item = iMonatswerte
        end
        item
          Item = iReports
        end>
    end
    object navbrgrp_Info: TdxNavBarGroup
      Caption = 'Info'
      SelectedLinkIndex = -1
      TopVisibleLinkIndex = 0
      Links = <
        item
          Item = iSysteminfo
        end
        item
          Item = iInfo
        end
        item
          Item = iHandbuch
        end>
    end
    object navbrgrp_Programm: TdxNavBarGroup
      Caption = 'Programm'
      SelectedLinkIndex = -1
      TopVisibleLinkIndex = 0
      Links = <
        item
          Item = iSprache
        end
        item
          Item = iChangePW
        end
        item
          Item = iAbmelden
        end
        item
          Item = iBeenden
        end>
    end
    object iZeiterfassung: TdxNavBarItem
      Caption = 'Online-Buchung'
      SmallImageIndex = 88
      OnClick = NavBarClick
    end
    object iSysteminfo: TdxNavBarItem
      Caption = 'Systeminfo'
      LargeImageIndex = 4
      SmallImageIndex = 21
      OnClick = NavBarClick
    end
    object iBeenden: TdxNavBarItem
      Caption = 'Beenden'
      LargeImageIndex = 0
      SmallImageIndex = 0
      OnClick = NavBarClick
    end
    object iBenutzerverwaltung: TdxNavBarItem
      Caption = 'Benutzerverwaltung'
      LargeImageIndex = 0
      SmallImageIndex = 1
      OnClick = NavBarClick
    end
    object iDesign: TdxNavBarItem
      Caption = 'Design'
      LargeImageIndex = 2
      SmallImageIndex = 82
      OnClick = NavBarClick
    end
    object iInfo: TdxNavBarItem
      Caption = 'Info'
      LargeImageIndex = 7
      SmallImageIndex = 7
      OnClick = NavBarClick
    end
    object iAbmelden: TdxNavBarItem
      Caption = 'Abmelden'
      SmallImageIndex = 23
      OnClick = NavBarClick
    end
    object iChangePW: TdxNavBarItem
      Caption = 'Passwort '#228'ndern'
      SmallImageIndex = 23
      Visible = False
    end
    object iHandbuch: TdxNavBarItem
      Caption = 'Handbuch'
      SmallImageIndex = 80
      OnClick = NavBarClick
    end
    object iSprache: TdxNavBarItem
      Caption = 'Sprache'
      SmallImageIndex = 81
      OnClick = iSpracheClick
    end
    object iMitarbeiter: TdxNavBarItem
      Caption = 'Mitarbeiter'
      SmallImageIndex = 90
      OnClick = NavBarClick
    end
    object iFehltag: TdxNavBarItem
      Caption = 'Fehltage'
      SmallImageIndex = 92
      OnClick = NavBarClick
    end
    object iFeiertage: TdxNavBarItem
      Caption = 'Feiertage'
      SmallImageIndex = 10
      OnClick = NavBarClick
    end
    object iReports: TdxNavBarItem
      Caption = 'Reports'
      SmallImageIndex = 91
      OnClick = NavBarClick
    end
    object iMonatswerte: TdxNavBarItem
      Caption = 'Monatswerte'
      SmallImageIndex = 93
      OnClick = NavBarClick
    end
    object iFehltage: TdxNavBarItem
      Caption = 'Fehltage'#252'bersicht'
      SmallImageIndex = 92
      OnClick = NavBarClick
    end
    object iBuchungen: TdxNavBarItem
      Caption = 'Buchungs'#252'bersicht'
      SmallImageIndex = 77
      OnClick = NavBarClick
    end
    object iKalender: TdxNavBarItem
      Caption = 'Kalender'
      SmallImageIndex = 10
      OnClick = NavBarClick
    end
    object navbrStyleIt_main: TdxNavBarStyleItem
      Style.BackColor = clGray
      Style.BackColor2 = clBtnFace
      Style.Font.Charset = DEFAULT_CHARSET
      Style.Font.Color = clWindowText
      Style.Font.Height = -11
      Style.Font.Name = 'Tahoma'
      Style.Font.Style = []
      Style.AssignedValues = [savBackColor, savBackColor2, savFont]
    end
  end
  object grpbx_Design: TcxGroupBox
    Left = 200
    Top = 35
    Align = alClient
    PanelStyle.Active = True
    Style.BorderStyle = ebsNone
    TabOrder = 1
    ExplicitTop = 30
    ExplicitHeight = 770
    Height = 765
    Width = 1080
    object pc_main: TcxPageControl
      Left = 3
      Top = 3
      Width = 1074
      Height = 759
      Margins.Left = 0
      Margins.Top = 0
      Margins.Right = 0
      Margins.Bottom = 0
      Align = alClient
      Color = clBtnFace
      ParentBackground = False
      ParentColor = False
      TabOrder = 0
      Properties.ActivePage = ts_Dashboard
      Properties.CustomButtons.Buttons = <>
      Properties.Images = dm_PCM.imglst_16x16
      Properties.Options = [pcoAlwaysShowGoDialogButton, pcoGradient, pcoGradientClientArea, pcoRedrawOnResize, pcoSort]
      Properties.Style = 11
      OnPageChanging = pc_mainPageChanging
      ExplicitLeft = 2
      ExplicitTop = 2
      ExplicitWidth = 1076
      ExplicitHeight = 766
      ClientRectBottom = 753
      ClientRectLeft = 2
      ClientRectRight = 1068
      ClientRectTop = 28
      object ts_Dashboard: TcxTabSheet
        Caption = 'Dashboard'
        ImageIndex = 79
        ExplicitTop = 23
        ExplicitWidth = 1072
        ExplicitHeight = 741
        object dxLayoutControl1: TdxLayoutControl
          Left = 0
          Top = 0
          Width = 1066
          Height = 725
          Align = alClient
          TabOrder = 0
          LayoutLookAndFeel = dm_PCM.dxLayoutSkinLookAndFeel1
          ExplicitWidth = 1072
          ExplicitHeight = 741
          object chartctrl_Birthday: TdxChartControl
            Left = 10000
            Top = 10000
            Width = 1018
            Height = 246
            BorderStyle = cxcbsNone
            Legend.Title.Visible = False
            Titles = <>
            Visible = False
            object chartctrl_BirthdayChart: TdxChartSimpleDiagram
              Title.Visible = False
              Layout = Horizontal
              object chartctrl_BirthdaySeries: TdxChartSimpleSeries
                Caption = 'Wert'
                DataBindingType = 'DB'
                DataBinding.DataSource = dm_PCM.ds_ChartGeburtstage
                DataBinding.ArgumentField.FieldName = 'Monatbes'
                DataBinding.ValueField.FieldName = 'Wert'
                ViewType = 'Pie'
                View.SweepDirection = Counterclockwise
                View.ValueLabels.LineLength = 10.000000000000000000
                View.ValueLabels.Visible = True
                View.ValueLabels.Position = Outside
                SortBy = Value
                ColorSchemeIndex = 0
              end
            end
          end
          object cxGrid1: TcxGrid
            Left = 10000
            Top = 10000
            Width = 1018
            Height = 400
            TabOrder = 3
            Visible = False
            object cxGrid1DBTableView1: TcxGridDBTableView
              Navigator.Buttons.CustomButtons = <>
              ScrollbarAnnotations.CustomAnnotations = <>
              DataController.DataSource = dm_PCM.ds_FT
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
              OptionsView.Indicator = True
              OptionsView.IndicatorWidth = 16
              object cxGrid1DBTableView1Datum: TcxGridDBColumn
                DataBinding.FieldName = 'Datum'
                Width = 100
              end
              object cxGrid1DBTableView1Bezeichnung: TcxGridDBColumn
                DataBinding.FieldName = 'Bezeichnung'
                Width = 500
              end
            end
            object cxGrid1Level1: TcxGridLevel
              GridView = cxGrid1DBTableView1
            end
          end
          object dxChartControl1: TdxChartControl
            Left = 10000
            Top = 10000
            Width = 1018
            Height = 246
            BorderStyle = cxcbsNone
            Legend.Title.Visible = False
            Titles = <>
            Visible = False
            object dxChartSimpleDiagram1: TdxChartSimpleDiagram
              Title.Visible = False
              Layout = Horizontal
              object dxChartSimpleSeries1: TdxChartSimpleSeries
                Caption = 'Wert'
                DataBindingType = 'DB'
                DataBinding.DataSource = dm_PCM.ds_Abw
                DataBinding.ArgumentField.FieldName = 'Monatbes'
                DataBinding.ValueField.FieldName = 'Wert'
                ViewType = 'Pie'
                View.SweepDirection = Counterclockwise
                View.ValueLabels.LineLength = 10.000000000000000000
                View.ValueLabels.Visible = True
                View.ValueLabels.Position = Outside
                SortBy = Value
                ColorSchemeIndex = 0
              end
            end
          end
          object cxGrid2: TcxGrid
            Left = 10000
            Top = 10000
            Width = 1018
            Height = 400
            TabOrder = 1
            Visible = False
            object cxGrid2DBTableView1: TcxGridDBTableView
              Navigator.Buttons.CustomButtons = <>
              ScrollbarAnnotations.CustomAnnotations = <>
              DataController.DataSource = dm_PCM.ds_Fehltag
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
              OptionsView.Indicator = True
              OptionsView.IndicatorWidth = 16
              object cxGrid2DBTableView1Kuerzel: TcxGridDBColumn
                Caption = 'K'#252'rzel'
                DataBinding.FieldName = 'Kuerzel'
                Width = 60
              end
              object cxGrid2DBTableView1Beschreibung: TcxGridDBColumn
                DataBinding.FieldName = 'Beschreibung'
                Width = 200
              end
              object cxGrid2DBTableView1Von: TcxGridDBColumn
                DataBinding.FieldName = 'Von'
                Width = 100
              end
              object cxGrid2DBTableView1Bis: TcxGridDBColumn
                DataBinding.FieldName = 'Bis'
                Width = 100
              end
            end
            object cxGrid2Level1: TcxGridLevel
              GridView = cxGrid2DBTableView1
            end
          end
          object dxLayoutControl1Group_Root: TdxLayoutGroup
            AlignHorz = ahClient
            AlignVert = avClient
            LayoutLookAndFeel = dm_PCM.dxLayoutSkinLookAndFeel1
            Hidden = True
            ShowBorder = False
            Index = -1
          end
          object dxLayoutGroup1: TdxLayoutGroup
            Parent = dxLayoutControl1Group_Root
            AlignHorz = ahClient
            AlignVert = avClient
            CaptionOptions.Text = 'New Group'
            LayoutDirection = ldTabbed
            ShowBorder = False
            Index = 0
          end
          object dxLayoutGroup2: TdxLayoutGroup
            Parent = dxLayoutGroup1
            AlignHorz = ahClient
            AlignVert = avClient
            CaptionOptions.Text = 'Aktuelle Werte'
            ItemIndex = 3
            Index = 0
          end
          object dxLayoutGroup4: TdxLayoutGroup
            Parent = dxLayoutGroup1
            CaptionOptions.Text = 'Fehltage'
            ItemIndex = 1
            Index = 1
          end
          object dxLayoutGroup5: TdxLayoutGroup
            Parent = dxLayoutGroup1
            AlignHorz = ahClient
            AlignVert = avTop
            CaptionOptions.Text = 'Feiertage'
            Index = 2
          end
          object dxLayoutItem1: TdxLayoutItem
            Parent = dxLayoutGroup4
            AlignHorz = ahClient
            AlignVert = avClient
            CaptionOptions.Text = 'New Item'
            CaptionOptions.Visible = False
            Control = dxChartControl1
            ControlOptions.OriginalHeight = 250
            ControlOptions.OriginalWidth = 1018
            ControlOptions.ShowBorder = False
            Index = 0
          end
          object dxLayoutItem2: TdxLayoutItem
            Parent = dxLayoutGroup5
            AlignHorz = ahClient
            AlignVert = avClient
            CaptionOptions.Text = 'New Item'
            CaptionOptions.Visible = False
            Control = chartctrl_Birthday
            ControlOptions.OriginalHeight = 418
            ControlOptions.OriginalWidth = 996
            ControlOptions.ShowBorder = False
            Index = 0
          end
          object dxLayoutGroup3: TdxLayoutGroup
            Parent = dxLayoutGroup2
            AlignHorz = ahClient
            AlignVert = avTop
            CaptionOptions.Text = '[B]Letzte Buchung[/B]'
            Index = 2
          end
          object dxLayoutGroup6: TdxLayoutGroup
            Parent = dxLayoutGroup17
            AlignHorz = ahClient
            AlignVert = avTop
            CaptionOptions.Text = 
              '[B]Stundenwerte                                                 ' +
              '                    hh:mm         Dezimal[/B]'
            ItemIndex = 2
            LayoutDirection = ldHorizontal
            Index = 0
          end
          object lblitm_LastBooking: TdxLayoutLabeledItem
            Parent = dxLayoutGroup3
            CaptionOptions.Text = 'Label'
            Index = 0
          end
          object dxLayoutGroup7: TdxLayoutGroup
            Parent = dxLayoutGroup17
            CaptionOptions.Text = 
              '[B]An/Abwesenheitswerte                                         ' +
              '              Tage           hh:mm[/B]'
            ItemIndex = 2
            LayoutDirection = ldHorizontal
            Index = 1
          end
          object dxLayoutGroup8: TdxLayoutGroup
            Parent = dxLayoutGroup6
            AlignHorz = ahLeft
            AlignVert = avTop
            CaptionOptions.Text = 'New Group'
            ShowBorder = False
            Index = 0
          end
          object dxLayoutGroup9: TdxLayoutGroup
            Parent = dxLayoutGroup6
            CaptionOptions.Text = 'New Group'
            Offsets.Left = 16
            ShowBorder = False
            Index = 2
          end
          object dxLayoutGroup10: TdxLayoutGroup
            Parent = dxLayoutGroup6
            CaptionOptions.Text = 'New Group'
            ShowBorder = False
            Index = 1
          end
          object dxLayoutLabeledItem2: TdxLayoutLabeledItem
            Parent = dxLayoutGroup8
            AlignHorz = ahLeft
            AlignVert = avTop
            CaptionOptions.Text = 'Gleitzeit'#252'bertrag Vormonat:'
            CaptionOptions.Width = 270
            Index = 5
          end
          object dxLayoutLabeledItem3: TdxLayoutLabeledItem
            Parent = dxLayoutGroup8
            AlignHorz = ahLeft
            AlignVert = avTop
            CaptionOptions.Text = 'Minder/Mehrarbeit:'
            CaptionOptions.Width = 270
            Index = 4
          end
          object dxLayoutLabeledItem4: TdxLayoutLabeledItem
            Parent = dxLayoutGroup8
            AlignHorz = ahLeft
            AlignVert = avTop
            CaptionOptions.Text = 'Sollstunden:'
            CaptionOptions.Width = 270
            Index = 3
          end
          object dxLayoutLabeledItem5: TdxLayoutLabeledItem
            Parent = dxLayoutGroup8
            AlignHorz = ahLeft
            AlignVert = avTop
            CaptionOptions.Text = 'Iststunden netto:'
            CaptionOptions.Width = 270
            Index = 2
          end
          object dxLayoutLabeledItem6: TdxLayoutLabeledItem
            Parent = dxLayoutGroup8
            AlignHorz = ahLeft
            AlignVert = avTop
            CaptionOptions.Text = 'Label'
            CaptionOptions.Width = 270
            Index = 1
          end
          object dxLayoutLabeledItem7: TdxLayoutLabeledItem
            Parent = dxLayoutGroup8
            AlignHorz = ahLeft
            AlignVert = avTop
            CaptionOptions.Text = 'Iststunden brutto:'
            CaptionOptions.Width = 270
            Index = 0
          end
          object dxLayoutLabeledItem8: TdxLayoutLabeledItem
            Parent = dxLayoutGroup8
            AlignHorz = ahLeft
            AlignVert = avTop
            CaptionOptions.Text = '[B]Gleitzeit'#252'bertrag Folgemonat:[/B]'
            CaptionOptions.Width = 270
            Index = 6
          end
          object lbl_T6: TdxLayoutLabeledItem
            Parent = dxLayoutGroup10
            CaptionOptions.AlignHorz = taRightJustify
            CaptionOptions.Text = 'Label'
            CaptionOptions.Width = 50
            Index = 5
          end
          object lbl_T5: TdxLayoutLabeledItem
            Parent = dxLayoutGroup10
            CaptionOptions.AlignHorz = taRightJustify
            CaptionOptions.Text = 'Label'
            CaptionOptions.Width = 50
            Index = 4
          end
          object lbl_T2: TdxLayoutLabeledItem
            Parent = dxLayoutGroup10
            CaptionOptions.AlignHorz = taRightJustify
            CaptionOptions.Text = 'Label'
            CaptionOptions.Width = 50
            Index = 1
          end
          object lbl_D1: TdxLayoutLabeledItem
            Parent = dxLayoutGroup9
            CaptionOptions.AlignHorz = taRightJustify
            CaptionOptions.Text = 'Label'
            CaptionOptions.Width = 50
            Index = 0
          end
          object lbl_T4: TdxLayoutLabeledItem
            Parent = dxLayoutGroup10
            CaptionOptions.AlignHorz = taRightJustify
            CaptionOptions.Text = 'Label'
            CaptionOptions.Width = 50
            Index = 3
          end
          object lbl_T1: TdxLayoutLabeledItem
            Parent = dxLayoutGroup10
            CaptionOptions.AlignHorz = taRightJustify
            CaptionOptions.Text = 'Label'
            CaptionOptions.Width = 50
            Index = 0
          end
          object lbl_T3: TdxLayoutLabeledItem
            Parent = dxLayoutGroup10
            CaptionOptions.AlignHorz = taRightJustify
            CaptionOptions.Text = 'Label'
            CaptionOptions.Width = 50
            Index = 2
          end
          object lbl_T7: TdxLayoutLabeledItem
            Parent = dxLayoutGroup10
            CaptionOptions.AlignHorz = taRightJustify
            CaptionOptions.Text = 'Label'
            CaptionOptions.Width = 50
            Index = 6
          end
          object lbl_D4: TdxLayoutLabeledItem
            Parent = dxLayoutGroup9
            CaptionOptions.AlignHorz = taRightJustify
            CaptionOptions.Text = 'Label'
            CaptionOptions.Width = 50
            Index = 3
          end
          object lbl_D3: TdxLayoutLabeledItem
            Parent = dxLayoutGroup9
            CaptionOptions.AlignHorz = taRightJustify
            CaptionOptions.Text = 'Label'
            CaptionOptions.Width = 50
            Index = 2
          end
          object lbl_D2: TdxLayoutLabeledItem
            Parent = dxLayoutGroup9
            CaptionOptions.AlignHorz = taRightJustify
            CaptionOptions.Text = 'Label'
            CaptionOptions.Width = 50
            Index = 1
          end
          object dxLayoutLabeledItem20: TdxLayoutLabeledItem
            Parent = dxLayoutGroup11
            CaptionOptions.Text = 'Urlaub genommen:'
            CaptionOptions.Width = 270
            Index = 0
          end
          object lbl_D7: TdxLayoutLabeledItem
            Parent = dxLayoutGroup9
            CaptionOptions.AlignHorz = taRightJustify
            CaptionOptions.Text = 'Label'
            CaptionOptions.Width = 50
            Index = 6
          end
          object lbl_D6: TdxLayoutLabeledItem
            Parent = dxLayoutGroup9
            CaptionOptions.AlignHorz = taRightJustify
            CaptionOptions.Text = 'Label'
            CaptionOptions.Width = 50
            Index = 5
          end
          object lbl_D5: TdxLayoutLabeledItem
            Parent = dxLayoutGroup9
            CaptionOptions.AlignHorz = taRightJustify
            CaptionOptions.Text = 'Label'
            CaptionOptions.Width = 50
            Index = 4
          end
          object dxLayoutLabeledItem24: TdxLayoutLabeledItem
            Parent = dxLayoutGroup11
            CaptionOptions.Text = 'Urlaub geplant:'
            CaptionOptions.Width = 270
            Index = 1
          end
          object dxLayoutLabeledItem25: TdxLayoutLabeledItem
            Parent = dxLayoutGroup11
            CaptionOptions.Text = '[B]Resturlaub:[/B]'
            CaptionOptions.Width = 270
            Index = 2
          end
          object dxLayoutLabeledItem26: TdxLayoutLabeledItem
            Parent = dxLayoutGroup11
            CaptionOptions.Text = 'Urlaub unbezahlt:'
            CaptionOptions.Width = 270
            Index = 3
          end
          object dxLayoutLabeledItem27: TdxLayoutLabeledItem
            Parent = dxLayoutGroup11
            CaptionOptions.Text = 'Feiertage:'
            CaptionOptions.Width = 270
            Index = 4
          end
          object dxLayoutLabeledItem28: TdxLayoutLabeledItem
            Parent = dxLayoutGroup11
            CaptionOptions.Text = 'Krank bezahlt:'
            CaptionOptions.Width = 270
            Index = 5
          end
          object dxLayoutLabeledItem29: TdxLayoutLabeledItem
            Parent = dxLayoutGroup11
            CaptionOptions.Text = 'Krank unbezahlt:'
            CaptionOptions.Width = 270
            Index = 6
          end
          object dxLayoutLabeledItem30: TdxLayoutLabeledItem
            Parent = dxLayoutGroup11
            CaptionOptions.Text = 'B'#252'ro-Tage:'
            CaptionOptions.Width = 270
            Index = 7
          end
          object dxLayoutLabeledItem31: TdxLayoutLabeledItem
            Parent = dxLayoutGroup11
            CaptionOptions.Text = 'HomeOffice-Tage'
            CaptionOptions.Width = 270
            Index = 8
          end
          object dxLayoutLabeledItem32: TdxLayoutLabeledItem
            Parent = dxLayoutGroup11
            CaptionOptions.Text = '[B]Arbeitstage gesamt:[/B]'
            CaptionOptions.Width = 270
            Index = 9
          end
          object dxLayoutGroup11: TdxLayoutGroup
            Parent = dxLayoutGroup7
            CaptionOptions.Text = 'New Group'
            ShowBorder = False
            Index = 0
          end
          object dxLayoutGroup12: TdxLayoutGroup
            Parent = dxLayoutGroup7
            CaptionOptions.Text = 'New Group'
            ShowBorder = False
            Index = 1
          end
          object lbl_TG1: TdxLayoutLabeledItem
            Parent = dxLayoutGroup12
            CaptionOptions.AlignHorz = taRightJustify
            CaptionOptions.Text = 'Label'
            CaptionOptions.Width = 50
            Index = 0
          end
          object lbl_TG2: TdxLayoutLabeledItem
            Parent = dxLayoutGroup12
            CaptionOptions.AlignHorz = taRightJustify
            CaptionOptions.Text = 'Label'
            CaptionOptions.Width = 50
            Index = 1
          end
          object lbl_TG3: TdxLayoutLabeledItem
            Parent = dxLayoutGroup12
            CaptionOptions.AlignHorz = taRightJustify
            CaptionOptions.Text = 'Label'
            CaptionOptions.Width = 50
            Index = 2
          end
          object lbl_BHOGes: TdxLayoutLabeledItem
            Parent = dxLayoutGroup12
            CaptionOptions.AlignHorz = taRightJustify
            CaptionOptions.Text = 'Label'
            CaptionOptions.Width = 50
            Index = 9
          end
          object lbl_HO: TdxLayoutLabeledItem
            Parent = dxLayoutGroup12
            CaptionOptions.AlignHorz = taRightJustify
            CaptionOptions.Text = 'Label'
            CaptionOptions.Width = 50
            Index = 8
          end
          object lbl_ULunb: TdxLayoutLabeledItem
            Parent = dxLayoutGroup12
            CaptionOptions.AlignHorz = taRightJustify
            CaptionOptions.Text = 'Label'
            CaptionOptions.Width = 50
            Index = 3
          end
          object lbl_Buero: TdxLayoutLabeledItem
            Parent = dxLayoutGroup12
            CaptionOptions.AlignHorz = taRightJustify
            CaptionOptions.Text = 'Label'
            CaptionOptions.Width = 50
            Index = 7
          end
          object lbl_krunb: TdxLayoutLabeledItem
            Parent = dxLayoutGroup12
            CaptionOptions.AlignHorz = taRightJustify
            CaptionOptions.Text = 'Label'
            CaptionOptions.Width = 50
            Index = 6
          end
          object lbl_kr: TdxLayoutLabeledItem
            Parent = dxLayoutGroup12
            CaptionOptions.AlignHorz = taRightJustify
            CaptionOptions.Text = 'Label'
            CaptionOptions.Width = 50
            Index = 5
          end
          object lbl_FTM: TdxLayoutLabeledItem
            Parent = dxLayoutGroup12
            CaptionOptions.AlignHorz = taRightJustify
            CaptionOptions.Text = 'Label'
            CaptionOptions.Width = 50
            Index = 4
          end
          object dxLayoutGroup13: TdxLayoutGroup
            Parent = dxLayoutGroup7
            CaptionOptions.Text = 'New Group'
            Offsets.Left = 16
            ShowBorder = False
            Index = 2
          end
          object dxLayoutGroup14: TdxLayoutGroup
            Parent = dxLayoutGroup2
            AlignHorz = ahClient
            AlignVert = avTop
            CaptionOptions.Text = '[B]n'#228'chster Feiertag[/B]'
            Index = 1
          end
          object dxLayoutGroup15: TdxLayoutGroup
            Parent = dxLayoutGroup2
            AlignHorz = ahClient
            AlignVert = avTop
            CaptionOptions.Text = '[B]n'#228'chste Abwesenheit[/B]'
            Index = 0
          end
          object lblitm_NextAbs: TdxLayoutLabeledItem
            Parent = dxLayoutGroup15
            CaptionOptions.Text = 'Label'
            Index = 0
          end
          object lblitm_NextFT: TdxLayoutLabeledItem
            Parent = dxLayoutGroup14
            CaptionOptions.Text = 'Label'
            Index = 0
          end
          object lbl_TG2Dez: TdxLayoutLabeledItem
            Parent = dxLayoutGroup13
            CaptionOptions.AlignHorz = taRightJustify
            CaptionOptions.Text = 'Label'
            CaptionOptions.Width = 50
            Index = 1
          end
          object lbl_TG1Dez: TdxLayoutLabeledItem
            Parent = dxLayoutGroup13
            CaptionOptions.AlignHorz = taRightJustify
            CaptionOptions.Text = 'Label'
            CaptionOptions.Width = 50
            Index = 0
          end
          object lbl_TG3Dez: TdxLayoutLabeledItem
            Parent = dxLayoutGroup13
            CaptionOptions.AlignHorz = taRightJustify
            CaptionOptions.Text = 'Label'
            CaptionOptions.Width = 50
            Index = 2
          end
          object lbl_ULunbDez: TdxLayoutLabeledItem
            Parent = dxLayoutGroup13
            CaptionOptions.AlignHorz = taRightJustify
            CaptionOptions.Text = 'Label'
            CaptionOptions.Width = 50
            Index = 3
          end
          object lbl_krDez: TdxLayoutLabeledItem
            Parent = dxLayoutGroup13
            CaptionOptions.AlignHorz = taRightJustify
            CaptionOptions.Text = 'Label'
            CaptionOptions.Width = 50
            Index = 5
          end
          object lbl_FTMDez: TdxLayoutLabeledItem
            Parent = dxLayoutGroup13
            CaptionOptions.AlignHorz = taRightJustify
            CaptionOptions.Text = 'Label'
            CaptionOptions.Width = 50
            Index = 4
          end
          object lbl_BHOGesDez: TdxLayoutLabeledItem
            Parent = dxLayoutGroup13
            AlignHorz = ahClient
            AlignVert = avTop
            CaptionOptions.AlignHorz = taRightJustify
            CaptionOptions.Text = 'Label'
            CaptionOptions.Width = 50
            Index = 9
          end
          object lbl_HODez: TdxLayoutLabeledItem
            Parent = dxLayoutGroup13
            CaptionOptions.AlignHorz = taRightJustify
            CaptionOptions.Text = 'Label'
            CaptionOptions.Width = 50
            Index = 8
          end
          object lbl_BueroDez: TdxLayoutLabeledItem
            Parent = dxLayoutGroup13
            CaptionOptions.AlignHorz = taRightJustify
            CaptionOptions.Text = 'Label'
            CaptionOptions.Width = 50
            Index = 7
          end
          object lbl_krunbDez: TdxLayoutLabeledItem
            Parent = dxLayoutGroup13
            CaptionOptions.AlignHorz = taRightJustify
            CaptionOptions.Text = 'Label'
            CaptionOptions.Width = 50
            Index = 6
          end
          object dxLayoutGroup16: TdxLayoutGroup
            Parent = dxLayoutGroup2
            AlignHorz = ahClient
            AlignVert = avTop
            CaptionOptions.Text = 'Auswertung'
            LayoutDirection = ldTabbed
            ShowBorder = False
            Index = 3
          end
          object dxLayoutGroup17: TdxLayoutGroup
            Parent = dxLayoutGroup16
            AlignHorz = ahClient
            AlignVert = avTop
            CaptionOptions.Text = '[B]Aktuell[/B]'
            Index = 0
          end
          object dxLayoutGroup18: TdxLayoutGroup
            Parent = dxLayoutGroup16
            AlignHorz = ahClient
            AlignVert = avTop
            CaptionOptions.Text = '[B]Jahreswerte[/B]'
            Index = 1
          end
          object dxLayoutGroup19: TdxLayoutGroup
            Parent = dxLayoutGroup18
            AlignHorz = ahClient
            AlignVert = avClient
            CaptionOptions.Text = 
              '[B]An/Abwesenheitswerte                                         ' +
              '              Tage[/B]'
            ItemIndex = 1
            LayoutDirection = ldHorizontal
            Index = 0
          end
          object dxLayoutGroup21: TdxLayoutGroup
            Parent = dxLayoutGroup19
            CaptionOptions.Text = 'New Group'
            ItemIndex = 2
            ShowBorder = False
            Index = 1
          end
          object dxLayoutGroup22: TdxLayoutGroup
            Parent = dxLayoutGroup19
            CaptionOptions.Text = 'New Group'
            ShowBorder = False
            Index = 0
          end
          object dxLayoutLabeledItem1: TdxLayoutLabeledItem
            Parent = dxLayoutGroup22
            CaptionOptions.Text = 'Resturlaub Vorjahr:'
            CaptionOptions.Width = 270
            Index = 0
          end
          object dxLayoutLabeledItem9: TdxLayoutLabeledItem
            Parent = dxLayoutGroup22
            CaptionOptions.Text = 'Urlaubstage:'
            Index = 1
          end
          object lblb: TdxLayoutLabeledItem
            Parent = dxLayoutGroup22
            CaptionOptions.Text = 'Kranktage:'
            Index = 2
          end
          object dxLayoutLabeledItem11: TdxLayoutLabeledItem
            Parent = dxLayoutGroup22
            CaptionOptions.Text = 'Feiertage:'
            Index = 3
          end
          object dxLayoutLabeledItem12: TdxLayoutLabeledItem
            Parent = dxLayoutGroup22
            CaptionOptions.Text = 'B'#252'ro-Tage:'
            Index = 4
          end
          object dxLayoutLabeledItem13: TdxLayoutLabeledItem
            Parent = dxLayoutGroup22
            CaptionOptions.Text = 'HomeOffice-Tage:'
            Index = 5
          end
          object dxLayoutLabeledItem14: TdxLayoutLabeledItem
            Parent = dxLayoutGroup22
            CaptionOptions.Text = '[B]Arbeitstage gesamt:[/B]'
            Index = 6
          end
          object lbl_RulVJ: TdxLayoutLabeledItem
            Parent = dxLayoutGroup21
            CaptionOptions.AlignHorz = taRightJustify
            CaptionOptions.Text = 'Label'
            CaptionOptions.Width = 50
            Index = 0
          end
          object lbl_OffHomeOffGes: TdxLayoutLabeledItem
            Parent = dxLayoutGroup21
            CaptionOptions.AlignHorz = taRightJustify
            CaptionOptions.Text = 'Label'
            CaptionOptions.Width = 50
            Index = 6
          end
          object lbl_HomeOffGes: TdxLayoutLabeledItem
            Parent = dxLayoutGroup21
            CaptionOptions.AlignHorz = taRightJustify
            CaptionOptions.Text = 'Label'
            CaptionOptions.Width = 50
            Index = 5
          end
          object lbl_OfficeGes: TdxLayoutLabeledItem
            Parent = dxLayoutGroup21
            CaptionOptions.AlignHorz = taRightJustify
            CaptionOptions.Text = 'Label'
            CaptionOptions.Width = 50
            Index = 4
          end
          object lbl_FT: TdxLayoutLabeledItem
            Parent = dxLayoutGroup21
            CaptionOptions.AlignHorz = taRightJustify
            CaptionOptions.Text = 'Label'
            CaptionOptions.Width = 50
            Index = 3
          end
          object lbl_bezKr: TdxLayoutLabeledItem
            Parent = dxLayoutGroup21
            CaptionOptions.AlignHorz = taRightJustify
            CaptionOptions.Text = 'Label'
            CaptionOptions.Width = 50
            Index = 2
          end
          object lbl_genULGes: TdxLayoutLabeledItem
            Parent = dxLayoutGroup21
            CaptionOptions.AlignHorz = taRightJustify
            CaptionOptions.Text = 'Label'
            CaptionOptions.Width = 50
            Index = 1
          end
          object dxLayoutItem3: TdxLayoutItem
            Parent = dxLayoutGroup5
            AlignHorz = ahClient
            AlignVert = avBottom
            CaptionOptions.Text = 'New Item'
            CaptionOptions.Visible = False
            Control = cxGrid1
            ControlOptions.OriginalHeight = 400
            ControlOptions.OriginalWidth = 250
            ControlOptions.ShowBorder = False
            Index = 1
          end
          object dxLayoutItem4: TdxLayoutItem
            Parent = dxLayoutGroup4
            AlignHorz = ahClient
            AlignVert = avBottom
            CaptionOptions.Text = 'New Item'
            CaptionOptions.Visible = False
            Control = cxGrid2
            ControlOptions.OriginalHeight = 400
            ControlOptions.OriginalWidth = 577
            ControlOptions.ShowBorder = False
            Index = 1
          end
        end
      end
    end
  end
  object loc_Lang: TcxLocalizer
    FileName = '.\cxLocalLang.ini'
    Left = 288
    Top = 104
  end
  object lafCtrl_Main: TcxLookAndFeelController
    Kind = lfFlat
    NativeStyle = False
    ScrollbarMode = sbmClassic
    ScrollMode = scmClassic
    SkinName = 'DevExpressDarkStyle'
    RenderMode = rmGDIPlus
    Left = 88
    Top = 104
  end
  object trayic_Main: TTrayIcon
    Icon.Data = {
      0000010004000000000001002000168D00004600000080800000010020002808
      01005C8D00003030000001002000A8250000849501002020000001002000A810
      00002CBB010089504E470D0A1A0A0000000D4948445200000100000001000806
      0000005C72A8660000200049444154789CECBD79B02547792FF8CBAA3ACBDDD7
      6EED0849B490049240486C3620B08DF1369EB1FD625E0CC66FB19FC51813ECB6
      B1E78F89F11241841D06BF301883206C833D843D16C661C0984D2C1648086116
      49DDADDE17F576BBFB2E67AB732ABFF923F3CBFC32ABCEED165AFADEDB27A175
      4FE5C9CACCAA93BF6FCF2F151161544665542ECE925CE8098CCAA88CCA852B23
      02302AA37211971101189551B988CB88008CCAA85CC46544004665542EE23222
      00A3322A17711911805119958BB88C08C0A88CCA455C4604605446E5222E2302
      302AA37211971101189551B988CB88008CCAA85CC46544004665542EE2322200
      A3322A17711911805119958BB88C08C0A88CCA455C4604605446E5222ED9859E
      C00F5B9452177A0AA3B2C9CB7BDEF39EA99999995FA8D56ACFD15AAFAEACACFC
      CD3BDEF18EC72FC45C2E54662EB55953828D08C0A8FCB0E5431FFAD0EB272727
      7F657A7AFA558D46A3912409B4D6E876BBF9891327FEE1F4E9D3EF7CE73BDFF9
      8C12821101788265440046E589940F7EF0832F9F9E9EFE3F6766667E666C6C6C
      AE56AB21CB3228A54044EE5FB7DBC5EAEA6A7F6969E9EF979696DEF9AE77BDEB
      1921042302F004CB88008CCAB9CADD77DF7DD5D8D8D8DBA7A7A77F7E6A6AEA9A
      18F4001CF0E5672B0D606D6DADBFB4B4F4F7A74F9F7EDA09C188003CC1322200
      A352553EF0810F4C4F4F4FFFD79999995F999E9E7E61BD5E4FB22C439AA60EDC
      EB813FFE171382DFFAADDF7A5A08C188003CC1F2541180CDFAFCA31296BFFBBB
      BFFB4F939393BF3A3B3BFBCA46A33156ABD590A629000C057E1521A86A972409
      A6A7A7D1683406BD5EEF33799EFFE66DB7DD761078EA19D133BD1E470460933E
      FFA8001FFFF8C75F323D3DFDC6B9B9B9FF757C7C7C36CB322489F16C5789F5F2
      FA7CC0BFB0B080EDDBB7636666C6F56BDBE57BF7EE7DFB739EF39C3F1F11800B
      544604E0E22C9FF8C4272E1F1B1B7BEBECECEC2F4E4D4D5DCB7ABD0431305CA4
      5F0FFC00303E3E8E4B2EB904F3F3F3C8B2CCB5EB76BB180C06504A617C7C1C00
      FA0F3EF8E02B5EFCE2177FF3A97CBE110138CF322200174FF9C77FFCC7B1344D
      7F6D7676F6576667676FCBB22C49D3D4E9F54FF41F10823FCB326CDFBE1DF3F3
      F368369B6EDC6EB78B56AB8556AB15DCA794C2E2E2225656563E75F9E597FFFC
      53F9AC2302709E654400B67EF9A77FFAA7FF343B3BFBDFE7E6E65E59ABD5C619
      F4C0B939BC04EC30BD7E7676168B8B8B989C9C7463F6FB7D07FAC160509A93EC
      6B7E7E7EEFDCDCDC754FE5333FD3EB71D346028ECAD62C9FFCE4275F303D3DFD
      8E8585859FBAE9A69B16D234459224959C1B40E0D29375715B6E373D3D8D8585
      054C4F4F3BBDBE280AB4DB6DB45A2DE4795EEA2F1E8FEFE9743A973EC58FFF8C
      979104B0499F7F2B957FFEE77FBE626262E2ADF3F3F3FFDBD4D4D475E7C3E901
      CF8DCFE5CE6B341A989B9BC3DCDC5CA0D7773A1DB45A2D743A1D5727CBB06B96
      2A9224C1A953A75EF49297BCE4DB4FD5BB184900A37251942F7CE10B35227AE3
      FCFCFCAF3CEF79CF7B6196656992248EDBC79C5E96615C5FD6A5698AD9D959CC
      CECE96F4FA76BB8D76BB1D180C6539D735973CCF313131712780A78C003CD365
      440046E5192D9FFBDCE77E696E6EEE57AFB9E69A57D5EBF531097A607D0E2845
      FBAA3AA514A6A6A630333353D2EBDBED36D6D6D65014C5D0719E8804C07F9BCD
      E62DE7F7E41BB38C08C0A83CEDE5739FFBDC2DB3B3B3EF5A5858F8A9E73FFFF9
      0B0C7A2004D97A1C5F7E1FEBF5E3E3E3989A9AC2E4E4A4531DB4D60EF4799E0F
      1DE38725045C57ABD59E738EC7DFD065440046E569299FFEF4A72F9B9B9B7BC7
      C2C2C2CFDF7AEBADCF499224B0DB3088AAC47959E2EF9552504A21CB324C4E4E
      626A6A0AB55ACDF5C9C63CD6EBE5784FE4FA7CDB28A59E3574F29BA08C8C809B
      F4F93762F9CA57BE52CBB2EC8DF3F3F3FF657676F6855996254AA940AF07866F
      C019F69D2416E3E3E3989C9C0CF4FA5EAFE780CFFD70793A802FE7DC6834063B
      77EE9C7DDDEB5ED73AEF17B54E1919014765D395AF7FFDEB3F3F3B3BFBC61D3B
      76BCB2D1688C57811E08B97915671FF65DB3D9C4C4C404C6C7C71DE11F0C0668
      B55A68B7DBE8F7FBC17C9E8C7EFF44EFE976BBD9B66DDB7E14C0BF963AD80465
      44009E64B9587725DE7BEFBDCF9F9D9D7DF7E2E2E24FDE74D34D0B52C43F1F3F
      FD304B3F7F976519C6C6C6303939E9EC055A6B17A4732E7F7DD5F5B03683C1C0
      05FD28A550ABD52A9F45DEC3F5799E637C7CFC473022001767B99854882F7CE1
      0B97CFCDCDBD657171F117676666AE637D3CDE5F7F2EBDBE2A400700922441B3
      D9C4F8F8B8D3EB01387F7DB7DB2D89F8DCDF7AD75575FD7EDF01BFD3CBF1EF8F
      EEC5B7F71D41BBD7C735972CE0BFBDF6473156AF0DF54EC8F9D7EBF5E79DEF3A
      D8680C636403D8A4CFFF4C966F7DEB5B6F9B9F9F7FC3FCFCFCCD699A660C7AA0
      DA3516FF1D16ACC385B97D955ECFFEFAA742AC2F8A02799E6330188088F0D547
      F6E02B0FEFC57DFB8E000501590A4081FA7DCC4F4FE01FDF7D17125D38D761D5
      73F5FB7D2C2D2DDD7BE79D77DE793EEFF25CEB76640318950D51EEBFFFFE9F9B
      999979D3B66DDB5E71C30D378CCBEDB0C0FA0B7518D025B7CFB20C8D46036363
      63815ECFC63C16C99FACAEAEB5469EE7E8F7FB20227CEBB183F8CA23FBF0E53D
      87A0F30150AF0163634092224D12800803AD71BAD3C5DF7CF97EBCE9A75F85B5
      B5B5D2BE0069986C341AD70F7D191BBC8C24804DFAFC4F47B9F7DE7B6FDCB66D
      DBFFB5B8B8F813131313DB0004FBE0AB7CF6C32CFB557F01A056AB616C6CACE4
      AF6FB7DBE8F57A9563555DAFD7466B8DC160803CCFA1B5C6CE23C7F1C5EFEFC6
      67761D82EEE640BD0ED45220CD902A852C4961E519C0F6D1C9FBB86AAC8E2FBD
      E7B770FCF87137B7F81DF03E82471F7D74F10D6F78C3D2F0B76BCA480218950D
      55BEF4A52F6D5F585878C7E2E2E22FDE7EFBED957A7D5CD6033850B6E8A7698A
      66B319E8F5BCD5B6D3E90CEDA7AA6E3DA35CBFDF47BFDF4751143878EA2CBEF8
      BDDDF8ECA3FBB0D6EA1A4E5FCB80D9316489428A04895200897060F37F8008B5
      34C1C1E535F4B5215ADD6EB7724CC010C946A3710780CF56BEB00D5C4604E022
      2D0F3DF4D05B1716167EE5452F7AD1F3B32CAB49BD1E181EA1570540067C6CD0
      ABD7EB68341AAE5D9EE795FEFA27E38B1F0C060EF4C7CFAEE0F3DFDB8D7B1F3B
      88A3A7D740590DA8A7C0CC34B22C450A65410F386EAF14A02D0102C17E895425
      0014FE63CF01ECD83E0BA554658C013FF7D8D8D8AD18118051D9C8E51BDFF8C6
      CFCCCFCFFFC6F6EDDBEF7CEE739F3B1E839ECB7A62E87AFE7AC070CB66B3196C
      9B1DB6BFFE8711F359BCE77FA7D75AB8F7077BF1EF7B0FE19163A781AC66B8FD
      EC34D234414DA548C980DBF7C57F1588B4BDB6FF580B2002A5097EB0EF206EBC
      7C712871E4FA7ABDFEFCA12F6D03971101D8E2E5DE7BEFBD697171F1B7B76DDB
      F6BA9B6FBE793B07E954951F46FF2422A4698A46A351A9D7C7A273D538E7EBB6
      63D75DABDBC3D71ED987FBF61CC283474F8192D4E8F533D348D214B52445C6C4
      8918D8B63F023CF06D8502A00122E5DB5922B1FBD031F76CC30C815605B8F109
      BCB60D534604600B96CF7FFEF373DBB66D7BD7DCDCDC2FDE7EFBEDD73397FA61
      387E5561B1B75EAF97F4FA76BB8D4EA773CE90DCAABAF89AC5FBC160805EBF8F
      6FEE3C807B771FC4371F3F052880921A3035052409EA49822C5150301826F25C
      9D40B0DF4053C8ED216884B26D9948A42AC1A3478FA356ABAD6B0CB5C143CF7D
      422F7183941101D842E5FEFBEFFFCD85858537BCE8452FBAAD5EAF67C3002FCB
      F9805F46EE6559C6493101F8ADB6ED761B45513C69B75D51148EDB1311BEB1EB
      00EE7BEC00BE74F89401662D0326268024432321037ACBB90D53776816923DEB
      EF04E5983CAB2F96FDF3AD5020A501029244E17B474F22B39181C36C2156AA9A
      FCF8C73FBEE3F5AF7FFDEE73BED00D544604609397AF7EF5ABAF595C5C7CEBE2
      E2E26B6EBCF1C60919923B8CDB9F2B524F16CE7CD36C364B29B4641CFE9375DB
      F5FB7D17DEFBDDFD4771DFDE83F8CCFE63D003026A19686CDC70FA34412D518E
      A34393D5EF1560816B3AB722BD19012A51800634692FE53B6E6FAF1409A20124
      4AA13B28B0E7C8E3184FD34A43203F479224C8B2EC76002302302A4F6FB9F7DE
      7BAF9B9D9DFDDD8585859FBEE5965B2EE5FDF555C09606BBB86E58D15A73804B
      909A2BD6EB9F8CDB8E8D796CC1DFF5F8097CE3B1C3F8E4BEA3287A3640A73106
      8CA7C8D2040D0F792BE3B3CE0E18CE4E206D5B38959FD1EC8D7DE61D31A190B6
      005BE75C9276AE4AE13F1E3B8057DC78EDBA5E12FBBE6E01F077EBBEDC0D5646
      04609394CF7EF6B373F3F3F36F5E5858F83F6EBEF9E6EBD33455557BEC657922
      BA3DB7ADD56A43F5FA27E3AF97BEFAC160607DF567F0F55D07F085FDC771B2DD
      3586BC7A036A7C022929349214504249D780721CDCF6AF0860E02B61E92FCDD5
      AB050A0A9A01EF8C06DC4AF9F1888034C1C3078EE0C76EBDA1F45CD20D68ED00
      CF3BEF17BE41CA88006CF0F2D5AF7EF5BF2F2E2EFEEA0B5EF082DB1B8D469D03
      6BE212BBE6E45FFEBECA85C756FCB1B131D757ACD7C7630CBBAEAA8B39FD8995
      357CF5D17DB8FFF049EC3CDB066AECAB9F419626C8A0902570DC984881148CAF
      DE8AE8468F575020EBC2F7C44039205328EA5BF47B020161F117C0779E030056
      EAD879E071F05163BC8F207EE62449303636B6E90C812302B001CB97BEF4A597
      4F4F4FBFE3924B2E79ED0D37DC3029B3E45681783DCB7E4C0400034A8ECE937A
      3DEFBA3BD7FEFA73015F72FAC16080B3AD36EEDB7510DF3A7212DF3EB56A74FA
      5A0ACC4C21CD12D494428644705ED8A01C002028224304A4CDCEEAFECCF98D1D
      CF1335BED71415021F46BF27D6E99918C4463E0252A5F0E8E32751AFD72B0D81
      F23A4DD36BDEFFFEF7377FE3377EA3ECFBDCA06544003648F9DCE73EF7ACA9A9
      A9DF999F9FFFD91B6FBCF12A06BD0CCB3D5FAECEA54A3D68369B25BDBED3E99C
      338556555D95DB8E77DBB57A391ED87304DF3A740CF79D5A06A90CA867C0DC14
      5295A09998505C6FB9373A3A01D627CF0F410EE344E2F91282B2EABB76BABF31
      042A4B28889477EB05DCDE13C2B01E362A908CBCA080344970F8EC0A563ABDE0
      08B2B858C9AC363535750B80FB2B1B6DC032220017B0FCEBBFFEEB78BD5E7FF3
      C2C2C21B6EBCF1C69B6AB59AE283306489C15F05F8F5DC7D5996A15EAFBB6BB9
      D5F6C9BAED98CBF7FB7DF4FA7D7C7BFF517C73DFE3F8CAD2AA91D5B31A686A12
      48528C595F3D0A8041AF12403BEE6DFB56305C1FB0A0B6567E16012CC797D2BF
      9D1940CA5609C9C0F669FAF67589326DB5D60EF8DCA1E1EE707680EFEEDE8FEB
      2F9D43922495DB93F9BA5EAFDF8611011895F5CA673FFBD9D7CFCDCDFD8FEBAE
      BBEE258D46A3C9FA65CCD9F9339773015E1AA53824970B6FB56DB7DB95475E3D
      1142501485E3F6448407F61EC6770E9DC0BF9D5C06418192146A720248133495
      017D4200690BAAC48AF99400D046AAB70077567AA5A0885CBD012E79691F8973
      FB2520293F38902B181A54E8D030685F20C80299B9BDDF0C24DA2A05A8040F1F
      388CE75DB53D780FF15FEB0ADC5469C24704E0192A9FFAD4A76E9F9D9D7DD7FC
      FCFC6B6FB8E186D9344DC1C7594B835C55B28DF3B92622D46A35341A8D208596
      F4D73F59B71D07E868ADF18343C7F1ED43C7F0E9E367516800B514343606A409
      C693049913F1359CA74D9133BAFBCE0DF2126540CC813BACDF2B05402B5B6DEB
      A48D4019C202BED7F5C97ABCB00730C84BC63E6F7E901D199A63E6F0C88123A8
      BDFA25EB86042BA5D06C366F2ABDC00D5C4604E0692C9FFCE427AF1A1B1B7BCB
      C2C2C22FDC78E38DD7F051D671FEBC61C007D6073F7B04E4FE7A2273E4D57AFE
      FAF32504D282AFB5C6EE6327F19D83C7F1C9C7973018C018F29A63409AA19E10
      9A498A84436E357361C3A95D38AEB6D0E5ADB8CAE2520BF71B3377B2163FA912
      F07B8190DAAD564001C0B5EB8FA3FFCC18BCF9076E272039F47B42E2C47F0089
      4AB0FBF0B1205760D5EF6477406EAAE4202302F014974F7DEA533500BFB1B0B0
      F05F76ECD8714BA3D148B32C2B89F840D98A1F837018F8932441AD5643BD5E77
      C067BD9EF3E69D0FC8ABEA98D3B3AFFEF0E9653CB0F708EE3B7E1607BB7D50BD
      0634C641E309EA2AC118737AB7AFDE0057C1EBDD4AD9283C135E076589805289
      911080403A60D7BF0BFC119C5F3B3700737180A3F8412C0D58AA00F8FA4A6E6F
      3F28E3EED39AFB94A1C1C619F8D0D1934092B823C9E3F72708F2651FFCE00717
      EEBAEBAE732607D9086544009EA2F2F77FFFF7BF343333F3AB575E79E5AB9ACD
      E61807D49CAFF82E3F5749074C44AC9E892CCBDC565BE9AFFF61837464328DA5
      D536FEF5BB8FE28B7B8EE081D32DDC70DDD5486A3560B6897A92A28104996384
      CC999595B2C92BDF5A70ED848CEA4F0472FABD44397F34EC5A29BB89C7AA037E
      A71EF9F64A19A222BEE33E9C8BD04A112E8CD7E9F6E4F0CF12836243A19D03FF
      2FB171097B8E9EC04C561D12CCBFD5664B0E3222004FA2FCEDDFFEEDCDD3D3D3
      EF9A9F9FFFA9EBAFBF7E9177C7C5C75EAD97629ABFAF22081CE2CB2E412600BD
      5E0FCBCBCB81BFFE89029F88822499675B6DDCFBF03E7CF9B1C3F8FCD15340A3
      6EC27167A6D0C9525CD21C33013AF1189A2CF08D2C6F3C7136404729B7C34E59
      BD5C5BAE6DBF169CDE123F10BCE42F016E5481C4060671009082352C2A409189
      F093E23B3F6B5CE7A405D2419DA72F66628A3D144AE1FB8F1DC02B9F776DE53B
      95FB2F9ACDE6A6490E3222004FB07CF4A31FBD747272F2CD737373BF74FDF5D7
      5F5FAFD751AFD74B7A7D5CE2809D616D89C8015D029F0375E43977C3EEAF1A9B
      4BECABBF6FD77E7C71E701FCF3811306F0F53A303F6B6C0B698ABA4A507472D4
      27275C1F5A706106B919C8624C19E89A2A65F579232B24CA8054B92EF86EED28
      8202A013E5ACFE4E5D200D97D8C389F0766816FD0555A1020EF4CADA1648735B
      EDE76F0916592900DA3F1F91B7593CBCEF307EFC8537204992528464E409D834
      C9414604E03CCA073EF0816C7676F6D7666666FEDBF5D75FFFC246A3516B341A
      C8B26C5DFDFD5C413992283001919C9E8890E7F9933E0423F6D57F73F7017CF1
      D1FDF8874327012440A306CCCD00598631BBB73E65EB1C8056DE8306905871DD
      CA37D030780394E7C8CAEAF76422FB8CEFDD707027EDF32E3D63FD33C3583B02
      3111F0EA7D68E577DCDE4A011A7060F60FEE55007B8303B273295A315FD80214
      8BFECE43E009419624D879F8F14A094F162B016C9AE4202302B04EF9E8473FFA
      53D3D3D3773DF7B9CFFDF1B1B1B18946A3E1164095CF9E4B95AF7E3DD04B515F
      29E50C703F4C520DAE635F3D5BF0EFDF7D00F7EE3C808FEF7BDCB8EDEA356072
      32047DA22453F5FD69E04CAB83C5C931EF4A53CAEDBE25AB7B1BA0B3F1CDD6B3
      CD8EC57928A8844096BB1BC780E7DEC64018D9494CD4BFF51828134FE0C40D5B
      9C813FAA1344C3D90A1CBE056189D38305DA82B9E17B071F77D2DEB058000048
      D374D3EC09181180A8FCC55FFCC50D333333EF989B9BFBB9EBAEBBEE9246A381
      46A331D44D274BECCE8BEB8132A7E73A000EF855FD9EAB4EFAEA078381F1D51F
      3E86EF1C3A8E4F9F5C452B1FE0B1E34B26077E96612CCB0CE89512008907F11F
      CEACB5B038352E827600A544108F6241DE84F629178F0B68271500A4084A1B3D
      9EA001ADEC565E6F0B50F0C93BA0C90603B23DC087002AA5AC4DC14A184A6C00
      227E47A1F4C03688407D7012836FE722076DDB344DB0D4EAE0D4CA5AE0720DFA
      B046C0344D273FF8C10FEEB8EBAEBB367C6E80110100F0BEF7BD6F7E6666E637
      6767677F69C78E1D3733E8ABC27281F0871F169D5725FE4B2ECF7FD9D7FEC3BA
      ED624EBFF7F8121E3C7814FF726C19BD4283B21A54B389B1C90C938301D28290
      584EEAF5F87890D207747B7DF4F202CD5A86C45AE861DD7BCA22465B239EB9D3
      5AE2993628A630CA1A05014EE2A148F9B80016D5DDD0CA03D1BD671BFFEF00CE
      E015D201D81CC062BD968F63993C3989C0D509DD3F208C6408D1F7F71CC48D97
      2F943C017CCD369CCD921CE4A226007FF9977FF93F3EF1894FFCF2739FFBDC97
      351A8D1AE7AEAF02F27A61BA55ED59AC67D0332191517AB2BD2CE7A3EFB321AF
      280A1C5F5EC3D7761DC4378E2FE170B7001A3550BD01956668A429C633E3ABD7
      B3D3387A7AD95AE4891578DB693042E5C733ED362E9F9DB236361BBBAF18DBDE
      8F4F091BF3C8AB0BB061BDE4898201A80D07667DDC7E47890215AC0230169553
      17CC5D4C377C0250270590E7CA0EE44EBA27F83D01A677A71288DF94885CB830
      991F0F8FEC3F8C5BAEBE74E81A115982374572908B8E00BCFFFDEF7FCDC4C4C4
      1B6767677F727C7C7C5AEAF5C070C04B9F3CD7C7BA207376F6D94BE00FB3130C
      BB8EEB88C859F08BA2C0995607FFBEEB201E387A128FB6FB40BD06556F806652
      D4D314CD24412D4DBCDE0C606E7C1C479796510DF0507736E882900E0867D75A
      B86C66DA37739BEF556807601D9A457484CC5441412B760D6AE7398035183217
      4F40D656E7A3F594902C0C8188F6F8F37BE3DF3160F204174218B57504C8BE00
      D205486B6B5EB44402C023FB8FA2FE1326002B76C346B1009B2239C8454100DE
      FBDEF75E373D3DFDF6A9A9A9FF656262E2CA66B3E9A2E8CE672FFD7ADB704536
      1817A0C386BD61FD9E6F5D95AFFE5BFB8EE05B874EE0DBCB1DA87A1DAA9E81A6
      2790A5199A498286037DE20D763004A8962A4C8C35D0EEF4C0FA7909F804F0B6
      5A877E325FF6071AAD7E0F938D86DD8DC79637DB52797C6917D063FBD016DC04
      6B07005C78B012893DC8124BE2BD01B6CE05F7D8219DCEAF5C2C00F1972EC8C7
      4621C8E7622B03E98010F8776F54051130EC5C8C59A2F0838347CE797CB84D0F
      B6290C815B9600FCC99FFCC9FCC4C4C4AF4E4F4FBF7E7A7AFAD67ABD1EEC851F
      16815765D5E7C498B1A8C7E1B81CDFFF44F2ED9FCB6DC7C6BCB56E0F0FEE3D84
      6F1D3C81FB9656A06A35A056879A99429AA568AA0CF54CD9E03BE5393E19C319
      73657EA6C5C9091CECE41826E6FB8AD823602E96565A98DAD67499731DC397E1
      B44EE6608F80E7EC4E2D488C1781037794E5F94A69E842180D210CF88590E3FD
      4BB38E07AFE327A4EC0E400170C7F1B5F71A5A4243F0B607D73BC1BB1FB93912
      EC3E7EDAB844C57AE0DF4EAE8F2449AEF9E33FFEE3E63BDFF9CE0D9D1C64CB11
      803FFFF33F7FC3E4E4E47F9D9E9EFE9166B3D960113FD6D9CE27FEBE8A3030E8
      79D75D95D55F8E73AEBAD8573F180CD0CD733CB8F708EE3FF038BE7E72053A49
      A01A75A8A929A096622CC95063B79D12E007C0FBE155E2EB0D400CE79B1B6FE2
      30EFC19753511EB095F600FB67A5D545B1A09132AD236577E901A43971A77D67
      E60183EE0989B1F2BB9C00CA717290DDC3A07C1620432414880AA14218CF0341
      BBA841A7DF0B3B4320E64300DFBD7B1F1AEC8E09E163C288A0948901E6C0A154
      01B9527864DF115C32D528FD9E524DDC2CC941B60401F8C33FFCC3A92BAFBCF2
      3D737373AF6F341AD3599639BD3E16E7ABFCF15CE4777C2F83BED16804DC5EAA
      0671395FFD5E5AF089080FEC398807F61EC5174F9C85D604D5A803E36350F50C
      CD24432D514893C489DBFC4759D19A1F4759A20030603CD0129560766202A757
      D67C0B66B1E10C833F5CB42EB0DAED626E7CCCBAF26CDF1ACE15E877E6919BAB
      F3143A9018D0278A506803707E2076F9111397C052EF63027C308F952A98E307
      FABDF67945DDBB377097F420E6F6CEF24F4558A712EC3C781457DCBAC345044A
      CECF9E00BB616BC32707D9F404E0031FF8C0EDB7DE7AEBBF4D4C4CCC72108DF4
      850F2B55E2BF2C9C0B7F6C6CCC491055DB78E3FEAAC690850FBEE0F97DFFD031
      7C63D7017CE6E812B406543D031A4DA85A8A66563327D9AA04CA5ADB9DAE6D65
      EFC0160176A7C119F0AAA4838589319C5E59B575C18C2BEACA15A7965B981D1F
      B344C6BE0F8132D6D79532A93A940DD031F384D5B1393DB721064E92D016E080
      8B0FB05642670874467C0B702606BC65D8BBF7421D9FC38803E003EE70505F61
      2586E07D10BF423CB2EF305EFBA21B4B0C05F0EAA1DDC0B5E193836C6A02F0E1
      0F7FF88A3BEEB8E373575E79E56C5114E876BBE8743AE876BBC1EEB6F3E1FA0C
      F0F1F1718C8D8DB92490EB815EDEBF5E5D9C4C63DFF153F8EACE03F89703C7D0
      CB0B6BC1AF03B5CC18F3B21489502DBC315E88E8CA83C27B3018F070B600052B
      9A33F14814A6C69BA82529FA451158F9CF057C2E6BED36069A90258933C099D9
      5959832DFCDAE7E97107736836FD696F66E09C7E624CA3FF4B09CB5903188AB6
      DADFCBBBF7C4849C2E4F24383E55FC96C43DC8CD41DEC8C95A44A2123C72E070
      49C274B7084F40BD5EDFF0C941363501B8FCF2CB3F78F5D557CF359B4D10119A
      CD261A8D86CB65CF8460BD083BEBB2C1C4C404C6C7C7030A7EAECD3DEBD5C5BE
      FA636756F0A5471EC397F73D8E63AD1C68D4A0ECE117B52C43B3668EAF2677EA
      0D006965B36821E563D655A290A8C43241057BA23500234693F2A23F8B0386D9
      2A2CCC4CE1D8E9336E1841098021C09772F4D9561B8B5393662C76075AC4690D
      ABC35B42A0085AB3A462FA21A56C320E2096D1396FBF330EBAEDBE368597682E
      A11F707B4EF421383E1119A224E90301E42445A96A306153423D20A409F0E0C1
      63E7DC13B05992836C5A02F0BEF7BD2FBBF6DA6B5FC33F84DC3DC7917C9CF196
      09818CAF6F369B181F1FC7F8F8B873DDC506BD27AADFB3AF9E89CED26A1B5FFA
      C163F8C681A3D87D7A0D54AF19BD7E66125992A19E99536F18F032FA8CEBFC77
      804A080A898F70D380561A894A9C44E0F46FE5F56F430460C56C53B5303D8E63
      4B673C6335A354BF6C2A7F77EAEC0AB64D4D58BAA4AC486E457A3394D0E5AD1D
      8271CCA0B273211B90432E12D03C84229FEBCF1BFB9C99114E4C77F447810AED
      40CFD901888D8B6CEF70D98425B7F720E7A6B20E567D50007A791F874E9C46AD
      2279AB5C0F49925CF6A77FFAA70B6F7BDBDB366C72904D4B001A8DC6F388682C
      CF73D6B798EA3A7F3CBBFE3845569EE7C8B20C9393934EC41F16BB1F97F580CF
      A0EFF7FB38D36AE3EB8FEEC77D7B0FE37BC7CF08D04F9963ABB3D404E8404125
      5EAF75FABBEB9F3F788B3EAC7B0F14727B0612C0128220205E72364441192362
      33ABA1D9A8A3DBEB0D7FC954FAE026D6EDE6E8F60768D46A4EDF66C2C4063EAF
      CB5B715EFB537D58BFE7D4DDE4E00AAB12687F561FFCEE40478B480BF1DFF40D
      4D107B0E2D4189457A32844A3E1A4B25ACFABB4796FABDF99C28002AC1A3078E
      E0B66B2F17DFCB57E483C2EAF5FA863A17E2DA00002000494441544E0EB26909
      80D63A5D5959C1D8D818C6C7C79D959EA3EF38965F5AF00783818BD25BCF1E30
      EC5AD6C9D36EDADD1EBEF6E85E7C7DD7013C70EC0C923435A9B366A6514B13D4
      D3CC88EB09736F7E0872963D37130DA306B014E0D47EB38906099C995D89EF00
      08E0B321D01A0AA534411AA48CEEBE7D760A078FF74229A0F4CCDC9F070197D3
      2B6BB87C61D6DCA6947502781DDD05F4680B4608979F7D9764C3800106B865D1
      0AD6556855027B2498730F5A49870A4319344FD58E153C86E5E6FE0C025FE71E
      591A08F8AD6A7E0E7E7C1B70A4141EDD7F1877ECB86ADD34E19B2139C8A62500
      CBCBCBBB57565674B3D94CF23C77167B4ED01187E4AEADAD392901C00FA5DF4B
      0B7E5168DCFBF06E7C6DE7017CF3E84940252699C6C404542D43234D8CF59E7D
      F5EC177721B681EC6D12562AD38D4BB0C17ABF5D847CF49502BBC70CA014AC24
      4316EE6C0710C8E65800236898FAF9C9711C3C6E87B22279F4D028A905CC1909
      585A5EC5E50B73701C9A3C58149435F891554794059077F9291711E8F1E899BE
      DD365C4064FFE46969974B30067E3051015A045D90D71C5C50104C9F05A1E0F8
      7F5DD8BFDE9E40A4D1EDF7F1C8BEC3A5D382E4BA6103F2464F0EB26909C0BBDF
      FDEED57BEEB9E7F8E4E4E4651C2EDBEBF5303636E68C819C6FBFD56A01009EA8
      7E0F84C9348808DFD8B51F5F79742FBE72E09859988D0630360195A5A8679939
      F84229C0EAEACED24D11B08371E180ECE761B9B7829706A21EE4965BB21C5F82
      9E157ED6FB499923B1B89F2C4B31353E8ED556DBB6E761CBEF21B003D83F837E
      81B54E0753CDA6533D9CF7CDA2D9A702D356B7D786803168D88DC9BABD82DDDC
      A3838C4046FD296C5FFE3EF6F5073326AB1210C0078A10019A0A14BA30001F18
      30B397880AED427EDD3A08A2093990C8CCE93B7B0FBBF5750E4FC0864E0EB269
      090000B45AADC77ABDDE654A291733CF8480258246A381D5D55577E2EDF9003F
      F6D57F77FF117CF9E13DF8B73D87A1FB0550AF43359B409AA29ED58C3B8C2D6E
      8C36C059A639DEDDF26AAF7302FE3E9E87D70A20647CD1D63670940502F83C07
      DEBDE6850DC3A96202026C9F9B1604801034B0C305520085754B2B2D4C8F8D41
      17DA492B009C58CF463CDF1D67E7B1B51CA8A360386D70420F1BFCC8717CFEAD
      5C065F3B59DECC531406D483A24031D0A06200AD09852E6C0E40B143D0E90EE2
      3A7A5C4F00E0C64A1385BDC796D0EEE6EB4A92D636B5A1F7046C6A02D0ED761F
      E9F7FBAFA8D56AD05A436BEDC0DBEBF5C0AA411CA70D0C2704EC31D87BEC14BE
      F083DDF89747F6A3DFCD4D069D5A0D181B4796A468D4383E4085CBD5ED90D321
      880197DCC258CA9910588E9144DCDB74E10907A7C6166A81331118995BD0036B
      4320A352380924311C918514226066BC89245106C0B2B0EBCBDBD42A89C1D9B3
      AB186C9B03271332E1C0BC8BCFBE1D278D8B1C01CE2D685D7EBC31C7CE1B0006
      D688E74272AC95DF3E2E065A63D02F500CFA16F085E1E89ABC3A4012E415EE3E
      FEF504FE7D9B688D58C291400169829D871EC795B3E3253520F2044CBEF7BDEF
      DDF1D6B7BE7543E606D8D40420CFF387A46BCF73077FA0459EE7C1269DF52480
      76BB8D56A78B3FF9972FE3DF1F3B04647503FAE929D4B2CC727A2620F66655DD
      AFF3E5131C403D2DB07DF07A4C6C43D6E329AC639D1A04BB8D96ED7B86026832
      21BECA715ADB3F08A0C48F4B1CA36F58AE52E6F0CBE9A9099C3DBB5A06385061
      1C931F3534016757DB58989C70E026267E2438BEF3E3591B068C01D0011F30CF
      AF350AEB0E74F14196B3E78301067D56C90A14FDDC4E5988EC521D08A415AAAE
      0B80CF6DAA811F14A5F0BDDDFB71CDCB6FB54D28BAC57B029224D9B0C9413635
      01D05A7F531ED354140594522EE28E2582A9A929B7A36F981D20CF73B4BB5DBC
      FBFFFD34769E5A869A9C469A65A8A5499980B8587B76CB11DC8A5700A7CD04C7
      C7C7DE86C2D42BDBCCE4B9039048B5C0839E6C4A2D06B0913B12AFF7F3D89E1A
      3962C255AC6AF82DB8705F5E32338DB367967D63EE2E260643B8E6D2D915CC4E
      8EFBEF380B8F7BC706FCCA5E930DE891A25318B8A3D02F0AF47A7DE4BD1CFDA2
      8F413E40C187783E6190CB7A3177F9604EFDE12FB468CFCD445F49829D078E20
      7BE58B4A7B027C7373DD6834366C72904D4D0088E87BFD7EBF47448D385C576E
      B6E10CBEFC7D453FE8F7FBF8E4FDDFC7CEA555A4939368888CBF4EA78EFDF4D6
      B5550238A7C94A00A9DF93D555A5DEEF0FB560A39F252E36924F416255B9210D
      86CDAE39380F03999377003025E16DB646ED907DD9CD4E044C371BA8D532F4FB
      03C8D05AFF40F243996BAEB5DA181405B224F107808AE67CE1FCE99C4B009E48
      F4B5462FCFD1EBF5D1E975D1EF0DA07561EE0FBC00E4711A833CAE0B36F89C0B
      F8B22E7A05910440303FEDF7F71E1E9A2414F09E805AADB6619383546F60DF24
      E5CD6F7EF3A0D7EB1DAACA9E2B25803CCFDD75DC4EAA0D5F7FEC20A8D1402D49
      0D97B48B59FEF4C6E8AC8305613B130CC3731C22D647EDAA92C6354D000A7B93
      F787392BBA5C8CDCCC99D90D25308935C9029CE474DC7C94664265A7A0C924EE
      B46D9502E6A7A61D771593B0D7F65F05C8B8D9A9336BF6D905017293D1C1965D
      96443ABD1C67D65A787CE92C1E3FB18413274E63797915BD6E6E4FF1E117CAEF
      533C949B27A276650205FB7A1DFE79D27239E88A3AF70EFCEFC9D76992E03B87
      8E41D928D458F78F3C011BD610B8A9090000F47ABD5D1CE7EF36CF0869406BED
      0800973870833F1F69F7504F13936F8E440CB95BE866654986CF0097D162BE5E
      B24298F87C7758855CD8169BCE97CD0B4F05B1EB5ED5B073E22F783F3EBBD79C
      026E9FC0EAD681610FE6682EA643DB6727FD5479071E038E6980045AC0140967
      565623FAC662BEEDC38EB9D6EEE2F899651C3C7E12478E9DC2D2D259B4D7DA18
      F407EEB982F1FD101131E07F62D71EDB1324F1D44163D1A7BCA74CCC2BC71686
      C5040ABA5F60DF9113A5139E2323209224B9E6F77FFFF79BD880652B1080EFB3
      EE3FACB03B8F090217F9632549826D6326C9074990B9C5102E127FAF0537D717
      ECCA920B93C14DE0832EED0082C9C4DC4B8CCB84C77EE5E3E2C94FCB76A40801
      7747A1DDAE3C9610CC9AB75E077B1A4ED3864D53449862315B621A2C666BA0D7
      ED211F0C2CF0B5230685D6585E6BE3D8A933D877F8380E1E3B89D36797D16DF5
      C2B3FADCB3479C5C8BF7E0268F8A36FE372B019FA23AA232F0899F4FD4B9F9C5
      44C7328124C123FB0EBB2C53E5B5613EA7695A9B9898D8905B83373D01180C06
      0FC6E999E55F004EFC1FE6AA618BEDB317E75CFB00F8728D6AB2BBC7C48F5CD8
      70D7C23724D95E029A64BD18C3D10B0AFF09BB1E734725D668C0B1250DD46444
      7DE1793012BE168E4B00645C80A43516672643A2C4FF0B406F07B5C097133971
      66D9C4CB1061A5D5C5D1934BD877E8180E1E3B81536796D1EEF5047795A032FD
      91508342CE0D077247A018F8724E1504CB4F9ADF739968427BCE6EC68A54BC98
      30719D4AB073FF912020A86A5DD968D4DBB001CBA6360202405114FFCE9E8061
      197AD82D58AFD7DD8F0220689BA629AE9C9BC2D70E9DB0D97499C7D94CB4427C
      26B27E7436C82174BF799AE1EF311F8D614FF31C88E3084888ED62E79E596540
      6239BB0B82B704CE015CD979F1A80AA97001B087210C2C32AE39A57C2CECE2F4
      248E3C7E526C9611D4874BFC7A0598CF9E5D8102B0B6D646B7DD41216F2A717A
      9E98E89FC2FECA0027D1468C2F815FA256E4B87D30F5A12A4638640C7A12F34D
      12E091FD8787260995C95A6C9AF00D5736BD04F0E637BFF9709EE7CBF18B977F
      0104E7EB0D970066A149BB4D2CA4012A504E17055EBB627100CE16E0C568B970
      2C8713C92B1D579700B07D93E3EC10DB57AD8E1989AF81AA62EB35916BEF80A1
      0DF1D1B17463FFA4698289C97101D0686E12544E27F67D14FD014E9D3C8D76A7
      E353FE71F65DBE8FA515B9ED8E00999FAF240D91867F4DF2E551D08EE47C9D94
      12839A3CC777B786BF6350572230DAB551507868CFA1CA3D01FC4FEC09D890C9
      41363D0100805EAFB72F3604C6A5288AD2797BB10DE0EAC539071C1D84A40270
      3F2AA27AD38F765936FDA261DD9EB3CE32983D7E25C03CB863BB036F7E717A3E
      C2851603DF84CD8AB9804FBF8D17B97C07667E8B73D3BE812404A677419D6220
      1AF25658C2E940EEF0C860B4FF1C710BDFA5BF96BB84E0DB04B68F08A4DC490C
      FC58D407CAB6059E72493DE177A1C33AD2481385A5E5169696CF7D5C5896651B
      3239C85621008FC6197F622940E6088C5D82FC433D6B710EE33602AF6CE917DC
      C8541AE0C7074A6A0300ADC56270867D2620D2C600730045240538A9214EDF4B
      8482E0E76F17BFD6809669B33DBDF0876F727B1B2A1BEADCC68E31373E8154C6
      0F4B2E2C9836838C4D019AE74AF21EFE28B8BBC5B67C9744B613FFA2C458A693
      F0E04F7B2F03D6BED3925D42104D4F1F22E03BF79FF4BE202456254264EA1228
      2049B0EBC09152B0582C91665976D91FFDD11F2D608395AD4200BE7B2E4FC0B9
      2400BEBE617E2EE0C47C26BDE40ABA106BD1D6798E6F2A94D5D5DDD1526EB192
      587B364680BFB38BCEAC631D2E660857242F68829556642C01790CD9B993234C
      DA3D9307BD160CD34C6C667A3200B97468306018F4B0C09769B3DC7D520A7084
      20045AA52134001A09825141886C7D402086C4694849C94B3692B8CA3A2ACD85
      823A5BAF141EDE7BC865955A2F2028CBB23BB0C1CA96200045513CA0DDE22E27
      FA003CD8AB7CB55254BB62760A457C00052F56C7D5C3052281E93872A151921C
      C82D234F58EC02E35EB55CA4F65A17DAEE7E638EC9FBD60B31473F0FD93759BD
      BF60E031801DE8C5CD20100A2CCE4E8A39C887D4D02023E633918C45ED407562
      50C7844080DEBD47319E7B195CE3DFAB6B63839920811F00DCB6D7A1B415809C
      FC58411C872458C17CE46F699F2D5178645F9824B4CA16603354DD8A0D5636BD
      170000565757BFD9EFF735808433B400A11596C884FBB2C5B6CA63A094C2B316
      A6A1776B10252670C77D697F7C93DF0A0040280067FFB786C3046671C88D3F04
      9B435F8401D8945EBC068DCBCE7EA108340028D1663C733E851956DBE751C23B
      A11490D8537685E59EF3F69BB929E8042045488863F37D74A086C93834280AB4
      3BB90D86F23ABC53B01C471425225A95A076D28C34827A02E809035F5B82A4C5
      F7828085C3474428185BCC5B7A1D1CDE457F4CCCA4BECFED4B528169902A855D
      071F3FA72700006AB5DA864B0EB2252480DFFEEDDF5ECDF3FC98043E8012C079
      93D03009204D535C73C93C0683022649A5FFE1FD5A11FAB3283E324F700D30A3
      606EE3570FD9B8016FFD26CB5C741467402E4290A304DDBA2CAC882F36AE10B1
      F4C18643EEDA5BFF3DCE8C0A4085462FEFE3D8E9D3D873E8280E1F39E642710B
      F0213E3C7F21A733178E39B0046920C26BABA5B027C3D607863D6125154083D6
      61BF3C6E600B09DF712932107EEA254057D5891BA4A9C7110D22244AE1E1FDC7
      4050438F0B137B02365C72902D21010040AFD7DB5314C5E555077E6A6D5C7B83
      C1C0FD405C17138B6B16E790C815E0F2D7596E4C96E306D96901807DFBF03E79
      4D70AC1E309C5D034061B86F22DAB37829EAB4CD8C6BF614D9F1383C58C12415
      B5626841DA9E25A0F966FB3DB91D898AB70FDB682282426F30C0D9951656565B
      E8B63B30B31385A519C1CC053A7C1BF9979B48CE29E9A5E4AC11A0C26E09D043
      C6925D95027962C22D084189DB33E1967306BC913178A0E83D00A952E803D8B5
      FF0816D7392ECCDA0036DC9E802D21010040B7DB7D983D01FC03C4623E119DD3
      10D8A865B8766A5C7070F6DF7BAE646C59EC82F31CD0E97C8EF3983EB4B5F287
      5672CB9535B974DA4E6F2776439A7A630760639BD1FBE5D0DC2F1B1B390EDF67
      C08165D8859580347AF900C74F9DC1FEC3C771FCF84974DA6D142021EA4B2ECE
      FF2422F87D0877037FAD23639F7BDD228641823F88CE33F793345238C92214E1
      4B9BB2E41CB97F2DE6299F45B27E6E87E85ED94ECE377E3F89C2EE834783D3A6
      AB3C0149924CFEC11FFCC10E6CA0B26508409EE70F55EDF663F18B7DF592480C
      A3D457CD4FA3EFA405BF184AFE7B4924ACB14D06B1180B3C0396C168DD843240
      868042B3A82F0C871A4E25902E3BE9A19044C904F9B095DC1BA09CDB5303797F
      8093A79771F0C8711C3FB1845EBBE30D821A703ECC60E16B40124169E597C441
      A6E176AA80980BAB02B2DF92F7407BAE0D04AE3C731D039A011CB9F10888BD37
      A111CF37F73FB0FFE8FB8A8893934AAC278400286F083C9727C02607D93065CB
      A80083C1E09B3218280637D7B304207770C9A294C2B3E6A7A10F1C0767F02582
      95E235BC38CF075924F266F0B283864BF8C1F5DA6EC091F900485BD52288E3B7
      597F953132BAC84498B9A884A028F1FD5A715FD9FBB44A90680552DA1E119EA0
      208DE5B5352CAFB5D0699B13AB354F43E600E0D7A1E585FC3884E3C66D1C6808
      FE15EB0860F6AFE4F480E7F4B2B84E28BA8CE7034F1C827E43626EEA45BB75B8
      7DE0AA857C35B65D9AE0119124B4DFEF4753F736261B12BC6192836C1902A094
      FA7EBFDFEF01680CF9DE490071A826E089449AA6B86A71065A17D04A41256C82
      B7ED142C0AED8F2F8EC522322274E2928058734141C6B8AFC8100C45665B70A2
      E13277F201198569674985750C68B6D91B914D9BFD01BAD050498220A3904EA0
      9439363BB17D2F77D6B0BCB28656ABE3A571B7B510400C60B9DB28063E0DA993
      A0B70FEFBBAED0A7A55ECE2F8BEF117D84AA08D95BAB747E408AF982FC232032
      5CA7113C7A087C317EFCE89238D8BF29123CB4F7B08B05F0B77BC6C37F375A72
      902DA302BCE94D6F1A74BBDD83520AA88A0790E704B2781C4B01CFB9749B4D2F
      866051788B7BB850CC1AA5D242A44244F2F13AD4648EAF0273461F74140606C1
      D4C346095AB1BBD01A9AB44F98A1C92D4C3D2040A8056BDD2E0E9F388523474F
      6065CDE8F86EC2B12E5E8A6844D8466801AE01C57D98BE7DE093550924A1616B
      7E85459FE4DCCE25FA33D776EFD7BF0F77CDC09720D702F94C9C02D76248749C
      39C7D97CC442B1ED1205E49D1C27CFAC96CE0B94AAA63DA866431902B70C0100
      805EAFB7BB2A2230DE1ACC6A4055C006002C4E4D605BC3A7110F283FAFBBC21A
      DC8A225830C45B8F8BC23536FA2FBBE5B45DA3DAE2C3E7CB67F65C9036D17DD0
      2EC28DD8580813B20B4134B4CB696FDAE6BD3E8E9F3E8B63C74F627965D5BA21
      ED3D9A5D878203C7D188DAA2DD81DF510438BD3D3013D8F78721C067A0C6A23E
      F1588280062A450C72125FCB76FC4F10D6981804049A7FCF08D0C2AEE11CBD32
      8C99C772CF62DAB247E7E13D07833D01B11A6A4382AFF99DDFF99D0D931C644B
      11803CCFBF171B0225F8590D90598487F96DAF9D9B4521FDC8BC76AC0720E04E
      B01C22B24AFB26963844E338C43BACB18782C4BAD596D890490B660D7505EF3C
      14063B4D05CEACACE1F1534B38736619797FE081E0383C1C77E788414F00A336
      FCEC5664F6210EA6CE3D47404824F02DC0AB7CF582EB93047ECCF1E1AFDDBB8C
      A50011B14772CE3C6F4934F85DB8BE04818030EC4504232028EE07166329859D
      FB0F07A74F55A99A4AA90D951C64CBD80000A0DFEF3F18EF0AAC7209B20450B5
      838BCB15F35378F0F812928C2501ED7F7B9984D3F4E82304953912CBD8F548C4
      0CD8859E100005AD14124D367270609279928D0D28804219FFBFD2B027529237
      3C72649F3236002A0A74BB39963B5DB4DB1D1FAF6046F5390334E0880E1BFF04
      8172EF42893AD18D3354BA57E1B960D0564A174089583A6929AE775C35AE63A2
      23DEB92418C158A1C1CEB7892729EEE5B7526AE3BEF0E34B6222EB54825D3639
      489571998980480E723F3640D95204A0288AFB38C0675838267B020094528597
      0C81CC1585F19F814E903B06BDD10F5A000EBC1EFD2121269EC81C70A195822A
      4C7B5598905FC395CD09429AF8282F6DEF231728A412C3448B41DF00BFD53176
      0B37113FD780933AE057D49919076BDBD5018E76B8BA92B15E97EB82BDF71EBC
      24AF256725012AB95B503E47709FAF67C1602831B09FBD240111A5193E6A89DB
      BBBEB56FA8FD9749A2F0FDBD7E4F809BB79B92F704D46AB50D23016C2915E04D
      6F7AD3E15EAFB75C95224C7EE674E14028A6F1B5520AD76EE39060F123BAF6A6
      7FBFFEA4B1CF2C262AAC2D407B5B002F3E67C516F64417AA2BF450A2C2ECE82B
      E4A2B3F6804263B5D3C5C933CB585D5E453118D8FEC582760139E2019C082C80
      EEEA22039DB309205409B8CE89D956CC97008C457F1794543147C9DD790C067F
      85981F88E31C44C5F3617047C158FC8C046FDFD4721E4E5DA040BF37BF831B54
      2C04F18180542538727409DDBC5F991C447A02365272902D25010040AFD7DBAB
      B57E617C0E80FC51D80EC0124055B962611A5922A838C1737665000EA53CE3B4
      29BA08B0623EEC662205A58D6E69B27499705EA5006DD376A9C284F58208E438
      BE15EF89AC7AA0A10B402509725DA0D5EDA2DDEA1A636160F4E45462E4A40EB7
      A0454A305322E2007E46D9465C505415AB4E55A2BE050AC5759230C96020D1C6
      076251341E131EDFDCE92512D0D17C7C9622AE17CF25D595617582E30744805F
      6D6AD4802B16A6EC6D7EECC813B06192836C29090030C941580DE0127F66F71F
      E0293417BE6ED6EBD8313365D36A792E455A3B371E8837D8206C27B88F4B191E
      F8A859B5206105E70D3C0588E371996B151A4561620C563B1D9C39BB8CB59535
      EB29400810191D4800C51C56727B5EC48E9B6138B72FD5492F810EAFC97FEFB4
      E740B2109C5486E06AFFAFFC2EF9850A2905E4DF6D4020C45CDCD0727CF9AC04
      21BA440402420211F30CC02FEA9204BBF61FE5E3C02AD797B5035CF67BBFF77B
      1B2239C8562400DF651DDF865E96DAC88840C0FF487108E755F3D366CF3D9985
      E0802F381569B33FDE8BB4167C5A3BF79B57493965B6B79ECB505DBFB75EDB4C
      C31A03DB7F5E1426926F650D792FAF006224D68BB05CDEB74FB1181D00166291
      6BDF1F445DBC234FDE2FFE05AE5347E4A239CAFD020ED066DE5451E7E7C8AF9F
      84F7403C8FD80169F0EDE7E4E78C48F5E0470C411E9C541C105904ED5CBD0276
      ED3BBC6E72105E7F699A6E88E4205B4E05E8F7FB0FC48640B9FF5FC6C7F3DF2A
      A34D9AA6B86A61067ACF11638A6729422BBFDBCF156BF00359831A993A6D0C7A
      20E20040287B4C9711D07510064CCA2C6A0565F6E7DB44009D5E0F9D5E8E3CEF
      DB5D7D6634B0ECC98B525AEF5DA7D22A27DE093795DA835BDCA23008A567A124
      FABBA78FFA8940C78D4B62B620A8719D74C595C47A6EE3250A6F9A104076408D
      2C94C158D17801A18FC7E7CFEE25D97799E0D17D4782E420C170420D68369BB7
      02F82C2E70D97204A0D56ADD5F148586906E62AF409224E8F7FB68341A437F28
      A5149EB56D165A17A0347191BF2142C4CE2FEBB6732E3FB76A6C6070A18CCB4F
      B34B81404962CEF683E15426D187021441914241053ADD1CDD5ECF1C8C493036
      04F350767B02457ABBF0D5D97601F8824F12D43E3A38F024F8976209976F178A
      C1B2E308E4A8A813200FB30A7903A9076028E2530531D05C27011C7071512467
      E7B68E36AC33A71281A4A09B5429FCE0D0E388B7A4C72A66922448D374432407
      D9722AC03BDFF9CED55EAF772CDEEFCF455A63E58121B11A0000D76E9F831EE8
      C80E404E64245D585DBE706BCF89F951BA2A4EE315A4FCD2D6CAAF0B98B45DE4
      6C0C793FC76AAB8D56BB8D6220C471A16AF828421E1C08ACF9B65D782FB7232F
      D2B33E6DC57C92EF84AF3972D2D639115EAA1D5575F17C1C2716F3836C87B287
      4132E340DD1912B8E37EA3E0463FC761A23F856385750C7E323706B60153AF00
      50A78F23274E975CCB521ADD48C941B61C0100804EA7F3585596E0AA90E02AFD
      9F3FCF4E4EE0F2F12600BB3FDFD9FE2CF0ED5A0010C68A4B9B12713E3FB84554
      900154019BAFCF74E0084427CFB1D6EAA2D7B127E9408C250104A01421C76381
      C79304823F57E9F7920B8A7BB14E9DB341787B4309F8EE9AC23AEDC3871DC81D
      F02561F2F74A9DDF6C7D4685614F1034412CDDF88030FEC93AFFDE4A0648F960
      F2F795EF449BEC404853ECDA7724B0030C910036C49E802D49007ABDDE23EB6D
      0AE2BA73650826225CBD38ED8EFCD25480740846779FE5F81EA3566A20DFD858
      FA0B10C16CCC21388E6FD6BA46BBD543ABD541BF9F8BC505BB50A5118D82451C
      1ECB1D01DE019081228882236C82380416FE75EA04112A11839810088E1F003F
      F0D70B639FEB9B8DA670F1F9014105C4F3F83995E3072478A33A26A020FFFB4A
      E06BF9C352349E284480327B02D80D1DAF279600945293BFFBBBBF7BC193836C
      391B00609283F0CBAEB2C0F277D21350650B489204572E4CE3FE43279142C1EC
      CD0788948DD175D63BF307038012BB15D7FBDC496B9052308609F6F3DBC49EA6
      5B147D8D6E9EA397E770B106442E76C02C48B987D71A0F790DDAAF88FCB41489
      4A19B5187376A0A24E76C86DDC7FC4755457F2E9FBFE7D382FBF18FE4E480F81
      C86E3E175C2FC5704960E4FC8939B8A88B22062B898725E6FED974F05841DBB8
      48429024D873F0E8BA21C144C412C2ED0076973B7CE6CA962400FD7EFF9B5205
      A832C8A469EA8E0B8BA3B5B84D9224B87ADB1C0A5D204D3213E74F248CED066D
      A44C12514ED00132C9383869B07656332375A8C4130E22A03FE8A3D7CFD11F70
      3F1EC97C12B0528C7619B26BDB02D63B2117BA728073F38D01CC6DA5844441E3
      A84E5E8B0F0E98B20E16F4A2AECAA22FE71181B30004C716E3EAE87E4118A804
      7A6E8B70BC784E419DACB2F39252891B330237CC5B7F788F7105727290AABD26
      4992A0D1685CF0E4205B9200C8E420EB4901D20D58F52329A570F5E22C8A4283
      3223F239F002462075F9BEE12CF2C62BC08D94E77ECCEE35EF2320F4FA7D74FB
      7DE801BB1A6D9FEC4EB42027B2E9BD791132AAB574019093467C520F1379E89E
      09A8007D0567AB2416D1078ABE644E2AEB74DCBE4AAA9062B7B58944D67CB8BA
      08F4E4EBCA7B06C4FD151C5FD6F97BC57CAB32135512137F9D26094E2FAD60B5
      D5199A990A006F0ABAE0C941B6A40DE08D6F7C63901C844B6C0F20A220374095
      37E08AF9598CA7DE95660EE9B0B600B1B8C91EB1AD0B72EB4373000EAF2311E5
      465A1BFF7EA707DDE7FD02C2E2EC16BBB78CFBDD73248C76C45F86D673126D84
      FE2F8374BCED42FB051D81AA5C670120220A49D820886F88F6CC9B2FA371D866
      60E75880CC16EC18FC55360702A431B47ACF404C10A86CD813C65D4F8CE41CE0
      FB8D0987867B77866E58229DA4D87DC027098DED4BBC16EBF5FA0537046E4902
      0000DD6E77B77405561902E52122C38C80699AE0DA8569E8A2301B0ED768FE00
      002000494441547B1C97F30BCF44FD79C9D127FFB0ED888C224B1A80211EED4E
      0F9D4E17DEE28C70A1412E566F9536AE399EA5F6062A5EC185B0A0D3907FE23B
      076B8273619A31C83D5BA9CEE511907481C11C19F69C5190814FC258680E132D
      60A32903379EF827815FB2DEC3FBFAA5955F82BE82E343FC3E546A8770CC6043
      95EC4B03B2398F9928ECDC7BB8324BB054419324B9E62D6F79CB054D0EB26509
      405572102E3216800F0DAD7203BA80A0F939CF61EC0A212DCED5338D016DACFC
      B1B8298F05D70342A7DB43AF9F9B1612E40148C4A28E1734D8370F3F0E039FEF
      5F0FF888EAA4FFDE118F75EA020223B87840C42ABC01CE9360E86151E2CA8412
      F172528060D30C420D90208E5CE70926BF373BBEEC9F7F4AD99F130DE4F8A2C4
      EFCF2D0741A4CCC2C25E715AD0303520CBB20B9E1C644BDA000020CFF307CF65
      08E488C0D81018470D5EB5308D429B833748C384EC42D91D7C76914B9D5F2E10
      BBD79E1450E802DDBC8F4151F8F5C2D67E6775B77F15C061C70E04E4FB33F71A
      6F020FE3166D9C0B51D6056B35AA971F82B5BF4E5D6C4423F9354575E477E4C9
      7A066B5C27011A8C45F0D21542C229DF554C30826791FB0344DB58F4AF220682
      6050A90E80021EDD5BCE0E0484F627BB27E0822607D9B2044026070142CA0B80
      F765A3D3E9041C5F16FE91AEDE368B4131409AA4F60BC088DF3E8EDF5BE1ADD1
      4D01B0B00608837E816EBF0F13A52CADF780C930C40BC412018277FFC5044669
      771FAF3A39732501E1002E002509441C2A7B3EC08F18630060FFF2827B0B88F1
      E5FD81614FDC1700DF7D19015FD6C7C44747FDD9CF9ADF97AC8FBC0C6ECC0A09
      32EED33D839F739A24D873E038A0CAA9E723F02349920B2A016C5915E0AEBBEE
      3A9CE7F972AC06C4F680580DA80A097EF6A5BC73931004B6004ECC348630CF84
      5864A642A3DFEBA3D3CB510CF8345F2132039EC310AF456E43BE43EE536B768C
      C3EBD3824BE968FEB1980FEE47D449315C863CC7200B0C6676B2D2D827C72312
      FABD7816FB68617011A26715464D0622BF1F92F38CE72EE615131361E8A460AE
      12FC622E12FC813DC5B7277E0E29569125FBA4B1FFF0B14A43205FDBE3C22E68
      72902D4B0000A0DD6EEF656A3B2C4D384704AE17123C56AFE1F28966080E0D80
      781BAFEDCC7118DB5F41C8070374F31C9AB3043BDA2140E516AFF9D27B0E22E0
      CB529571C76DBB35FFDC094292C34A5D5E4CC3038FC713ED02639C00BD240602
      D006F4B21F9E33CF518E4D08898E20124C01B4FC3D24C0E141EE802F9ED5112D
      5F17EE9D106DC5FE0204EF4B107B477CE0E7E2DAC1BD23A500240ABBF61E296D
      479712409665173C39C886240012B0C3FE9D4FC9F37C67EC0A8CFB4F92C4ED09
      005049049224C135DB6683105422735E9F0BB2B13F3EBBC44016FCBDDCEFE473
      A08E17A030980971921C97B6750C32490CDC35B7917DFBB1CC1903F67FFCF539
      0D7B515DC0EDED0309D01504EFC60BB8AF244E10CFAF8339068447BA3F113E4B
      4C302BC12CBD23EE37D3E1BCF87DC52A80234C5C211E199174E5EA25A100A012
      3C76208C08AC5A63699A5EF68E77BCE3822507D99004E0A92ADD6EF73FE23D01
      31F1C8B2CC9D1A3CCC25A894C255F333280ADE1908F7E393E6F87EC3F17901E6
      791FBD3C7756FED05A1D732D086E461E68E47DF69512805CA081AF3C02556C01
      B7E33AFFBD668879E9C3334451E76E0DEB0AB2FE7BC715E3F1C91337C9655D1B
      F12E9CD463E733ECBD056A5404E6C066408E6083ABB518DBA1BE620E622E4E3A
      0B7E2B314EF41189C2AE2169C2E55AB40141172C39C896350202409EE70F0CDB
      1300784360BBDD0E54802A4FC0D5DBE730280AA44A09DC69806CB211686B9353
      E8F507C80703D34E18F5887300BA5524A2F634F9BDFB81E18EAC911080269F6A
      DC7D0FD3974B58127138EE538AAC418E00DB56C7EF87A236108B5E68C831970C
      E610F723410C3FF7084014A808B263314FF91BE8A0C2CFCB3525D734503F02A0
      47CFE18894E8BB6ACEA5B14D5F0A0ABBF61F1BEA0A94F100F57AFD822507D9D2
      04606D6DEDFEA228B452E6984E19EFCFD71C0CC4270AC57904F89E6B2E59008A
      0190A5F6C7630BBF0631112020EFF70DF801BF4E2CF01D37524010D6EBD6B705
      32737B096AE9AD23725DBA22811FB8FC245B1284231EDBBF94A863127524801F
      DD27C115B4915C5B36A910BBC14139D1BDA0509CE7FBE3C910108BF3141037D9
      AEE21DC473E32FDD2350A92E64FBFED63449D05E6961E9CC8A4B3D3FECF4EA2C
      CB2E5872902DAD02BCFDED6F5FED76BBC7F845CB33006489ED004048A58908DB
      66263159CB10E4ED83FF5E6B429E5BF00746330B20B9BB8CFB96FF6C7DA8F353
      C9B0E755030EE58DC672F7C9F1F923CF43EAF728CFC3C9E07E2E1A76FFBD14E1
      195CD2B087782C6E034124A4DA03A38A58C3A90FDE61D15FD81D9828E80AF057
      E8F22EF16AD00E08BC38EEBD8AE716D37484A94AEF8F5416290DF0B68F5DFB8E
      204D53C46B8B4B9AA6C8B2EC822507D9D2040000BADD6E6572102606AC87C5D9
      8180B2A876EDB6396F4822D86840D3AE3FE823EF0FC2C4A152FF25006C41B700
      71FDC73ABEBB8E0881D49D1D26C87339677197E014800D8068DB05CABDBD1636
      084D9C0C257A16B67AC7D182816B51B491C07734CDEEF0777512F808C5FD406F
      E722085944E882939C82FE0491D0BE7D402C0349601DBDDFFDAE617BF79E9204
      7B0EF82CC1557B02EC3ABC607B02B63C01E8743A0FB3781F1B02250158EFA010
      FE7CD5C2B4DDE0C3CCC6AC80FEA030E0974093BA2E04204CA7C13FB724D635EC
      C10320E6E4821090E4EE3C8192941082DC014CB8F6CCA5201E925055A5FE92D2
      8E1BAFCC213DB7D77E5C06BE241A011115440A10CF2EC6B50484F72904524F49
      424238A6FB4DE4B384C44A7428EE17BFA7946AB8240976EE3954796CB88C09C8
      B26CF26D6F7BDB05490EB2A56D000090E7F977AA0C805CECAE2C74BBDD40FFAF
      A2D4CFDA368BC160807AADE67EEC7E31407F6072FB059B6E0966913A831BD9CF
      F15C4CD008D9B9B88558A5DF473B7F7DFE01F20B4F4415F27D3E7F81F8EBFAF2
      AB76A87E4F51A51C2FA8171F1CAEA281296AC7800ADA5038A6EB22B21B38A093
      BD92208E6D0CA2EFD25C0872CEAE3F378E0EFE042F33327BC87AA514765B5760
      BCE55C12049B22EC822407B91808C0D0E4208059A0B55ACDD900648620FE9EAF
      AFDE3E6744FCCC8885852ED0EF0F0CA784F2D862E09B0E3CF0F933102E3C3638
      5A635F90C04384FB0E05BE12942100A769E7D69D8B5C0E17AE0E8C83F2E5B8FF
      AC5F170123249E54D1A6AA0E65C212035F8E2F5481D0CA3F04E081645531F980
      18A02C190413A8AAE379F93AA5144E9C59AD4C0FC68525D02CCB2E4872902D4F
      009224F9FE6030189A1CC4B601A708634A5DB58FE0EAED0B2653BFD628B446DF
      660C06009137DC60B2242222B4F0F33573B008C350CA9094F540EE8889E47671
      47D55500AF550F188598388922EA88C81E7B4661BB00F7119064031D35962093
      12C33029201892A2FE2A8881EC5B129821C489A2C70ADA47C304F5411D00A5B0
      6D66CA1D5053B5D7843D51B55AED822407D9F236805FFBB55F1B743A9D83C3F6
      0430C8D3340D720402FE07E2CFF55A86ABE6A750141AFD7E614F19B6A88A0255
      022BBFAD0B0D7D10FA7DDC07011CA4132CFC48CF94063B69B80A22DE20F47B73
      B3B1E80B42E286249C4F4E00B3DE850D405ACCC32822FFB0D11CCC7DE299ABFE
      41F4EFB6138B5758D2EF49183985FD8189AC2328E4DF5964F02BE9FC810D44AE
      2042D90EE27F6AF3AE347EECE52FC4603080944265BC09E054800B6208DCF212
      0000743A9D5D4551EC48D3D4D5C5D49809000097262C9618945278F6E20CF69C
      5C06C94D2415813B7CA9C25503E9D3F7D7EB8BF9E61B1F77E0DAB940225BEF16
      B3DBA2E887297DE017E1FE13D5D90FD22E81A86D5C27BB213B5815C7ACFA3CD4
      565001FAAA3E28B8C91467748D3C2C41F1FABDFF461093F8C198989445043F37
      5B16A6C7F1CBBFF063E876BB25373300E775B28CE89A5FFFF55F6F02E8963A7E
      1ACB96970000A0DBEDFE60BDE4206C08E45D8180A7D25CF887BA6A6106FD3C0F
      3BA9B2DEDBC540109C4A7213E9B2ABB2A80B0B3F7356DE71E8D7185BC3B5E05C
      08B8B0CB9F2FB92AA2F9B88744D8C63D0B7C1D7364B68497F60C901F5FCBAEE4
      33098ECAED83FEB92E2420C1D986B0F73A8B7CC5FC784CF96CF2199D2722F831
      7DBFEE4637814AF0BB332144FD250BD3F89FFFF79B50CF12ACADAD392F939976
      65D8792DCBB21BF00C978B4202E8F7FB0F4AB78B2C5C5FAFD7833880619E80AB
      B6CFA2D01A9916863ED311CA463EAF7C1338054049D91723F0AA93FDF202F6D6
      41DE121B3E0BAB07819C008FC00AFD3E60BA1121C0B0BA8AFBE54589CEEA8A3A
      7EF6A86F092289BB2A8B3E951A45F3AEA823D93705B796BF97F7A1741F05F3F0
      F5373CFB72BCEECEDBF133AF7931FA790F67CE9C711EA6D8B5CC11A8222FE533
      8EC78B820068ADEF63634B5530066008C0B93C014A293CFB9245A028802C0B17
      3117076AB1FAACB1CF7C1383DCB60BE2F3092EE7BF1275448210C0DB19E08981
      AE242C3C2F9E0FA245CE2F2A1A3FA8E3B9C6F7725DD461E5DE82F3043D37FFA1
      802FDB717585FB50CEB90AF814512D3B2E950828E159972EE075AFBA1DAF79F9
      0BB07D611ADD6E17CB67CFA0DD6EA3D7EB954EA26662C0E02F8A02BD5E4F13D1
      33EE0654EBF9C82F5439DFEDBE4FA47CF18B5F3CBBB0B03003548B604484C387
      0FA3D96CA25EAF978C84FC9EBADD2E7EF93D7F8DB57E208B87FEFEE0DAD60592
      01A24D3D62A2C3C01917696B10C3B83EB8389B433CD6F972FC2AD0DB8AAABA4A
      8211F74BD15FD9650C56FEACA3BA32F72D1BEA2A82731C2195D592CB976EB0B7
      8406DC4BE6A7F0DA57DE861F7BF90B71F515DBD0ED76D1E974D0EBF5D0EBF530
      180C82747380D7F939EAB4280A0C060374BB5D9C3C79F2DFFEECCFFEECB5CF34
      1E2F0A0900005AADD6BEB9B9B917B021506604E6C25280D61ADCAE2A867BC7A5
      F378F0E00973161C6017990E014D54062210EDC7A1009BE1628D29818C2B08E7
      53027E95A12F5ED80A658DA392B3477D052017D24ED5C28D7705F2FC637C0D11
      FD2BFB8DB936B72D1911E37128983B9D634EEE2EB146E6A727F09A97DD823B5F
      7A0B9E7FFDD5C8F31CAD560BC78E1D439EE7180C0695D9A5E4B5043FFF5B5959
      E9B75AADFFA77A064F6FB96808409EE78F6AAD5F203D01CCE19910D46A359723
      709827204D535CB57D160FEC7B1C499A215839E78AD80304E86C900E604E19E3
      1B5D3C0145757E1C4D42DA708E0055F6AFBB22FA8A0126E724DB9E2F31381FF1
      D94CBA3CAB92451FD5C42A781F547E06F97D400CDCE0A5C040775561E927375F
      C2D47813AFBCE37978F5CB6EC5ED373F0783C1A012F4F141B312F8F22F3318AD
      35F23CC7F2F232565656DE76F7DD777FADFCD29EFE72D110009B1CE43FF3FE6C
      2ED21FDB6834B0BABA1A186B64915B83B5D640A2CBA23E6075F7F58C7D641798
      15E1AD714F3127AA8CEC63EB81048772974E7456B067028AF9B88F55C04248A0
      AA801F13884A31B5828B5680D187EB5670F600E808AF038E4F15DFC77D0AE252
      7AB4583510F200116A49823B5F76335EFB8ADB70DBCDCF0148A3DD6EE3C48913
      E876BB01A78F8D7B9210F0F7F21F8BFCED761BDD6E774FAFD77BDB873FFCE17F
      AE78A1CF48B9680840AFD77B80A3FBAAF42CA514C6C6C61C85E61D8355ED9E7D
      E902FC29B291E8CF1F58470F1619411AF1BC582A0901A0B490CD1D630F2C8256
      84D7A2AA8218D8219404783C4F6088C12E7EF2216272056797C00CF211C60007
      CE1FF831B6035413CAEF19C17DA6591488E5A660029C5EFDE29BF0E33F721B5E
      FCC21B902540A7D3C199D34BE8743AE8F7FB4E64AFB22155015F72FB6EB7CB76
      8256AFD7FB4C51147F7D2181CFE5A22100ABABABF7172627B743752C09F0BEED
      F8BCC098685CB138879ADC615325FA9B4E61111811877876527290CC8942EE2B
      D503124487EB649610315E6C2BF011C4618294603C47338600BF8288C6BEF0A1
      A08FF7E8C77D56790BAA44FDA14440DE328CC0005A1778D92D3BF013AF78117E
      F4F69BD0A89BEC502B674FA3D7EB21CFF3D84D5729E64B4940023FCF73743A1D
      74BB5DDDED76BF36180C3ED6EBF5FEE6AFFFFAAF9FD1609FF5CA454300DEF296
      B7AC7EE10B5F383E353575D9B0B302006F085CCF0898A609AEBB641E7B4EAE58
      43A004704405583475917D7234A9F3F318B63E30228A3D03AE4A2EECC8F8188F
      1FCD290C8CAB548E0567AEA88FCBBA5280F86E58645DA5985F511F4B2E95DC9F
      ABAAEB01E0961D57E2B5AFB80DAF7ED90B3035D144ABD5C2DAEA32967A3DF4FB
      7DC7ED99CB5781BF4ABC97567D2BE2EFCCF3FCEF8AA2F8F0473EF29123C0D3E3
      E17A32E56221000A70E7055E161B0265A9D7EBE8F57AA8D56A254940DE73D5E2
      2C1E3B7E0694A6FE205E40A0AB42E78FB9ADD0EFCD814012BC5214A812F54B32
      B1BF4F56C939058F61E713DBEB2282E4E71A0DA750CDC92B397EC53C03DA5071
      7F89C3CBB9AC4F10A8A2FE39CFBA043FFDAADBF19A97DF8AED0BB3585B5B43AB
      D5C2E133A790E77909F4C3ACF8520588416FDD80A77ABDDE3FF4FBFDBFFCC847
      3EF250FC26375AB9180880834EABD57A546BFD4A0637509602EAF5FA792509BD
      E6B2057CFEBB7B90A884311C120250D9934724A401D7CA00541CE10D470C04A0
      1D5D1104A612405272A0A89DAD23D116D1E778BE715947DCAE2414C1E4B18EC7
      61D867D9EF3AC0278AA64478D6B639FCDC4FBC14AFB8E3F9B8E6AA4BD16AB5B0
      BABA8A03070E0C75DB0121C7AFE2F40CFC5EAFC7227E2BCFF3CFF77ABDBFBAFB
      EEBBEF29BFB48D5BB63A0150F26FA7D3F98F617A3DD78D8D8DE1D4A953CE1038
      CC1370F5F679902E00A48E9B91F24781051C2E4A04A205D894046BCC50D7950A
      EC0727DDABB01F0912B657042EC8B82E7848944A958B31E0F63CBF0AA9C0DD1F
      D557FAEA45BF250250D18E2DF0F69B4B6626F1B33FFE52BCF2C5CFC34D3BAE76
      A0DFB76F5F89D35745E7C561BA311110A047AFD7FBFA6030F858B7DBFDD85FFD
      D55FAD955FDAC62F5B9900A8E86F72EAD4A907E4B64CB9F71F300B616C6CCC9D
      13302C6C1800AEBD629B3DF29B6B08D0D6AF3F648F809675766A442C391062AD
      2120044079276100742D248E21863D57A54BF82CAB15F15CA3B6C38841A5012F
      BA18E6C6437C4DE57ABE5F7C353BD9C0CFBCEA0EFCF82B6EC3F3AF7F36BADD2E
      565757B167CF1EC7E919F4FCFB5789F755BE7ABE6EB7DB1CDABBB3DFEFFF7F83
      C1E0FD77DF7DF791F2CBD95C65AB1200097EFE977CEC631F7BF4A52F7D692939
      88FC6CCF6B7369C265FE40490CC61A755C3E3F8553ED5E190BD6651704E6C59E
      02D31080DFEE0B2606529790413FFC27260C717D1CF552C5F1DDFD15E2BC9B5B
      5C273B0D870A015A31294274EB30A0C7D714D65BDAD5AC65F8E957DE869F7AF5
      8BF1829BAE43BF9F63656505FBF7EF47B7DB0D38BD043DFF8DDD765C2781DF6A
      B5D87D77AADFEFDF33180CFEF2431FFAD0B72ADED6A62D5B910054813F05903C
      F4D04368B7DB47A6A7A7AF953E7EF6F9F34268341A180C06C8B2AC5205E07BAE
      DE3E87937B8E1A2251CAF74725C66BABE18E002F7D6105E92ACE0EBE4FB4E776
      B16139EEBA6A2B7449FC8E084DA9BF61E27F04FC4A8E1DDF28C61EC6F983F993
      FD43F8F9D7DC8ED7BDF2C5B8EDE61D50D0585959C1C183079CAF7E58804EACD3
      57717B2272C6BC4EA7D3C9F3FC73BD5EEFE31FF9C847FEC1F6532D0E6EE2B2D5
      08C030F0F3BFDAE9D3A7F76DDFBEFDDAAAE420CCE5392270BD24A14A295CB57D
      0EF7EF3E8254C40BF9F52CD8B48AEB78B10BCE1CA9F0C158B1013016F32B5D76
      96324446C7E19CBD7AF75B75DB68BCA19C5DD60982157758C9ED016893CFE027
      5F7A337EF2D577E0475F7C0B5205ACACACE0C8E1836EE38D0CD019F66F3DE0F7
      FB7DB4DB6DB6E27FBDD7EB7DE2F4E9D37F75CF3DF7ACC94929A5D45623025B89
      00AC07FECCFEABAFADADADAE971C2449128C8F8FE3ECD9B3003CF7886307384B
      70510C9026354F20628ECC36804A362DEA1DC82580D8A468095460B0939CB442
      32F09D8839B807AD261ACACE43C5408CFA2B5D0AC2765E5200B71D225510F0B2
      5B77E0675EF352BCFA652FC058B386E5E5653C7EE430DAED76E0AB1F66BD8F63
      F0E3E8BCA22898D3A3D3E9ECEB76BBF79C3E7DFA2FEEB9E79E83F0A94C62250B
      CA2E84AD4208B60A013817F86B00EA77DD75D78BEAF5FA1D9200C4D180009C21
      9025008E0790ED9452B8E68A6D80D6761D8BF5324C7F5D47F4772500B94806E2
      5A52A422C0EB0C817ECF73A958A7952A81683B4C3C2F4D575C9C734391ACAF06
      FE4DD75C8EFFFD67EFC49D2FBB15733353387BF62C4E9D3C8656AB5532E649D0
      9B2E8747E649E033E8DBEDF672ABD5FACCB163C73EF699CF7CE63E0003FB14FC
      435771892D270D6C0502105BFB4B623F80FA1BDFF8C63B6EB9E5963FE8F57A57
      1051A0F3079D298566B30900C18E4000415B22C2F6B969346A9949C2616A8780
      DC7E5725FAF38CABE882D322E4BD0045E27FCCB00D31882A950AEB82299C8BB3
      8BF9C486C3A1E27F858E50A1025C7BC522FEF3CFDE893B5FF6425C71E9029697
      9771FAFF6FEFDB82E3B8CE33BFEE9E9E9E2B06778000880B2F20295E4451A428
      8B922C89944C29B14C474939AED4562A9B6C6A37AECA832B2FD9F2BEED6B1E52
      B5C9566DCA712A55CAC6AB8D25D9A6A5D84A1C792D8B0A455122019200450220
      4100C4650673BF4FEFC3E06FFC7DE6F4604002D40C8DBFAA81EED3A72FD37DBE
      EFBF9D3E271CC6CCF42D29E8AB697B59AE9EFCFA95A5180E873FBE7BF7EE0FDF
      7DF7DD1FA13CFE5E06808132F0F3ECE9903D24735C1E1A6BE06120002E2A5B2C
      F07FFDEB5FDF71F0E0C1EF689A76903A70F8FD7ECBB7977D1D485D82F9C48EB2
      4F83776E6BC5F86C84415234E14D016C804DCD5BC012B52663858ADE7A25DB68
      411621B07BB3F50512CD6D1312908A1D8B4CA16CE5464C31D829FE665644BD0A
      85DDBDED21FCCECBCFE0C5678F62D760AF05FACB97672A72F51CF44E693B19F0
      C9AFCF6432D0751DC160107D7D7DDAD2D252FCECD9B39F00F063B5AD64D87A1E
      656B8093C0436B0D343A0170ADCFC1AF63C5E7FFCA57BEB2FDB9E79EFB6FBAAE
      1FA577944EA7512C16ADB9DB653101C33090CD66A5990060D51A18E868C1B5E9
      25681409948148F4A12D6C4BEA58C82D09652B07717D242314EBFE562BD0E514
      D37690C33978B9A0FC9C34BB74CC3F3B4FB43679F1DB5F791AAFBC701CFB760D
      209148201C0EE3D2A54BC8AEF4C11723F2E5DF21CFD78B293BFAD4963AE9148B
      45E8BA8EE6E666B8DD6EB85C2E140A05B4B6B69EFA933FF913E5F5D75FFFAB1B
      376EDCC5AAA59881BD1D150014ED3FAAC21A68781268640270F2FBAD80DF9123
      47DA4E9E3CF9475EAFF745D33415D2E0D4D5D73A91C412F0F97CD6E020B2EEC0
      745C5F570B4AA5123445AD0C9E8920E7C0B5697CC185A850B02BE730B14644DF
      AC2C53148B0C44655EDE6DAE260A64E63CAB6B2B372B6F532CF4B95DF8EDD34F
      E3ABA79EC4C17D3B9149A75734FDE58A5CBDD8210BB00FA155AD5B2E8BE00300
      5C2E17745DB7867ACFE572D639344D436B6BEBF367CE9C49FFC55FFCC5FFC02A
      E009FC39D8DB94823211AC690934A2342A0138697E1EF433BEF6B5AF7DB3B9B9
      F9F74AA5924A00364D13E974DAA6F565A93E9FCF87BB77EF5A0D4F363EA0A669
      18E86E038A05405305F0CAB43D938A88BE588F697C2ED48BCFE2812AC13E73A5
      BE58C656CADCA2B0C3458D2F6CD8EA596903EBFAA669E21BA74FE0AB279FC291
      43C328150B0887C3B8323A8A4C2663F9F56B05F2AA45F1857CBD1527E013BD72
      6B81AC3822005DD7D5FEFEFEDFFCD6B7BE15FEEE77BFFB7F33994C0CF6B62412
      009100FD70D9A06B0D6905342A0100F6975301FE3FFCC33F3CDED5D5F51F4DD3
      F471F003402A95B2400DACFAFD7CDDEFF7239FCF3B7E1148DBDBBBDAB00A54A6
      ED2B363980243DF378C2A9640AD684C4EFB68C51A12D8A8393F2FA10CA2BDC95
      CAC3AA9793A95FC2CB271EC399AF9CC053470F425381482482CFAF8F23954AD9
      8279B2CE39D580EF94AFA79179788F4D7A4FFC536ED15A203228954AE8EBEBFB
      9D6F7EF39BD9B7DE7AEBDD4824426D885B032209F007FE509040231200A569F8
      4BB281FFD8B1639D870E1DFA5300DB645FFD891600B09A0E24B22013921A8ED3
      77DC1EB78E9ED61016E2E9D5422BEF2FF8C8DCBF5FF51E578F11BD4B85CE2592
      012007B8E0027063828B154074D2F6ACC0C1BF078063FB77E29BAF3E87E7BE74
      041EC385E5E5654C4EDCB0819EB471F92756821E80F4A31B0E7E0E7A1AA88388
      DA69F46622826A9D815C2E97B7AFAFEFCC33CF3C13FFE10F7FF873D8812E7BE1
      36274EF2941B06F8248D46001CFC5CF35B117F00EE575E79E53F1886715C6C68
      7C3B954AC1E7F35598FF7CDD300C2B58C8538262FC60B0AB0573CB4968565F01
      E6B33BF5D8B39181A4ADC9EAAE8B0CD88A7818772D644D56DA8CCBC7EC19E8C2
      EF9D398593271E476B7300B1580C33776E219148581D7438D09CCC7C0AE4C972
      F5A552C91A5483804FDD7C01B9CB46D75055D5D6418893C0EAA335AD197B7D3E
      5FFB9E3D7B5EDBBF7FFFD4E8E8E884FDE1DAFE9BC202D8676E58A5F406B2021A
      8900449454A4FB5C2E97E7B77EEBB71EEBECECFC46A95472C908801A663C1E47
      7B7BBB14D09419F0F97C88C56296352073031445417F773B3EBC7A1B5065E6B2
      BD330F3B98019CA151240D4092D3A76B88FE7D455B94FBF14EE50EC01FEA6EC7
      37BEFA3C4E3DFD38FAB6B5231A8D221259C2F4AD9B8E1D746AC9D78B663EFFD4
      D6E572211C0E2393C9D8AC2F9925C6DF8BCC5A93591E748CCBE552DADADA069E
      7DF6D96F8C8F8FFF553E9FB71D8AD5E09F4800640534A4E627691402E0A619F7
      D1C8F47703700F0D0DB51E3E7CF80F00743A7DF609941B09F5F5A71E7EA209A9
      280A7C3E1F229148D50E419AA6A1BFBBA53C3680C90711154145DBDC7A5C918A
      2F054DE72665D2392A2F25F9D44FAC5023F04D74B736E1B5D3CFE0D43347B16F
      E776C462312C2F2FE3F2E5CB56DA8E83B9FCD32A89D649DBF37C3D05F300C0E3
      F1A0ADAD0D9AA6211C0E3BBA5EB22C8EB85FECE8A5288ACD25E1E7E9EDED7DF2
      E5975FBEF4CFFFFCCFBFC866B314F5A754209100ADABB06B7F87875DFFD20804
      A048D6C5A09F0EC0F8F297BFFC54201078AE542A29B2A0126F80D168D4CA1503
      950D0A000281806576D2B1E2746100D0DFD5B63A5D185061A53B02DA31B0C7CA
      ABE99735CD7F678097FFD9C1E5F7E978EDC51378F9F9E338B86708E9740ACBCB
      CB181919A9C8D557B3AE8055CD2FA6F9E8C31DEAA4532C166118069A9B9BAD7E
      196485AD357E5EF084DAEC0000200049444154B5FDA255201E47C143BA275DD7
      D53D7BF6BC3A3B3B3B7BFEFCF91194C14F9D828808B495FFA484802D0B605345
      96EBAF30FD01187BF6ECE91C1C1C7C0D804F6C74B20053341AAD9A0900560980
      EA39B9012D4D7E04031E647262B4CF741871A7A26B5F2519AC1C6E955BA79498
      F9B6CDF598FF263455C599179FC46F3CFF048EECDF8D42218F68348AF1F1312B
      6D57ADFF3D6D8B96966C500DF2EBF3F93CDC6E37BC5E2F0CC3B0019EFF173FD9
      96AD573C3209913BB900745FE4F2B5B4B46C3B72E4C8CB63636353B1582C8755
      02C8AF2C6296A0620C6576ED868803D43B0188229AFE64FE7B8E1F3F7ED4EFF7
      1FE35F7BC9804F8D93BA9CD23B92F508D434CDD625581628A463FB3B5A706D7A
      716594608AF2F300A0F5C72EB6C09EE25CB754B10247E5B386996F9A265E3AF1
      185E3D751CC70F3F0255315786CDBA6905DCC8C41703A87C5D04BEEC9953BE9E
      FC7AB7DB8DA6A62647D0F3FF3CBA4FCF5D149EBDA1FFE2402E629D8AC7B5F21B
      5455550606068E3EF3CC3347CE9E3DFB0B943B05F1EF4A6469C12D0B60934434
      FD79871F9BE9DFDBDBDB3C3030F06AA954F2C83410D760BC7C696909C160B042
      B373CDE1F3F9AC2EC1DC05A0FD24FDDDADB83275172A1B67C0D104575039BC57
      F984954FA1AA6667E4417D72F83584C39E3C348CAF9E7A12CF1D3F048FA12316
      8B616EF68EA595C5B41D208FDE8BD695A8ED793F7CA03CD06A737333344DAB09
      F8F49FF2F9B5001F802D9E232E22A9F072FE4EDD6EB76BDFBE7DA7AF5DBB367A
      E3C68D3456950D6F7FD552850D25F54C0024FC21F3B49F0BE5AFB88CC3870F3F
      1208048E70C0F3091D3809702DB5B4B484818181D5934BBE10F4FBFD482693D2
      C0113FAEBFABD55E2E05F38AB26041FFD58CB29349EF5426908B48142B647060
      D7767CF5D497F0E2D347100AFA904C26B1B4388F743A5D11C1E7BFCFC9647602
      3E7D5F9F4AA5502814E076BBE1F7FB4153B1D50A7AD10510C1BF5EE01389689A
      669D93165EA6691A344D83CBE5425757D78E63C78E1DBB73E7CEDD4C26E342A5
      E6E7665B434BA31000EFF4C3FD7F5DD775EF8E1D3B9E5355B589039F1A27F9F0
      7CD418DA47A3FF02AB66BDF85D403018C4ECECACD5F0659D4E5455455F670B50
      2C019A9316B7A1BDD2CC77F2D7259BF2B2554218E86EC36BAF3C8BE79F3C849E
      AEB6F26C37B11816EECE589ABE5ADA8EB6B939CFD765F9FA5C2E6799F8C160B0
      42EBDE0B01C82C806A26BF0CF832D0D3A2AAAA95E275B95C70B95CD0340D8661
      B88687874F79BDDEF7583761D122AD1AF96F04FF1F680C02002A3BFE58BDFE76
      EEDCD9D9D6D6F624019C004F8D9C938168052C2D2D59A0764A2BF14020590832
      3760FBB676A8AA62CBF229522B40541E8AFC6B41D907384E62021D2D419C79F1
      29BCF0D463181EEA412A95423C1EC7CD9B37ADF9EAC579EDE8FE9DB4BD2C57CF
      F3F5E9741AAAAA5A51FCFB01BB930B20F3E19D405FCD92E0E0A7815F3919E8BA
      6E9180AEEBD8B66DDBF63367CE1CFFFEF7BFFF4E2A95E28017EDB786967A2500
      998FA5C0DEEB4F07E03E70E0C061B7DBDDCB7D506AECD548C0344D2C2E2E4A7D
      7F6015D8D45B90CE2D9B320C005445415F4708779612B60FFD949500BF629530
      714AE3D518D16F0A7871FAD9A378E9E9C771F8911D48A7D3482693989C9CB4BA
      CC7220CBB4BD087CA7DE79F97CDE0AE8954A25E8BA8E40200097CBB521DADEC9
      02700AEA511D0055412F9AFA946A24ADCF4D7F4E026EB75BDBBD7BF757868686
      CE8D8E8EC651A9F115615D3ECE5C9D4BBD128028621AD005405755D5DDD3D3F3
      2555557559DA49E612F07A343FBBD7EB955A01241E8FC7EA12CC5D0160154C8A
      A2A0BFB305D30B3128DC42A00935A406A30CE02CA82C31F33D861B2F3C7908BF
      F1C2711C3D388C5CB66C82DFBA75CB36A165B5083E37F3C50C89F8FCF817772B
      E6B1E5D76FA4B6979100EF17C04980D703600B2E3A697CD1FCE7C017FFD3D2D1
      D1B173787878E7E8E8E86DC9DB137B074ADF58BD4B23108098FBB79650281408
      854207804A5356E6AF8A8141D33431373787CECE4E4BB30395BD0283C1F2F874
      D4F045594921A1B7AB05A5CB37A12A2AC4B6603233DFB20A6C0924D686EC1965
      A80AF0DC130770FAB96378EAC8235060229148E0CEF46D2B9DB956DA0EA83EE5
      15697FCAD7D3F7F5641E7B3C9EAAE9BAFBD5F6B23A04527A27B26B72F08B6097
      F9FCDC02702200DAD7D6D6661C3E7CF8F937DF7CF37DD61665EDB3E1804F52CF
      04203E6C1E035001B8868686BA0CC3E80050A1E138009CB49C699A989F9FB75F
      44B17F180494DD008A17F0C8B4D817A0AFB3B53CE0A6567DFE3E6BAE4E135014
      99150094CC124E1CDE8B93278EE085A70EC3E37621994C627161DEF6710CFFC4
      96EE69AD7CBD6C61E3E6018065E2DFAF697F3F6420EB19281E2346F739D8651A
      DF69911183AAAAE8ECEC7CECF1C71F6FBE70E1024DFD5591BC8540008D120004
      EA9B0044E1710115803A3434B4C7E572E9DC3C04EC9D3FB85500D8BB85521C80
      7C7B11FCB4DED4D4E4D82598CA0060A8AF6375C4DD1AFDF8D5F840590E0EF7E3
      D4534770FACB8FC3EF35CAD35C45235810402F765A9245EF458B48F4EF73B99C
      15C5A767601886E5D73F486D2FDB47DA5834ED29402803BEA8F165E6BE181310
      EBF27D9D9D9D2D2FBCF0C2F10B172EDCC1EAD7A8952FB241A5DE0940CCBFDA46
      FF696F6F7F44D33485FBE45C43F306CBD37D1C3C0B0B0BB6083FD5E129C1A6A6
      260B744E160000F8BD1EB4860288A5F3B02906937E0A202384819E0EBCF2FC31
      BCF8F41174B5852C5046234B964F4F99082E22B989D68D2C824FFDF069261D32
      F1A9E16F4440EF5EC840564663F9715012F865A05D4BABAF751C271EBA874020
      A0B5B4B49C181C1C7C6772723205FB4021F4624DF64E1A8A10EA9500789455CC
      B9AA00545555B54020B0837AF1F1C13BE8A572608BD163FA18241289209FCFC3
      EBF5962F2658018A521E21581C1C44963ED4751D8FECD8865F5D9E285B08B6A6
      60FF2CB8B3B509BFF9C21378E14B87B1637B97E577CFCECED69CB6E3DBB2B41D
      8FEA13A96432194BBBF97CBE9AC0FE20B4BD6C9FAEEB70BBDD157EBD93E6764A
      F155D3F04428FCBF4834EDEDED075B5A5A42939393116CF5047C20227BB0B6F1
      DABC5EAFEEF1783A89002810C7B779EACE495B168B452C2E2E221008485D00FA
      4F4384D1B944A1BA5F3F751C17C7A691CD17216AFBD6A6005E7AE6719C3AF128
      F6EF1EB0403F373767FBDA4EBC573AFF7AF3F5F4A92D0D82EA72B9E0F1786CE9
      B57AD1F6B27D9471584B7393A6AF460AB28C008F23C8EE83DA4128146AD9B163
      47EFC58B176FC36E85F2B6DA509A9FA45E09808BEC01AB7EBFDF6D184680BF50
      512B8A00E242800580BB77EFA2BFBFDF4AF3899A5D5114048341CCCFCFC3ED76
      DB8E15CFDBD3D98AFFFEA7BF8BFFFD930F7079FC163ADB9A7178EF104E7FF928
      9E78748F955613412FEB95E794AF97053379CF47EA0F601886352EBE0C78F5A4
      ED9D5C00C330A4DADCC9BCAF067A0E7611F4BC8CDE39EDEBE8E8D00707071F05
      F0EFD8B2001EB8903B605B42A1905FD77537BD54DB0155800FAC9AF63468C8C2
      C282633D3A472010C0CCCC8C945CF8754AA5127A3A42F8CE7F7E0DC160D0228C
      4C266399F77C165B27D0AFA5E965F9FA6C368B542A85DEDE5EF4F7F7435114DC
      B871E3BEC1FE20B4BDECBF6118520270023B9182E82EF06DF1DA047CDE2EF802
      80DCA583C160508FC7E34E1F0535643AB09E09C044E51880D67A2010F06B9AA6
      72F0D30B1385978B75144541381C760C00928442215B9760591D0096E94DF974
      BA1EEFA1E894B6A37A32E0CBB43DA5ED92C9A46559747474A0A7A7074079165D
      99B9BF5E227810DADEC9022097C509EC62B9A228362258EBFAF4CEC56DFE5FD3
      340483C1A1C1C1C1E0E5CB9793A86205284A638C034052CF0440C299D572075A
      5A5A5A545555642F8ED6F98BA475DEE8C90A900D0EC24555558442215B508E83
      5F660DD0A7B5BC4CAC23C623AA019FB43D1F428B0F9A49D2D4D464911975E469
      046D5FCD057002BB0874AEE5B9892F9E5BD60E644A82FEAF7CE0D4A6AA6A1380
      79C83F0D6E48A977029031A902001E8FA785027F22D8C5FF7C34D942A150410C
      141D77CA04D075A84B30C51B38690072908BB256BE5E1CCD882C070EF6442281
      6C366B6532B8048341EB1A14B4DC686D5FADEEFD9288E802500F44311DE8B4EE
      748D5A81EF44046EB7DB532A95F87C82A2555A715C23483D1380EC015BFF5555
      F599A6A970739C343AEFC8222302BE4DC72C2C2C585FB4F13A9C0882C1A06D52
      11278BC149DB57CBD7CBE6BA23624AA55216018843638BE2F7FB2D0220B2DA0C
      6D7FBF24500DA8B44E1600110069766EEAAF753E7A56E276ADC0A7FFBAAE6B3D
      3D3DED972F5F16270E51511E27702B06F000C4EA1F90CD6655D2CC1C5C8AA2D8
      004A2F9FC0CEB7A9BEA228989D9DC58E1D3BA0EB7A857F4FEB4D4D4D88C56270
      BBDDE59B5903F8A2B6AF96AFE75D7245139FE6BCA37B711202055DD749EB6F14
      196CA4B697FDA77E001CF4B2283E0FE2C934BCA808F8F3129FA71319E8BAAEF8
      FDFE2ED460013492340A0198E27A2291C8944AA5F28C9F587D71BCD38C5343E0
      0B11C3D4D4148E1F3F6E8D12CCCF41C06E6E6EC6E4E4A4ADC311DF0FC8F3F51C
      F04EF97A023B07BDF85B9C84EFA3CC06807569FFFBADB3515A5F2400B200A85C
      E6DBCB16AEF1F933921101B03AAA90EC999AA609B7DBADA8AA1A822423C50F43
      8359018D4200804002854221CEE785036003E55A0D836FABAA8A582C865FFDEA
      573871E284A5E1452B20140A5903891290B9AC95AF17037ADCB4E7C3648BE204
      7EB15CD775EB9EA803D4469BFE9BA5ED6584A0EBBA631F060E707E1C6D8BCF68
      3D1680B8AD28E55E89B95C2E0079F06F2B0DF880C47AC0C562319E4EA74D9433
      2F30CDD5EEC064C2ABEA6A975F59A3115D81AB57AF62717111478F1EC5B66DDB
      E076BBAD63CD95DE80045E0096E9C95D1059BE5E1C428B3AEA10E885D9682CA9
      15F8B41D08046A228007A1ED6B0579B57D344807276CD1DCA77519986544C0EB
      D7F24C494CD3443A9D365009FC869646200091554B00B0B8B8B8944EA78BA552
      4925BF5D8C091028A961F1D8806809902BB0B4B484B367CFA2A3A3C32202C330
      ACF3040201E472395BAC8008C2295FCF87D022E067B3D99A01EEB44FACE7F3F9
      6C71075990AC5EB5BD130170939F7E33277211CC4EE0965900B56CD37B5FF928
      8BCF03207301C0F637843550CF04201B6985CA8A894422914AA5F2A669EAE2CB
      95050501FB97823257806F2F2E2EE2C73FFE313A3B3B71ECD831F4F4F440D775
      343737636666C602BD75B3CCECE7F97A4ADBD1BA9841E072AFC0A7329E01E081
      B3CD06FA46805D56460140FE5E9CC0BC16F065CF6D3DDB2B7199341E82C01F97
      7A260051F8F04B66A9542A84C3E1782A95F279BDDE8A8019B708A82170F09119
      4F8D8DCC70B1A12D2C2CE0473FFA113A3B3B71F4E851F4F6F6627C7C1C9AA6D9
      F2F0A4F179EA8E7AE871B76423812F02C1E3F158D7A22EB4F5A4ED65A0775ACF
      66B3482412B6639D7EB7F85C78DD6ACF6D3DDBC96412F1783CEAF8A21A541A81
      0044ED5F0250CAE7F3B9582C7627954A75B5B7B70390BF38D11510AD01B1F1F1
      8597131174757521180C221C0E5B9D548AC5A2CDCCA76FEDB985E004F25ACAD7
      023EFDA720A0699A56F0AC9EB4FD5AA02F954A0887C3D6DC02D4DB8FCB46FAF5
      6B6DF3B2582C6626128905545AA50D2DF54E0022F8AD259D4EA793C9E478381C
      3ED2D7D767F9FEC06A63906D730B807725E5FD04AA2DF3F3F3D65461649E52BF
      FF5C2E57BE59A1FF0089784F327102BE6C5D348779ECA39AFFBF9140BF5FB35F
      51142C2F2F5B19111A9093E22E244E5A7DB3810F00854201B158CC4CA7D3CB2B
      45627B14A561C8A1DE0980C4A6FD0114575C802BD168B494CFE755B1C100B048
      8177EC1133043C4B205A027C5DD691481C81979310976AC0AF46044EA0E7FB69
      9B322024B5A600379204D653168BC5904AA52C33DF300C6B0876A76750EDB9D4
      F26CD702BAD3763E9F472412296632992548FAA43849237C13D4080420B2AD45
      020B0B0B63737373A968341AE8EDEDB5CC6E5923124980BB05140FE060A76365
      B1016AC8FC385A77EA23508BF6E7D7E1DB62B9CC32A138C846FBFFF7ABF5F97A
      3A9D463C1EB7A65AD3751D7EBF5FFADBC567B4197E7DB56D7E3FF1781C0B0B0B
      A9542A15C76AFB9359A70D27F54A007C48305E66811F40311E8F47E2F1F8CCFC
      FCFC307703AA014D0422FF0C98070615A59C1A748A0B88F5F8F9F827C3D6CD0B
      2943516A0972C94888D6790090C6D27BD0DADEC9AF5F5A5AB27A37D210E34E9A
      BE5E80CFAFBFB8B8884824B294CFE733A86EFE371C09D42B019070ADCFD78B00
      8AF97C3E1D8FC72F4E4D4DEDDEB76F9F621886E59F03765F5C6605F0062B6BD4
      AABA9A1D101B37590A742D4AFF511DB157A0930550ADC1CB34BD1370DD6EB775
      4DFA86FE416BFB6A7E3D0D33EEF45BF9B310AD20D973DA68A03BD529140A989D
      9D452C169B2C954A05D82D8086D6FE40FD1300B0FA706DDA1F40A1502864C3E1
      F047C964F26B77EFDEF50C0E0E5698F72209907022A0C6CB012CA60929062023
      0D00D6B1321210DD015164F726D3F43230D3421F019966794AF3FB0D02AE07EC
      B41E8FC72DBF5ED3341BE845AD2AFE7ED97F717D23B6D753475114241209DCBA
      75CB4C2412A3586D7FA252021A94041A8100804A4BC02281DBB76F8FF6F7F74F
      4D4E4EEE19181880AAAA157D02B8385903B42D6A72D1F47702265F4412905D47
      BC277E6F747EA0F679EF38E1F87CBE7BFE0E60BD0490C9642CE0974A25B8DD6E
      9BA65F4BABD70AF6CD00FA5AC7A86A39FD3B35355588C56257506E7325F6BFA1
      C10FD437018871006EFE97001400E433994C7C7979F983A9A9A9E1858505A5B7
      B7D71A2147F68249B87540A4C1FD74F19362AA272304EE2E3891001F0BC02950
      49D7A8A6B139F0F9E838BC0B30F9D89BA5ED295F9F4EA7AD6ED1D46B4FF69BC4
      77F1A0FDFA7BB5025455C5CD9B37313F3F1F89C562D3586D7B047E4E020D29F5
      4C0024B22C401165022800C8CFCDCDFDBF8E8E8ED7C6C7C743DBB66D83CBE5B2
      99F0D68904E01109881F12D1713220C862011CF8DC55A034232718D9BDC8B43E
      BFA6D3E8379C0888F4E8B76C86D65F5E5EB67A39925FEFF7FB1DC94C7CFEF508
      7CA7324DD3100E8771FDFA7564B3D92BC9647219AB96A71807E0D25084D00804
      004852805825817C2C169B8BC562E7A7A7A74FDEB97347191818B08D9307549A
      FEB2726AA0A20540DA9C8000404A067C5D2402221B997B22231545512A802F4E
      6A41E58A521ED60C00BC5E6F4D1F01D5AAF5E3F1B865E66B9A6633F16B01B7F8
      5F5CDF8CED7BADC3CB344DC3C4C4042627270BB158ECC362B19847B9BDC908A0
      610381F54E004E6E80CD0A482693D1999999B743A1D089B1B131EFE0E0205C2E
      976DFC3F126AA83222A07202952C404800143B0671E05076804601E616809802
      74B232F8873CBCC7A26C3C7C9A1918287F127CAFC380D13A7DC044138A5030CF
      09D4B55A00B2BA4EFBEE65FB5EEB8865AAAA229D4EE3CA952B88C5628BF3F3F3
      17007002A040E0560CE00189CC05B02C8052A994999C9CBCD4D7D7F7E9F4F4F4
      97AE5DBB8603070E581D4E007923750AC8F15E7DDC1A1035BB93F6E724406E00
      1F2044BC1E3F07F7EBF97F0E7CBEAEAA2AB2D9AC452E4D4D4D35B9006259A954
      42241241369B452E97B3BAE3CA865DBF5FE0CB8EADB5EE461EE354E672B9303A
      3A8ACF3FFF1CA954EA7C2412B90B3BF8ABB9000D258D420080731C20BFB264E7
      E6E6DE6A6A6A3A343232E2EFE9E941737333D2E9B475029935E04410628722F1
      3B02D1DC978196BA091309880440E7E0C4219E4736D38DB8D004A7A669A2A5A5
      655D3180E5E56564B3592493492B9827FAF5F4AC64CFF17E80BF19DBF75A8784
      E229972E5D4224124984C3E19F9BA69983DD02700A02361C19340201703740E6
      02E401E400E8D3D3D39F767676FECAED769FFAE4934F94975F7ED99AA4838B68
      EEAD450232FF56A6F1A94CE602F03C3D17D1F49701DDC90DA0753E7E607373B3
      630C80D613898435A188A29487DF0E06831560A6FB139F9B9305E0F48C1FC4F6
      4695294A7936A5B1B1312493C9D1D9D9D951AC825F8C01000D6E053402019070
      7FABC20D0090CB6432D1E9E9E9370381C0D189898996AB57AF62DFBE7D88C562
      8E3E3F602701711F2702023175F5252D4FE7E000A6CF59B915208B01C8A2FD4E
      C13ED11AA0FFE974DA3A6F2814926AFB5C2E6705F44AA5125C2E974DD3D7A2D5
      657565C73AEDDB88ED7BAD534B99A66948A5523877EE1CE2F178361289FC3495
      4AC520278086063E4923110049352B203B333373A5BDBDFD2D8FC7F3FB172E5C
      50DBDBDBD1DADA6A05B49C1A8FAC9C9BFE627A908F2B208BFA130988C37ECB5C
      0099FF2F5BE7DBBC3ECF2CF039114CD344341AB5F9F534DDB613E06B35FDD7DA
      6E24E0D3B6AAAAF8ECB3CF30363686783C7E716666E66394DB15B9005CFB6FF5
      047C80426E80CC0A20027001C8160A85D4CD9B377F1408040EEABA7EF4E2C58B
      78F6D967E1F57A1DE301328D4FC283819C400878623C80B43E8D37C0FD7F6075
      AE000E3899FFEF047E4E16742CB72C344D43341AB56613A22EB93E9FCFD19511
      9F01FD3ED9F359EFF666007DA3CD7FA04C9CB3B3B3F8E52F7F897C3E9F5E5858
      38BBBCBCBC8032F8790070CB02A803E104A0A2FC8272003400D9E5E5E5B9A9A9
      A9EF0583C1BD535353814F3FFD14274E9CA898AFAF1A0970E1A943DA4FA3EED2
      3A8191DC032202DEC148F689B0184B10B5BB480A3CE548F54E9D3A65ADDFBE7D
      1BAAAA5AA097015C4604FC7E64FB64CFA51EFCFCF580DCA9AECBE5422E97C3CF
      7FFE732C2F2F9BB158ECDCEDDBB7CF9BA699C5AAF6172D80860EFE91341201C8
      AC00FA2EA08032F88904B4A9A9A9CB1D1D1D6FB8DDEEDF1F1D1D55BD5E2F9E7A
      EA292C2E2E4A81285B17EB702B805B0A047C1E1F203F5BD4FEB29E863237801A
      A6682188F51545B1BEA9A772FE3BD602773517C8E999D403F0EFB78CCAE95D5D
      B8700157AF5E453A9D5E9C9E9E7E63A5E75F1676F08BDABF61814FD24804200A
      59010ACA044013366828FF2E6D6C6CEC9F0281C0B0CBE57AEAE2C58B8AC7E3C1
      638F3D8670385C31B1A6D3BA53F761AA275A03B49FC880F7D3178987FBE2D53A
      EF54033F07B153C4FE5E815FEDB96CC6F6BDD6594F192F5794F2841FA3A3A3F8
      E52F7F8942A1505C5A5AFAD1C4C4C408CAE097A5FF1ABEFF3F97462300A75880
      8C04D4783CBE383535F5BADBED6ED3346DEF279F7C82402080E1E1612C2E2E56
      CD0CD036D7FA24DCEFE65A84EAD0BAF87D81F82190A8B19DC04FD714C12E1200
      BF67D96F7232FD9D7EFB46D4AD65FB5EEBACA74C56EE76BB313B3B8BF7DF7F1F
      F178DC8CC7E39F8E8D8DBD6D9A661A76ED2F8BFE3774F08FA4D10800B093009F
      A8815C013E77BB76EBD6ADCB8661FC9DDBEDFEB6CBE5EAFCC52F7E0197CB85E1
      E1612C2C2C483F1A9201AA9A2540DD8779BF01023E2FA7E39D3E38A232D96497
      7C9B1FCBEF87CB5A16806C7DBDDB9B01F407017C00300C03B1580C67CF9EC5FC
      FC3CD2E9F4C2C4C4C4DFAD04FE48FB8B01C0874AFB038D4900A2885680026605
      148B45F5DAB56B1FE8BAEE73BBDDFF55D334D7FBEFBF8F42A180BD7BF7221289
      D886F422111B0D0F048AE092019C5B09622A919F5F04B46CA17A32B3DD49E33B
      D5E5F220CDFBCDB402D65BD7300C643219FCEC673FC3DCDC1CB2D96C7A6E6EEE
      FF8C8F8F5F0440DA5F34FF651FFE343C19342A01C85C01EAEEA7A2FCE214AC92
      817AF9F2E5F7745D0FECDCB9F35B9AA619E7CF9F87A669D8B3670FC2E1B09404
      C4ED5AAD014E04D508821F2FD3E65CE3F37B590F11D4F29B9CF63D88EDCD28AB
      566E1806F2F93CDE7DF75D8C8F8F2397CB15171616CE5EB972E52C800CCAE027
      02A0CE3F0F9DEF4FD2A8040054BA022A5653830AEC04A000504646467EA2EBBA
      6F6868E88F354D53CF9D3B07D33471F0E0412C2F2FDB7AD4ADD725E0E5B69B34
      EDC385CB00E1640D38D5DB08E0DF4FDD7BD9BED73AEB295BABDC300CE47239FC
      CBBFFC0B3EFFFC73E4F379736969E9832B57AEFC632C165BC22A0188E0172D00
      E02121834626002E3C1EC03BFE1309008092CBE5948F3EFAE81F555555878686
      FE5855559C3F7F1EB95C0E478F1E8561188846A355C14A2273097879C50DAED1
      1579ADEB88E5D5802FABEBB4EF7EEAD6B27DAF75D653B656B9AA96E71D48A7D3
      78E79D7770F3E64DE4723944A3D1CB972E5DFAEBB9B9B96994C14F0420E6FDC5
      0F7F1E0AF0038D4F004EE30560A53CCFD62D32F8F0C30FFFC134CDCCCE9D3BFF
      93AAAADE919111A452291C3972049D9D9D884422B629BBD76B0D88524D7B8BF5
      C4FA6279ADE7586BDF461FBB51C7ACA7AC9672027F2C16C37BEFBD87A9A929E4
      72392C2F2F5FB972E5CA5FDFB973670A65BF3F834ABFFFA10CFC71697402002A
      E301A22560033FC9279F7CF2B6A228E6CE9D3BFF485555FFD4D414B2D92C0E1D
      3A849E9E1E4422116B941DA03A389CAC01715DF61D40ADE796ED6B643FFF7E41
      BE16E102E5EEBD814000131313F8E0830F303B3B4B9AFFFAC8C8C85F8E8D8D8D
      6015FC6BF5FA7BE8B43FF0701000E04C028EF573B99CF9E1871FFEC034CDECF0
      F0F07F511425383737877C3E8F783C8E471E79048944028944625DD600AD571B
      88643DE712F7553B6E3DFB1EC4F66694D552AE28E57912DC6E37AE5EBD8AF7DE
      7B0FB95C0ED96C16E170F8CAE8E8E8FFBC76EDDA088014E4813F71D49F8712FC
      C0C3430040F5CC8058CF7A91E7CE9DFB713E9F8FEFD9B3E70F144519525555B9
      74E9121289040E1D3A848E8E0E44A3D19A03847CBDD6065CCDCF773AEE8BF4EB
      EBD1CFE7EB3E9F0FA669E2A38F3EC2B56BD7ACC95B9796963EBB70E1C25F5EBF
      7E7D0C65F073EDCF3FF97DA8FD7E2E8A18B5AE07A966DE892298D5FC4005AB19
      006D65D151263D832D5E45517C7BF7EE3DF8C8238FFC6E4F4FCFD3814040F5FB
      FD686B6BC3DEBD7B3134348468348A6432896C362BBDC75A486123EAAD67DFFD
      D4AD65FB5EEBACA76C3DE58661201008607676161F7EF82166676769B4A3FCDD
      BB77FFFDC2850BFFEBF3CF3FBF8E32F065A67FB52EBFEB024A3DE24A260F1501
      AC1CBB1609B8502602F7CAE25959BC03030383070F1E7CB5BFBFFF3742A15030
      180CC2E3F160707010C3C3C3F0783C88C56248269335F52074FA4D5FB479BF19
      40FF2281EF72B9ACCF9D47464670FEFC79E4F3791AC2DCBC79F3E63F7EF6D967
      6F4D4D4DDDC22AF8B9D9CF3FF6210200EE43FBD723AE64F2D011C0CAF16B9100
      59034402065648A0A3A3A373DFBE7DC7F7ECD9F3CDF6F6F6A16030A878BD5E04
      8341ECDEBD1BDBB76F47A954422C16433C1E9778F8870900000CAD49444154DE
      EF83047B3DFAF9F70BF26AEF9FEFA308BF61180887C3F8F4D34F31333363CD5D
      B0BCBCBC383535F5E6D9B367FF0176AD2F4BF76DA8DF5F8FB892C94349002BE7
      702201FEC520B90464091011780E1F3EFCE8C183077FB7ABABEB704B4B4BC0EF
      F7C3EBF5A2A3A303DBB76F4777773772B99C35438E78DFBF8EC0BFDFB2F594D3
      A424A55209E3E3E3B87EFD3AA2D12881BFB8B0B03076F5EAD5D72F5DBA743E16
      8B45B00A7A4AF7C906FAD8B0A05F3DE24A260F2D01AC9C47240122002201994B
      402460F4F5F5F53CFAE8A3CFEFDCB9F3ABEDEDEDDB83C1A0EAF7FBE1F178D0DD
      DD8DAEAE2E6CDBB60DF1781CE170D8363EBFECB734825F5FEF7EBEA669686A6A
      826118989898C0E5CB97B1BCBC8C7C3E6FCD463C3939F9E6850B177E303E3E7E
      13768D2FFAFB9BD6D3AF1E712593879A0056CE2523017207B8354096008F0D18
      003CC78E1D3B74E0C081577B7A7A9E686D6D6DF6FBFDF0FBFD080402F07ABD18
      181840676727969797AD8137F948C45B01BE8D017E281482CFE7C3E4E4242E5F
      BE8C68348A7C3E8F6C368B542A85A5A5A59BE3E3E36FBCF3CE3BEFC21EE4A345
      FCBC77D33EF1AD475CC9E4A12700764E3A29FDB77D360C7B96805B030600A3B9
      B9B9F9E9A79F7E7ED7AE5D2F757676EE6B6E6E3688003C1E0FFC7E3FFAFBFB11
      0A8590CD66118FC7118944A028CE7D029C7EF356806F55DC6E379A9A9A2CE07F
      FAE9A716C1663219A4D36944A3D1F0CCCCCCAF2E5CB8F083B1B1B19BD96C3609
      7B849F77F01123FDF71DF093493DE24A26BF3604B0725E1909F0B8802C366023
      8203070EECD8BF7FFF93BB76ED3AD5D9D9B9BBA9A949F1FBFDF0F97C70BBDD68
      6E6E463018442814826118585A5A422A95B28DDDDFC87EFE6607F868F1783C08
      0683D0340DB76EDDC2A54B97AC015673B91CD2E934E2F1787E6161E1EAF5EBD7
      DFBE74E9D2F9E9E9E905C8CD7D27937F53C00F6C11C07DC96611C0CAB9ABC505
      442210DD023700435555CF134F3CB177FFFEFD270607075F686F6FEF0B854208
      0402F0783C300C0314346C6D6D856118C866B348241288C562D670614EBFB91E
      817FBF656B95EBBA0E4DD3AC5C7E369BC5AD5BB770F3E64D944A25E4F3790BF8
      A9540A9148E4CECD9B377F7CEEDCB99F4D4C4CCCC20E7A6EEECB527C62271F60
      03C10F6C11C07DC96612C0CAF99DE2024EB1019D2D6411B8BBBBBB5B82C160D3
      C993275FDDB163C70B6D6D6D1DA150C845E0F7783CD66CBA8661C0EBF5C2ED76
      239148209BCD221A8D02404D23156FC6F6BDD6594F59B5724DD32CC274B95C70
      B95C88C562B873E70EEEDEBD8B62B18842A160013F994C221A8D466EDCB8F1E6
      BFFDDBBF9DBD75EB16697C023D37F70B6C719AD19764C341508FB892C9AF2501
      B0EB547309C441466544E006E0F6F97CFE6DDBB6B5BEF2CA2B5F1F1C1C3CDED6
      D6D6D3DCDCEC0D0402F0F97C5623A7B9F73C1E0F5C2E17BC5E2F4F5D2197CB59
      43893D8C013E1AEA8C52785EAF17C56211C96412F1781C8B8B8B88C56216F0B3
      D92C07FEF2E79F7FFE4F6FBDF5D69B9148240639E879A71E59A0CF66F29BA669
      AEA7ADAD47EA115732F9B52680956B55B306B84BE01423B091C1B3CF3E3BBC6B
      D7AEFDBB76ED3A3E3434F425BFDF6FF2F4211181AEEB5055156EB71B9AA6C1ED
      765B33F82493496B0AAF7C3E6F05121B29C047FB4CD384D7EBB57E37CD381C89
      44B0BCBC6C915F3A9D46A150B0A2FA64EA87C3E1DB6363636FFDFDDFFFFDDB58
      053B5F08F8A2C6E77E7EC5441EE64AC3D922803ABCD10749002BD71349006023
      09C1393E20B30A745555DDFBF6EDEB1E1A1AEA7DF2C9275FEEEBEB3BD8D2D2D2
      110C06F5603068B9076411F0B9001445B1A6002F954A48A552C86432C8E7F348
      A7D3501405B95CAEEA7C86B56CDF6B1DA772BA5F4DD3E0F57A2D93DEEFF7A350
      282093C958B3102F2D2D5971907C3E6FF9F72BE9BC6232992CDCBD7BF7D2952B
      57DE79E38D37DEC72AC865A0E7917D1EE413CDFD0AF057FB7DF72BF5882B996C
      1180FDBAD58840D69DB81A19588470E6CC9947FBFBFB078786860E0D0E0E3E11
      0C068D4020E0E6B1026E15D05C83247C9EC062B168590AD96C168542C19AA28C
      CF4044568338B5D9CAEF94FD76C76D3A96404E5D704DD3B4B43A593386612095
      4A59DA3C168B591DA4287D572C162D4D9FCD6691C964CC4422118F46A38BB3B3
      B39F7EF6D967EFFFF4A73FBD04BB59CFD709F83253DFF14B3E53D258B608A00E
      6FF48B2280956B8B1797B905B6F907B0321109AA90415353931780EBF4E9D3FB
      0F1C3870A4A3A3A3BFAFAFEFF04AACC0F0F97C5690901301179E395094D5B908
      1545B13A1E65B359288A824C26034DD390CBE52CAB81CF53A0280AF2F9BC354E
      9EAEEB5094F2D4E68661A0582C5A9179D334611886754D8FC763111405E94CD3
      442E97432A95B2CE4393A3964A25E47239AB2EE5EF53A9542E1C0EDF585858F8
      FCCE9D3B5746464646CE9F3F3F057B049F035E067C31AD274BEF49C14FCF7133
      A41E7125932D0270BE87F51081182B2042A058018F1BE8005C070F1EEC686A6A
      F2BFF4D24BCFF6F6F6EEE8EEEEDED5DADADAE5F3F9DC5EAF57259F994F0F2E1B
      1A9CB4BD8C1CC8240760819FCE417316140A056B0A3300B6998E696663A00C74
      B22E683F011C00F2F93C4CD3B4343C1100592A2BE49049A7D3856834BA383939
      F9C1C4C4C4C8DCDCDCDCD4D4D4FCD4D4D432EC20E7917C276D2F025F16E17704
      3F7F8E1B2DF5882B996C11C01AE2E0168844C003864E64E0725A8E1D3BD65528
      14D493274F1EEEE9E9E9EBEEEEDEDDD5D5B5CB300C7730186C76B95CA661180A
      1182385928EF40C3EE5B3A1F012F13838B548FAC0471E1539D9366E780A74E3A
      2B802F65B3D952369B752D2E2E8E87C3E15B4B4B4B53939393E3DFFFFEF73F06
      50F0F97C662A95CAC01EC01397222AF3F8F70D7CFE9C3643EA115732697802E8
      EBEBABBA7FADA9B7692160F1FFB4BCFDF6DB326B80FECB884074114432E08460
      2389EDDBB7076EDFBE9D7FEDB5D78643A15070E7CE9D3BFAFAFA8683C1605B7B
      7BFB90AAAA6620106871B95C455DD735BA5F3E953827044E0CD5528B22D82948
      C7B53E019EB43B69F8157F3E9DCFE7DD894422BAB8B8783D91482C86C3E1998F
      3EFAE8DFE7E7E7A3AAAA163EFBECB379D835B908F46AA097F9F7D2FEFBDFFEF6
      B74DF1FE4502A3FFDFFBDEF7AAB69F7B957AC4954C1E7A022073582401910038
      11C848C0E572E18D37DEA885089C5C044E044EA420B31CB41D3B763401508E1E
      3DDA170A859A7A7B7BB77577770F0683C1D65028D4E776BBDD1E8F276818865B
      D775DDE572E9AAAA9AAAAA2A004C97CBA5288A622A6591128204FC663E9F5756
      C06F964A25259BCDA64BA5923B9BCD6662B1D85CA15028C662B1B970383C9B4C
      2697EFDCB933FDAFFFFAAF236D6D6DFACCCC4C74666626093B90457057D3F0A2
      A677D2F6B606FC677FF6672627300E7619216C11401DDEE8461200609F795724
      005555C1B5A8B82E5B5E7FFD75D90DF2AC016D8B190402BED8E390AF8B2E84B4
      4E4F4F8F6F6666267FFAF4E9BE858585DCB163C7065555D57A7B7BFB0094BABA
      BA06F2F97CA6A9A9A9535114B5A9A9A93393C9C43C1E4F886ED8E3F184D2E974
      C4E7F3B52493C925D3341597CB652493C9255555F5582C76379BCDE64AA55261
      7E7E7EDA344D331E8FC73EFEF8E3F18E8E0EFFC4C4C4FCC58B17C33B77EEF4DC
      B871230EA0A8699A592C0706644BC9A1AC844A4D2F0BE8494D7D00F8F33FFF73
      53A6E1C57571FB6FFFF66FD7683DF726F5882B99FC5A100099C5A2EFEC6401AC
      6509F0E56FFEE66FD6631538B90A324B41B62EDBB6CE170804F4442251EAEEEE
      F6CECDCDE5868686FC131313E903070E840028B3B3B3E963C78E757DF2C9278B
      CF3CF34CDFC71F7F3CF7E8A38F762C2E2EA616161652BB77EF6EFEC94F7E72FB
      E4C993DB2E5EBCB8100E87737BF7EE0D5CBB762DE6F178944C26530060329073
      ED2C03B1A8D19D805ECDBCAFFA99EE77BEF31DB39A865F8B10BEFBDDEFAED97E
      EE45EA115732697802A823A96615AC45069C1064E4504B99783EDA16AF2FBB3F
      B11188C01341C9C12A82772D70CBC0EEE4D33B01BFFE1AAD20F5882B993C4CC3
      827FD1C2DFB80C5826DB474B11D55D0699D5E0544F3C4604BD48464EBF41BC67
      A745065E27603B11C87A40EF54B625F7215B04B039C2C1CEB765FBF97A0976A0
      CAC8A19A3501493924FFC575F11E9D00B9D6C2FD752790CBBEC1DF02FD17245B
      04B0B9528B5520829283559CE918926D0E7CD9B6785EF17E64F74ADB32521001
      2C0BD2396D573B6FB57BD9924D922D027870222303B15C564FA6B5D75B5E6DDD
      E93E9D40EAA4B19DC05EED5CB2EB6EC903942D02F862446CECD55C856A5906B1
      4CB65D2D38B9D67DF1B2B50271F712B0DB02FD172C5B04501FE24408B27D627C
      41945A357DAD522BA06B01F316E0EB4CB608A03E450694B57C7659F946E553EF
      05B85B606F00D92280C6112740D5E2CF6FA66C01BD81658B001A5F6A05E07AAD
      812D60FF1AC8FF07E480BA941880BD010000000049454E44AE42608228000000
      8000000000010000010020000000000000080100000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000001000000010000000100000001000000010000000100000001
      0000000100000001000000010000000100000001000000010000000100000001
      0000000100000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000001000000010000000100000001
      0000000200000002000000020000000300000003000000040000000400000004
      0000000400000004000000040000000400000004000000030000000300000002
      0000000200000002000000010000000100000001000000010000000100000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000100000001000000010000000200000002000000040000000400000005
      0000000700000008000000090000000A0000000B0000000B0000000C0000000C
      0000000D0000000D0000000D0000000C0000000C0000000B0000000A00000009
      0000000800000007000000060000000500000004000000030000000200000001
      0000000100000001000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000010000000100000002
      00000002000000040000000500000007000000090000000A0000000D0000000F
      00000011000000140000001600000018000000190000001A0000001C0000001C
      0000001D0000001D0000001D0000001C0000001B0000001A0000001800000016
      0000001400000012000000100000000E0000000C000000090000000700000006
      0000000400000003000000020000000100000001000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000010000000100000001000000020000000400000006
      000000080000000B0000000E0000001100000015000000190000001C00000020
      00000024000000270000002B0101012E0202023003030332070707350A0A0A38
      0B0B0B390C0C0C3A090909370505053604040434050505320101012F0000002C
      0000002900000025000000220000001E0000001B00000017000000130000000F
      0000000C00000009000000060000000400000003000000020000000100000001
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000100000001000000020000000400000005000000080000000B00000010
      00000014000000190000001E00000023000000290101012F0808083713131342
      26262652434343676060607D78787894888888A7919191B29F9F9FC1A4A4A4C6
      A7A7A7CBA8A8A8CCA4A4A4C89E9E9EC5979797BC8B8B8BAC7979799967676788
      4E4E4E71262626581A1A1A4A0A0A0A3B050505330000002B0000002600000020
      0000001B00000015000000100000000C00000009000000060000000400000002
      0000000100000001000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000100000001
      0000000200000004000000070000000A0000000E000000140000001900000020
      000000270202022F0B0B0B3A252525504F4F4F717B7B7B999F9F9FC2BABABADD
      CDCDCDEED8D8D8F8DFDFDFFCE5E5E5FEE7E7E7FFE9E9E9FFEAEAEAFFEBEBEBFF
      ECECECFFECECECFFECECECFFEAEAEAFFE6E6E6FFE3E3E3FFDEDEDEFFD8D8D8FE
      CFCFCFF9C4C4C4F4B5B5B5E89A9A9AD3808080AD4E4E4E7B3131315D0E0E0E40
      0000003100000029000000220000001B000000150000000F0000000A00000007
      0000000400000002000000010000000100000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000001000000010000000200000004
      000000070000000B00000010000000160000001E00000026020202300F0F0F40
      3434345F72727297A5A5A5CCC8C8C8ECDCDCDCFAE6E6E6FEEBEBEBFFEEEEEEFF
      F0F0F0FFF1F1F1FFF0F0F0FFEFEFEFFFEFEFEFFFEFEFEFFFF0F0F0FFF1F1F1FF
      F1F1F1FFF1F1F1FFF1F1F1FFF1F1F1FFEFEFEFFFEEEEEEFFEDEDEDFFEBEBEBFF
      E8E8E8FFE3E3E3FFDDDDDDFFD6D6D6FFCECECEFFC3C3C3FEB3B3B3F29A9A9ADC
      6C6C6CA44141416E1515154702020232000000270000001F0000001700000010
      0000000B00000007000000040000000200000001000000010000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000010000000200000004000000070000000B
      0000001100000018000000200000002A080808382121215769696995A1A1A1D7
      C3C3C3F3D9D9D9FEE7E7E7FFEEEEEEFFF0F0F0FFEEEEEEFFEEEEEEFFECECECFF
      E4E4E4FFDEDEDEFFDADADAFFD7D7D7FFD6D6D6FFD5D5D5FFD5D5D5FFD4D4D4FF
      D5D5D5FFD5D5D5FFD6D6D6FFD6D6D6FFD7D7D7FFD8D8D8FFDADADAFFDCDCDCFF
      E2E2E2FFE4E4E4FFE9E9E9FFEDEDEDFFE7E7E7FFDEDEDEFFD4D4D4FFC8C8C8FF
      BDBDBDFFADADADF8959595E0676767A61F1F1F5A030303370000002B00000020
      00000017000000100000000B0000000600000003000000020000000100000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000010000000100000003000000060000000A0000001000000017
      000000210000002C0808083C3E3E3E717C7C7CBBACACACF1C7C7C7FED8D8D8FF
      E3E3E3FFE9E9E9FFECECECFFE3E3E3FFD9D9D9FFD3D3D3FFD0D0D0FFCFCFCFFF
      CECECEFFCFCFCFFFCFCFCFFFD0D0D0FFD0D0D0FFD1D1D1FFD1D1D1FFD2D2D2FF
      D2D2D2FFD3D3D3FFD3D3D3FFD3D3D3FFD4D4D4FFD4D4D4FFD5D5D5FFD5D5D5FF
      D5D5D5FFD6D6D6FFD7D7D7FFD7D7D7FFDBDBDBFFDEDEDEFFE5E5E5FFE9E9E9FF
      E0E0E0FFD0D0D0FFBEBEBEFFAFAFAFFE9D9D9DF4727272C6222222660505053B
      0000002B00000020000000170000000E00000008000000050000000200000001
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000010000000200000004000000080000000D000000150000001F0000002A
      0C0C0C3F363636717C7C7CCDA8A8A8F7BFBFBFFFD1D1D1FFE0E0E0FFE5E5E5FF
      DCDCDCFFD1D1D1FFCCCCCCFFCBCBCBFFCBCBCBFFCCCCCCFFCCCCCCFFCDCDCDFF
      CDCDCDFFCECECEFFCECECEFFCFCFCFFFCFCFCFFFD0D0D0FFD0D0D0FFD1D1D1FF
      D1D1D1FFD2D2D2FFD2D2D2FFD3D3D3FFD3D3D3FFD3D3D3FFD4D4D4FFD4D4D4FF
      D5D5D5FFD5D5D5FFD5D5D5FFD6D6D6FFD6D6D6FFD6D6D6FFD7D7D7FFD8D8D8FF
      DBDBDBFFE2E2E2FFE6E6E6FFDBDBDBFFBDBDBDFFA9A9A9FF989898FA707070CE
      2D2D2D6C0707073A000000280000001C000000130000000B0000000600000003
      0000000100000001000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000001
      00000002000000050000000A000000110000001A00000026040404373030306C
      717171C89B9B9BF9B3B3B3FFCCCCCCFFDEDEDEFFDADADAFFCECECEFFC8C8C8FF
      C8C8C8FFC9C9C9FFC9C9C9FFCACACAFFCACACAFFCBCBCBFFCBCBCBFFCCCCCCFF
      CCCCCCFFCDCDCDFFCDCDCDFFCECECEFFCECECEFFCFCFCFFFCFCFCFFFD0D0D0FF
      D0D0D0FFD1D1D1FFD1D1D1FFD2D2D2FFD2D2D2FFD3D3D3FFD3D3D3FFD4D4D4FF
      D4D4D4FFD4D4D4FFD5D5D5FFD5D5D5FFD5D5D5FFD6D6D6FFD6D6D6FFD7D7D7FF
      D7D7D7FFD7D7D7FFD8D8D8FFDCDCDCFFE2E2E2FFDFDFDFFFB8B8B8FFA0A0A0FF
      8D8D8DF8646464BF2424245E0202023200000022000000170000000E00000008
      0000000400000002000000010000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000010000000100000003
      000000070000000C00000014000000200101012E1414144F585858AF898989F3
      A5A5A5FFC0C0C0FFDBDBDBFFD3D3D3FFC9C9C9FFC5C5C5FFC6C6C6FFC6C6C6FF
      C7C7C7FFC8C8C8FFC8C8C8FFC9C9C9FFC9C9C9FFCACACAFFCACACAFFCBCBCBFF
      CBCBCBFFCCCCCCFFCDCDCDFFCDCDCDFFCECECEFFCECECEFFCFCFCFFFCFCFCFFF
      D0D0D0FFD0D0D0FFD1D1D1FFD1D1D1FFD1D1D1FFD2D2D2FFD2D2D2FFD3D3D3FF
      D3D3D3FFD4D4D4FFD4D4D4FFD4D4D4FFD5D5D5FFD5D5D5FFD6D6D6FFD6D6D6FF
      D6D6D6FFD7D7D7FFD7D7D7FFD7D7D7FFD8D8D8FFD9D9D9FFDFDFDFFFDEDEDEFF
      B4B4B4FF959595FE7C7C7CED424242900707073D000000280000001B00000010
      0000000900000004000000020000000100000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000001000000010000000400000007
      0000000E0000001700000025050505383131317A6F6F6FE0909090FEB2B2B2FF
      D5D5D5FFCFCFCFFFC4C4C4FFC3C3C3FFC4C4C4FFC4C4C4FFC5C5C5FFC5C5C5FF
      C6C6C6FFC7C7C7FFC7C7C7FFC8C8C8FFC8C8C8FFC9C9C9FFC9C9C9FFCACACAFF
      CBCBCBFFCBCBCBFFCCCCCCFFCCCCCCFFCDCDCDFFCDCDCDFFCECECEFFCECECEFF
      CFCFCFFFCFCFCFFFD0D0D0FFD0D0D0FFD1D1D1FFD1D1D1FFD2D2D2FFD2D2D2FF
      D2D2D2FFD3D3D3FFD3D3D3FFD4D4D4FFD4D4D4FFD4D4D4FFD5D5D5FFD5D5D5FF
      D6D6D6FFD6D6D6FFD6D6D6FFD7D7D7FFD7D7D7FFD7D7D7FFD8D8D8FFD9D9D9FF
      DFDFDFFFD5D5D5FFA5A5A5FF838383FC5B5B5BC2191919550000002C0000001D
      000000110000000A000000040000000200000001000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000010000000100000004000000080000000F
      0000001A000000280B0B0B44464646A5777777F6989898FFC7C7C7FFCECECEFF
      C3C3C3FFC1C1C1FFC1C1C1FFC2C2C2FFC3C3C3FFC3C3C3FFC4C4C4FFC4C4C4FF
      C5C5C5FFC6C6C6FFC6C6C6FFC7C7C7FFC7C7C7FFC8C8C8FFC8C8C8FFC9C9C9FF
      CACACAFFCACACAFFCBCBCBFFCBCBCBFFCCCCCCFFCCCCCCFFCDCDCDFFCDCDCDFF
      CECECEFFCECECEFFCFCFCFFFCFCFCFFFD0D0D0FFD0D0D0FFD1D1D1FFD1D1D1FF
      D2D2D2FFD2D2D2FFD3D3D3FFD3D3D3FFD3D3D3FFD4D4D4FFD4D4D4FFD5D5D5FF
      D5D5D5FFD5D5D5FFD6D6D6FFD6D6D6FFD6D6D6FFD7D7D7FFD7D7D7FFD7D7D7FF
      D8D8D8FFDADADAFFDFDFDFFFBABABAFF858585FE676767E12525256801010130
      0000001F000000120000000A0000000400000002000000010000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000010000000400000008000000100000001B
      0000002B0F0F0F50525252C8797979FDA8A8A8FFCCCCCCFFC3C3C3FFBEBEBEFF
      BFBFBFFFC0C0C0FFC0C0C0FFC1C1C1FFC1C1C1FFC2C2C2FFC2C2C2FFC2C2C2FF
      C3C3C3FFC3C3C3FFC5C5C5FFC6C6C6FFC6C6C6FFC7C7C7FFC7C7C7FFC8C8C8FF
      C9C9C9FFC9C9C9FFCACACAFFCACACAFFCBCBCBFFCBCBCBFFCCCCCCFFCCCCCCFF
      CDCDCDFFCDCDCDFFCECECEFFCECECEFFCFCFCFFFCFCFCFFFD0D0D0FFD0D0D0FF
      D1D1D1FFD1D1D1FFD2D2D2FFD2D2D2FFD3D3D3FFD3D3D3FFD3D3D3FFD4D4D4FF
      D4D4D4FFD5D5D5FFD5D5D5FFD5D5D5FFD6D6D6FFD6D6D6FFD6D6D6FFD7D7D7FF
      D7D7D7FFD7D7D7FFD8D8D8FFDCDCDCFFD0D0D0FF909090FF686868ED2A2A2A76
      010101310000001F000000120000000900000004000000010000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000010000000300000008000000100000001C0000002C
      12121256555555D97C7C7CFFB4B4B4FFC7C7C7FFBDBDBDFFBDBDBDFFBDBDBDFF
      BEBEBEFFBEBEBEFFBFBFBFFFBFBFBFFFBFBFBFFFC0C0C0FFC1C1C1FFC0C0C0FF
      C1C1C1FFC2C2C2FFC3C3C3FFC4C4C4FFC4C4C4FFC6C6C6FFC6C6C6FFC7C7C7FF
      C7C7C7FFC8C8C8FFC9C9C9FFC9C9C9FFCACACAFFCACACAFFCBCBCBFFCBCBCBFF
      CCCCCCFFCCCCCCFFCDCDCDFFCDCDCDFFCECECEFFCECECEFFCFCFCFFFCFCFCFFF
      D0D0D0FFD0D0D0FFD1D1D1FFD1D1D1FFD2D2D2FFD2D2D2FFD3D3D3FFD3D3D3FF
      D4D4D4FFD4D4D4FFD4D4D4FFD5D5D5FFD5D5D5FFD5D5D5FFD6D6D6FFD6D6D6FF
      D7D7D7FFD7D7D7FFD7D7D7FFD7D7D7FFDADADAFFD8D8D8FF979797FF676767F1
      2A2A2A7A010101300000001E0000001100000008000000030000000100000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000100000002000000070000000E0000001A0000002B10101057
      525252DF7D7D7DFFBFBFBFFFC0C0C0FFBABABAFFBBBBBBFFBBBBBBFFBCBCBCFF
      BDBDBDFFBCBCBCFFBDBDBDFFBEBEBEFFBEBEBEFFBDBDBDFFBDBDBDFFBEBEBEFF
      BFBFBFFFBFBFBFFFC0C0C0FFC1C1C1FFC2C2C2FFC4C4C4FFC4C4C4FFC5C5C5FF
      C6C6C6FFC7C7C7FFC8C8C8FFC8C8C8FFC9C9C9FFC9C9C9FFCACACAFFCACACAFF
      CBCBCBFFCBCBCBFFCCCCCCFFCDCDCDFFCDCDCDFFCECECEFFCECECEFFCFCFCFFF
      CFCFCFFFD0D0D0FFD0D0D0FFD1D1D1FFD1D1D1FFD1D1D1FFD2D2D2FFD2D2D2FF
      D3D3D3FFD3D3D3FFD4D4D4FFD4D4D4FFD4D4D4FFD5D5D5FFD5D5D5FFD6D6D6FF
      D6D6D6FFD6D6D6FFD7D7D7FFD7D7D7FFD7D7D7FFD8D8D8FFD9D9D9FF9A9A9AFF
      616161F02222226E0101012E0000001B0000000E000000070000000200000001
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000100000002000000050000000D00000018000000290E0E0E524E4E4EDD
      7B7B7BFFBDBDBDFFBBBBBBFFB9B9B9FFB9B9B9FFBABABAFFBABABAFFBBBBBBFF
      BBBBBBFFBBBBBBFFBBBBBBFFBABABAFFBABABAFFB9B9B9FFB8B8B8FFB9B9B9FF
      BABABAFFBABABAFFBCBCBCFFBDBDBDFFBFBFBFFFC1C1C1FFC2C2C2FFC3C3C3FF
      C4C4C4FFC5C5C5FFC6C6C6FFC7C7C7FFC8C8C8FFC8C8C8FFC9C9C9FFC9C9C9FF
      CACACAFFCBCBCBFFCBCBCBFFCCCCCCFFCCCCCCFFCDCDCDFFCDCDCDFFCECECEFF
      CECECEFFCFCFCFFFCFCFCFFFD0D0D0FFD0D0D0FFD1D1D1FFD1D1D1FFD2D2D2FF
      D2D2D2FFD2D2D2FFD3D3D3FFD3D3D3FFD4D4D4FFD4D4D4FFD4D4D4FFD5D5D5FF
      D5D5D5FFD6D6D6FFD6D6D6FFD6D6D6FFD7D7D7FFD7D7D7FFD7D7D7FFD9D9D9FF
      979797FF585858E71717175C00000029000000170000000C0000000500000002
      0000000100000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000001000000040000000A00000015000000250C0C0C49464646D0757575FF
      BBBBBBFFB8B8B8FFB7B7B7FFB7B7B7FFB8B8B8FFB9B9B9FFB8B8B8FFB9B9B9FF
      BABABAFFB9B9B9FFB8B8B8FFB6B6B6FFB4B4B4FFB3B3B3FFB1B1B1FFB1B1B1FF
      B1B1B1FFB3B3B3FFB5B5B5FFB7B7B7FFBABABAFFBDBDBDFFBEBEBEFFC1C1C1FF
      C2C2C2FFC3C3C3FFC5C5C5FFC5C5C5FFC6C6C6FFC7C7C7FFC8C8C8FFC8C8C8FF
      C9C9C9FFCACACAFFCACACAFFCBCBCBFFCBCBCBFFCCCCCCFFCCCCCCFFCDCDCDFF
      CDCDCDFFCECECEFFCECECEFFCFCFCFFFCFCFCFFFD0D0D0FFD0D0D0FFD1D1D1FF
      D1D1D1FFD2D2D2FFD2D2D2FFD3D3D3FFD3D3D3FFD3D3D3FFD4D4D4FFD4D4D4FF
      D5D5D5FFD5D5D5FFD5D5D5FFD6D6D6FFD6D6D6FFD6D6D6FFD7D7D7FFD7D7D7FF
      D7D7D7FF898989FF4A4A4AD00909094300000023000000130000000800000003
      0000000100000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000001
      00000003000000080000001100000020030303383A3A3AB66C6C6CFEB7B7B7FF
      B6B6B6FFB5B5B5FFB6B6B6FFB6B6B6FFB7B7B7FFB6B6B6FFB7B7B7FFB8B8B8FF
      B6B6B6FFB5B5B5FFB3B3B3FFB0B0B0FFADADADFFAAAAAAFFA8A8A8FFA6A6A6FF
      A6A6A6FFA9A9A9FFABABABFFAFAFAFFFB2B2B2FFB5B5B5FFB9B9B9FFBBBBBBFF
      BEBEBEFFC0C0C0FFC1C1C1FFC3C3C3FFC4C4C4FFC5C5C5FFC6C6C6FFC6C6C6FF
      C8C8C8FFC9C9C9FFC9C9C9FFCACACAFFCACACAFFCBCBCBFFCBCBCBFFCCCCCCFF
      CCCCCCFFCDCDCDFFCDCDCDFFCECECEFFCECECEFFCFCFCFFFCFCFCFFFD0D0D0FF
      D0D0D0FFD1D1D1FFD1D1D1FFD2D2D2FFD2D2D2FFD3D3D3FFD3D3D3FFD3D3D3FF
      D4D4D4FFD4D4D4FFD5D5D5FFD5D5D5FFD5D5D5FFD6D6D6FFD6D6D6FFD6D6D6FF
      D7D7D7FFD1D1D1FF757575FD3232329C010101310000001C0000000E00000005
      0000000200000001000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000100000002
      000000050000000D0000001A0101012E2121217E616161FAAFAFAFFFB5B5B5FF
      B3B3B3FFB4B4B4FFB5B5B5FFB5B5B5FFB5B5B5FFB5B5B5FFB6B6B6FFB5B5B5FF
      B2B2B2FFB0B0B0FFACACACFFA8A8A8FFA3A3A3FF9E9E9EFF9B9B9BFF999999FF
      999999FF9B9B9BFF9E9E9EFFA3A3A3FFA7A7A7FFABABABFFB0B0B0FFB4B4B4FF
      B7B7B7FFB7B7B7FFAAAAAAFFBBBBBBFFC0C0C0FFC2C2C2FFC4C4C4FFC4C4C4FF
      C6C6C6FFC6C6C6FFC7C7C7FFC9C9C9FFC9C9C9FFCACACAFFCACACAFFCBCBCBFF
      CBCBCBFFCCCCCCFFCCCCCCFFCDCDCDFFCDCDCDFFCECECEFFCECECEFFCFCFCFFF
      CFCFCFFFD0D0D0FFD0D0D0FFD1D1D1FFD1D1D1FFD2D2D2FFD2D2D2FFD3D3D3FF
      D3D3D3FFD4D4D4FFD4D4D4FFD4D4D4FFD5D5D5FFD5D5D5FFD5D5D5FFD6D6D6FF
      D6D6D6FFD8D8D8FFC2C2C2FF595959F01414145C000000270000001500000009
      0000000300000001000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000100000003
      0000000900000014000000250E0E0E524C4C4CE79D9D9DFFB4B4B4FFB2B2B2FF
      B2B2B2FFB3B3B3FFB3B3B3FFB3B3B3FFB4B4B4FFB3B3B3FFB2B2B2FFB1B1B1FF
      ADADADFFA9A9A9FFA3A3A3FF9D9D9DFF979797FF909090FF8D8D8DFF8A8A8AFF
      8A8A8AFF8C8C8CFF8F8F8FFF949494FF9A9A9AFF9F9F9FFFA4A4A4FFA9A9A9FF
      ADADADFFA6A6A6FF717171FFC0C0C0FFD0D0D0FFC7C7C7FFBFBFBFFFC0C0C0FF
      C3C3C3FFC4C4C4FFC6C6C6FFC7C7C7FFC7C7C7FFC9C9C9FFC9C9C9FFCACACAFF
      CACACAFFCBCBCBFFCBCBCBFFCCCCCCFFCDCDCDFFCDCDCDFFCECECEFFCECECEFF
      CFCFCFFFCFCFCFFFD0D0D0FFD0D0D0FFD1D1D1FFD1D1D1FFD1D1D1FFD2D2D2FF
      D2D2D2FFD3D3D3FFD3D3D3FFD4D4D4FFD4D4D4FFD4D4D4FFD5D5D5FFD5D5D5FF
      D6D6D6FFD6D6D6FFD7D7D7FF9B9B9BFF393939B9030303360000001C0000000E
      0000000500000001000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000200000005
      0000000E0000001C02020234343434AF7D7D7DFEB4B4B4FFB0B0B0FFB0B0B0FF
      B1B1B1FFB2B2B2FFB1B1B1FFB2B2B2FFB2B2B2FFB0B0B0FFAEAEAEFFAAAAAAFF
      A6A6A6FFA1A1A1FF999999FF919191FF8A8A8AFF838383FF7F7F7FFF7C7C7CFF
      7C7C7CFF7E7E7EFF818181FF858585FF8B8B8BFF919191FF969696FF9B9B9BFF
      A1A1A1FF9E9E9EFF757575FFB4B4B4FFCECECEFFD1D1D1FFD3D3D3FFD0D0D0FF
      C5C5C5FFBFBFBFFFC2C2C2FFC4C4C4FFC5C5C5FFC7C7C7FFC7C7C7FFC8C8C8FF
      C9C9C9FFCACACAFFCBCBCBFFCBCBCBFFCCCCCCFFCCCCCCFFCDCDCDFFCDCDCDFF
      CECECEFFCECECEFFCFCFCFFFCFCFCFFFD0D0D0FFD0D0D0FFD1D1D1FFD1D1D1FF
      D2D2D2FFD2D2D2FFD2D2D2FFD3D3D3FFD3D3D3FFD4D4D4FFD4D4D4FFD4D4D4FF
      D5D5D5FFD5D5D5FFD6D6D6FFCFCFCFFF646464F31313135C0000002500000013
      0000000800000002000000010000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000010000000300000008
      00000014000000260E0E0E585B5B5BF2ADADADFFAFAFAFFFAFAFAFFFAFAFAFFF
      B0B0B0FFB0B0B0FFB0B0B0FFB0B0B0FFAEAEAEFFACACACFFA9A9A9FFA3A3A3FF
      9E9E9EFF959595FF8D8D8DFF858585FF7D7D7DFF777777FF737373FF707070FF
      707070FF717171FF747474FF787878FF7D7D7DFF828282FF888888FF8D8D8DFF
      939393FF959595FF7B7B7BFF9E9E9EFFC8C8C8FFCBCBCBFFCECECEFFD1D1D1FF
      D3D3D3FFD3D3D3FFCFCFCFFFC4C4C4FFC0C0C0FFC3C3C3FFC5C5C5FFC6C6C6FF
      C7C7C7FFC8C8C8FFC9C9C9FFCACACAFFCBCBCBFFCBCBCBFFCCCCCCFFCCCCCCFF
      CDCDCDFFCDCDCDFFCECECEFFCECECEFFCFCFCFFFCFCFCFFFD0D0D0FFD0D0D0FF
      D1D1D1FFD1D1D1FFD2D2D2FFD2D2D2FFD3D3D3FFD3D3D3FFD3D3D3FFD4D4D4FF
      D4D4D4FFD5D5D5FFD5D5D5FFD6D6D6FFA4A4A4FF323232AA0101012F00000019
      0000000B00000004000000010000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000001000000040000000C
      0000001A02020232363636AF8F8F8FFFAEAEAEFFADADADFFAEAEAEFFADADADFF
      AEAEAEFFAEAEAEFFADADADFFADADADFFA9A9A9FFA6A6A6FFA1A1A1FF9A9A9AFF
      939393FF8A8A8AFF828282FF797979FF727272FF6D6D6DFF696969FF676767FF
      666666FF676767FF6A6A6AFF6D6D6DFF717171FF757575FF7A7A7AFF7F7F7FFF
      858585FF8A8A8AFF7E7E7EFF8E8E8EFFC1C1C1FFC4C4C4FFC7C7C7FFCACACAFF
      CDCDCDFFD0D0D0FFD3D3D3FFD6D6D6FFD5D5D5FFCCCCCCFFC2C2C2FFC2C2C2FF
      C4C4C4FFC6C6C6FFC8C8C8FFC8C8C8FFC9C9C9FFCACACAFFCBCBCBFFCBCBCBFF
      CCCCCCFFCCCCCCFFCDCDCDFFCDCDCDFFCECECEFFCECECEFFCFCFCFFFCFCFCFFF
      D0D0D0FFD0D0D0FFD1D1D1FFD1D1D1FFD2D2D2FFD2D2D2FFD3D3D3FFD3D3D3FF
      D3D3D3FFD4D4D4FFD4D4D4FFD5D5D5FFCECECEFF585858E4070707430000001F
      0000000F00000005000000010000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000020000000600000010
      000000210A0A0A4A595959EBACACACFFABABABFFACACACFFACACACFFACACACFF
      ADADADFFABABABFFAAAAAAFFA8A8A8FFA4A4A4FF9E9E9EFF979797FF909090FF
      878787FF7E7E7EFF777777FF6F6F6FFF696969FF656565FF626262FF616161FF
      616161FF616161FF636363FF656565FF686868FF6B6B6BFF6E6E6EFF727272FF
      777777FF7C7C7CFF7F7F7FFF898989FFBABABAFFBEBEBEFFC1C1C1FFC4C4C4FF
      C7C7C7FFCACACAFFCDCDCDFFD0D0D0FFD2D2D2FFD5D5D5FFD7D7D7FFD5D5D5FF
      CBCBCBFFC2C2C2FFC3C3C3FFC5C5C5FFC7C7C7FFC8C8C8FFC9C9C9FFC9C9C9FF
      CBCBCBFFCBCBCBFFCCCCCCFFCCCCCCFFCDCDCDFFCDCDCDFFCECECEFFCECECEFF
      CFCFCFFFCFCFCFFFD0D0D0FFD0D0D0FFD1D1D1FFD1D1D1FFD2D2D2FFD2D2D2FF
      D3D3D3FFD3D3D3FFD4D4D4FFD4D4D4FFD5D5D5FF8F8F8FFA1515156400000025
      0000001200000007000000020000000100000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000001000000020000000900000015
      000000282525257F888888FDABABABFFAAAAAAFFAAAAAAFFABABABFFABABABFF
      AAAAAAFFA8A8A8FFA6A6A6FFA1A1A1FF9C9C9CFF959595FF8D8D8DFF858585FF
      7C7C7CFF747474FF6D6D6DFF676767FF636363FF606060FF5E5E5EFF5D5D5DFF
      5D5D5DFF5D5D5DFF5F5F5FFF606060FF616161FF646464FF666666FF696969FF
      6C6C6CFF707070FF7E7E7EFF898989FFB2B2B2FFB7B7B7FFBABABAFFBDBDBDFF
      C0C0C0FFC3C3C3FFC6C6C6FFC9C9C9FFCCCCCCFFCFCFCFFFD2D2D2FFD5D5D5FF
      D8D8D8FFD8D8D8FFD5D5D5FFC9C9C9FFC2C2C2FFC4C4C4FFC6C6C6FFC7C7C7FF
      C9C9C9FFC9C9C9FFCACACAFFCBCBCBFFCCCCCCFFCDCDCDFFCDCDCDFFCECECEFF
      CECECEFFCFCFCFFFCFCFCFFFD0D0D0FFD0D0D0FFD1D1D1FFD1D1D1FFD1D1D1FF
      D2D2D2FFD2D2D2FFD3D3D3FFD3D3D3FFD4D4D4FFBABABAFF2F2F2F950000002A
      0000001600000009000000020000000100000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000001000000040000000B00000019
      02020231434343C3A3A3A3FFA9A9A9FFA8A8A8FFA9A9A9FFA8A8A8FFA8A8A8FF
      A7A7A7FFA3A3A3FF9F9F9FFF999999FF929292FF8A8A8AFF828282FF797979FF
      717171FF6B6B6BFF656565FF616161FF5E5E5EFF5C5C5CFF5B5B5BFF5C5C5CFF
      5B5B5BFF5B5B5BFF5D5D5DFF5D5D5DFF5E5E5EFF5F5F5FFF606060FF626262FF
      656565FF676767FF777777FF898989FFA9A9A9FFB0B0B0FFB3B3B3FFB6B6B6FF
      B9B9B9FFBCBCBCFFC0C0C0FFC3C3C3FFC6C6C6FFC9C9C9FFCCCCCCFFCFCFCFFF
      D1D1D1FFD4D4D4FFD7D7D7FFDADADAFFDADADAFFD4D4D4FFC7C7C7FFC3C3C3FF
      C5C5C5FFC7C7C7FFC9C9C9FFCACACAFFCACACAFFCCCCCCFFCCCCCCFFCDCDCDFF
      CDCDCDFFCECECEFFCECECEFFCFCFCFFFCFCFCFFFD0D0D0FFD0D0D0FFD1D1D1FF
      D1D1D1FFD2D2D2FFD2D2D2FFD2D2D2FFD3D3D3FFCCCCCCFF4B4B4BC50000002F
      000000180000000A000000030000000100000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000001000000050000000D0000001D
      08080840676767E5A7A7A7FFA7A7A7FFA7A7A7FFA7A7A7FFA6A6A6FFA4A4A4FF
      A1A1A1FF9C9C9CFF979797FF8F8F8FFF888888FF7F7F7FFF777777FF6F6F6FFF
      696969FF656565FF616161FF5D5D5DFF5B5B5BFF5A5A5AFF5A5A5AFF5A5A5AFF
      5A5A5AFF5B5B5BFF5B5B5BFF5B5B5BFF5C5C5CFF5D5D5DFF5E5E5EFF5F5F5FFF
      606060FF626262FF6C6C6CFF8B8B8BFFA1A1A1FFA9A9A9FFACACACFFAFAFAFFF
      B2B2B2FFB6B6B6FFB9B9B9FFBCBCBCFFBFBFBFFFC2C2C2FFC5C5C5FFC8C8C8FF
      CBCBCBFFCECECEFFD1D1D1FFD4D4D4FFD7D7D7FFD9D9D9FFDCDCDCFFDADADAFF
      D1D1D1FFC6C6C6FFC5C5C5FFC7C7C7FFC8C8C8FFCACACAFFCACACAFFCBCBCBFF
      CCCCCCFFCDCDCDFFCDCDCDFFCECECEFFCECECEFFCFCFCFFFCFCFCFFFD0D0D0FF
      D0D0D0FFD1D1D1FFD1D1D1FFD2D2D2FFD2D2D2FFD1D1D1FF6A6A6ADC03030335
      0000001A0000000B000000040000000100000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000001000000060000001000000021
      14141456828282F6A6A6A6FFA6A6A6FFA5A5A5FFA4A4A4FFA1A1A1FF9F9F9FFF
      9A9A9AFF949494FF8D8D8DFF858585FF7D7D7DFF747474FF737373FF848484FF
      7C7C7CFF818181FF797979FF6A6A6AFF5E5E5EFF5A5A5AFF595959FF595959FF
      595959FF5A5A5AFF5A5A5AFF5A5A5AFF5B5B5BFF5B5B5BFF5C5C5CFF5C5C5CFF
      5D5D5DFF5E5E5EFF686868FF8F8F8FFF9C9C9CFFA2A2A2FFA5A5A5FFA9A9A9FF
      ACACACFFAFAFAFFFB2B2B2FFB5B5B5FFB8B8B8FFBBBBBBFFBEBEBEFFC2C2C2FF
      C5C5C5FFC8C8C8FFCBCBCBFFCECECEFFD0D0D0FFD3D3D3FFD6D6D6FFD9D9D9FF
      DCDCDCFFDDDDDDFFDBDBDBFFD0D0D0FFC7C7C7FFC7C7C7FFC8C8C8FFCACACAFF
      CACACAFFCBCBCBFFCCCCCCFFCDCDCDFFCDCDCDFFCECECEFFCECECEFFCFCFCFFF
      CFCFCFFFD0D0D0FFD0D0D0FFD1D1D1FFD1D1D1FFD2D2D2FF848484E50606063C
      0000001C0000000C000000040000000100000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000001000000060000001100000023
      1F1F1F66949494FDA4A4A4FFA4A4A4FFA2A2A2FFA0A0A0FF9C9C9CFF989898FF
      929292FF8A8A8AFF838383FF7A7A7AFF787878FF929292FFC4C4C4FFA8A8A8FF
      909090FF949494FF939393FF8E8E8EFF858585FF757575FF656565FF5C5C5CFF
      595959FF595959FF595959FF5A5A5AFF5A5A5AFF5A5A5AFF5B5B5BFF5B5B5BFF
      5C5C5CFF5C5C5CFF636363FF909090FF969696FF9B9B9BFF9F9F9FFFA2A2A2FF
      A5A5A5FFA8A8A8FFABABABFFAEAEAEFFB1B1B1FFB5B5B5FFB8B8B8FFBBBBBBFF
      BEBEBEFFC1C1C1FFC4C4C4FFC7C7C7FFCACACAFFCDCDCDFFD0D0D0FFD3D3D3FF
      D6D6D6FFD8D8D8FFDBDBDBFFDEDEDEFFDEDEDEFFC6C6C6FFC5C5C5FFC7C7C7FF
      C8C8C8FFC9C9C9FFCACACAFFCBCBCBFFCBCBCBFFCDCDCDFFCDCDCDFFCECECEFF
      CECECEFFCFCFCFFFCFCFCFFFD0D0D0FFD0D0D0FFD1D1D1FF989898EC0B0B0B43
      0000001C0000000C000000040000000100000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000002000000070000001200000026
      3434347A9A9A9AFFA1A1A1FFA0A0A0FF9E9E9EFF9A9A9AFF959595FF8F8F8FFF
      888888FF808080FF797979FF959595FFC7C7C7FFDADADAFFDADADAFF999999FF
      999999FF9D9D9DFF9C9C9CFF9A9A9AFF979797FF939393FF8C8C8CFF818181FF
      717171FF626262FF5B5B5BFF595959FF595959FF5A5A5AFF5A5A5AFF5A5A5AFF
      5B5B5BFF5B5B5BFF5F5F5FFF8F8F8FFF959595FF959595FF989898FF9B9B9BFF
      9E9E9EFFA1A1A1FFA4A4A4FFA7A7A7FFABABABFFAEAEAEFFB1B1B1FFB4B4B4FF
      B7B7B7FFBABABAFFBDBDBDFFC0C0C0FFC4C4C4FFC7C7C7FFCACACAFFCDCDCDFF
      CFCFCFFFD2D2D2FFD5D5D5FFD8D8D8FFD9D9D9FFC1C1C1FFBFBFBFFFC2C2C2FF
      C4C4C4FFC6C6C6FFC8C8C8FFC9C9C9FFC9C9C9FFCBCBCBFFCCCCCCFFCCCCCCFF
      CECECEFFCECECEFFCFCFCFFFCFCFCFFFD0D0D0FFD0D0D0FFA3A3A3EE0D0D0D44
      0000001B0000000C000000040000000100000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000002000000070000001200000026
      3E3E3E8B9B9B9BFF9F9F9FFF9C9C9CFF989898FF939393FF8D8D8DFF858585FF
      7D7D7DFF757575FF8D8D8DFFDADADAFFDDDDDDFFDCDCDCFFD4D4D4FF999999FF
      9E9E9EFFA1A1A1FFA1A1A1FFA0A0A0FF9E9E9EFF9C9C9CFF999999FF969696FF
      919191FF898989FF7C7C7CFF6D6D6DFF606060FF5A5A5AFF5A5A5AFF5A5A5AFF
      5A5A5AFF5A5A5AFF5B5B5BFF909090FF989898FF8E8E8EFF919191FF949494FF
      979797FF9A9A9AFF9E9E9EFFA1A1A1FFA4A4A4FFA7A7A7FFAAAAAAFFADADADFF
      B0B0B0FFB3B3B3FFB7B7B7FFBABABAFFBDBDBDFFC0C0C0FFC3C3C3FFC6C6C6FF
      C9C9C9FFCCCCCCFFCFCFCFFFD2D2D2FFD2D2D2FFB7B7B7FFB7B7B7FFBBBBBBFF
      BEBEBEFFC1C1C1FFC3C3C3FFC5C5C5FFC8C8C8FFC9C9C9FFCACACAFFCBCBCBFF
      CCCCCCFFCCCCCCFFCECECEFFCECECEFFCFCFCFFFCFCFCFFFA3A3A3EB0F0F0F3F
      000000190000000B000000030000000100000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000002000000070000001300000027
      4848488F999999FF9B9B9BFF969696FF919191FF8A8A8AFF838383FF7A7A7AFF
      737373FF6B6B6BFFAFAFAFFFDEDEDEFFDCDCDCFFDBDBDBFFCFCFCFFF999999FF
      A0A0A0FFA3A3A3FFA2A2A2FFA2A2A2FFA1A1A1FFA1A1A1FF9F9F9FFF9D9D9DFF
      9B9B9BFF979797FF949494FF8F8F8FFF888888FF797979FF686868FF5E5E5EFF
      5B5B5BFF5A5A5AFF5A5A5AFF8E8E8EFF9B9B9BFF888888FF8B8B8BFF8E8E8EFF
      919191FF949494FF979797FF9A9A9AFF9D9D9DFFA0A0A0FFA3A3A3FFA6A6A6FF
      A9A9A9FFADADADFFB0B0B0FFB3B3B3FFB6B6B6FFB9B9B9FFBCBCBCFFBFBFBFFF
      C2C2C2FFC6C6C6FFC9C9C9FFCBCBCBFFCBCBCBFFABABABFFABABABFFB0B0B0FF
      B5B5B5FFB9B9B9FFBCBCBCFFC0C0C0FFC3C3C3FFC4C4C4FFC7C7C7FFC8C8C8FF
      CACACAFFCACACAFFCCCCCCFFCCCCCCFFCDCDCDFFCECECEFF999999E30C0C0C35
      000000170000000A000000030000000100000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000002000000070000001200000026
      4242427F969696FF959595FF909090FF898989FF808080FF797979FF717171FF
      696969FF666666FFC3C3C3FFDEDEDEFFDCDCDCFFDADADAFFC8C8C8FF999999FF
      A2A2A2FFA4A4A4FFA3A3A3FFA3A3A3FFA3A3A3FFA3A3A3FFA2A2A2FFA1A1A1FF
      A0A0A0FF9E9E9EFF9C9C9CFF9A9A9AFF979797FF939393FF8D8D8DFF848484FF
      757575FF656565FF5D5D5DFF818181FFA0A0A0FF858585FF848484FF878787FF
      8A8A8AFF8D8D8DFF909090FF939393FF969696FF999999FF9C9C9CFFA0A0A0FF
      A3A3A3FFA6A6A6FFA9A9A9FFACACACFFAFAFAFFFB2B2B2FFB6B6B6FFB9B9B9FF
      BCBCBCFFBFBFBFFFC2C2C2FFC5C5C5FFC3C3C3FF9C9C9CFF9D9D9DFFA3A3A3FF
      A8A8A8FFAEAEAEFFB2B2B2FFB7B7B7FFBBBBBBFFBEBEBEFFC1C1C1FFC4C4C4FF
      C6C6C6FFC8C8C8FFC9C9C9FFCACACAFFCBCBCBFFCCCCCCFF8D8D8DD50909092D
      0000001400000008000000020000000100000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000002000000060000001200000025
      3030306C929292FE8F8F8FFF888888FF808080FF777777FF6F6F6FFF686868FF
      626262FF676767FFCDCDCDFFDCDCDCFFDBDBDBFFDADADAFFB7B7B7FF9D9D9DFF
      A4A4A4FFA5A5A5FFA4A4A4FFA5A5A5FFA29F9BFFABA7A2FFB4B3B1FFAFAFAFFF
      A6A6A6FFA2A2A2FFA0A0A0FF9F9F9FFF9E9E9EFF9C9C9CFF999999FF969696FF
      929292FF8B8B8BFF7F7F7FFF7A7A7AFF969696FF818181FF7E7E7EFF818181FF
      848484FF878787FF8A8A8AFF8D8D8DFF909090FF939393FF969696FF999999FF
      9C9C9CFF9F9F9FFFA2A2A2FFA5A5A5FFA8A8A8FFACACACFFAFAFAFFFB2B2B2FF
      B5B5B5FFB8B8B8FFBBBBBBFFBEBEBEFFBCBCBCFF8E8E8EFF8E8E8EFF949494FF
      9A9A9AFFA0A0A0FFA5A5A5FFABABABFFB0B0B0FFB4B4B4FFB9B9B9FFBCBCBCFF
      C0C0C0FFC2C2C2FFC5C5C5FFC7C7C7FFC9C9C9FFC9C9C9FF767676AF03030324
      0000001100000007000000020000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000002000000060000001100000023
      1D1D1D5E8C8C8CFB898989FF818181FF797979FF707070FF686868FF616161FF
      5C5C5CFF6B6B6BFFD6D6D6FFDCDCDCFFDBDBDBFFD9D9D9FFA8A8A8FFA0A0A0FF
      A5A5A5FFA6A6A6FFA5A5A5FF877F77FF462A0FFF42260AFF523820FF7E6E5FFF
      ADA7A3FFB4B3B2FFAEAEAEFFA5A5A5FFA2A2A2FFA0A0A0FF9F9F9FFF9D9D9DFF
      9B9B9BFF989898FF959595FF909090FF898989FF7F7F7FFF787878FF7A7A7AFF
      7D7D7DFF818181FF838383FF868686FF898989FF8C8C8CFF8F8F8FFF929292FF
      959595FF989898FF9B9B9BFF9E9E9EFFA2A2A2FFA5A5A5FFA8A8A8FFABABABFF
      AEAEAEFFB1B1B1FFB4B4B4FFB8B8B8FFB4B4B4FF808080FF808080FF858585FF
      8B8B8BFF909090FF969696FF9D9D9DFFA2A2A2FFA8A8A8FFADADADFFB2B2B2FF
      B7B7B7FFBABABAFFBEBEBEFFC1C1C1FFC4C4C4FFC1C1C1FE545454750000001F
      0000000F00000006000000010000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000002000000050000000F00000021
      1313134E848484F1858585FF7D7D7DFF747474FF6B6B6BFF646464FF5E5E5EFF
      5A5A5AFF7C7C7CFFDCDCDCFFDBDBDBFFDADADAFFD6D6D6FFA0A0A0FFA4A4A4FF
      A7A7A7FFA7A7A7FFA6A6A6FF55402CFF3F2204FF3F2204FF402104FF3F2104FF
      43260AFF563C25FF85776AFFB0ABA7FFB5B4B4FFADADADFFA4A4A4FFA1A1A1FF
      9F9F9FFF9E9E9EFF9C9C9CFF9A9A9AFF969696FF939393FF8E8E8EFF878787FF
      7C7C7CFF787878FF7C7C7CFF808080FF838383FF868686FF898989FF8C8C8CFF
      8F8F8FFF929292FF959595FF989898FF9B9B9BFF9E9E9EFFA1A1A1FFA4A4A4FF
      A7A7A7FFAAAAAAFFAEAEAEFFB1B1B1FFACACACFF757575FF747474FF787878FF
      7D7D7DFF828282FF878787FF8D8D8DFF939393FF999999FF9F9F9FFFA5A5A5FF
      AAAAAAFFAFAFAFFFB4B4B4FFB9B9B9FFBDBDBDFFB1B1B1F22B2B2B4D0000001B
      0000000D00000005000000020000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000002000000040000000E0000001E
      0909093B767676DD838383FF7B7B7BFF727272FF6B6B6BFF646464FF5F5F5FFF
      5A5A5AFF969696FFDBDBDBFFDBDBDBFFD9D9D9FFD1D1D1FF9F9F9FFFA6A6A6FF
      A9A9A9FFA8A8A8FFA09F9EFF493016FF402304FF412204FF402204FF402204FF
      402104FF3F2205FF3F2205FF45290EFF59412AFF8F8176FFB3AFACFFB5B5B5FF
      ABABABFFA3A3A3FFA0A0A0FF9F9F9FFF9D9D9DFF9C9C9CFF999999FF969696FF
      929292FF8C8C8CFF838383FF7A7A7AFF7A7A7AFF7F7F7FFF828282FF858585FF
      888888FF8B8B8BFF8E8E8EFF919191FF949494FF979797FF9A9A9AFF9D9D9DFF
      A0A0A0FFA4A4A4FFA7A7A7FFAAAAAAFFA5A5A5FF6D6D6DFF6B6B6BFF6E6E6EFF
      717171FF767676FF7A7A7AFF7F7F7FFF848484FF8A8A8AFF909090FF969696FF
      9C9C9CFFA2A2A2FFA9A9A9FFAEAEAEFFB4B4B4FF8B8B8BCF0A0A0A3200000019
      0000000C00000005000000020000000100000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000001000000030000000A00000018
      0101012F5E5E5EAD858585FF7D7D7DFF757575FF6E6E6EFF686868FF636363FF
      5F5F5FFFB4B4B4FFDCDCDCFFDADADAFFD8D8D8FFCCCCCCFFA0A0A0FFA8A8A8FF
      AAAAAAFFA9A9A9FF989491FF462A0DFF422404FF422304FF412405FF412405FF
      412305FF402305FF402205FF412205FF402205FF402105FF482B11FF5F4833FF
      998D83FFB5B2AFFFB5B5B5FFAAAAAAFFA2A2A2FFA0A0A0FF9E9E9EFF9D9D9DFF
      9B9B9BFF989898FF949494FF909090FF8A8A8AFF808080FF797979FF7C7C7CFF
      818181FF858585FF888888FF8B8B8BFF8E8E8EFF919191FF949494FF979797FF
      9A9A9AFF9D9D9DFFA0A0A0FFA3A3A3FF9E9E9EFF676767FF656565FF666666FF
      696969FF6C6C6CFF6F6F6FFF737373FF777777FF7D7D7DFF818181FF878787FF
      8D8D8DFF949494FF9B9B9BFFA2A2A2FFA6A6A6FD515151870000002C00000019
      0000000C00000005000000020000000100000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000001000000030000000800000012
      0000002532323266868686F8818181FF7B7B7BFF757575FF707070FF6B6B6BFF
      6B6B6BFFC5C5C5FFDBDBDBFFD9D9D9FFD7D7D7FFC3C3C3FFA2A2A2FFA9A9A9FF
      ABABABFFAAAAAAFF8F8A83FF422505FF432604FF422505FF422505FF422405FF
      412405FF422405FF422305FF412305FF412205FF412205FF402205FF402205FF
      402206FF4B2F15FF66503DFFA1978FFFB8B5B3FFB4B3B3FFA8A8A8FFA2A2A2FF
      9F9F9FFF9E9E9EFF9C9C9CFF999999FF979797FF939393FF8E8E8EFF888888FF
      7E7E7EFF7A7A7AFF7F7F7FFF838383FF878787FF8A8A8AFF8D8D8DFF909090FF
      939393FF969696FF999999FF9C9C9CFF979797FF646464FF616161FF626262FF
      646464FF666666FF686868FF6B6B6BFF6E6E6EFF717171FF757575FF7B7B7BFF
      818181FF878787FF8F8F8FFF979797FF8B8B8BE6191919520000002B00000019
      0000000D00000007000000030000000100000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000100000002000000050000000D
      0000001B0E0E0E397C7C7CD7898989FF838383FF7E7E7EFF797979FF747474FF
      7B7B7BFFCFCFCFFFDADADAFFD8D8D8FFD6D6D6FFB4B4B4FFA6A6A6FFACACACFF
      ACACACFFABABABFF796E60FF432604FF432605FF432605FF432605FF432505FF
      432505FF432405FF422505FF422505FF422405FF422405FF422405FF422305FF
      412305FF412205FF412205FF412306FF4E3319FF6F5B49FFAAA19AFFB9B7B5FF
      B2B2B2FFA7A7A7FFA0A0A0FF9F9F9FFF9D9D9DFF9B9B9BFF999999FF969696FF
      929292FF8D8D8DFF868686FF7B7B7BFF7B7B7BFF818181FF868686FF8A8A8AFF
      8D8D8DFF909090FF939393FF969696FF919191FF626262FF5F5F5FFF606060FF
      616161FF616161FF636363FF656565FF676767FF6A6A6AFF6E6E6EFF727272FF
      787878FF7F7F7FFF868686FF8E8E8EFD515151A0010101410000002A0000001A
      0000000D00000007000000030000000100000001000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000010000000300000008
      00000012010101235454547F8E8E8EFC8A8A8AFF878787FF838383FF808080FF
      8B8B8BFFD7D7D7FFDADADAFFD7D7D7FFD5D5D5FFA9A9A9FFA9A9A9FFADADADFF
      ADADADFFACACACFF63503AFF452805FF442705FF452705FF452705FF442705FF
      442705FF432605FF432605FF442605FF432505FF432505FF432405FF422405FF
      422405FF422405FF422405FF422405FF422305FF412305FF422407FF52371DFF
      7A6756FFB0A9A3FFBAB9B7FFB1B1B1FFA5A5A5FFA0A0A0FF9E9E9EFF9D9D9DFF
      9B9B9BFF989898FF959595FF919191FF8B8B8BFF828282FF7A7A7AFF7E7E7EFF
      848484FF898989FF8C8C8CFF8F8F8FFF8A8A8AFF606060FF5E5E5EFF5F5F5FFF
      5F5F5FFF606060FF616161FF626262FF646464FF676767FF696969FF6E6E6EFF
      747474FF7A7A7AFF838383FF787878E31111115E0000003A0000002600000017
      0000000E00000007000000030000000100000001000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000010000000200000004
      0000000B0000001616161635878787D9919191FF8F8F8FFF8C8C8CFF898989FF
      A1A1A1FFD8D8D8FFD8D8D8FFD6D6D6FFD2D2D2FFA5A5A5FFACACACFFAFAFAFFF
      AEAEAEFFAAAAA9FF523A1DFF462905FF462805FF462905FF452805FF452805FF
      462805FF452705FF452705FF452605FF442605FF442705FF442605FF442605FF
      442605FF432505FF432505FF432405FF432405FF422405FF422305FF422305FF
      412305FF442508FF563B22FF847364FFB6B1ACFFBBB9B8FFAFAFAFFFA4A4A4FF
      A0A0A0FF9D9D9DFF9C9C9CFF999999FF979797FF939393FF8F8F8FFF898989FF
      808080FF7B7B7BFF818181FF878787FF858585FF5E5E5EFF5D5D5DFF5E5E5EFF
      5E5E5EFF5F5F5FFF606060FF626262FF646464FF666666FF6A6A6AFF6F6F6FFF
      757575FF7D7D7DFF818181F83737378C01010146000000310000002100000014
      0000000B00000006000000030000000100000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000100000002
      000000060000000D0202021B4F4F4F6A959595F8949494FF939393FF909090FF
      B5B5B5FFD8D8D8FFD7D7D7FFD6D6D6FFCDCDCDFFA6A6A6FFAEAEAEFFB0B0B0FF
      B0B0B0FFA2A09DFF4E3412FF472B05FF472A05FF462A05FF472905FF472905FF
      462905FF462805FF462905FF452805FF462805FF462805FF452705FF452705FF
      452705FF442705FF442705FF452605FF442605FF442505FF442505FF432505FF
      432405FF432405FF422405FF422305FF46280BFF5A4028FF8F8174FFBBB6B1FF
      BBBAB9FFADADADFFA3A3A3FF9F9F9FFF9D9D9DFF9B9B9BFF989898FF969696FF
      929292FF8E8E8EFF878787FF7D7D7DFF777777FF616161FF5E5E5EFF5E5E5EFF
      5F5F5FFF606060FF616161FF636363FF666666FF6A6A6AFF6E6E6EFF757575FF
      7B7B7BFF838383FE5A5A5AB90404044F00000039000000270000001A00000010
      0000000900000005000000020000000100000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000002
      00000003000000070000000F0B0B0B227E7E7EB0979797FE969696FF969696FF
      C4C4C4FFD8D8D8FFD7D7D7FFD4D4D4FFC8C8C8FFA8A8A8FFB0B0B0FFB1B1B1FF
      B1B1B1FF9A9690FF4A2E09FF482C05FF492B05FF482B05FF482A05FF482B05FF
      472A05FF482A05FF472A05FF472905FF472905FF462905FF462905FF472905FF
      462805FF462805FF462705FF452705FF452705FF452605FF452705FF452705FF
      452605FF442605FF442505FF442505FF432505FF432305FF432305FF482A0EFF
      5E452EFF988C81FFBEBAB7FFBAB9B9FFACACACFFA2A2A2FF9E9E9EFF9C9C9CFF
      9A9A9AFF989898FF959595FF919191FF8C8C8CFF848484FF757575FF686868FF
      616161FF616161FF636363FF666666FF6B6B6BFF707070FF767676FF7D7D7DFF
      858585FF747474D71212125900000039000000280000001B000000120000000B
      0000000600000003000000020000000100000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000100000004000000080000001121212136919191D9999999FF9B9B9BFF
      CBCBCBFFD7D7D7FFD5D5D5FFD3D3D3FFBFBFBFFFABABABFFB2B2B2FFB3B3B3FF
      B2B2B2FF898174FF482C04FF4A2C05FF492C05FF492D05FF492C05FF492C05FF
      492B05FF492C05FF482C05FF482B05FF492B05FF482A05FF482A05FF472A05FF
      472A05FF482A05FF472905FF472905FF472905FF462805FF462805FF462705FF
      452705FF452705FF462605FF452605FF452605FF452505FF442505FF442405FF
      432405FF432405FF4B2E12FF634A33FFA2978EFFBFBBB9FFB8B7B7FFA9A9A9FF
      A1A1A1FF9E9E9EFF9C9C9CFF9A9A9AFF979797FF949494FF909090FF898989FF
      808080FF737373FF6B6B6BFF6D6D6DFF727272FF797979FF818181FF888888FF
      828282E52020206101010136000000260000001A000000110000000B00000007
      0000000400000002000000010000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000010000000400000009020202134747474F959595EA9F9F9FFF
      D0D0D0FFD7D7D7FFD4D4D4FFD2D2D2FFB3B3B3FFAEAEAEFFB3B3B3FFB4B4B4FF
      B2B2B2FF72634EFF4B2E04FF4B2E05FF4A2E05FF4B2E05FF4B2D05FF4A2D05FF
      4A2D05FF492D05FF4A2C05FF4A2D05FF492D05FF492B05FF4A2C05FF492B05FF
      492B05FF492B05FF482B05FF492B05FF492A05FF482A05FF482A05FF472906FF
      472906FF472806FF462806FF462806FF462706FF452706FF452706FF452606FF
      452606FF442606FF442406FF442406FF432306FF4E3116FF69533EFFA79E95FF
      BEBBB9FFB5B5B5FFA8A8A8FFA0A0A0FF9D9D9DFF9B9B9BFF989898FF969696FF
      929292FF8E8E8EFF878787FF7D7D7DFF777777FF7E7E7EFF8A8A8AFF898989E9
      2F2F2F670000003200000022000000180000000F000000090000000600000004
      0000000200000001000000010000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000100000002000000040000000A0303031458585862A3A3A3F1
      D5D5D5FFD5D5D5FFD3D3D3FFD2D2D2FFACACACFFB2B2B2FFB5B5B5FFB5B5B5FF
      B3B2B2FF5D4827FF4C3005FF4D2F05FF4C2F05FF4C2F05FF4B2F05FF4B2F05FF
      4C2E05FF4B2E05FF4B2E05FF4B2E05FF4B2E05FF4B2D05FF4A2E05FF4A2D05FF
      4B2D05FF4A2C05FF4A2C06FF4A2C06FF492B06FF492B06FF4A2B06FF492A06FF
      492B06FF492A06FF482A06FF482A06FF482906FF472906FF472806FF472806FF
      462706FF462606FF462606FF452606FF442506FF442506FF432506FF442407FF
      50341AFF705A48FFACA29BFFBCB9B8FFB2B2B2FFA6A6A6FF9F9F9FFF9C9C9CFF
      9A9A9AFF989898FF959595FF919191FF8C8C8CFF868686FF7E7E7EFE676767CB
      1D1D1D590C0C0C29000000140000000C00000008000000050000000300000002
      0000000100000001000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000100000002000000040000000A030303148F8F8FAB
      D5D5D5FFD4D4D4FFD2D2D2FFCECECEFFACACACFFB4B4B4FFB7B7B7FFB6B6B6FF
      ACABA9FF553C17FF4D3105FF4D3005FF4D3105FF4D3005FF4D3005FF4D3005FF
      4C3005FF4D3005FF4D2F05FF4C3005FF4C2F05FF4D2F05FF4C2F05FF4C2E06FF
      4C2F06FF4B2E06FF4C2E06FF4B2E06FF4B2D06FF4B2D06FF4A2C06FF4A2C06FF
      4A2C06FF4A2B06FF4A2B06FF4A2B06FF492B06FF492B06FF492906FF482906FF
      482906FF482806FF472806FF462706FF462606FF452606FF452506FF452506FF
      442506FF432406FF442507FF52361DFF766251FFADA59FFFB9B7B6FFB0B0B0FF
      A4A4A4FF9E9E9EFF9C9C9CFF999999FF979797FF949494FF909090FF8A8A8AFF
      828282FA6E6E6EDC545454881D1D1D2C0D0D0D09000000020000000100000001
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000010000000200000004020202099E9E9EBD
      D4D4D4FFD3D3D3FFD2D2D2FFC9C9C9FFAEAEAEFFB6B6B6FFB8B8B8FFB7B7B7FF
      A5A19CFF52380FFF4F3306FF4E3206FF4E3206FF4E3205FF4E3205FF4E3205FF
      4E3105FF4E3105FF4E3105FF4E3105FF4E3006FF4D3006FF4D3106FF4E3006FF
      4D3006FF4D2F06FF4D3006FF4D3006FF4D2F06FF4D2F06FF4C2E06FF4C2E06FF
      4B2D06FF4B2D06FF4C2D06FF4B2C06FF4B2C06FF4B2C06FF4A2B06FF4A2B06FF
      4A2A06FF482A06FF482A06FF482806FF472806FF472806FF472706FF462706FF
      452606FF452506FF442506FF442406FF432406FF442508FF54381FFF7C6A5BFF
      AFA8A2FFB7B6B4FFAEADADFFA2A2A2FF9D9D9DFF9B9B9BFF999999FF969696FF
      929292FF8E8E8EFF888888FF7F7F7FF36C6C6CC9494949651313131C64646402
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000001000000021717170DBEBEBEDA
      D4D4D4FFD3D3D3FFD0D0D0FFC5C5C5FFB1B1B1FFB8B8B8FFB9B9B9FFB9B9B9FF
      9A938AFF4F3406FF4F3406FF4F3306FF503407FF4F3307FF503407FF503405FF
      4F3305FF503305FF4F3206FF4F3306FF4F3206FF4F3206FF4F3306FF4F3206FF
      4F3206FF4F3106FF4E3106FF4E3106FF4F3106FF4E3106FF4E3006FF4E3006FF
      4D2F06FF4D2F06FF4D2F06FF4C2E06FF4C2E06FF4B2D06FF4B2D06FF4B2D06FF
      4A2C06FF4A2C06FF4A2B06FF492A06FF492A06FF492906FF482906FF482906FF
      472806FF462706FF462606FF452606FF452506FF442406FF432406FF432406FF
      442509FF563B22FF807062FFB0AAA6FFB4B3B2FFABABABFFA2A2A2FF9D9D9DFF
      9A9A9AFF979797FF959595FF929292FF8D8D8DFF868686FE7B7B7BEC6E6E6EB4
      6666664665656513000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000011F1F1F1DC9C9C9EC
      D3D3D3FFD1D1D1FFCFCFCFFFBCBCBCFFB4B4B4FFBABABAFFBABABAFFB9B9B9FF
      837662FF503405FF513606FF513507FF513507FF513507FF513507FF503407FF
      513507FF513506FF513406FF513406FF513406FF513406FF513306FF503406FF
      513406FF513306FF503306FF503206FF503306FF503306FF503206FF4F3206FF
      4F3106FF4F3106FF4E3006FF4E3006FF4E3006FF4D2F06FF4D2F06FF4D2E06FF
      4C2E06FF4C2E06FF4C2D06FF4B2C06FF4B2C06FF4B2B06FF492B06FF492906FF
      492906FF482906FF472806FF472706FF462706FF462606FF452506FF442506FF
      442406FF432406FF422206FF46270BFF573D25FF86776AFFB0ABA6FFB3B2B1FF
      A9A9A9FFA0A0A0FF9B9B9BFF999999FF979797FF949494FF909090FF8B8B8BFF
      848484FD777777E26B6B6B9C646464326262620B000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000009B9B9B2BCECECEFA
      D2D2D2FFD0D0D0FFCECECEFFB5B5B5FFB7B7B7FFBBBBBBFFBCBCBCFFBABABAFF
      6D5A3AFF533707FF523707FF533707FF523707FF523607FF533707FF523607FF
      523607FF523707FF523607FF523606FF523506FF523606FF533506FF523506FF
      523606FF513506FF523506FF523406FF513406FF513306FF523406FF513406FF
      513306FF503306FF503206FF503206FF4F3206FF4F3106FF4F3106FF4E3006FF
      4E3006FF4E3006FF4D2E06FF4D2E06FF4D2D06FF4B2D06FF4B2D06FF4B2B06FF
      4A2B06FF4A2A06FF492A06FF482906FF482806FF472806FF462706FF462606FF
      452606FF442506FF442406FF432406FF422305FF422205FF46280DFF594029FF
      897B70FFAFAAA7FFB0AFAFFFA7A7A7FF9F9F9FFF9B9B9BFF989898FF969696FF
      939393FF8F8F8FFF898989FF818181F9737373D76969697E6363632560606004
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000A6A6A659D1D1D1FF
      D1D1D1FFCFCFCFFFCDCDCDFFB2B2B2FFBABABAFFBDBDBDFFBDBDBDFFB7B7B5FF
      5E471DFF533807FF543907FF543807FF533807FF543807FF543807FF543707FF
      543807FF533807FF543707FF543807FF533708FF543808FF533706FF543706FF
      543706FF533706FF543706FF543606FF533606FF533506FF533607FF533607FF
      533507FF523507FF523407FF523407FF513307FF513307FF503307FF503207FF
      503207FF4F3007FF4F3007FF4F3007FF4E2F07FF4D2F06FF4D2E06FF4C2D06FF
      4C2D06FF4B2C06FF4A2B06FF4A2B06FF492A06FF482906FF482806FF482806FF
      462706FF462606FF452506FF442506FF432406FF432306FF432305FF412205FF
      412105FF482A0FFF5A412BFF8E8277FFADA9A6FFAFAFAFFFA5A5A5FF9D9D9DFF
      9A9A9AFF989898FF949494FF929292FF8E8E8EFF878787FF7D7D7DF36F6F6FC7
      6868686066666610000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000B4B4B498D1D1D1FF
      D0D0D0FFCFCFCFFFC9C9C9FFB4B4B4FFBCBCBCFFBFBFBFFFBEBEBEFFAFADA8FF
      5A4213FF553A07FF553A07FF553907FF553A07FF553907FF553A07FF553907FF
      563A07FF553A07FF553908FF553A08FF553908FF563908FF553908FF553908FF
      563806FF553906FF563907FF553807FF553807FF553807FF543807FF553707FF
      553707FF543707FF543607FF533607FF533507FF533507FF523507FF523407FF
      523407FF513307FF513207FF513207FF4F3107FF4F3107FF4E2F07FF4E2F07FF
      4E2F07FF4C2E06FF4C2D06FF4C2C06FF4A2B06FF4A2B06FF492A06FF482A06FF
      482906FF472806FF462706FF462606FF452506FF452506FF432306FF432305FF
      432305FF412105FF402105FF402105FF482A11FF5E4733FF91867DFFAEAAA8FF
      ADADADFFA4A4A4FF9C9C9CFF999999FF979797FF949494FF919191FF8C8C8CFF
      848484FE747474CF6565651B0000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000009E9E9E01C0C0C0C6D1D1D1FF
      CECECEFFCDCDCDFFC6C6C6FFB7B7B7FFBEBEBEFFC0C0C0FFBFBFBFFFA6A299FF
      573D0AFF563B07FF573C07FF563B07FF573C07FF573B07FF573C07FF573B07FF
      563B08FF573C08FF573B08FF573C08FF573B08FF573B08FF573B08FF573B08FF
      563A08FF573B08FF573B07FF573A07FF573B07FF563A07FF573A07FF573907FF
      563907FF563907FF563807FF553807FF553707FF543707FF543607FF543607FF
      533607FF533507FF533507FF523307FF523307FF513307FF503207FF503107FF
      4F3007FF4E2F07FF4E2F07FF4C2E06FF4C2D06FF4C2D06FF4A2C06FF4A2B06FF
      492A06FF492906FF482906FF472706FF472706FF452606FF452506FF442506FF
      432306FF432305FF422205FF412105FF402105FF402105FF3F2005FF492C13FF
      624B3AFF988E86FFADAAA8FFACACACFFA2A2A2FF9B9B9BFF989898FF969696FF
      929292FF8A8A8AFF7272729E6868680100000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000A1A1A110C2C2C2E0D0D0D0FF
      CECECEFFCCCCCCFFC2C2C2FFBABABAFFC1C1C1FFC1C1C1FFC1C1C1FF938A78FF
      563B06FF583D07FF583D07FF583D07FF583D07FF593D07FF583D07FF593D08FF
      583D08FF593D08FF593D08FF583D08FF593D08FF583D08FF593C08FF593D08FF
      583C08FF593D09FF583D09FF593C09FF593C07FF583C07FF593C07FF593B07FF
      583B07FF583B07FF573A07FF573A07FF573907FF563907FF563807FF563807FF
      553807FF553707FF543707FF543507FF543507FF523507FF523307FF523307FF
      503207FF503207FF503107FF4E3007FF4E2F07FF4E2E07FF4C2E06FF4C2D06FF
      4B2B06FF4A2B06FF492A06FF492906FF472906FF472706FF462706FF452606FF
      442506FF442406FF432405FF422305FF422205FF402205FF402105FF3F2005FF
      3F2004FF3F1F05FF4A2E16FF685343FFA49E99FFACABABFF9D9D9DFF9B9B9BFF
      999999FF939393FF7D7D7DD86969690800000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000ADADAD21C6C6C6F1CFCFCFFF
      CDCDCDFFCBCBCBFFBCBCBCFFBEBEBEFFC2C2C2FFC2C2C2FFC1C1C1FF807153FF
      593E07FF593E07FF5A3F07FF593E07FF5A3F07FF593E08FF5A3F08FF5A3E08FF
      5A3F08FF5A3E08FF5A3F08FF5A3F08FF5B3F08FF5A3F08FF5B3F08FF5A3F09FF
      5A3E09FF5B3E09FF5A3F09FF5A3E09FF5B3E09FF5A3E09FF5A3E07FF5A3D07FF
      5A3D07FF5A3C07FF593C07FF593C07FF593B07FF593C07FF583A07FF573A07FF
      573A07FF573907FF563907FF563807FF563707FF543607FF543507FF533507FF
      533407FF523307FF513207FF503207FF503107FF4E3007FF4E2F07FF4D2E06FF
      4C2D06FF4B2D06FF4B2B06FF492B06FF492B06FF492906FF472806FF462706FF
      462606FF442606FF442406FF442405FF422405FF422205FF412205FF412105FF
      3F2005FF3F2005FF3F1F05FF3D1E04FF43260EFF9F9892FFA4A4A4FF9C9C9CFF
      9B9B9BFF979797FF808080CD6767670200000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000A7A7A734CCCCCCFDCECECEFF
      CCCCCCFFCACACAFFB9B9B9FFC0C0C0FFC3C3C3FFC4C4C4FFC0C0BFFF6F5A2FFF
      5F460FFF5B4108FF5B4107FF5B4007FF5B4008FF5B4008FF5B4008FF5B4008FF
      5B4008FF5C4008FF5C4108FF5C4108FF5D4108FF5C4109FF5D4109FF5C4109FF
      5C4009FF5D4109FF5C4109FF5D4009FF5C4009FF5C3F09FF5C4009FF5C3F09FF
      5C3F09FF5B3F08FF5B3F07FF5C3F08FF5B3E08FF5B3E08FF5B3D08FF5A3D08FF
      5A3B08FF583B07FF583B07FF583A07FF573907FF563807FF563807FF553807FF
      543607FF543607FF533407FF523307FF513307FF503207FF503107FF4E3007FF
      4E2F07FF4D2F06FF4C2D06FF4B2D06FF4B2B06FF492B06FF492A06FF482806FF
      472806FF462806FF462606FF442606FF442405FF432405FF422305FF412205FF
      412105FF402105FF3F2005FF3F1F05FF3E1F04FF5F4937FFA9A9A9FF9D9D9DFF
      9C9C9CFF979797FF8181819F0000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000A8A8A86FCDCDCDFFCDCDCDFF
      CBCBCBFFC9C9C9FFBABABAFFC3C3C3FFC5C5C5FFC5C5C5FFBAB8B5FF695321FF
      644A13FF61470EFF5D4208FF5C4208FF5D4208FF5D4208FF5D4208FF5D4208FF
      5D4208FF5E4208FF5D4208FF5E4309FF5E4309FF5E4309FF5E4209FF5E4309FF
      5E4209FF5E4309FF5E4209FF5F4309FF5E4309FF5E4209FF5E420AFF5E410AFF
      5E420AFF5D410AFF5D410AFF5D4108FF5D4008FF5D4008FF5C3F08FF5C3F08FF
      5B3D08FF5A3D08FF5A3D08FF5A3C08FF593B08FF583A07FF573A07FF573907FF
      573807FF553807FF553607FF543607FF533407FF523407FF523307FF503207FF
      503107FF4F3007FF4E2F07FF4D2E06FF4B2D06FF4B2C06FF4A2B06FF492A06FF
      482A06FF482806FF462806FF462706FF452606FF452505FF432505FF432305FF
      422305FF412105FF402105FF402105FF3E1F04FF5B4533FFA8A8A8FF9E9E9EFF
      9D9D9DFF969696FF797979660000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000B5B5B5A8CDCDCDFFCCCCCCFF
      CBCBCBFFC6C6C6FFBDBDBDFFC5C5C5FFC7C7C7FFC6C6C6FFB3AFA8FF67501AFF
      654D14FF664C13FF62490FFF5E4408FF5E4408FF5E4408FF5F4408FF5E4408FF
      5F4408FF5F4408FF5F4409FF604509FF5F4409FF604509FF5F4409FF604509FF
      614509FF604509FF60440AFF61450AFF60450AFF60440AFF60440AFF60430AFF
      60440AFF5F430AFF5F430AFF5E430AFF5E420AFF5E4208FF5E4108FF5E4108FF
      5E4008FF5C3F08FF5C3E08FF5B3E08FF5B3E08FF5A3C08FF593C08FF593B08FF
      593A08FF573A07FF573807FF553807FF553607FF543607FF533407FF523307FF
      523307FF503107FF4F3107FF4F3007FF4D2F06FF4D2E06FF4C2C06FF4A2C06FF
      4A2B06FF492A06FF482906FF472806FF472706FF452706FF452505FF442505FF
      432405FF422305FF422205FF402205FF3F2004FF7A6B60FFA5A5A5FF9F9F9FFF
      9E9E9EFF949494FC8282822F0000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000091919103BABABAD1CDCDCDFFCBCBCBFF
      C9C9C9FFC4C4C4FFC0C0C0FFC6C6C6FFC8C8C8FFC7C7C7FFA59F91FF664E14FF
      674E14FF664E15FF684E15FF644A0FFF604608FF604508FF614608FF604508FF
      614609FF614609FF614609FF624709FF614609FF624709FF624709FF624709FF
      62460AFF62470AFF62460AFF61460AFF62470AFF62460AFF61460AFF62460AFF
      61460AFF61450AFF61450AFF60440AFF61440AFF60440AFF60430AFF5F4308FF
      5F4208FF5F4208FF5F4108FF5D4008FF5D4008FF5C3F08FF5B3E08FF5B3C08FF
      593C08FF593B08FF593A08FF573A07FF573807FF563807FF553607FF543507FF
      523507FF523307FF513307FF4F3107FF4F3007FF4E3006FF4D2E06FF4C2E06FF
      4B2C06FF4A2C06FF492B06FF492906FF472906FF462806FF462706FF452605FF
      442505FF432405FF422405FF422205FF3E2003FF99918BFFA3A3A3FFA0A0A0FF
      9E9E9EFF909090EE8080801E0000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000A0A0A016BFBFBFE6CCCCCCFFCACACAFF
      C8C8C8FFC1C1C1FFC3C3C3FFC9C9C9FFC9C9C9FFC8C8C8FF908569FF695015FF
      695016FF695016FF6A5116FF6A5116FF664C10FF624808FF614808FF624709FF
      634809FF624809FF634809FF634909FF634809FF644909FF63480AFF64490AFF
      63480AFF64490AFF64480AFF64490AFF64490AFF64480AFF64490AFF64480AFF
      63480AFF63470AFF64480AFF63460AFF63460AFF62460AFF62450AFF62450AFF
      61440AFF61440AFF604308FF5F4308FF5F4208FF5E4108FF5E4008FF5D3F08FF
      5C3F08FF5B3D08FF5A3C08FF593C08FF593A08FF573A07FF563807FF563807FF
      543707FF543507FF533507FF513307FF503207FF4F3107FF4E3006FF4E2F06FF
      4C2E06FF4B2D06FF4B2D06FF492B06FF492A06FF482906FF462806FF462705FF
      452605FF442605FF432505FF432405FF43270AFFA6A29EFFA3A3A3FFA1A1A1FF
      9F9F9FFF8C8C8CDE7777770D0000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000AFAFAF25C5C5C5F6CBCBCBFFC9C9C9FF
      C7C7C7FFBEBEBEFFC6C6C6FFCACACAFFCACACAFFC8C8C8FF7D6C43FF6A5317FF
      6B5317FF6B5317FF6C5417FF6C5317FF6C5316FF694F11FF64490AFF644909FF
      644A09FF644909FF654A09FF654B09FF654A09FF664B0AFF654A0AFF664B0AFF
      654A0AFF664B0AFF664A0AFF664B0AFF664B0AFF664B0AFF664B0BFF664A0BFF
      654A0BFF664A0BFF654A0BFF65490BFF65490BFF64490BFF64480BFF63480BFF
      63460BFF63460BFF61450BFF61450AFF614408FF604308FF604308FF5E4108FF
      5E4108FF5D3F08FF5C3F08FF5B3E08FF5B3C08FF593C08FF583A07FF573A07FF
      563807FF553707FF543607FF533507FF533407FF513207FF503207FF4F3106FF
      4E2F06FF4D2F06FF4B2D06FF4B2C06FF4A2C06FF482A06FF482A06FF472806FF
      462705FF452705FF452505FF432505FF4B3017FFAAA8A6FFA3A3A3FFA2A2A2FF
      9E9E9EFF8B8B8BC0737373010000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000A6A6A643C9C9C9FECACACAFFC8C8C8FF
      C7C7C7FFBEBEBEFFC9C9C9FFCCCCCCFFCCCCCCFFC4C3C1FF74602BFF6D5417FF
      6C5417FF6D5618FF6E5518FF6D5618FF6E5617FF6E5618FF6C5212FF664D0BFF
      654C09FF654B09FF664C09FF664D0AFF674C0AFF674D0AFF674D0AFF684D0AFF
      674D0AFF684D0AFF684D0AFF684D0AFF684D0BFF684D0BFF684D0BFF674C0BFF
      684D0BFF684C0BFF674C0BFF674B0BFF674B0BFF664B0BFF664A0BFF654A0BFF
      65490BFF65490BFF64470BFF63470BFF62460BFF62450AFF614509FF604408FF
      604308FF5F4108FF5E4108FF5D3F08FF5C3F08FF5B3E08FF5A3C08FF593B08FF
      583A07FF573907FF553807FF553707FF533607FF523407FF523407FF503107FF
      4F3106FF4F3106FF4D2F06FF4C2E06FF4C2C06FF4A2C06FF492B06FF492A06FF
      472906FF472905FF462705FF442605FF563D26FFAEAEAEFFA4A4A4FFA3A3A3FF
      9E9E9EFF8484848E000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000A9A9A984C9C9C9FFC9C9C9FFC7C7C7FF
      C5C5C5FFC2C2C2FFCBCBCBFFCDCDCDFFCDCDCDFFBDBAB4FF725B24FF6E5619FF
      6F5719FF705718FF705718FF705818FF715918FF715918FF705919FF6E5615FF
      694F0BFF674D09FF674E0AFF684F0AFF684E0AFF684F0AFF694F0AFF694F0AFF
      694F0AFF6A500BFF694F0BFF6A4F0BFF6A4F0BFF6A4F0BFF6A4F0BFF6A4F0BFF
      6A4F0BFF6A4E0BFF694E0BFF694D0BFF684D0BFF684D0BFF684C0BFF674C0BFF
      674B0BFF664B0BFF66490BFF66490BFF64480BFF64480BFF62470BFF62460BFF
      624509FF604408FF604308FF5F4108FF5E4008FF5D4008FF5B3E08FF5B3E08FF
      5A3C08FF583B07FF573907FF573807FF553807FF543607FF523507FF523307FF
      513307FF4F3206FF4F3006FF4E3006FF4C2E06FF4C2D06FF4B2D06FF492B06FF
      482A06FF482906FF472905FF452704FF746251FFACACACFFA5A5A5FFA3A3A3FF
      9D9D9DFF7E7E7E51000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000B4B4B4B8C9C9C9FFC8C8C8FFC7C7C7FF
      C4C4C4FFC5C5C5FFCDCDCDFFCECECEFFCECECEFFB5B0A5FF6F591BFF705819FF
      71591BFF715A1BFF71591AFF725A19FF735B19FF735A19FF735B19FF745B19FF
      725A17FF6C520DFF69500AFF6A500AFF6A500AFF6A510AFF6B500AFF6B510BFF
      6B510BFF6C520BFF6C510BFF6C520BFF6C520BFF6C510BFF6C510BFF6C510BFF
      6C510BFF6B500CFF6B500CFF6C500CFF6B500CFF6B500CFF6A4F0CFF6A4F0CFF
      694D0CFF684D0CFF684C0BFF684C0BFF664A0BFF664A0BFF65490BFF64480BFF
      64470BFF62460BFF61450AFF604308FF604308FF5F4208FF5D4008FF5D4008FF
      5C3E08FF5A3D08FF593B07FF573A07FF573907FF563807FF543707FF533507FF
      533507FF513207FF503206FF4E3106FF4E2F06FF4D2F06FF4B2D06FF4B2D06FF
      4A2C06FF482A06FF482A05FF452604FF94897FFFAAAAAAFFA6A6A6FFA5A5A5FF
      9A9A9AF886868628000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000098989809B8B8B8D9C9C9C9FFC8C8C8FFC6C6C6FF
      C4C4C4FFC9C9C9FFCFCFCFFFD0D0D0FFCFCFCFFFA19980FF71591AFF725B1BFF
      735B1CFF735B1CFF735C1BFF745D1BFF745D1CFF745D1CFF755E1AFF755E1AFF
      775F1BFF765E19FF705710FF6C520AFF6B520AFF6C530AFF6D530BFF6D530BFF
      6D530BFF6D540BFF6E530BFF6E540BFF6E540BFF6E540BFF6E540CFF6E530CFF
      6E530CFF6D520CFF6E530CFF6E520CFF6D520CFF6D520CFF6C510CFF6C510CFF
      6C500CFF6B500CFF6A4E0CFF694E0CFF694D0CFF684C0BFF674C0BFF664A0BFF
      65490BFF64480BFF63470BFF62460BFF61450AFF614308FF5F4308FF5F4208FF
      5D4008FF5C3F08FF5B3D08FF593C07FF583A07FF583907FF563807FF553707FF
      533607FF523407FF523407FF503306FF4F3106FF4E3006FF4D2E06FF4C2E06FF
      4B2D06FF4A2C06FF492B06FF472A06FFAAA6A0FFA9A9A9FFA7A7A7FFA5A5A5FF
      969696E981818119000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000A2A2A21CBDBDBDECC9C9C9FFC7C7C7FFC5C5C5FF
      C3C3C3FFCDCDCDFFD0D0D0FFD1D1D1FFCFCFCFFF8E805BFF735C1CFF745D1DFF
      755D1DFF755D1CFF755D1CFF775F1CFF765E1DFF76601DFF78611EFF78611DFF
      79611CFF79621CFF7A631CFF755C13FF6F550BFF6E550BFF6E550BFF6F550BFF
      6F550BFF6F560BFF6F550BFF70560CFF70550CFF70560CFF70560CFF70560CFF
      70560CFF70550CFF70550CFF6F540CFF6F540CFF6F530CFF6E530CFF6E530CFF
      6D520CFF6D520CFF6C500CFF6B500CFF6B4F0CFF694E0CFF694E0CFF684C0CFF
      674C0BFF664A0BFF66490BFF64480BFF63470BFF61450BFF61440AFF604408FF
      5F4208FF5E4108FF5C3F08FF5B3E08FF5A3C07FF583B07FF573A07FF573807FF
      553807FF543607FF523507FF513306FF513306FF4F3206FF4E3006FF4D2F06FF
      4C2E06FF4B2D06FF4A2C06FF4F3312FFAFACA9FFAAAAAAFFA8A8A8FFA6A6A6FF
      929292D67A7A7A07000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000ABABAB2BC4C4C4FAC8C8C8FFC6C6C6FFC5C5C5FF
      C4C4C4FFCFCFCFFFD2D2D2FFD2D2D2FFCECECCFF806C37FF755F1EFF76601EFF
      77601EFF76601DFF78611DFF77601EFF77601EFF79621EFF79621EFF7A631EFF
      7C6420FF7C651FFF7D661EFF7E671FFF7B6219FF72590EFF70570BFF70570BFF
      71570BFF71580BFF71570CFF71580CFF71570CFF72580CFF72590CFF72580CFF
      72580CFF72570CFF72580CFF71560CFF71560CFF70550CFF70550CFF70550CFF
      6F540CFF6F540CFF6F530CFF6D520CFF6D510CFF6B500CFF6B4F0CFF6B4F0CFF
      694E0CFF684C0CFF664B0BFF66490BFF65490BFF63470BFF63460BFF61450AFF
      60440AFF5F4308FF5E4108FF5D4008FF5C3E08FF5A3D07FF593C07FF573A07FF
      573A07FF563807FF543707FF533507FF523406FF503306FF4F3206FF4E3106FF
      4D2F06FF4C2E06FF4B2D06FF583E21FFB4B3B2FFAAAAAAFFA9A9A9FFA5A5A5FF
      929292B000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000009E9E9E59C6C6C6FFC7C7C7FFC6C6C6FFC4C4C4FF
      C7C7C7FFD1D1D1FFD4D4D4FFD3D3D3FFC7C5C1FF7C672CFF77611FFF78601FFF
      78611EFF78611EFF7A621FFF79631FFF7A631FFF7B641FFF7B651FFF7D6621FF
      7E6620FF7F6721FF806922FF806A22FF816A22FF816A1FFF786013FF735A0CFF
      72590CFF735A0CFF73590CFF735A0CFF745A0CFF735A0CFF735A0CFF745A0CFF
      745A0DFF745A0DFF745A0DFF73590DFF73590DFF72580DFF73580DFF72570DFF
      71560DFF71560DFF70550DFF70550CFF6F530CFF6E530CFF6D510CFF6C510CFF
      6B500CFF6A4E0CFF694E0CFF684C0BFF664B0BFF65490BFF65480BFF63470BFF
      62460BFF61450AFF5F430AFF5E4208FF5D4008FF5C3F08FF5B3D07FF593C07FF
      583B07FF573907FF553907FF543607FF533607FF523506FF513306FF4F3206FF
      4E3106FF4E3006FF4B2E05FF6C5940FFB5B5B5FFABABABFFAAAAAAFFA4A4A4FF
      8A8A8A7A00000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000AAAAAA97C6C6C6FFC5C5C5FFC4C4C4FFC3C3C3FF
      CACACAFFD3D3D3FFD5D5D5FFD4D4D4FFBFBCB4FF7A6424FF796320FF79621FFF
      79631FFF7A641FFF7B6420FF7B6520FF7C6620FF7C6620FF7D6721FF7F6822FF
      7F6922FF806A22FF826C24FF836C24FF846E25FF856F25FF867025FF80691CFF
      775E0FFF755C0CFF765C0CFF755C0CFF765C0CFF755C0CFF765D0DFF765C0DFF
      755C0DFF765C0DFF755C0DFF765B0DFF765B0DFF755A0DFF755A0DFF745A0DFF
      73580DFF73580DFF72570DFF71560DFF70550DFF70550CFF6F530CFF6E530CFF
      6D520CFF6C500CFF6B500CFF6A4E0CFF684D0BFF674B0BFF664A0BFF64490BFF
      63470BFF62460AFF61450AFF60440AFF5E420AFF5D410AFF5C3F08FF5B3E07FF
      5A3D07FF583B07FF573A07FF563807FF543707FF533506FF523506FF513406FF
      503206FF4E3106FF4D2F05FF8D8070FFB2B2B2FFACACACFFABABABFFA4A4A4FE
      8585853D00000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000095959501B4B4B4C6C6C6C6FFC5C5C5FFC3C3C3FFC3C3C3FF
      CECECEFFD5D5D5FFD6D6D6FFD5D5D5FFB1AA96FF79631FFF7B6521FF7B6520FF
      7C6620FF7C6721FF7C6621FF7D6721FF7E6821FF7F6822FF806923FF816A22FF
      826C23FF836C24FF846E25FF856F26FF877127FF887227FF8A7429FF8B752AFF
      8A7326FF7F6716FF785F0DFF775E0CFF785E0DFF775E0DFF785F0DFF775E0DFF
      775E0DFF785E0DFF775E0DFF775D0DFF775D0DFF775C0DFF775C0DFF765C0DFF
      765B0DFF755B0DFF74590DFF74590DFF72570DFF72570DFF71550DFF70550CFF
      6F540CFF6D520CFF6D520CFF6C500CFF6A4F0CFF694D0BFF674C0BFF674B0BFF
      65490BFF63480BFF63460AFF62450AFF60430AFF5F420AFF5D400AFF5C4009FF
      5B3E07FF593D07FF583C07FF573A07FF553907FF553707FF533606FF523506FF
      513406FF503306FF4C2F05FFABA59DFFB0B0B0FFADADADFFACACACFFA0A0A0F4
      8F8F8F2300000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000009898980FB6B6B6E0C6C6C6FFC4C4C4FFC3C3C3FFC3C3C3FF
      D2D2D2FFD7D7D7FFD7D7D7FFD6D6D6FF9D9170FF7C6521FF7C6621FF7C6621FF
      7D6721FF7D6722FF7E6822FF7F6922FF806A22FF816C24FF826C24FF826D24FF
      846E24FF856F26FF867026FF887227FF897328FF8A742AFF8C762BFF8D782BFF
      8F792CFF8F7A2DFF897223FF7D6512FF79600DFF79600DFF7A610DFF79600DFF
      79610DFF7A600DFF79600DFF795F0DFF78600DFF785F0DFF785E0DFF785F0DFF
      785D0DFF765D0DFF765C0DFF765B0DFF755A0DFF74590DFF72570DFF72570DFF
      71560DFF6F540CFF6F540CFF6D520CFF6C510CFF6B4F0CFF694E0BFF684C0BFF
      674B0BFF654A0BFF64480BFF62470AFF61450AFF60440AFF5E420AFF5D410AFF
      5C4009FF5B3E09FF5A3E07FF583C07FF573B07FF563807FF543806FF543606FF
      523506FF513406FF53370EFFB5B2AEFFB0B0B0FFAFAFAFFFACACACFF9C9C9CE4
      8686861300000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000A3A3A321BBBBBBF1C5C5C5FFC3C3C3FFC2C2C2FFC5C5C5FF
      D4D4D4FFD8D8D8FFD8D8D8FFD6D6D6FF8C7C4AFF7D6722FF7E6822FF7E6922FF
      7E6922FF7F6A23FF806A23FF806B22FF816B24FF826D25FF836D24FF846E25FF
      857026FF877127FF887328FF8A7529FF8B752AFF8D772BFF8E792CFF8F7B2DFF
      917C2FFF937E30FF957F31FF937E2FFF897220FF7E6510FF7C620DFF7B620DFF
      7B630DFF7B620EFF7B620EFF7B610EFF7A620EFF7A610EFF79610EFF79600EFF
      795F0EFF795F0EFF785E0DFF785D0DFF765C0DFF765B0DFF74590DFF74590DFF
      73580DFF71560DFF70550CFF6F540CFF6E530CFF6D510CFF6B500CFF6A4E0BFF
      684D0BFF674C0BFF664A0BFF64490BFF63470AFF61460AFF60440AFF5F430AFF
      5D4109FF5C4009FF5B3F09FF593D09FF583C07FF563A07FF563907FF553706FF
      533606FF523506FF5B421CFFB9B8B5FFB0B0B0FFB0B0B0FFACACACFF989898CD
      7A7A7A0200000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000009E9E9E34C1C1C1FDC4C4C4FFC3C3C3FFC2C2C2FFCACACAFF
      D7D7D7FFDADADAFFD9D9D9FFD1D0CDFF847134FF7E6923FF7F6923FF806A23FF
      7F6B24FF816C24FF826C24FF826D23FF846E25FF846F26FF857025FF877127FF
      887227FF897328FF8B7529FF8C762AFF8D782CFF8F792DFF907C2DFF927D30FF
      947F32FF958132FF978233FF998333FF998535FF978131FF89711EFF7F6610FF
      7D650EFF7D640EFF7D640EFF7D630EFF7C640EFF7C630EFF7B630EFF7B620EFF
      7B610EFF7A610EFF79600EFF795F0EFF785E0EFF785D0DFF765C0DFF765B0DFF
      745A0DFF73580DFF72570DFF71560CFF70550CFF6E530CFF6D520CFF6C500CFF
      6A4F0BFF694E0BFF684C0BFF664B0BFF65490AFF63480AFF61450AFF61450AFF
      5F420AFF5E4109FF5C4009FF5B3E09FF5A3D09FF583C09FF573B08FF553906FF
      543806FF533605FF68512FFFBDBDBDFFB2B2B2FFB1B1B1FFACACACFF9595959F
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000A0A0A06FC3C3C3FFC4C4C4FFC3C3C3FFC2C2C2FFCECECEFF
      D9D9D9FFDBDBDBFFDADADAFFC9C7BFFF826D2CFF806B24FF806B24FF816B24FF
      816C25FF836E25FF836D24FF846E26FF857026FF857126FF877226FF887328FF
      897428FF8C7629FF8C762AFF8E792CFF8F7B2DFF907C2EFF927E2FFF948032FF
      968132FF988334FF9A8435FF9B8736FF9C8939FF9E8A3AFF9F8A39FF998331FF
      8A721CFF806811FF7F660EFF7E660EFF7E660EFF7E650EFF7D650EFF7D640EFF
      7C630EFF7C630EFF7B620EFF7A610EFF79600EFF795F0EFF785E0DFF775D0DFF
      765C0DFF755A0DFF745A0DFF72570DFF71560CFF6F540CFF6E530CFF6D510CFF
      6B500CFF6A4F0BFF684D0BFF674C0BFF664A0BFF64490AFF63470AFF61460AFF
      60440AFF5F4309FF5D4209FF5C4009FF5A3F09FF593D09FF583C08FF563A08FF
      553908FF543705FF877962FFBABABAFFB3B3B3FFB2B2B2FFACACACFF8D8D8D66
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000ACACACA9C4C4C4FFC4C4C4FFC3C3C3FFC2C2C2FFD3D3D3FF
      DADADAFFDCDCDCFFDBDBDBFFC0BCACFF816B25FF826C25FF816C24FF816D25FF
      836F26FF856F25FF846F25FF857127FF867126FF887227FF897429FF8A7529FF
      8B752AFF8D782BFF8E792CFF8F7B2DFF917D2FFF937F2FFF958032FF968333FF
      988334FF998535FF9B8737FF9D8939FF9E8A3AFFA08C3BFFA18E3CFFA38F3EFF
      A18F3CFF9B8732FF8B751EFF826912FF80670FFF7F660EFF7F660EFF7F650EFF
      7E650EFF7E650EFF7D640EFF7C630EFF7C620EFF7A610EFF795F0EFF795F0EFF
      785E0DFF775C0DFF755B0DFF745A0DFF73590DFF71560CFF70550CFF6E530CFF
      6D520CFF6C510BFF6A4F0BFF694E0BFF674C0BFF664B0AFF65490AFF62470AFF
      61450AFF60440AFF5F4409FF5D4109FF5B4009FF5B3E09FF593D08FF583B08FF
      573A08FF533707FFA89F92FFB7B7B7FFB4B4B4FFB2B2B2FFAAAAAAFC9999992F
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000008C8C8C03B0B0B0D1C4C4C4FFC3C3C3FFC2C2C2FFC4C4C4FFD7D7D7FF
      DDDDDDFFDDDDDDFFDCDCDCFFACA285FF816C24FF836D25FF836E26FF846F26FF
      857027FF857026FF867027FF877227FF877327FF897428FF8A7629FF8C772AFF
      8D792BFF8F7A2CFF907B2DFF927D2EFF937E2FFF958031FF978233FF988434FF
      9A8635FF9B8737FF9D8A39FF9F8C3BFFA18D3CFFA18F3CFFA3903EFFA4923FFF
      A59240FFA69442FFA59340FF9F8A37FF866D16FF816811FF81680FFF81670EFF
      80670EFF80670EFF7E650EFF7E650EFF7D640EFF7C630EFF7B610EFF79610EFF
      79600EFF785E0DFF775D0DFF765B0DFF745A0DFF73580CFF72570CFF70550CFF
      6F540CFF6E530CFF6C510BFF6A4F0BFF684D0BFF674C0BFF664A0AFF64490AFF
      63470AFF61460AFF604509FF5F4309FF5D4209FF5C4009FF5A3F09FF593D08FF
      583C08FF573C0BFFBCB7B1FFB7B7B7FFB5B5B5FFB3B3B3FFA6A6A6EE9494941E
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000009A9A9A16B6B6B6E7C4C4C4FFC3C3C3FFC2C2C2FFC6C6C6FFDADADAFF
      DEDEDEFFDEDEDEFFDDDDDDFF9A8C5FFF836E26FF836F26FF847027FF857027FF
      867127FF877227FF877228FF897328FF8A7528FF8A7529FF8C772AFF8D782BFF
      8E7A2CFF8F7B2DFF917D2EFF937F30FF958130FF978333FF988535FF9A8635FF
      9C8837FF9D8938FF9F8B3AFFA08E3CFFA38F3DFFA4923FFFA59240FFA69441FF
      A79443FFA79442FFA99643FFA6913DFF876E14FF836A11FF836A11FF826911FF
      82690FFF81690FFF80670EFF7F670EFF7E650EFF7D650EFF7D630EFF7B620EFF
      7A610EFF79600DFF785F0DFF775D0DFF755C0DFF745A0DFF73590CFF71570CFF
      70560CFF6E550CFF6D520BFF6C510BFF6A4F0BFF694E0BFF674C0AFF654A0AFF
      64480AFF62470AFF61460AFF5F4409FF5E4309FF5D4109FF5B4009FF5A3E08FF
      593D08FF5F4617FFBFBCB9FFB8B8B8FFB6B6B6FFB4B4B4FFA2A2A2DE8989890D
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000A7A7A726BCBCBCF6C4C4C4FFC2C2C2FFC1C1C1FFCBCBCBFFDDDDDDFF
      E0E0E0FFDFDFDFFFDADAD8FF8D7C3DFF847027FF857027FF867128FF877227FF
      877328FF897329FF887328FF8A7629FF8B772AFF8C772AFF8C792BFF8E7A2CFF
      907C2DFF917D2EFF937F30FF948030FF968232FF988534FF998535FF9B8836FF
      9E8B3AFF9F8C3AFFA08E3CFFA28F3CFFA3923EFFA59341FFA79441FFA89642FF
      A99644FFA99744FFAA9845FF9C882FFF846D11FF856C11FF846C11FF836B11FF
      836B11FF826A11FF826911FF81680FFF80670EFF7F660EFF7E650EFF7D640EFF
      7C620EFF7A610EFF79610DFF785E0DFF765E0DFF765C0DFF745B0DFF73580CFF
      72570CFF70560CFF6F540CFF6C530BFF6B500BFF6A4F0BFF684D0BFF674C0AFF
      65490AFF64490AFF63480AFF614609FF604509FF5E4209FF5C4109FF5B3F08FF
      593E08FF685127FFC4C3C3FFB8B8B8FFB8B8B8FFB4B4B4FFA1A1A1C085858501
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000009E9E9E43C1C1C1FEC3C3C3FFC2C2C2FFC1C1C1FFD2D2D2FFDFDFDFFF
      E1E1E1FFE0E0E0FFD3D1CBFF897734FF867228FF867228FF877228FF877328FF
      887429FF8A7429FF8A752AFF8C772AFF8C782AFF8D782BFF8E7A2CFF907C2CFF
      907D2EFF937E2FFF948030FF958231FF978433FF998634FF9B8836FF9D8A37FF
      9F8C3AFFA08D3BFFA2903DFFA4913EFFA59341FFA79542FFA89643FFA99744FF
      AA9844FFAA9945FFAA9844FF8E771CFF856E11FF866E11FF856D11FF856C11FF
      856C11FF846B11FF846C12FF917A22FF876F17FF826910FF7F660EFF7E660EFF
      7E640EFF7C630EFF7B620EFF79600DFF785F0DFF775D0DFF755C0DFF745A0CFF
      73590CFF71570CFF70550CFF6E540BFF6D520BFF6B510BFF694E0BFF684D0AFF
      664B0AFF654A0AFF64480AFF624709FF614609FF5F4409FF5E4309FF5D4108FF
      5A3F07FF827052FFC4C4C4FFB9B9B9FFB9B9B9FFB3B3B3FF9B9B9B8E00000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000A2A2A285C2C2C2FFC2C2C2FFC1C1C1FFC2C2C2FFD6D6D6FFE0E0E0FF
      E2E2E2FFE1E1E1FFCBC8BEFF86722CFF887329FF887329FF887429FF897529FF
      897529FF8A762AFF8B772AFF8C782AFF8C792CFF8F7B2CFF907B2CFF917D2DFF
      937F2FFF94802FFF958231FF978332FF988533FF9A8635FF9C8937FF9E8C37FF
      9F8D39FFA18F3BFFA3913DFFA5923FFFA79541FFA79542FFA89744FFAB9945FF
      AC9945FFAC9A46FFA7943EFF897213FF877012FF876F12FF866F12FF866E11FF
      866E11FF856C11FF8B7318FFA4913EFFA28E3AFF9B8632FF8F7923FF846C15FF
      806710FF7D640EFF7C640EFF7A620DFF79610DFF785E0DFF775E0DFF755B0DFF
      735A0CFF72580CFF71570CFF6F560BFF6E530BFF6C520BFF6B500BFF694F0AFF
      674C0AFF664B0AFF64490AFF634809FF624709FF604509FF5F4409FF5E4209FF
      5B3F07FFA29783FFC0C0C0FFBBBBBBFFB9B9B9FFB3B3B3FF9292925100000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000ACACACB9C2C2C2FFC2C2C2FFC1C1C1FFC5C5C5FFDBDBDBFFE2E2E2FF
      E3E3E3FFE2E2E2FFCBC8BFFF836F29FF88732AFF89742AFF89752AFF8A7529FF
      8A762AFF8C772BFF8C782BFF8D7A2BFF8F7A2DFF8F7B2CFF907D2DFF927E2EFF
      947F2FFF948130FF968331FF998533FF9A8633FF9C8835FF9D8A37FF9E8B38FF
      A08E3AFFA2903BFFA4923DFFA6943FFFA89540FFA99742FFAA9943FFAB9945FF
      AC9A46FFAD9B47FF9B862BFF887112FF887112FF877112FF877112FF877012FF
      866F12FF866E11FF988229FFA7933FFFA5913EFFA38F3CFFA08C3AFF9C8836FF
      97822EFF8D7721FF846C16FF7E6611FF7B620EFF79600DFF785F0DFF775D0DFF
      745B0CFF745A0CFF71580CFF70570CFF6F550BFF6D540BFF6C510BFF6B500AFF
      694E0AFF674D0AFF654A0AFF64490AFF634809FF614609FF604509FF5E4309FF
      5B4106FFC0BAB0FFBEBEBEFFBCBCBCFFBABABAFFB1B1B1F89D9D9D2800000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      94949409B1B1B1D9C3C3C3FFC3C3C3FFC7C7C7FFD0D0D0FFDFDFDFFFE3E3E3FF
      E4E4E4FFE3E3E3FFDBDBDAFF998D64FF816D24FF877227FF89752AFF8A762AFF
      8B782BFF8D792BFF8D792BFF8D7B2CFF907C2DFF907C2DFF927E2EFF93802FFF
      94802FFF968230FF988431FF998533FF9A8834FF9D8935FF9E8B37FF9F8E39FF
      A28F3BFFA4913BFFA5933EFFA69540FFA89641FFAA9842FFAB9A44FFAC9B44FF
      AD9C46FFAC9A44FF8F7919FF8A7312FF8A7212FF897212FF897212FF897112FF
      877112FF897214FFA4913BFFA79540FFA5923FFFA3903CFFA18D3AFF9E8A38FF
      9C8736FF998433FF96812FFF917C2BFF8C7523FF846C1AFF7D6513FF7A600FFF
      775E0DFF755B0CFF735A0CFF71580CFF70560BFF6E550BFF6D530BFF6B510BFF
      6A4F0AFF694E0AFF664C0AFF654B0AFF634A09FF624709FF614609FF5F4409FF
      634A13FFC5C2BDFFBFBFBFFFBDBDBDFFBBBBBBFFACACACE99898981900000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      9C9C9C1CB7B7B7ECC6C6C6FFCDCDCDFFD8D8D8FFE4E4E4FFE1E1E1FFE4E4E4FF
      E4E4E4FFE4E4E4FFE3E3E3FFD9D9D7FFB8B29FFF90814CFF83712FFF857023FF
      8A7729FF8D7A2CFF8E7B2CFF8F7C2CFF907C2CFF917F2DFF93802EFF94802FFF
      958230FF978431FF988532FF9A8733FF9B8935FF9D8A35FF9E8C38FFA18E39FF
      A28F3AFFA3913CFFA5933FFFA7953FFFA89741FFA99943FFAB9943FFAD9A44FF
      AD9C47FFA6943BFF8C7513FF8B7412FF8A7312FF8A7412FF8A7312FF897212FF
      897212FF907A1DFFA89642FFA89440FFA5933EFFA3913DFFA18E3BFF9F8B38FF
      9D8837FF9A8634FF978231FF95802FFF927D2DFF8F7929FF8C7526FF897222FF
      856D1EFF806719FF7A6214FF755C10FF72590DFF70570CFF6E540BFF6C530BFF
      6B500AFF694F0AFF684D0AFF674C0AFF654B09FF634909FF624809FF604509FF
      6C5422FFCAC9C7FFBFBFBFFFBEBEBEFFBBBBBBFFAAAAAAD68F8F8F0700000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      A8A8A82BC5C5C5FAD5D5D5FFE4E4E4FFF2F2F2FFF7F7F7FFE3E3E3FFE5E5E5FF
      E5E5E5FFE5E5E5FFE5E5E5FFE4E4E4FFE3E3E3FFDEDEDDFFCFCCC5FFB2AA92FF
      8F8047FF87732DFF897525FF8E7A2AFF917D2CFF92802EFF94802EFF948130FF
      968330FF988531FF998633FF9B8834FF9C8934FF9E8B36FF9F8D39FFA18E39FF
      A2903BFFA4923CFFA6933EFFA79540FFA99741FFAA9842FFAB9A43FFAC9C46FF
      AD9C45FF988425FF8C7512FF8C7612FF8B7512FF8B7512FF8B7412FF8A7412FF
      8A7312FF9F8C32FFA99743FFA89642FFA6933EFFA4913DFFA18E3AFF9F8B39FF
      9D8937FF9B8733FF998332FF968030FF937D2DFF917A2BFF8D7729FF8B7526FF
      887223FF856E20FF836C1FFF81691EFF7D651BFF7B6219FF785F18FF735C14FF
      715811FF6D540EFF6A510DFF684E0CFF674D0AFF654B0AFF63490AFF614709FF
      7D6941FFCCCCCCFFC0C0C0FFC0C0C0FFBBBBBBFFAAAAAAB00000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      9F9F9F49DEDEDEFFF0F0F0FFF9F9F9FFF9F9F9FFF2F2F2FFE1E1E1FFE0E0E0FF
      E5E5E5FFE6E6E6FFE6E6E6FFE5E5E5FFE5E5E5FFE4E4E4FFE4E4E4FFE2E2E2FF
      DDDCDCFFCCC9C2FFAEA58AFF907F44FF8A772CFF8D7A27FF927F2CFF958230FF
      978330FF988531FF998734FF9B8834FF9D8A35FF9F8C36FFA08D38FFA28F39FF
      A3903BFFA4923CFFA5943EFFA79640FFA99741FFAA9842FFAB9943FFAC9A45FF
      AA9842FF907A17FF8D7712FF8C7612FF8C7612FF8D7612FF8C7512FF8B7512FF
      8E7716FFA7953EFFAA9842FFA89541FFA6943EFFA4913DFFA18F3AFFA08D39FF
      9E8A37FF9A8733FF988432FF96812FFF937E2EFF917C2BFF8E7829FF8C7528FF
      897326FF877023FF846D21FF826A1FFF7F681DFF7C661CFF7A631BFF78611AFF
      775E19FF755D18FF725A17FF705717FF6F5616FF6C5315FF6A5214FF674E12FF
      9E9278FFC9C9C9FFC1C1C1FFC1C1C1FFBBBBBBFFA1A1A17A0000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      A6A6A632EEEEEEFBFAFAFAFFF4F4F4FFE7E7E7FFD6D6D6FFC9C9C9FFC6C6C6FF
      CECECEFFDBDBDBFFE2E2E2FFE5E5E5FFE6E6E6FFE5E5E5FFE5E5E5FFE4E4E4FF
      E4E4E4FFE3E3E3FFE2E2E2FFDBDAD9FFCAC7BDFFABA181FF918043FF8E7B2BFF
      937F29FF98852FFF9A8833FF9B8934FF9D8B36FF9F8D37FFA08D38FFA2903AFF
      A3903AFFA4923CFFA6943EFFA89540FFA99840FFAA9941FFAB9A43FFAC9A44FF
      A49136FF8D7712FF8E7712FF8D7712FF8D7712FF8D7712FF8C7612FF8C7612FF
      968121FFAA9942FFAA9842FFA79540FFA6943EFFA4913CFFA28F3BFFA08D39FF
      9E8936FF9B8835FF998432FF958130FF947E2EFF917C2BFF8F7929FF8D7628FF
      8A7426FF877124FF856F23FF826B21FF81691EFF7E671DFF7B641BFF79631BFF
      78601AFF765E18FF735B18FF715A18FF705817FF6F5617FF6C5416FF685012FF
      BEB7A8FFC6C6C6FFC3C3C3FFC1C1C1FFBABABAFE9A9A9A3D0000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      A2A2A209C9C9C9BBE7E7E7FEDADADAFFCDCDCDFFC5C5C5FFC3C3C3FFC4C4C4FF
      C4C4C4FFC6C6C6FFCACACAFFD4D4D4FFDEDEDEFFE4E4E4FFE5E5E5FFE5E5E5FF
      E5E5E5FFE4E4E4FFE4E4E4FFE4E4E4FFE3E3E3FFE1E1E1FFD9D8D6FFC8C5B9FF
      A89D77FF93823DFF927F2BFF98852DFF9C8A33FF9E8C36FFA08E39FFA2903AFF
      A3923BFFA5933CFFA6953EFFA8953FFFA99840FFAA9842FFAB9942FFAC9A44FF
      96801FFF8E7812FF8E7812FF8E7712FF8E7712FF8D7712FF8D7712FF8D7712FF
      A39036FFAA9842FFA99740FFA8953FFFA7943DFFA3913CFFA28F3BFFA08C38FF
      9D8A37FF9B8835FF998532FF968230FF947F2FFF927C2CFF8F7A2AFF8D7829FF
      8A7527FF887125FF866F24FF836D22FF826B21FF7F6820FF7D651EFF7B641CFF
      79611AFF786019FF755C19FF725B18FF715A18FF6F5717FF6D5516FF6D551AFF
      CCC9C2FFC5C5C5FFC4C4C4FFC2C2C2FFB8B8B8F4A7A7A7230000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000008B8B8B0FAAAAAA88B6B6B6E0BEBEBEFCC2C2C2FFC3C3C3FFC4C4C4FF
      C5C5C5FFC6C6C6FFC7C7C7FFC8C8C8FFCBCBCBFFCFCFCFFFD8D8D8FFE0E0E0FF
      E4E4E4FFE5E5E5FFE5E5E5FFE5E5E5FFE4E4E4FFE4E4E4FFE3E3E3FFE2E2E2FF
      E0E0E0FFD7D6D3FFC7C3B4FFA69A71FF96863DFF97842CFF9D8B30FFA18F37FF
      A3913AFFA5933CFFA6943DFFA7953EFFA99740FFAA9840FFAA9941FFA8963EFF
      917B15FF8E7812FF8F7812FF8F7812FF8E7812FF8E7712FF8E7712FF917B18FF
      A8973FFFA99840FFA99640FFA7953FFFA6943CFFA4913BFFA28F39FFA08C38FF
      9D8A37FF9C8835FF998531FF968330FF94802EFF927E2CFF8F7A2AFF8D7829FF
      8B7627FF897325FF867024FF856D23FF836C21FF7F6920FF7D671FFF7C651EFF
      7A631CFF78601AFF755E19FF745C19FF735A18FF705817FF6E5717FF766029FF
      D0CECBFFC6C6C6FFC5C5C5FFC2C2C2FFB4B4B4E49D9D9D130000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000009898981196969640A6A6A6AFB7B7B7EAC1C1C1FE
      C5C5C5FFC7C7C7FFC8C8C8FFC9C9C9FFCBCBCBFFCCCCCCFFCECECEFFD0D0D0FF
      D5D5D5FFDCDCDCFFE2E2E2FFE4E4E4FFE5E5E5FFE5E5E5FFE4E4E4FFE4E4E4FF
      E3E3E3FFE3E3E3FFE2E2E2FFDFDFDFFFD4D3CFFFC3BEADFFA5996BFF99893DFF
      9C892FFFA29035FFA5933BFFA6963EFFA8963EFFA99740FFAB9941FF9F8C2EFF
      8F7912FF8F7912FF8F7812FF8F7912FF8F7912FF8F7812FF8E7812FF9A8625FF
      A99841FFA89740FFA8963FFFA6943DFFA5923BFFA4913AFFA28F38FFA08C37FF
      9E8B35FF9B8833FF998632FF978331FF95802EFF927E2CFF907B2BFF8D7929FF
      8B7628FF897326FF867225FF846F24FF836C22FF816A21FF7F6820FF7D661EFF
      7B641DFF7A611DFF765F1CFF755E1AFF745C19FF715917FF705716FF7F6C3AFF
      D4D4D4FFC7C7C7FFC6C6C6FFC3C3C3FFAFAFAFCD8E8E8E020000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000909090019E9E9E1A9E9E9E5C
      AFAFAFC5BEBEBEF3C7C7C7FFCACACAFFCCCCCCFFCDCDCDFFCFCFCFFFD0D0D0FF
      D1D1D1FFD3D3D3FFD5D5D5FFD9D9D9FFDFDFDFFFE3E3E3FFE5E5E5FFE5E5E5FF
      E4E4E4FFE4E4E4FFE3E3E3FFE3E3E3FFE3E3E3FFE1E1E1FFDEDEDEFFD3D1CDFF
      C1BCA9FFA59865FF9D8C3CFFA08E31FFA59338FFA8973DFFA9983EFF947F1AFF
      8F7912FF907912FF8F7912FF8F7912FF8F7912FF8F7912FF8F7A13FFA59238FF
      AA9740FFA9973FFFA7953EFFA6943CFFA4923BFFA29038FFA18F37FF9F8C36FF
      9D8A34FF9B8833FF9A8632FF988330FF95812EFF937F2CFF907B2AFF8F792AFF
      8D7728FF897426FF887225FF867024FF836D22FF816B22FF7F6920FF7E681FFF
      7C651EFF7A621DFF78601DFF775F1CFF745D1BFF725B18FF705916FF998A69FF
      D2D2D2FFC8C8C8FFC7C7C7FFC3C3C3FFAEAEAE9F000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      9A9A9A0395959524A6A6A67CB8B8B8D5C6C6C6F9CECECEFFD0D0D0FFD2D2D2FF
      D3D3D3FFD5D5D5FFD6D6D6FFD8D8D8FFD9D9D9FFDCDCDCFFDEDEDEFFE3E3E3FF
      E6E6E6FFE6E6E6FFE5E5E5FFE4E4E4FFE4E4E4FFE3E3E3FFE3E3E3FFE2E2E2FF
      E1E1E1FFDDDDDDFFD1CFC9FFBDB7A0FFA59856FF9F8E3BFF9F8C29FF8E790EFF
      8F7910FF907A12FF907A12FF907A12FF907912FF8F7912FF937E1AFFA9963EFF
      A8973FFFA8953FFFA7943DFFA5933BFFA4913AFFA29038FFA18E37FF9F8C36FF
      9D8934FF9B8832FF998631FF978330FF95802FFF937E2DFF917C2BFF8E7A2AFF
      8D7728FF8A7526FF887326FF877024FF856F23FF826D22FF806A21FF7E681FFF
      7D651FFF7B641EFF79621DFF78601CFF755E1BFF745C1BFF705918FFBAB19CFF
      CECECEFFC9C9C9FFC8C8C8FFC3C3C3FFA3A3A366000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000009A9A9A0AA3A3A331AEAEAE9BC2C2C2E2CFCFCFFD
      D4D4D4FFD6D6D6FFD8D8D8FFDADADAFFDBDBDBFFDDDDDDFFDEDEDEFFE0E0E0FF
      E2E2E2FFE4E4E4FFE8E8E8FFEAEAEAFFE7E7E7FFE5E5E5FFE4E4E4FFE3E3E3FF
      E3E3E3FFE2E2E2FFE2E2E2FFE1E1E1FFDCDCDCFFCFCDC6FFB4AD90FF8F7D30FF
      867110FF8A7304FF8E780CFF8F7910FF907A12FF907A12FF9E8A2AFFA8973FFF
      A7963EFFA7943CFFA6933BFFA4923BFFA49039FFA18F38FFA08C37FF9F8B35FF
      9C8933FF9A8832FF988630FF97832FFF96812EFF937F2CFF907D2BFF8F7B2BFF
      8D7828FF8B7527FF897426FF877125FF857023FF836D22FF816C22FF7F6921FF
      7E661FFF7C651FFF7A641EFF78621DFF765E1CFF755D1CFF725A1AFFD3CFC5FF
      CDCDCDFFCACACAFFC9C9C9FFC2C2C2FCB1B1B12F000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000A6A6A613A9A9A945
      BBBBBBB5CDCDCDEDD7D7D7FEDBDBDBFFDCDCDCFFDEDEDEFFDFDFDFFFE1E1E1FF
      E3E3E3FFE4E4E4FFE5E5E5FFE8E8E8FFEBEBEBFFEFEFEFFFEEEEEEFFE8E8E8FF
      E5E5E5FFE3E3E3FFE3E3E3FFE2E2E2FFE2E2E2FFE2E2E2FFE0E0E0FFDADAD9FF
      CAC6BDFFACA381FF8C792BFF87710EFF8A7306FF907910FFA59237FFA8963EFF
      A7953CFFA6943BFFA5933BFFA49139FFA29038FFA18F37FFA08C36FF9E8B35FF
      9C8933FF9B8731FF988530FF96832FFF95812DFF937E2DFF917D2CFF8F7B2AFF
      8E7828FF8B7728FF897326FF887325FF867024FF846D23FF816C23FF806A21FF
      7E6820FF7D6620FF7B641EFF79631EFF77601DFF755E1CFF796327FFD6D3CEFF
      CDCDCDFFCCCCCCFFCACACAFFBFBFBFEEACACAC1E000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      A5A5A501B4B4B41CB5B5B565C9C9C9C9D6D6D6F4DFDFDFFFE1E1E1FFE3E3E3FF
      E4E4E4FFE6E6E6FFE7E7E7FFE8E8E8FFEAEAEAFFEBEBEBFFEFEFEFFFF3F3F3FF
      F7F7F7FFF1F1F1FFE8E8E8FFE4E4E4FFE3E3E3FFE3E3E3FFE2E2E2FFE2E2E2FF
      E1E1E1FFDFDFDFFFD8D8D6FFC8C4B9FFA69C75FF907D2EFF9F8C33FFA39031FF
      A59237FFA5933AFFA49239FFA39039FFA28F38FFA08D36FF9E8D35FF9D8B34FF
      9C8933FF9A8731FF988530FF97832EFF94812EFF937F2DFF917D2BFF8F7B29FF
      8D7929FF8C7727FF8A7427FF887226FF877124FF856F24FF836D23FF806A21FF
      7F6A21FF7E6721FF7B651FFF79631EFF78611EFF76601CFF836F36FFDAD9D8FF
      CDCDCDFFCDCDCDFFCACACAFFBBBBBBDE9F9F9F0D000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000B1B1B104B3B3B327C1C1C184D3D3D3D8E0E0E0FA
      E5E5E5FFE7E7E7FFE8E8E8FFEAEAEAFFEBEBEBFFECECECFFEDEDEDFFEEEEEEFF
      F0F0F0FFF5F5F5FFFBFBFBFFF9F9F9FFEEEEEEFFE7E7E7FFE3E3E3FFE3E3E3FF
      E2E2E2FFE2E2E2FFE1E1E1FFE0E0E0FFDEDEDEFFD7D6D4FFC9C5B9FFADA47BFF
      9E8D41FF9C8A2EFF9F8D2FFFA28F35FFA18E36FFA08D36FF9E8C34FF9D8A34FF
      9C8932FF9A8731FF998430FF96832EFF95812DFF927F2CFF917D2CFF8F7B2AFF
      8E792AFF8C7728FF8A7528FF897426FF877125FF847025FF836E23FF816B22FF
      806A22FF7F6821FF7C661FFF7B651FFF79621EFF77601CFF94845AFFDADADAFF
      CFCFCFFFCECECEFFCBCBCBFFBBBBBBC098989801000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000B5B5B50CBDBDBD34
      CACACAA4DDDDDDE5E8E8E8FEEBEBEBFFECECECFFEDEDEDFFEEEEEEFFEFEFEFFF
      F0F0F0FFF1F1F1FFF2F2F2FFF3F3F3FFF8F8F8FFFBFBFBFFF7F7F7FFEBEBEBFF
      E5E5E5FFE3E3E3FFE2E2E2FFE2E2E2FFE1E1E1FFE1E1E1FFE0E0E0FFDEDEDEFF
      D5D4D1FFC6C2B2FFA89D70FF9A893CFF99852AFF9C892DFF9D8A31FF9D8932FF
      9B8832FF998731FF99842FFF97832EFF95812DFF947E2BFF917D2BFF907A2BFF
      8E7929FF8C7729FF8B7627FF897426FF877226FF867125FF846E23FF826D23FF
      816B23FF7F6921FF7D6720FF7B651FFF79631FFF78611CFFB2A78BFFD6D6D6FF
      D0D0D0FFCFCFCFFFCBCBCBFFB2B2B28E00000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000C0C0C015C4C4C44AD6D6D6BAE5E5E5EFEDEDEDFFEFEFEFFFF0F0F0FF
      F1F1F1FFF2F2F2FFF2F2F2FFF3F3F3FFF3F3F3FFF4F4F4FFF6F6F6FFFAFAFAFF
      FAFAFAFFF4F4F4FFE9E9E9FFE4E4E4FFE2E2E2FFE2E2E2FFE2E2E2FFE1E1E1FF
      E1E1E1FFDFDFDFFFDDDDDDFFD2D1CDFFC1BDAAFFA39768FF958337FF948128FF
      98842CFF99852EFF97852FFF96832EFF95802CFF92802CFF917D2CFF8F7B2AFF
      8D792AFF8C7829FF8B7627FF897527FF877327FF867124FF846E24FF836D24FF
      826C23FF7F6921FF7E6821FF7C6520FF7B6520FF77611DFFD3CDBEFFD4D4D4FF
      D1D1D1FFD0D0D0FFCBCBCBFFA8A8A85100000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000BEBEBE02CECECE1ECECECE6CDFDFDFCEECECECF6
      F1F1F1FFF3F3F3FFF3F3F3FFF4F4F4FFF5F5F5FFF5F5F5FFF5F5F5FFF5F5F5FF
      F6F6F6FFF7F7F7FFFCFCFCFFF9F9F9FFF0F0F0FFE7E7E7FFE3E3E3FFE2E2E2FF
      E2E2E2FFE1E1E1FFE1E1E1FFE0E0E0FFDFDFDFFFDCDCDCFFCFCEC9FFBCB7A3FF
      9D8F5CFF917E32FF917C25FF947F28FF94802CFF947F2CFF917D2BFF8F7B2BFF
      8F7A2AFF8D7828FF8B7728FF897528FF877226FF867125FF857025FF836E24FF
      816B22FF806A22FF7F6921FF7D6721FF7C6620FF7C6725FFDCD9D2FFD4D4D4FF
      D2D2D2FFD1D1D1FFC9C9C9F8B6B6B62800000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000BBBBBB06C6C6C629
      D8D8D88DE8E8E8DCF2F2F2FBF4F4F4FFF5F5F5FFF5F5F5FFF6F6F6FFF6F6F6FF
      F6F6F6FFF6F6F6FFF6F6F6FFF7F7F7FFF8F8F8FFFBFBFBFFF8F8F8FFEDEDEDFF
      E6E6E6FFE2E2E2FFE2E2E2FFE1E1E1FFE1E1E1FFE0E0E0FFE0E0E0FFDFDFDFFF
      DBDBDBFFCDCBC5FFB6B099FF96874AFF8C792EFF8C7822FF8F7B27FF8F7B29FF
      8F7A2AFF8E7829FF8B7729FF8A7528FF897326FF877226FF857025FF846F25FF
      826C23FF806A22FF7E6A22FF7D6822FF7D6620FF847034FFDEDDD9FFD5D5D5FF
      D3D3D3FFD2D2D2FFC5C5C5E9AFAFAF1900000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000C6C6C60DD0D0D037DADADAAAEDEDEDE7F5F5F5FEF6F6F6FFF7F7F7FF
      F7F7F7FFF6F6F6FFF6F6F6FFF6F6F6FFF6F6F6FFF6F6F6FFF6F6F6FFF9F9F9FF
      FBFBFBFFF6F6F6FFEAEAEAFFE4E4E4FFE2E2E2FFE1E1E1FFE1E1E1FFE1E1E1FF
      E0E0E0FFE0E0E0FFDEDEDEFFDAD9D9FFCBC9C1FFB0A88EFF908144FF88742AFF
      897421FF8A7726FF8B7628FF8A7528FF897527FF877227FF857026FF846F25FF
      836E24FF826C23FF806A23FF7F6922FF7D6820FF907F49FFE2E2E2FFD5D5D5FF
      D4D4D4FFD2D2D2FFC3C3C3D6A5A5A50700000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000BBBBBB01CFCFCF17CECECE51E4E4E4BFF0F0F0F0
      F6F6F6FFF7F7F7FFF7F7F7FFF6F6F6FFF6F6F6FFF6F6F6FFF5F5F5FFF5F5F5FF
      F4F4F4FFF5F5F5FFFAFAFAFFFAFAFAFFF3F3F3FFE7E7E7FFE3E3E3FFE2E2E2FF
      E1E1E1FFE1E1E1FFE0E0E0FFE0E0E0FFDFDFDFFFDDDDDDFFD8D7D7FFC7C4BCFF
      AAA085FF8A793FFF836F26FF857021FF887425FF877326FF857126FF856F25FF
      836E24FF816D24FF806B24FF7F6922FF7C6720FFA99C7AFFE0E0E0FFD6D6D6FF
      D6D6D6FFD2D2D2FFC3C3C3B00000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000C7C7C703DADADA1F
      DADADA73E8E8E8D0F3F3F3F7F7F7F7FFF6F6F6FFF6F6F6FFF5F5F5FFF4F4F4FF
      F4F4F4FFF3F3F3FFF2F2F2FFF2F2F2FFF5F5F5FFFBFBFBFFF9F9F9FFF0F0F0FF
      E6E6E6FFE2E2E2FFE1E1E1FFE1E1E1FFE0E0E0FFE0E0E0FFDFDFDFFFDFDFDFFF
      DDDDDDFFD6D5D4FFC5C2B8FFA29877FF86743AFF7E6A22FF816C20FF846F24FF
      846F25FF836E25FF816C24FF7F6B23FF7D6720FFC9C1ABFFDBDBDBFFD7D7D7FF
      D7D7D7FFD2D2D2FFB8B8B87A0000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000C2C2C207C8C8C82BDCDCDC91ECECECDDF4F4F4FCF6F6F6FFF5F5F5FF
      F4F4F4FFF3F3F3FFF2F2F2FFF1F1F1FFF0F0F0FFEFEFEFFFF0F0F0FFF5F5F5FF
      FAFAFAFFF8F8F8FFECECECFFE5E5E5FFE1E1E1FFE1E1E1FFE0E0E0FFE0E0E0FF
      E0E0E0FFDFDFDFFFDEDEDEFFDCDCDCFFD4D3D1FFC1BDB1FF9B906CFF806E33FF
      7B6720FF7E6920FF816B23FF7F6A23FF7D6823FFDCD9CFFFDADADAFFD8D8D8FF
      D8D8D8FFD3D3D3FEB1B1B13D0000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000CCCCCC0FD2D2D238DBDBDBADECECECE8
      F3F3F3FEF3F3F3FFF2F2F2FFF1F1F1FFF0F0F0FFEFEFEFFFEDEDEDFFECECECFF
      EBEBEBFFEEEEEEFFF5F5F5FFFAFAFAFFF5F5F5FFE9E9E9FFE3E3E3FFE1E1E1FF
      E1E1E1FFE0E0E0FFE0E0E0FFDFDFDFFFDFDFDFFFDEDEDEFFDBDBDBFFD0CFCCFF
      BEBAACFF948862FF7D6A31FF796528FF94855AFFDCDCDAFFDADADAFFD9D9D9FF
      D8D8D8FFD0D0D0F4C6C6C6240000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000BCBCBC01CECECE18
      CECECE52E0E0E0C1EBEBEBF0F0F0F0FFF0F0F0FFEFEFEFFFEDEDEDFFECECECFF
      EBEBEBFFE8E8E8FFE7E7E7FFE8E8E8FFECECECFFF7F7F7FFFAFAFAFFF2F2F2FF
      E7E7E7FFE2E2E2FFE1E1E1FFE0E0E0FFE0E0E0FFDFDFDFFFDFDFDFFFDEDEDEFF
      DDDDDDFFDADADAFFCFCECAFFCBC8C1FFDAD9D8FFDBDBDBFFDBDBDBFFDBDBDBFF
      D9D9D9FFD4D4D4E8D6D6D6170000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000C4C4C403C5C5C520D0D0D072DFDFDFD1E9E9E9F7ECECECFFECECECFF
      EAEAEAFFE9E9E9FFE6E6E6FFE5E5E5FFE4E4E4FFE2E2E2FFE4E4E4FFECECECFF
      F8F8F8FFF9F9F9FFEFEFEFFFE5E5E5FFE1E1E1FFE0E0E0FFE0E0E0FFDFDFDFFF
      DFDFDFFFDEDEDEFFDEDEDEFFDEDEDEFFDDDDDDFFDDDDDDFFDCDCDCFFDCDCDCFF
      DADADAFFD8D8D8CFBDBDBD040000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000B9B9B907C0C0C02BD1D1D191DEDEDEDF
      E7E7E7FCE8E8E8FFE7E7E7FFE5E5E5FFE3E3E3FFE1E1E1FFE0E0E0FFDEDEDEFF
      DDDDDDFFE1E1E1FFEEEEEEFFF8F8F8FFF8F8F8FFEBEBEBFFE4E4E4FFE0E0E0FF
      E0E0E0FFDFDFDFFFDFDFDFFFDFDFDFFFDEDEDEFFDEDEDEFFDDDDDDFFDDDDDDFF
      D9D9D9FFDEDEDEAA000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000000000000000BDBDBD10
      C3C3C33ACCCCCCABDCDCDCE8E2E2E2FEE3E3E3FFE1E1E1FFDFDFDFFFDDDDDDFF
      DCDCDCFFD9D9D9FFD8D8D8FFD9D9D9FFDFDFDFFFF1F1F1FFF8F8F8FFF4F4F4FF
      E8E8E8FFE2E2E2FFE0E0E0FFE0E0E0FFDFDFDFFFDFDFDFFFDEDEDEFFDEDEDEFF
      DBDBDBFFD5D5D575000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000B2B2B201BEBEBE18BBBBBB53CCCCCCC1D8D8D8F1DDDDDDFFDDDDDDFF
      DBDBDBFFDADADAFFD7D7D7FFD5D5D5FFD4D4D4FFD2D2D2FFD5D5D5FFE0E0E0FF
      F4F4F4FFF8F8F8FFF1F1F1FFE6E6E6FFE1E1E1FFE0E0E0FFDFDFDFFFDFDFDFFF
      DEDEDEFDE3E3E332000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000B0B0B003B1B1B121BABABA73CACACAD1
      D4D4D4F7D8D8D8FFD7D7D7FFD5D5D5FFD3D3D3FFD1D1D1FFCFCFCFFFCDCDCDFF
      CDCDCDFFD3D3D3FFE4E4E4FFF5F5F5FFF8F8F8FFEDEDEDFFE4E4E4FFE3E3E3FF
      EDEDEDEEE3E3E31D000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000000000000000AAAAAA08
      AAAAAA2DBABABA91C7C7C7DFD0D0D0FCD1D1D1FFD1D1D1FFCECECEFFCDCDCDFF
      CBCBCBFFCACACAFFC9C9C9FFC9C9C9FFD1D1D1FFE9E9E9FFF5F5F5FFF5F5F5EE
      E2E2E270CACACA02000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000A9A9A910A2A2A23DB5B5B5ACC4C4C4EACBCBCBFECCCCCCFF
      CBCBCBFFC9C9C9FFC8C8C8FFC6C6C6FFC3C3C3FFB7B7B7ECA3A3A3929A9A9A21
      CDCDCD0100000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000009D9D9D01A7A7A719A4A4A458B4B4B4C2
      C0C0C0F1C6C6C6FFC5C5C5FFB9B9B9ECA0A0A0928F8F8F1F8B8B8B0100000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000000000009B9B9B03
      909090229E9E9E66A1A1A1709191911F8C8C8C01000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000FFFFFFFFFFFFFF0000FFFFFFFFFFFFFFFFFFFFFFFFFFE0000003FFFF
      FFFFFFFFFFFFFFFFFFFE000000007FFFFFFFFFFFFFFFFFFFFFF0000000000FFF
      FFFFFFFFFFFFFFFFFF800000000001FFFFFFFFFFFFFFFFFFFE0000000000007F
      FFFFFFFFFFFFFFFFF80000000000001FFFFFFFFFFFFFFFFFE000000000000007
      FFFFFFFFFFFFFFFFC000000000000003FFFFFFFFFFFFFFFF0000000000000001
      FFFFFFFFFFFFFFFE00000000000000007FFFFFFFFFFFFFFC0000000000000000
      3FFFFFFFFFFFFFF000000000000000001FFFFFFFFFFFFFE00000000000000000
      0FFFFFFFFFFFFFC0000000000000000007FFFFFFFFFFFFC00000000000000000
      07FFFFFFFFFFFF80000000000000000003FFFFFFFFFFFF000000000000000000
      01FFFFFFFFFFFE00000000000000000000FFFFFFFFFFFE000000000000000000
      00FFFFFFFFFFFC000000000000000000007FFFFFFFFFF8000000000000000000
      007FFFFFFFFFF8000000000000000000007FFFFFFFFFF8000000000000000000
      003FFFFFFFFFF0000000000000000000003FFFFFFFFFF0000000000000000000
      003FFFFFFFFFF0000000000000000000001FFFFFFFFFE0000000000000000000
      001FFFFFFFFFE0000000000000000000001FFFFFFFFFE0000000000000000000
      001FFFFFFFFFE0000000000000000000001FFFFFFFFFE0000000000000000000
      001FFFFFFFFFE0000000000000000000001FFFFFFFFFE0000000000000000000
      001FFFFFFFFFE0000000000000000000001FFFFFFFFFE0000000000000000000
      001FFFFFFFFFE0000000000000000000003FFFFFFFFFE0000000000000000000
      003FFFFFFFFFE0000000000000000000003FFFFFFFFFE0000000000000000000
      001FFFFFFFFFE0000000000000000000001FFFFFFFFFE0000000000000000000
      001FFFFFFFFFE0000000000000000000000FFFFFFFFFF0000000000000000000
      000FFFFFFFFFF0000000000000000000001FFFFFFFFFF8000000000000000000
      001FFFFFFFFFFC000000000000000000001FFFFFFFFFFE000000000000000000
      003FFFFFFFFFFF000000000000000000003FFFFFFFFFFF000000000000000000
      007FFFFFFFFFFF80000000000000000001FFFFFFFFFFFFC00000000000000000
      01FFFFFFFFFFFFE00000000000000000007FFFFFFFFFFFF00000000000000000
      000FFFFFFFFFFFF800000000000000000001FFFFFFFFFFF80000000000000000
      00007FFFFFFFFFF8000000000000000000003FFFFFFFFFF00000000000000000
      00001FFFFFFFFFF0000000000000000000001FFFFFFFFFF00000000000000000
      00001FFFFFFFFFF0000000000000000000003FFFFFFFFFF00000000000000000
      00003FFFFFFFFFF0000000000000000000003FFFFFFFFFE00000000000000000
      00003FFFFFFFFFE0000000000000000000003FFFFFFFFFE00000000000000000
      00003FFFFFFFFFE0000000000000000000007FFFFFFFFFE00000000000000000
      00007FFFFFFFFFE0000000000000000000007FFFFFFFFFC00000000000000000
      00007FFFFFFFFFC0000000000000000000007FFFFFFFFFC00000000000000000
      0000FFFFFFFFFFC000000000000000000000FFFFFFFFFFC00000000000000000
      0000FFFFFFFFFF8000000000000000000000FFFFFFFFFF800000000000000000
      0000FFFFFFFFFF8000000000000000000000FFFFFFFFFF800000000000000000
      0001FFFFFFFFFF8000000000000000000001FFFFFFFFFF800000000000000000
      0001FFFFFFFFFF0000000000000000000001FFFFFFFFFF000000000000000000
      0001FFFFFFFFFF0000000000000000000001FFFFFFFFFF000000000000000000
      0003FFFFFFFFFF0000000000000000000003FFFFFFFFFF000000000000000000
      0003FFFFFFFFFE0000000000000000000003FFFFFFFFFE000000000000000000
      0003FFFFFFFFFE0000000000000000000007FFFFFFFFFE000000000000000000
      0007FFFFFFFFFE0000000000000000000007FFFFFFFFFE000000000000000000
      0007FFFFFFFFFF0000000000000000000007FFFFFFFFFFC00000000000000000
      0007FFFFFFFFFFF00000000000000000000FFFFFFFFFFFFE0000000000000000
      000FFFFFFFFFFFFFC000000000000000000FFFFFFFFFFFFFF800000000000000
      000FFFFFFFFFFFFFFE00000000000000000FFFFFFFFFFFFFFFC0000000000000
      000FFFFFFFFFFFFFFFF8000000000000001FFFFFFFFFFFFFFFFF000000000000
      001FFFFFFFFFFFFFFFFFC00000000000001FFFFFFFFFFFFFFFFFF80000000000
      001FFFFFFFFFFFFFFFFFFF0000000000001FFFFFFFFFFFFFFFFFFFC000000000
      003FFFFFFFFFFFFFFFFFFFF800000000003FFFFFFFFFFFFFFFFFFFFF00000000
      003FFFFFFFFFFFFFFFFFFFFFE0000000003FFFFFFFFFFFFFFFFFFFFFF8000000
      003FFFFFFFFFFFFFFFFFFFFFFF000000003FFFFFFFFFFFFFFFFFFFFFFFE00000
      007FFFFFFFFFFFFFFFFFFFFFFFFC0000007FFFFFFFFFFFFFFFFFFFFFFFFF0000
      007FFFFFFFFFFFFFFFFFFFFFFFFFE000007FFFFFFFFFFFFFFFFFFFFFFFFFFC00
      007FFFFFFFFFFFFFFFFFFFFFFFFFFF8000FFFFFFFFFFFFFFFFFFFFFFFFFFFFE0
      03FFFFFFFFFFFFFFFFFFFFFFFFFFFFFC0FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
      FFFFFFFF28000000300000006000000001002000000000008025000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000010000000200000004
      00000006000000090000000A0000000B0000000A000000080000000600000004
      0000000200000001000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000010000000300000008000000110101011C0C0C0C2E
      212121473737375D4545456B4B4B4B714242426A313131591A1A1A410808082A
      010101190000000E000000060000000200000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000001000000040000000D0202021E2121214B6E6E6E96B7B7B7D5DBDBDBF2
      E6E6E6FDE7E7E7FFE8E8E8FFE8E8E8FFE7E7E7FFE4E4E4FFDCDCDCFCC4C4C4EE
      929292C94B4B4B800F0F0F390000001700000008000000020000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000002
      0000000A020202202F2F2F67949494D2D2D2D2FCDADADAFFD3D3D3FFCFCFCFFF
      CECECEFFD0D0D0FFD1D1D1FFD2D2D2FFD3D3D3FFD4D4D4FFD6D6D6FFD8D8D8FF
      DCDCDCFFD8D8D8FFB6B6B6F6606060AE11111140000000130000000500000001
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000300000012
      12121246757575CDC1C1C1FECACACAFFC6C6C6FFC7C7C7FFC9C9C9FFCACACAFF
      CCCCCCFFCDCDCDFFCECECEFFD0D0D0FFD1D1D1FFD2D2D2FFD3D3D3FFD4D4D4FF
      D5D5D5FFD6D6D6FFD8D8D8FFD6D6D6FFA8A8A8F53C3C3C890202021F00000007
      0000000100000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000003000000162222226D
      949494F3C2C2C2FFC0C0C0FFC1C1C1FFC2C2C2FFC4C4C4FFC6C6C6FFC8C8C8FF
      C9C9C9FFCACACAFFCCCCCCFFCDCDCDFFCFCFCFFFD0D0D0FFD1D1D1FFD2D2D2FF
      D4D4D4FFD5D5D5FFD6D6D6FFD7D7D7FFD8D8D8FFC4C4C4FE515151B303030324
      0000000700000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000200000013202020729B9B9BFA
      BBBBBBFFBBBBBBFFBCBCBCFFBBBBBBFFBABABAFFBCBCBCFFC0C0C0FFC3C3C3FF
      C6C6C6FFC7C7C7FFCACACAFFCBCBCBFFCCCCCCFFCECECEFFCFCFCFFFD0D0D0FF
      D2D2D2FFD3D3D3FFD4D4D4FFD5D5D5FFD6D6D6FFD7D7D7FFCACACAFF494949AE
      0101011C00000004000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000010000000B1010104F8F8F8FF7B5B5B5FF
      B6B6B6FFB6B6B6FFB3B3B3FFAAAAAAFFA2A2A2FFA4A4A4FFACACACFFB6B6B6FF
      B9B9B9FFC1C1C1FFC5C5C5FFC8C8C8FFC9C9C9FFCBCBCBFFCCCCCCFFCECECEFF
      CFCFCFFFD1D1D1FFD2D2D2FFD3D3D3FFD4D4D4FFD5D5D5FFD6D6D6FFC1C1C1FE
      222222720000000E000000010000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000401010120636363D4B0B0B0FFB1B1B1FF
      B1B1B1FFACACACFFA0A0A0FF8D8D8DFF7F7F7FFF7E7E7EFF898989FF989898FF
      949494FFBEBEBEFFCCCCCCFFC6C6C6FFC5C5C5FFC8C8C8FFCACACAFFCBCBCBFF
      CDCDCDFFCECECEFFCFCFCFFFD1D1D1FFD2D2D2FFD3D3D3FFD4D4D4FFD5D5D5FF
      878787E302020223000000030000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000A1818185EA4A4A4FEADADADFFACACACFF
      A6A6A6FF989898FF838383FF6F6F6FFF656565FF646464FF6A6A6AFF757575FF
      7F7F7FFFAAAAAAFFC4C4C4FFCCCCCCFFD1D1D1FFCECECEFFC7C7C7FFC7C7C7FF
      CACACAFFCCCCCCFFCDCDCDFFCFCFCFFFD0D0D0FFD1D1D1FFD2D2D2FFD3D3D3FF
      C9C9C9FE15151556000000080000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000100000012515151B2A8A8A8FFA7A7A7FFA0A0A0FF
      909090FF7B7B7BFF6B6B6BFF5F5F5FFF5B5B5BFF5B5B5BFF5D5D5DFF606060FF
      686868FF9A9A9AFFB2B2B2FFBABABAFFC2C2C2FFCACACAFFD2D2D2FFD5D5D5FF
      CFCFCFFFC9C9C9FFC9C9C9FFCCCCCCFFCDCDCDFFCFCFCFFFD0D0D0FFD1D1D1FF
      D2D2D2FF4040408A0000000C0000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000001010101197B7B7BDBA2A2A2FF9A9A9AFF8A8A8AFF
      8A8A8AFFA9A9A9FF909090FF838383FF696969FF5C5C5CFF5A5A5AFF5B5B5BFF
      5E5E5EFF929292FFA0A0A0FFA8A8A8FFB0B0B0FFB9B9B9FFC1C1C1FFC9C9C9FF
      D1D1D1FFD8D8D8FFD6D6D6FFC5C5C5FFC9C9C9FFCBCBCBFFCECECEFFCFCFCFFF
      D0D0D0FF616161A40000000E0000000100000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000020202021C868686E5959595FF838383FF7C7C7CFF
      D9D9D9FFBABABAFFA1A1A1FFA0A0A0FF9C9C9CFF909090FF7C7C7CFF656565FF
      5B5B5BFF909090FF8E8E8EFF969696FF9E9E9EFFA7A7A7FFAFAFAFFFB7B7B7FF
      C0C0C0FFC8C8C8FFC9C9C9FFB0B0B0FFBBBBBBFFC3C3C3FFC8C8C8FFCBCBCBFF
      CDCDCDFF6565659C0000000C0000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000201010119787878DC818181FF6B6B6BFF818181FF
      DBDBDBFFAEAEAEFFA5A5A5FF867C72FF8F867DFFA4A2A1FFA0A0A0FF999999FF
      8C8C8CFF8A8A8AFF7F7F7FFF858585FF8C8C8CFF949494FF9D9D9DFFA5A5A5FF
      ADADADFFB6B6B6FFB4B4B4FF8B8B8BFF9A9A9AFFA9A9A9FFB6B6B6FFBFBFBFFF
      C6C6C6FF47474771000000080000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000001000000145D5D5DB9767676FF636363FF999999FF
      D9D9D9FFA9A9A9FFA6A6A5FF4A2F14FF402204FF472B0FFF685340FF968E87FF
      A5A4A3FF9E9E9EFF969696FF8A8A8AFF818181FF838383FF8B8B8BFF939393FF
      9B9B9BFFA4A4A4FF9F9F9FFF6D6D6DFF767676FF838383FF929292FFA2A2A2FF
      ADADADFB1616163A000000060000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000010000000A2D2D2D64828282FE747474FFB9B9B9FF
      D5D5D5FFA9A9A9FFA19F9CFF452808FF432505FF422505FF422405FF412305FF
      4C2F15FF715E4DFF9C958FFFA5A5A4FF9C9C9CFF939393FF878787FF838383FF
      898989FF929292FF8E8E8EFF606060FF646464FF696969FF737373FF828282FF
      6B6B6BC701010125000000080000000100000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000003050505197F7F7FD68E8E8EFFCDCDCDFF
      CDCDCDFFACACACFF958E86FF462905FF462905FF452805FF452705FF442605FF
      442605FF432505FF432405FF50351AFF7A6858FFA09B96FFA4A3A3FF9A9A9AFF
      8F8F8FFF868686FF7E7E7EFF5E5E5EFF5F5F5FFF646464FF6E6E6EFF797979F6
      1414145B0000001B000000060000000100000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000527272740999999F7D4D4D4FF
      C5C5C5FFB1B1B1FF827565FF4A2D05FF492C05FF492C05FF482B05FF482A05FF
      472905FF472905FF462805FF452705FF452605FF452607FF573C21FF837365FF
      A39E9AFFA1A1A1FF979797FF898989FF767676FF727272FF818181FB3333337A
      000000200000000A000000020000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000000653535370D4D4D4FF
      BDBDBDFFB6B6B6FF6C593DFF4D3005FF4C3005FF4C2F05FF4C2F05FF4C2E05FF
      4B2D06FF4A2D06FF4A2C06FF492B06FF492A06FF482906FF472806FF462606FF
      462809FF5B4129FF87796CFFA29E9BFF9E9E9EFF939393FF858585F648484891
      1717172902020203000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000000162626265D2D2D2FF
      B8B8B8FFB8B8B8FF5E4720FF503407FF503406FF503406FF503306FF503306FF
      4F3206FF4F3206FF4E3106FF4E3006FF4D2F06FF4C2D06FF4B2C06FF4A2B06FF
      482906FF472806FF452606FF462709FF5D442DFF877A6FFF9F9C9AFF9B9B9BFF
      909090FC787878CE6F6F6F676868681500000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000BEBEBE9BCFCFCFFF
      B9B9B9FFB6B5B3FF573D0FFF543807FF543807FF543807FF543807FF543707FF
      543706FF533606FF533607FF523507FF523407FF513207FF4F3107FF4E3007FF
      4D2E06FF4B2C06FF492A06FF482806FF462606FF442406FF46270BFF5E4631FF
      897E74FF9D9B99FF999999FF8B8B8BF67A7A7AB76D6D6D3B0000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000C7C7C7CBCACACAFF
      BDBDBDFFADA9A0FF583D07FF583C07FF583C07FF583C08FF583C08FF583C08FF
      583C08FF583B08FF583B07FF573A07FF563907FF553807FF543607FF533407FF
      513307FF4F3107FF4E2F07FF4B2D06FF4A2A06FF482806FF452606FF432406FF
      412205FF45270DFF614B38FF8F867FFF9B9B9BFF8C8C8CED6C6C6C0900000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000A5A5A505C9C9C9ECC7C7C7FF
      C2C2C2FF9F9683FF5E440BFF5C4108FF5C4108FF5C4108FF5D4209FF5D4209FF
      5D4109FF5D4109FF5D4109FF5C4008FF5C3F08FF5B3E08FF593C08FF583A07FF
      563807FF543607FF523407FF503107FF4E2F07FF4B2C06FF492A06FF472706FF
      442506FF422305FF402105FF412209FF9E9C9BFF939393E47878780400000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000ABABAB1ACACACAFDC3C3C3FF
      C7C7C7FF8C7E5EFF674E14FF62480CFF604608FF614609FF614609FF624709FF
      62470AFF62470AFF62460AFF61450AFF61440AFF5F4309FF5F4208FF5D4008FF
      5B3E08FF593B08FF573907FF543607FF523307FF4F3107FF4D2E06FF4A2C06FF
      482906FF452705FF432405FF492D12FFA2A2A1FF929292C00000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000B5B5B53EC9C9C9FFC4C4C4FF
      CBCBCBFF7E6B3CFF6C5418FF6D5517FF684E0EFF654B09FF664C0AFF674C0AFF
      674C0AFF674C0AFF674C0BFF674B0BFF664B0BFF65490BFF64480BFF62460AFF
      604309FF5E4108FF5C3E08FF593B08FF563807FF543507FF513207FF4E3006FF
      4B2D06FF482A06FF462805FF5B432AFFA4A4A4FF9090908C0000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000B7B7B772C7C7C7FFC7C7C7FF
      CCCCCBFF766127FF725A1BFF735B1AFF735C19FF705712FF6B510AFF6C520BFF
      6C520BFF6D520BFF6D520BFF6C510CFF6C510CFF6B4F0CFF694E0CFF684C0BFF
      66490BFF63470AFF604409FF5E4108FF5B3E08FF583A07FF553707FF513407FF
      4F3106FF4C2E06FF492B06FF756350FFA6A6A6FF8E8E8E510000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000BCBCBCABC6C6C6FFCDCDCDFF
      C7C4BEFF76601FFF77601DFF78611EFF7A631EFF7C651FFF7A6219FF71580DFF
      71580BFF72580CFF72580CFF72580CFF71570CFF70550CFF6F540CFF6D520CFF
      6B4F0CFF684C0CFF65490BFF62460AFF5F4209FF5C3F08FF593B07FF553807FF
      523507FF4F3106FF4C2E06FF90867AFFA7A7A7FD8F8F8F270000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000BFBFBFD6C4C4C4FFD3D3D3FF
      BBB5A5FF7A6420FF7B6520FF7D6721FF7F6922FF826C23FF856F26FF877125FF
      7D6415FF775E0DFF775D0DFF775D0DFF765D0DFF765B0DFF74590DFF72570DFF
      70550CFF6D510CFF6A4F0CFF664B0BFF63470BFF5F440AFF5C4009FF593C07FF
      563907FF533506FF4F3206FFA4A099FFA7A7A7F38C8C8C0D0000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000A2A2A20BC0C0C0F2C5C5C5FFD8D8D8FF
      AAA080FF7E6822FF7F6A23FF826C24FF846F25FF887228FF8B762AFF8F7A2DFF
      947F30FF907A29FF806814FF7C630EFF7B620EFF7A610EFF79600EFF785D0DFF
      755A0DFF72570DFF6F540CFF6B500CFF684C0BFF64480BFF60440AFF5D4009FF
      593C08FF563906FF573B0FFFB1B0ADFFA5A5A5D9848484010000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000A9A9A925C3C3C3FDC9C9C9FFDBDBDBFF
      998A59FF826D25FF846F25FF867127FF897428FF8D782BFF917C2EFF958132FF
      998535FF9E8A3AFFA18D3BFF96812DFF846C14FF7F660EFF7D650EFF7C620EFF
      795F0EFF775C0DFF73590DFF70550CFF6C510BFF684C0BFF64480AFF60440AFF
      5C4009FF593D08FF664E24FFB6B6B5FFA5A5A5AE000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000AFAFAF4FC3C3C3FFD1D1D1FFDEDEDDFF
      8E7C3EFF867127FF887328FF8A7529FF8D782BFF907C2EFF958131FF9A8635FF
      9E8B3AFFA3903EFFA69441FFA99644FF907920FF836B11FF826910FF80670FFF
      7D640EFF7A610EFF775D0DFF73590CFF70550CFF6B500BFF674C0AFF63480AFF
      604409FF5C4009FF7C6A47FFB8B8B8FFA2A2A276000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000B1B1B189C2C2C2FFD9D9D9FFDCDBD9FF
      897631FF897529FF8B762AFF8D792BFF917D2DFF948030FF988533FF9D8A37FF
      A18F3BFFA69440FFAA9844FFA99742FF897214FF876F12FF887115FFA08C38FF
      927D28FF846C17FF7B620FFF775D0DFF73590CFF6F550BFF6A500BFF664C0AFF
      624709FF5F4309FF9A8F77FFBABABAFF9F9F9F41000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000BABABABDD7D7D7FFE3E3E3FFE4E4E3FF
      BDB6A0FF95854BFF8C792DFF907C2CFF93802EFF978431FF9B8834FF9F8D38FF
      A3913CFFA89640FFAB9A44FFA18D32FF8B7412FF8A7312FF958025FFA6943FFF
      A08D3AFF9A8534FF927C2CFF887121FF7E6617FF755D11FF6F550EFF6A500BFF
      664B09FF614709FFB2AC9FFFBBBBBBFDA1A1A11C000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000DCDCDCCEEDEDEDFFD4D4D4FFDCDCDCFF
      E4E4E4FFE3E3E3FFD5D3CCFFB5AD8CFF9A8B49FF978431FF9C8A35FFA08E39FF
      A5923CFFA89740FFAB9A43FF937E1DFF8D7712FF8C7612FFA49138FFA7943FFF
      A18E3AFF9B8734FF947F2FFF8E7829FF877124FF81691FFF7A631BFF755D18FF
      705816FF6C5418FFC1BFBAFFBABABAEE9C9C9C06000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000AAAAAA24B3B3B3A4BFBFBFF0C6C6C6FF
      CCCCCCFFD7D7D7FFE1E1E1FFE4E4E4FFE2E2E2FFD3D1C7FFB6AD86FFA3934AFF
      A3913AFFA8963FFFA7953BFF8F7913FF8F7812FF927C18FFA99740FFA6933DFF
      A18E39FF9B8834FF95812FFF8F7A2AFF897326FF836C22FF7D671FFF78611BFF
      735B19FF79632BFFC9C8C7FFB9B9B9CE00000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000A0A0A00DAAAAAA53
      BEBEBEC0CECECEF8D5D5D5FFDADADAFFE1E1E1FFE5E5E5FFE4E4E4FFE1E0E0FF
      D1CEC2FFB7AE7FFF9D8B35FF8E7810FF907912FF9C8829FFA8953EFFA4923AFF
      A08D37FF9B8832FF96822FFF907B2BFF8B7527FF856F23FF7F6921FF7B641EFF
      765F1CFF8C7A4BFFCACACAFFB9B9B99F00000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      A3A3A301ADADAD1AC0C0C072D3D3D3D6E0E0E0FDE5E5E5FFEAEAEAFFEEEEEEFF
      EBEBEBFFE4E4E4FFDEDDDCFFC9C4B1FFA5985DFFA3923EFFA49239FFA39038FF
      9E8C35FF9A8731FF95812EFF907C2BFF8C7728FF877125FF816C22FF7D6720FF
      78621DFFA69977FFCCCCCCFFB7B7B76600000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000B4B4B402C4C4C42AD4D4D48EE6E6E6E5EEEEEEFE
      F2F2F2FFF5F5F5FFF3F3F3FFEAEAEAFFE3E3E3FFDDDCDBFFCAC5B1FFADA169FF
      9C8A39FF99852FFF95812DFF917C2BFF8C7729FF887326FF836E23FF7F6921FF
      7B641FFFBFB8A4FFCECECEFFB5B5B53500000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000C7C7C707D1D1D140
      E4E4E4ADF1F1F1F2F6F6F6FFF6F6F6FFF6F6F6FFF0F0F0FFE7E7E7FFE1E1E1FF
      DAD9D6FFC2BCA6FFA1935AFF8F7D2FFF8C7828FF897427FF856F25FF806B22FF
      7D6721FFCFCCC3FFCFCFCFF9B5B5B51500000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000CACACA10DDDDDD5CEAEAEAC6F5F5F5FAF5F5F5FFF4F4F4FFF3F3F3FF
      EDEDEDFFE4E4E4FFE0E0E0FFD6D5D1FFB9B29AFF95864FFF847027FF826D24FF
      846F2CFFD9D8D6FFCFCFCFE4B5B5B50400000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000C1C1C101D3D3D31BDBDBDB76EBEBEBD8EFEFEFFD
      EDEDEDFFEEEEEEFFEFEFEFFFE9E9E9FFE2E2E2FFDFDFDEFFD3D1CCFFB1A990FF
      ADA486FFDBDADAFFD3D3D3C20000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000CECECE03D0D0D02C
      DADADA94E2E2E2E8E4E4E4FFE1E1E1FFE6E6E6FFEBEBEBFFE6E6E6FFE0E0E0FF
      DEDEDEFFDDDDDDFFD9D9D9900000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000BEBEBE08C5C5C543CCCCCCAFD5D5D5F4D4D4D4FFD4D4D4FFE1E1E1FF
      E9E9E9FFE5E5E5FEE3E3E34F0000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000B0B0B00FB3B3B35ABFBFBFC6C5C5C5F8
      BABABAD5AFAFAF4FD5D5D5030000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000009E9E9E019F9F9F15
      9494940400000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000FFFFC001FFFF0000FFFE00007FFF0000FFF80000
      1FFF0000FFF0000007FF0000FFE0000003FF0000FFC0000003FF0000FF800000
      01FF0000FF00000000FF0000FF00000000FF0000FF00000000FF0000FE000000
      00FF0000FE000000007F0000FE00000000FF0000FE00000000FF0000FE000000
      00FF0000FE000000007F0000FF000000007F0000FF80000000FF0000FFC00000
      01FF0000FFC00000007F0000FFE00000001F0000FFE00000000F0000FFC00000
      000F0000FFC00000001F0000FFC00000001F0000FFC00000001F0000FFC00000
      001F0000FFC00000001F0000FF800000001F0000FF800000003F0000FF800000
      003F0000FF800000003F0000FF800000003F0000FF800000003F0000FF800000
      007F0000FFE00000007F0000FFF80000007F0000FFFF0000007F0000FFFFE000
      007F0000FFFFFC00007F0000FFFFFF0000FF0000FFFFFFE000FF0000FFFFFFFC
      00FF0000FFFFFFFF80FF0000FFFFFFFFE3FF0000FFFFFFFFFFFF0000FFFFFFFF
      FFFF0000FFFFFFFFFFFF00002800000020000000400000000100200000000000
      8010000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000002000000070000000F0606061B0E0E0E281212122D0D0D0D270505051A
      0000000D00000005000000010000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000301010110
      1C1C1C406F6F6F94B5B5B5D3D3D3D3EEDCDCDCF8DFDFDFFADADADAF7CACACAEC
      9E9E9ECC525252840E0E0E300000000B00000001000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000000915151540828282C4
      CACACAFCCECECEFFCBCBCBFFCDCDCDFFCFCFCFFFD1D1D1FFD3D3D3FFD4D4D4FF
      D7D7D7FFD8D8D8FFC0C0C0F65A5A5AA106060622000000030000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000C2D2D2D75ABABABF7C1C1C1FF
      C2C2C2FFC4C4C4FFC6C6C6FFC9C9C9FFCBCBCBFFCDCDCDFFCFCFCFFFD1D1D1FF
      D3D3D3FFD5D5D5FFD6D6D6FFD6D6D6FF8C8C8CDC0B0B0B320000000300000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000726262670AAAAAAFCB8B8B8FFB8B8B8FF
      B1B1B1FFB2B2B2FFBBBBBBFFC1C1C1FFC7C7C7FFC9C9C9FFCCCCCCFFCECECEFF
      D0D0D0FFD2D2D2FFD3D3D3FFD5D5D5FFD6D6D6FF848484D70303031C00000001
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000010808082D949494F2B1B1B1FFAFAFAFFF9F9F9FFF
      858585FF808080FF909090FF979797FFC8C8C8FFC8C8C8FFC7C7C7FFC9C9C9FF
      CCCCCCFFCECECEFFD0D0D0FFD2D2D2FFD4D4D4FFD2D2D2FF3434347C00000005
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000053C3C3C8AAAAAAAFFA7A7A7FF939393FF767676FF
      626262FF5F5F5FFF666666FF757575FFB3B3B3FFC3C3C3FFCDCDCDFFCFCFCFFF
      CBCBCBFFCACACAFFCCCCCCFFCFCFCFFFD1D1D1FFD2D2D2FF8C8C8CD10000000D
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000A6F6F6FC79E9E9EFF8C8C8CFFA0A0A0FF8D8D8DFF
      777777FF616161FF5B5B5BFF636363FF9B9B9BFFA8A8A8FFB5B5B5FFC1C1C1FF
      CDCDCDFFD5D5D5FFCACACAFFC8C8C8FFCCCCCCFFCFCFCFFFAFAFAFE701010112
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000B727272CD818181FF888888FFCFCFCFFFA2A2A2FF
      9B9895FF9D9C9CFF8A8A8AFF737373FF8A8A8AFF8D8D8DFF999999FFA6A6A6FF
      B2B2B2FFBFBFBFFFAAAAAAFFACACACFFBCBCBCFFC6C6C6FFA8A8A8DD0101010C
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000008535353AB6E6E6EFF9B9B9BFFC4C4C4FF9D9A98FF
      432609FF523920FF7C6E60FF9B9793FF9A9A99FF8B8B8BFF848484FF8B8B8BFF
      979797FFA4A4A4FF808080FF787878FF8B8B8BFFA2A2A2FF6B6B6BA500000008
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000221212149858585FDBDBDBDFFBABABAFF928C83FF
      452705FF442605FF432505FF442608FF594128FF85786BFF9D9A97FF969696FF
      898989FF8A8A8AFF6D6D6DFF616161FF696969FF797979F81313134C00000008
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000001010107666666A3CDCDCDFFB5B5B5FF807362FF
      492C05FF492C05FF482A05FF472905FF462805FF452705FF482A0BFF614932FF
      8C8176FF9C9A98FF8E8E8EFF787878FF797979FE393939820000001400000003
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000001818181BCECECEFAB6B6B6FF6D5A3CFF
      4E3206FF4E3105FF4E3006FF4D3006FF4D2F06FF4B2D06FF4A2C06FF492A06FF
      472806FF4A2C0EFF654E38FF8C8279FF989795FF7D7D7DDE484848795B5B5B1D
      6363630100000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000AAAAAA2FCCCCCCFFBBBABAFF614A1FFF
      543807FF543807FF543707FF543706FF533606FF523507FF513307FF4F3107FF
      4D2F06FF4B2C06FF492906FF462606FF4A2C10FF65503CFF8B827BFF949392FA
      838383C771717149000000000000000000000000000000000000000000000000
      00000000000000000000000000000000C0C0C05EC8C8C8FFBBBAB7FF5E440FFF
      5A3F08FF5A3F08FF5A3F08FF5A3F09FF5A3E08FF5A3D07FF593B07FF573907FF
      543607FF523307FF4F3007FF4B2D06FF482906FF452606FF422305FF482B12FF
      847970FF919191D4000000000000000000000000000000000000000000000000
      00000000000000000000000000000000C1C1C198C5C5C5FFB5B1A8FF674E14FF
      61470AFF614609FF624709FF62470AFF62460AFF61450AFF60440AFF5F4209FF
      5C3F08FF593B08FF563807FF523307FF4E2F06FF4A2C06FF462806FF432405FF
      7B6E62FF959595AD000000000000000000000000000000000000000000000000
      00000000000000000000000000000000C3C3C3CAC6C6C6FFA8A08AFF6F5719FF
      705817FF69500DFF684F0AFF6A4F0BFF6A4F0BFF6A4E0BFF684D0BFF664B0BFF
      64480BFF614409FF5D3F08FF593B07FF543607FF503206FF4C2D06FF472905FF
      948D86FF93939373000000000000000000000000000000000000000000000000
      000000000000000000000000A4A4A405C4C4C4EBCCCCCCFF988A64FF77601DFF
      79621EFF7C641EFF765E14FF71580CFF72580CFF72580CFF71560CFF6F540CFF
      6C500CFF684C0CFF64480BFF5F4209FF5A3D07FF553807FF503306FF4E3109FF
      A4A29FFF9696963F000000000000000000000000000000000000000000000000
      000000000000000000000000AEAEAE19C3C3C3FBD4D4D3FF8C7B44FF7D6822FF
      816B23FF856F26FF8A7429FF8A7325FF7D6412FF79600DFF785F0DFF775D0DFF
      74590DFF70540CFF6B4F0CFF654A0BFF60440AFF5B3F08FF563907FF5B4118FF
      ADACACFC9494941A000000000000000000000000000000000000000000000000
      000000000000000000000000B1B1B13DC4C4C4FFD8D7D5FF877331FF846F26FF
      887327FF8D782BFF937E30FF9A8535FF9F8B3AFF95802BFF816810FF7E640EFF
      7A610EFF765C0DFF71570CFF6C510BFF664A0AFF60440AFF5A3E09FF705A35FF
      AFAFAFEC93939306000000000000000000000000000000000000000000000000
      000000000000000000000000B6B6B671C8C8C8FFD4D2CAFF877329FF897429FF
      8D792BFF927E2FFF998634FFA08D3BFFA69441FFA79540FF876F13FF866E14FF
      8A721CFF7D6510FF775D0DFF71570CFF6B500BFF654A0AFF5F4409FF8B7D60FF
      B0B0B0CB00000000000000000000000000000000000000000000000000000000
      000000000000000000000000C0C0C0AADEDEDEFFE0DFDEFFAA9F77FF92803BFF
      917E2DFF978431FF9D8A36FFA4913CFFA99842FF9F8B30FF8A7312FF968126FF
      A3903DFF998432FF8B7424FF7E6618FF735A10FF6B510CFF644A0AFFA8A08EFF
      B2B2B29B00000000000000000000000000000000000000000000000000000000
      000000000000000000000000CBCBCB7ECBCBCBF5CECECEFFDCDCDCFFE0E0DEFF
      CDC9B9FFAEA26FFFA09041FFA4923CFFA99841FF937E1BFF8E7712FFA49239FF
      A4913BFF9B8834FF927D2CFF887225FF7F681FFF775F1AFF6F5718FFBCB9B1FF
      B3B3B36000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000A1A1A112AFAFAF61C4C4C4CCD4D4D4FB
      DFDFDFFFE4E4E4FFE0E0DDFFCDC8B3FFB2A569FF917D1BFF937D18FFA7953DFF
      A28F38FF9B8832FF937E2DFF8A7527FF826C22FF7B641EFF796325FFC8C7C5FF
      B4B4B43100000000000000000000000000000000000000000000000000000000
      000000000000000000000000000000000000000000000000A3A3A301BBBBBB21
      CDCDCD80E1E1E1DFECECECFEF1F1F1FFEBEBEBFFDDDCD8FFC6BFA4FFAFA162FF
      A08E3AFF9A8630FF937F2CFF8C7728FF857024FF7E6821FF8A773FFFCCCCCCF8
      B3B3B31200000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000C3C3C304D1D1D134E7E7E79EF2F2F2EDF6F6F6FFF2F2F2FFE8E8E8FF
      DAD9D4FFC0B99CFF9E8F51FF8D792CFF877226FF806B23FFA09266FFCECECEE3
      ADADAD0300000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000D7D7D70AE0E0E04CECECECB9F1F1F1F6
      F1F1F1FFECECECFFE4E4E4FFD5D3CDFFB4AB8EFF8F7E45FFBCB59DFFD1D1D1BD
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000000000000000D3D3D314
      D7D7D766DEDEDECFE2E2E2FCE4E4E4FFE6E6E6FFE1E1E1FFDEDEDDFFDADADA8A
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000B7B7B701BCBCBC23C2C2C284C9C9C9E1D0D0D0FED5D5D5E0E4E4E430
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000000000000000A2A2A205ABABAB299D9D9D0700000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000FFE003FFFF8000FFFF00007F
      FE00003FFC00001FF800001FF800001FF800001FF800001FF800001FF800001F
      FC00001FFE00000FFE000007FE000007FE000007FE000007FC000007FC000007
      FC000007FC00000FFC00000FFC00000FFE00000FFF80000FFFF0000FFFFE001F
      FFFFC01FFFFFF01FFFFFFE3FFFFFFFFFFFFFFFFF}
    Icons = dm_PCM.imglst_16x16
    IconIndex = 87
    Visible = True
    Left = 504
    Top = 376
  end
  object ppm_Main: TPopupMenu
    Left = 448
    Top = 416
    object ppmbtn_Benutzer: TMenuItem
      Caption = 'Benutzerverwaltung'
      ImageIndex = 1
      OnClick = ppmbtn_BenutzerClick
    end
    object ppmbtn_Design: TMenuItem
      Caption = 'Design'
      ImageIndex = 2
      OnClick = ppmbtn_DesignClick
    end
    object ppmbtn_Trenn1: TMenuItem
      Caption = '-'
    end
    object ppmbtn_Backup: TMenuItem
      Caption = 'Datensicherung'
      ImageIndex = 86
      OnClick = ppmbtn_BackupClick
    end
    object ppmbtn_Trenn2: TMenuItem
      Caption = '-'
    end
    object ppmbtn_Systeminfo: TMenuItem
      Caption = 'Systeminfo'
      ImageIndex = 21
      OnClick = ppmbtn_SysteminfoClick
    end
    object ppmbtn_Info: TMenuItem
      Caption = 'Info'
      ImageIndex = 7
      OnClick = ppmbtn_InfoClick
    end
    object ppmbtn_Handbuch: TMenuItem
      Caption = 'Handbuch'
      ImageIndex = 97
      OnClick = ppmbtn_HandbuchClick
    end
    object ppmbtn_Trenn6: TMenuItem
      Caption = '-'
    end
    object ppmbtn_Sprache: TMenuItem
      Caption = 'Sprache'
      ImageIndex = 98
      OnClick = ppmbtn_SpracheClick
    end
    object ppmbtn_Abmelden: TMenuItem
      Caption = 'Abmelden'
      ImageIndex = 23
      OnClick = ppmbtn_AbmeldenClick
    end
    object ppmbtn_Beenden: TMenuItem
      Caption = 'Beenden'
      ImageIndex = 0
      OnClick = ppmbtn_BeendenClick
    end
  end
  object brmgr_Main: TdxBarManager
    AutoHideEmptyBars = True
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -12
    Font.Name = 'Segoe UI'
    Font.Style = []
    CanCustomize = False
    Categories.Strings = (
      'Default'
      'pmModullisteOptionen')
    Categories.ItemsVisibles = (
      2
      2)
    Categories.Visibles = (
      True
      True)
    ImageOptions.ImageListBkColor = clBlack
    ImageOptions.LargeImages = imglst_Icons
    ImageOptions.StretchGlyphs = False
    LargeButtonArrowWidth = 16
    LookAndFeel.Kind = lfFlat
    LookAndFeel.NativeStyle = False
    MenusShowRecentItemsFirst = False
    NotDocking = [dsNone, dsLeft, dsTop, dsRight, dsBottom]
    PopupMenuLinks = <>
    UseSystemFont = True
    Left = 472
    Top = 192
    PixelsPerInch = 96
    DockControlHeights = (
      0
      0
      35
      0)
    object tb_main: TdxBar
      AllowClose = False
      AllowCustomizing = False
      AllowQuickCustomizing = False
      Caption = 'Hauptbar'
      CaptionButtons = <>
      DockedDockingStyle = dsTop
      DockedLeft = 0
      DockedTop = 0
      DockingStyle = dsTop
      FloatLeft = 669
      FloatTop = 8
      FloatClientWidth = 0
      FloatClientHeight = 0
      ItemLinks = <
        item
          Visible = True
          ItemName = 'btn_Modulleiste'
        end
        item
          BeginGroup = True
          Visible = True
          ItemName = 'brstc_OpenModule'
        end
        item
          Visible = True
          ItemName = 'brstc_User'
        end
        item
          BeginGroup = True
          Visible = True
          ItemName = 'btn_RefreshRights'
        end
        item
          BeginGroup = True
          Visible = True
          ItemName = 'btn_CloseModul'
        end>
      NotDocking = [dsNone, dsLeft, dsTop, dsRight, dsBottom]
      OneOnRow = True
      Row = 0
      ShowMark = False
      SizeGrip = False
      UseOwnFont = False
      UseRecentItems = False
      UseRestSpace = True
      Visible = True
      WholeRow = False
    end
    object brstc_OpenModule: TdxBarStatic
      Caption = 'Bitte Modul w'#228'hlen'
      Category = 0
      Hint = 'Bitte Modul w'#228'hlen'
      Visible = ivAlways
      Width = 573
    end
    object btn_Modulleiste: TdxBarLargeButton
      Caption = 'Modulliste verstecken'
      Category = 0
      Hint = 'Modulliste verstecken'
      Visible = ivAlways
      OnClick = btn_ModulleisteClick
      AutoGrayScale = False
      GlyphLayout = glLeft
      Width = 185
      SyncImageIndex = False
      ImageIndex = -1
    end
    object btn_RefreshRights: TdxBarLargeButton
      Category = 0
      Hint = 'Rechte und Modul neu laden'
      Visible = ivAlways
      OnClick = btn_RefreshRightsClick
      AutoGrayScale = False
      GlyphLayout = glLeft
      LargeImageIndex = 3
      Width = 25
    end
    object btn_CloseModul: TdxBarLargeButton
      Category = 0
      Hint = 'Modul schlie'#223'en'
      Visible = ivAlways
      OnClick = btn_CloseModulClick
      AutoGrayScale = False
      GlyphLayout = glLeft
      LargeImageIndex = 1
      Width = 25
      SyncImageIndex = False
      ImageIndex = 57
    end
    object brstc_User: TdxBarStatic
      Caption = 'User'
      Category = 0
      Hint = 'User'
      Visible = ivAlways
      Width = 150
    end
  end
  object imglst_Icons: TImageList
    Left = 1368
    Top = 344
    Bitmap = {
      494C010104000800040010001000FFFFFFFFFF10FFFFFFFFFFFFFFFF424D3600
      0000000000003600000028000000400000002000000001002000000000000020
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000041A0A7E083012F6020F05460000000000000000000000000000
      00000000000000000000000000000000000000000000000000000D0802265737
      0DFF0D0802260000000000000000000000000000000000000000000000000C07
      01264C2F08FF0B07012600000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      00000000000000000000140D05284C3211A5764F1EE98A6028FF825A26F44A32
      109A0503010B0000000000000000000000000000000000000000000000000000
      000003130657104B1FFE39BF5AFF062A0EDD0001000900000000000000000000
      000000000000000000000000000000000000000000000E09022659390EFFA96F
      25FF57370DFF0D080226000000000000000000000000000000000C0701264F31
      09FFA76E24FF4D2F08FF0B070126000000000000000000000000000000000000
      00010716255D112D4DC4214972F5315881FE365271E52E3D4EA5161A1E3B0000
      0000000000000000000000000000000000000000000000000000160F0429150E
      042A000000003A260D718D6022F9DC9B47FFF8B661FFFABD6EFFFFD698FFD1A8
      75FF3B2504BF0301000A0000000000000000000000000000000000000000010B
      0435083514F53CC961FF46E16EFF1F7836FF041B0A8500000000000000000000
      0000000000000000000000000000000000000E0902265C3B10FFCA8A38FFF5B4
      62FFC28435FF58380EFF0D08022600000000000000000C08022653340BFFC386
      38FFF5B461FFC58534FF4E3009FF0B07012600000000000000000102040E0F2D
      4CBC1F548DFF3472B5FF4982C2FF6294CBFF7DA9DAFF91B3D8FF8C9FB2FE545A
      61A40507080E0000000000000000000000000000000000000000684517DF8664
      35F6472D0CAE916121FFD29646FFBE8232FFC98832FFDB973DFFEDA74DFFFFE1
      AEFF8D6736FF341E02C20302000C00000000000000000000000001060221052B
      10E733AF52FF3DCB62FF3BC75FFF3FD565FF0A3B17F9010A032C000000000000
      0000000000000000000000000000000000005E3D10FFAE772EFFE5A552FFE9A6
      4FFFEEAE5CFFBF8233FF59380EFF0D0802260D08022655360CFFC08334FFEEAE
      5CFFE8A54EFFE29C40FFA36A20FF4E3009FF000000000000000312304FBF2761
      A2FF3A78BAFF5286C2FF87ACD5FFAAC5E5FFB9D0ECFFC4DAF4FFD5EBFFFFC1D3
      E6FF616C78D208090B15000000000000000000000000000000006F4B1AE7D4AC
      77FF7B4D10FFB8833DFF9B631CFFAB7227FFB77A29FFC8862EFFDB9334FFFBC5
      81FFD5A96FFF74460BFF392305C60402000C000000000004011805250EDB2997
      46FF3AC65FFF35B556FF36B658FF3BC760FF2EA64DFF04250ECA000000030000
      0000000000000000000000000000000000000E0903265E3D10FFC18940FFDE9F
      4EFFE09D47FFE5A553FFBB7F30FF59380EFF58380EFFBC7F31FFE5A554FFDF9D
      46FFD9943BFFB67928FF51320AFF0C070126000000000D1E316F2A5D97FF4980
      BFFF9FBBDBFFDFE6F1FFFDFCFDFFCBD2DBFFBCC7D2FFF1F2F5FFF0F6FFFFE3F1
      FFFFAFC5E3FF4F5C6CCB05060912000000000000000000000000734F1DECD1A6
      6FFF74460AFF825112FF905E1BFF996219FFAA6F1FFF93601DFF7D531BFA7D56
      21FAF1A441FFBB7D28FF7A4C10FF2F1D06930004011704240DD321853BFF38C1
      5CFF30AC51FF2CA14AFF45A960FF3EB85EFF3CCD60FF19682CFF0318097B0000
      000000000000000000000000000000000000000000000E0903265F3E11FFBB85
      3EFFD6994AFFD7933EFFDC9A47FFB77A2CFFB87B2CFFDC9B48FFD7933DFFD18C
      34FFB37525FF54350CFF0C080226000000000001020626466BE85687C6FFA5B9
      D6FFCFD5DFFFFFFFFCFF4487B1FF1D9BDDFF5EB0ECFF6496C1FFBCC7D3FFF2F5
      FAFFCBD8EBFF95ACCCFF60779AFE242F428900000000000000007A521EF1CBA0
      67FF714611FF7E5218FF7D4C0DFF8A5610FF6B4511FE38240B93030201070D09
      031D754D1AF7D49037FFC07F28FF5E3C11E906270FD125793CFF42B660FF35A7
      53FF2B9E4AFF0F4B1FFF1B542BFF58BA71FF39B559FF38C55BFF0A3915F90109
      03320000000000000000000000000000000000000000000000000E090326603E
      11FFB8833DFFCF9246FFCE8A34FFD3903CFFD3903CFFCE8A34FFC8842EFFAF72
      23FF57370DFF0D08022600000000000000000E16204F426A9EFF849DC7FFA2A8
      B6FFFBF7F2FF6492B5FF109BF0FF307AC7FF3D78B5FF62AAF2FF6497C7FFEAEE
      EDFFFFFFFFFF93A9CCFF28509EFF486185F600000000000000007F5620F6C196
      5CFF704917FF6E440DFF724309FF7B4909FF5F3A09FE2717048001010006140C
      01453C2407C9684414FFA56F26FF714A18F0052C0FE8489A5EFF59AB6EFF49A4
      60FF135323FF041D0AA0021F0BC53C8550FF4CB067FF35B656FF2BA349FF0524
      0DD90002000C0000000000000000000000000000000000000000000000000E09
      0326603F11FFB37E39FFBE7D2DFFC37E2CFFC37E2CFFBC7A28FFA96F21FF5939
      0EFF0D080226000000000000000000000000283B56C77191C3FF586A8FFFB9B7
      B4FFCCC6C3FF0E74B8FF1E67B2FF19130DFF050000FF445C71FF60A6EEFF98AF
      C3FFFFFFFFFF8E9EADFF355598FF496489F500000000000000007F551BFAB68A
      52FF5C380BFF643C08FF623A08FF593406FF563508FF53350DF8603D0EFA6A42
      0CFF6F440EFF6E440FFF422A08D11B100347010E0445093513FC57A16BFF1653
      26FF031D0BAE0000000300080225052E0EF455A369FF41A95DFF35BD58FF1D76
      33FF041D0CA30000000000000000000000000000000000000000000000000F0A
      0326624012FFA46A21FFAA6F23FFAE6F23FFAE6F23FFA96F23FFA1681FFF5B3A
      0FFF0D0802260000000000000000000000003B5175E94D72A4FF667485FF9896
      94FFAFADABFF004179FF03325FFF000000FF000000FF5A646DFF4493E3FF87A3
      BCFFE6E5E2FF44515FFF859BBFFF32435CC049310FAC5D3F17CA7E541DFE9B74
      3EFF755020FF795320FE5A3A0FFF81561BFF96611DFFAA722BFFAA742DFFAA7A
      39FFAD7E42FF7A4C12FF2B1A0583000000000000000002160775053312FE031E
      0BAB00010005000000000000000002130667154921FF5CAD72FF3CAA59FF35C1
      59FF114E21FF03150767000000000000000000000000000000000F0A03266442
      13FFA56D28FFA9702AFF9E6620FF9A651FFF9B6721FF9E6721FFAA702BFF9F68
      23FF5C3B10FF0E0902260000000000000000242F43976989BEFF305C8AFF5B6C
      7CFFA6A09BFF30526FFF002954FF8C9299FFA5A6A6FF7D95ACFF1260A9FF7880
      85FF54595EFF9FB2C9FF7593C0FF1D25326C7C5826F4D6A565FF885A1CFF6946
      17F5100B0424432D0F9CA06C27FFD99F54FFC89045FFB97F35FFB8823EFFBA89
      49FFA36921FF774C14FF2115055B0000000000000000000000000006021F0000
      000100000000000000000000000000000000021E09AD2E6A3DFF59AD70FF38AE
      57FF2FAF50FF093714F8010C043A00000000000000000F0A0326674414FF9E6A
      28FFA46F30FF996425FF915D1DFF93601CFF9D6F33FF9E6F35FF9C6728FFA570
      32FF986423FF5C3B10FF0E09022600000000090C1227536991FB7C9DD1FF315C
      8DFF264C74FF3D556FFF365068FF6D7C8AFF758698FF66819AFF385F84FF7E8C
      A1FFC2D4EDFFAAC7EFFF526584EB0304050D946D38FFDCAC6EFF8F5E1BFFAD74
      26FF7B521AF6100B0324553710DC8A5F27FFC78D41FFC58A3CFFC6904AFFBC86
      41FFAD7122FF774D15FF140D0333000000000000000000000000000000000000
      0000000000000000000000000000000000000002011000240ADD4A8B5AFF51AC
      69FF32AA52FF279744FF052A0FE80006021F100B03266A4616FF986627FF9767
      2DFF8D5C23FF85551BFF8D5B1BFF634113FF624012FF9B7038FF996F3EFF9061
      28FF98682FFF916022FF5D3C10FF0E090226000000002733448F6D8AB6FF94B1
      E0FF819FC7FF5E83A9FF4D739CFF4D739BFF6587ACFF8DA6C4FFC2D1E5FFE5F3
      FFFFC2DAF9FF7E94B3FF232A3461000000008B6433EBFACA8CFF9A6A2CFF8D5C
      1CFF905F1EFF684619FA895818FFAE7935FFDDA155FFD39749FFCC9045FFBD7E
      2BFFBB7B29FF744D18FE0603010C000000000000000000000000000000000000
      0000000000000000000000000000000000000000000001080331042F0EF55AA1
      6CFF48A862FF2EA34CFF22833CFF06260FCF6C4817FF9C6B2BFF9A7345FF8D65
      35FF855C2DFF8A5B1FFF664314FF0F0A03260F0A0326624012FF9A713DFF9571
      47FF875C29FF8B5F2AFF8E5C1DFF5D3C10FF000000000101020739485EC17793
      BDFF95B4E1FFA3BDE5FFB7CDEDFFC6D8F3FFCDE1F7FFD3E5FAFFD6EAFEFFDBEF
      FFFF96ABC3FF3C4452940000000000000000513A1C8ECE9E60FFEFB061FFB077
      2CFFAE7427FFBB7B2AFFD09549FFEDAC59FFE4A351FFDB9B47FFD38D35FFCC89
      32FFCD8931FF6A4518E800000000000000000000000000000000000000000000
      00000000000000000000000000000000000000000000000000000211065B103F
      1DFE61AC75FF44A45CFF268E42FF072E11EA100B04266D4817FF926B38FF8E71
      4EFF8E642FFF684515FF0F0A032600000000000000000F0A0326634113FF9A74
      42FF907350FF815620FF5F3E11FF0E09022600000000000000000203030A3440
      51A16D82A2FE96B0D8FFAAC6EBFFB4CDEFFFC0D6F5FFCDE2FDFFC0D2E5FF8F9D
      A9F7393F467700000001000000000000000003020106614421A0AF7F40FEECAC
      5AFFF8C889FFFDCA88FFFAB660FFF4AF56FFEDA54AFFE89E3FFFD28E39FF7E57
      22FCA5722DFF603F16C600000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000219
      08871D532BFF46935AFF052E11F1010B043900000000100B04266E4918FF976B
      2FFF6C4717FF100A0326000000000000000000000000000000000F0A03266441
      13FF976C33FF624012FF0E090326000000000000000000000000000000000000
      000014181E3C394351A65F6C81E57A8AA0FE7E8D9FFB646E7CD83F474D8E1011
      112100000000000000000000000000000000000000000000000024190C376F4E
      25BBB68648FFF1C58BFFFFDEACFFFFC982FFFAB356FFC68938FF725021D2140E
      052534230E63291C085800000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0001041D0AA204290EED010B043B000000000000000000000000110B04266E49
      18FF100B03260000000000000000000000000000000000000000000000000F0A
      0326644213FF0F0A032600000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000024190B3C63431BB9936B36F38F6A39FA755429D63F2D1471040201070000
      000000000000000000000000000000000000424D3E000000000000003E000000
      2800000040000000200000000100010000000000000100000000000000000000
      000000000000000000000000FFFFFF0000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      0000000000000000000000000000000000000000000000000000000000000000
      000000000000}
  end
  object imglst_32x32: TcxImageList
    SourceDPI = 96
    Height = 32
    Width = 32
    FormatVersion = 1
    DesignInfo = 3670486
    ImageInfo = <
      item
        ImageClass = 'TBitmap'
        Image.Data = {
          36100000424D3610000000000000360000002800000020000000200000000100
          2000000000000010000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          000000000001000000050000000D000000180000002620170B5F533C1FAA7658
          31D88D6B41E88E7048E8755D40D74337279B040302440000002D0000001C0000
          000F000000060000000200000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000020000
          00080000001300000021000000332116096C734F21D6B47F3CFEDEA252FFFBBB
          6AFFFFC477FFFFCA83FFFBCB8CFFCFAB7DFF79674EE40F0C0A780000005C0000
          0049000000380000002400000014000000090000000200000000000000000000
          0000000000000000000000000000000000000000000000000000000000030000
          000A000000120201001F4630129B9C6B2AFDECA143FFFEB455FFF6B96AFFF1B5
          67FFF4BA6DFFFAC481FFFCCC91FFFFD49DFFEBC89CFF5D4A31DA040200500000
          003E00000035000000290000001E000000130000000A00000003000000000000
          000000000000000000000000000003030205473F3570100D0B18000000000000
          000106030112533913BCA97229FFEAA242FFE7AA5AFFCE9445FFCD8A33FFD792
          38FFE19A3EFFEAA243FFF6B665FFFCD39DFFFFDEADFFAB8756FF341C00CC0201
          00260000001A00000015000000100000000A0000000500000001000000000000
          0000000000000000000000000000231F1938B5A087FF847461D70C0906200503
          010D563B12C3A87024FFD99A46FFC48F4AFFB27523FFBC7E2AFFC58631FFCE8D
          37FFD8953DFFE19D43FFEAA447FFF6B868FFFEDBADFFFDDCB1FF663A00FF3420
          04BD0201000E0000000300000002000000000000000000000000000000000000
          00000000000000000000000000002D272048D4B996FFC7A478FF3B1F00E95237
          11C5A97024FFCB9347FFAD7836FFA36A1EFFAD7325FFB57A2AFFBF8230FFC588
          32FFCD8C35FFD69239FFE09A3EFFEAA041FFFCD19CFFFFE8C2FFA16E29FF6E42
          0AFF332003AF0100000500000000000000000000000000000000000000000000
          00000000000000000000000000002D261D48D3B38DFFC09864FF6E4001FF8F5C
          19FFCC9244FFA07030FF965F18FF9F681FFFA76F24FFB07629FFB47727FFBA7B
          27FFC3822CFFCC8931FFD89236FFE19838FFF5C381FFFFEAC8FFBA8642FF955E
          14FF6D430CFF342005AC00000002000000000000000000000000000000000000
          00000000000000000000000000002D261B49D1AF82FFBE9663FF714206FF7A4A
          0CFF936425FF885412FF915D19FF9B6420FFA26B22FFA36A1EFFAA6F20FFB275
          24FFBC7C27FFC7852EFFC28330FFB0772AFFD9A96AFFFFC273FFE19B3EFFAB70
          22FF996217FF6D430CFF311E0594000000000000000000000000000000000000
          0000000000000000000000000000382E205BD8B17EFFBD9562FF6F430AFF784A
          0FFF7D4D11FF845314FF8C5B1AFF94601DFF945E16FF9B6319FFA46A1CFFAE72
          21FFA36B21FF7D531AF9503612AA31210C61745021CBDF993FFFF3A745FFD792
          38FFAE7222FF9D6318FF633E0CFE150D023B0000000000000000000000000000
          0000000000000000000000000000382D1E5CDAAF77FFB28A56FF6E430CFF774A
          12FF7C4E13FF805115FF875618FF865210FF8C5711FF935E15FF9F651AFF7D51
          16FE452E0DAB100A022000000000000000000A070211704F21CBD3913BFFE49C
          3DFFCD8B33FFB17523FF925E18FF3B2509A10000000000000000000000000000
          0000000000000000000000000000382C1C5CD9A96CFFB08959FF6E450FFF754B
          15FF7A4E16FF7F5219FF794A0CFF7C4B0AFF84510EFF8F5912FF66410FFD291C
          066F00000000000000000000000000000000000000000A0702116B491DCBC486
          34FFD49136FFC4842DFFB87925FF603D12E00000000000000000000000000000
          000000000000000000000000000042321D6DDEA966FFAF8A59FF6B4412FF744C
          18FF7A501BFF75480FFF734409FF764609FF7D4B0AFF71450BFF3B2505C20100
          0004000000000000000000000000000000000000000000000000090702116041
          1AC1B4792BFFC6852EFFC5832BFF81541DFB0101000300000000000000000000
          000000000000000000000000000043321C6FE1A85DFFA47F50FF6B4717FF744C
          1AFF724814FF6B4009FF6F4209FF734409FF764609FF7F4C0AFF6D430BFF3B25
          07BC0703001300000000000000000000000000000000000000010F0801352315
          0284604015DE9F6B24FF92621FFF6D4917D50000000100000000000000000000
          00000000000000000000000000004430196FE0A353FFA28155FF6A4618FF6D47
          16FF643C09FF673E09FF6B4009FF704209FF754509FF794809FF7B4B0BFF623C
          0BFF251704730000000000000001150D023B2E1C058C472905DE5B3606FE683E
          07FF472905F53E280B9E1D13053A000000020000000000000000000000000000
          00000000000000000000000000004A35187CE3A049FFA17F55FF654217FF5E38
          08FF5F3907FF643A07FF694009FF653D08FF593507FF482B05F72F1C02B51D12
          03671C11044B3623079255350CE36B430EFE7A4A0EFF814E0BFF7D4B0BFF8756
          16FF774A11FF2416037D00000000000000000000000000000000000000000000
          00000000000000000000000000004E351683EBA243FF92734AFF502D03FF613D
          10FF76552DFF826946FF372002F0241602A5160C015A221606563E2A0B9A6040
          11E87D5116FF8E5B17FF985F15FF925C15FF986623FF9B6829FF9E6E2EFF9968
          27FF6E440DFF1D12035D00000000000000000000000000000000000000000000
          00000000000004030207050402082E1F0D4FB47932FDA1896BFF8E795CFE8676
          5FE35247399626221C4A25190755472E0EA0704B18ED8F5F1EFFA36B21FFAE70
          21FFA76D1EFFAF7A36FFB07E3CFFAF7C3BFFA5702DFFA3702EFFA3702EFF925B
          15FF6B420EFF130C023700000000000000000000000000000000000000000000
          00016658449D9F8565F176552AE62517065A2F271C57443C33831F1B15360000
          0001000000003221096C8B5C1EFFB47826FFC18027FFBD7E29FFC58E46FFC794
          53FFC38F4CFFB37B33FFAE772FFFAD7630FFAC7631FFAB7834FF9D6620FF965F
          17FF68410FFE0704001300000000000000000000000000000000000000001412
          0D1FB99F7EFFFFDBA3FFBB7C23FF926120FF4E330FB9110A0223000000000000
          0000000000000D09021B644214D9B68038FFDEAB68FFD7A363FFC48A3FFFBB7D
          2FFFB97E32FFB77D33FFB67D35FFB47D36FFB47F39FFAB732CFF9E651CFF9F65
          1AFF5E3C10EA000000000000000000000000000000000000000000000000231D
          1738C5A984FFFBCF96FFB27421FFC1812BFFB37828FF7A511AF63A260D7B0201
          000600000000000000000A070214695B45BCBC9D73FFD19448FFC38633FFC185
          36FFC08438FFBE8439FFBD853AFFBC843CFFB78037FFA86C20FFA66A1FFFA369
          1EFF4C310CC60000000000000000000000000000000000000000000000002722
          1A3FCBAD86FFFED298FF915E18FFA66E23FFB67928FFC2812BFF9D6A23FF6242
          16D5150E042C0000000000000000130C0433604219F7976729FFC79049FFCA8B
          3CFFC78B3DFFC58A3EFFC38B3FFFC18940FFB37627FFAE7224FFAC6F22FFA167
          1EFF40290DA1000000000000000000000000000000000000000000000000211B
          1534C1A37DFFFFD99DFF8C6025FF8A5A1CFF986521FFA66F23FFB87B29FFA970
          25FF3A260D7E0000000024170753664113F2945E18FF8B5410FFDCB075FFD093
          43FFCD9143FFCD9045FFCA9146FFBE8030FFB87929FFB57727FFB47525FF9B64
          1FFF33210A7A0000000000000000000000000000000000000000000000000807
          040CAB8F6CFAFFD69AFFC99A5CFF653F0DFF7D5218FF8A5B1CFF99651FFF9161
          1FFF34230B85462F0F9E80541BFEA66B1EFF955E16FFDBAD73FFDB9C4BFFD697
          47FFD49748FFD3984BFFC98A39FFC2812EFFBE7E2CFFBB7C2AFFBA7B2AFF9562
          21FF261807550000000000000000000000000000000000000000000000000000
          00006F5B42B5F3C589FFFFCB82FFB18041FF59380DFF674312FF784D17FF744D
          16FF7E551FFFA97127FFB57625FFA56C21FFDFAF6FFFE4A24EFFDE9E4BFFDC9D
          4CFFDB9D4FFFD59543FFCB8933FFC88631FFC5842FFFC1812DFFC1802DFF8E5E
          20FF160F04310000000000000000000000000000000000000000000000000000
          0000201B1332A38359F8FFC47CFFFFC06BFFF8B054FFCD8D39FFC48534FFCF8C
          36FFCF8A32FFBA7B27FFC08940FFEFB56CFFECA64FFFE7A54FFFE5A450FFE3A4
          53FFDE9E4AFFD59137FFD28E36FFD18C34FFCF8C33FFCA8731FFC98530FF8759
          20FD0603010B0000000000000000000000000000000000000000000000000000
          00000000000033281950A07C4CF7ECAF60FFFEB252FFF2A644FFE49A3AFFD58E
          32FFD49748FFEAAE61FFFAB55EFFF3AD52FFEFAB54FFEDAA54FFEBAA57FFE7A3
          4CFFDF983DFFDC953BFFDA943AFFD38E37FF895F24FFC3873BFFD48E34FF7650
          1DE4000000000000000000000000000000000000000000000000000000000000
          000000000000000000001C150B2B6F5431BABA8848FEF5BA6EFFFBCF97FFFFDD
          B1FFFFD49CFFFCC581FFF9BC6CFFF7B45DFFF6B159FFF3AF59FFEDA64AFFE9A0
          41FFE59D40FFE49C3FFFDD973CFF875C25F12B1E0D54604925BDAB7836FF6143
          19BD000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000003022104C7A5A2FD5C69451FFFECE
          8EFFFFE1B6FFFFDDB1FFFCD298FFFAC581FFFAB966FFF6AC4CFFF4A745FFF0A6
          45FFF0A545FFE0993FFF885D26EE2217093C00000000010000023324105E1E14
          0933000000000000000000000000000000000000000000000000000000000000
          00000000000000000000000000000000000000000000020100033E2C16688B62
          2DE7D39B50FFFFD08FFFFFE0B5FFFFDBACFFFDCD90FFFCC378FFFDB75FFFFBAE
          4CFFC48638FF724E20CE170F0727000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000905
          020E4E36188395692DF1C79553FFE0B987FFE7C9A4FFDCB98DFFBE9866FF8169
          39E0412C136D0302000500000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000705020D2D211050443522784B41328240372C6C1F1C14380100
          0001000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000}
      end
      item
        ImageClass = 'TBitmap'
        Image.Data = {
          36100000424D3610000000000000360000002800000020000000200000000100
          2000000000000010000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000B5C1EFA0B6521FF0B6621FF0B68
          22FF0B6120FA0000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000B6120FF22AE46FF21B446FF20BA
          47FF0B6722FF0000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000B6220FF20B646FF07B532FF1EC3
          47FF0B6822FF0000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000B6220FF1FBE47FF05BF33FF1ECC
          4AFF0B6A22FF0000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000B6220FF1EC147FF04C434FF1CD3
          49FF0A6B22FF0000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000001757
          27FB195D2AFF165D28FF125E24FF0A5C1FFF0B6020FF1FBF47FF05C335FF1DD1
          49FF0B6922FF0B6721FF0B6621FF0B6521FF0B6522FF0B5E1FFB000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000002062
          30FF65B47AFF5BAE71FF54AC6AFF31A64FFF21A542FF1FBA47FF06BC33FF1EC8
          47FF34C256FF1EC649FF1FBF47FF20B547FF22AC45FF0B6522FF000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000002262
          32FF6CB881FF52A96AFF48A561FF3FA859FF08A22FFF08AA31FF07B032FF07B7
          32FF06BB33FF06B732FF08B132FF09A732FF23A744FF0B6221FF000000000000
          0000000000000000000000000000000000001E14073E684415DC845618FE8356
          18FF835618FF835618FF835618FF835618FF835618FF835618FFA18154FF2563
          34FF77BE8AFF6DB881FF65B279FF5CB171FF4BAE64FF2FAD4EFF07A52FFF20B1
          45FF37B155FF20B646FF21B145FF22AA43FF25A243FF0B6121FF000000000000
          0000000000000000000000000000000000006A4514E2C89247FFE8C589FFE6C2
          86FFE6C285FFE6C285FFE6C285FFE6C285FFE6C285FFE6C285FFE8CB9AFF225C
          2FFF215F30FF1F5E2FFF1D5E2DFF1A5F2CFF19602BFF57B46FFF37AB55FF38AE
          55FF0D5F21FF0B5F1FFF0B5F1FFF0B5F20FF0B5E20FF0B5A1FFB000000000000
          000000000000000000000000000000000000805316FFE5C186FFFFF9D1FFFEF6
          CEFFFEF5CDFFFEF5CDFFFEF5CDFFFEF5CDFFFEF5CDFFFEF5CDFFFDF5D1FFFCF5
          D4FFFBF5D7FFFBF5D7FFFBF5D7FFF9F5DCFF1C5F2DFF63B278FF4AA861FF55B0
          6DFF166128FF0000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000007B5014FFDDB67AFFF8EABFFFF6E6
          BAFFF6E6BAFFF6E6BAFFF6E6BAFFF6E6BAFFF6E6BAFFF6E6BAFFF6E6BAFFF6E6
          BAFFF6E6BAFFF6E6BAFFF6E6BAFFF6E9C9FF1F5F2EFF6FB883FF56AC6DFF62B1
          77FF185F2AFF0000000000000000000000000000000000000000000000000000
          000000000000000000000000000000000000784D12FFDAB172FFF7DFB0FFF5DC
          ACFFF5DCACFFF5DCACFFF5DCACFFF5DCACFFF5DCACFFF5DCACFFF5DCACFFF5DC
          ACFFF5DCACFFF5DCACFFF5DCACFFF5E2BFFF215F31FF7BBE8CFF64B278FF6DB7
          82FF1C5E2CFC0000000000000000000000000000000000000000000000000000
          000000000000000000000000000000000000734A12FFD9A96AFFF8D5A3FFF5D2
          9FFFF5D29FFFF5D29FFFF5D29FFFF5D29FFFF5D29FFFF5D29FFFF5D29FFFF5D2
          9FFFF5D29FFFF5D29FFFF5D29FFFF5DBB6FF256134FF89C699FF80C292FF7BBF
          8CFF1F5E2EFB0000000000000000000000000000000000000000000000000000
          000000000000000000000000000000000000704810FFD5A462FFF4CB96FFF3C8
          92FFF2C892FFF2C892FFF2C892FFF2C892FFF2C892FFF2C892FFF2C892FFF2C8
          92FFF2C892FFF2C892FFF2C892FFF2D0A5FF255F34FF2B673AFF286638FF2666
          37FF1C592CF70000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000006D4510FFCE9C5AFFEDC088FFEBBF
          86FFEBBF86FFEBBF86FFEBBF86FFEBBF86FFEBBF86FFEBBF86FFEBBF86FFEBBF
          86FFEBBF86FFEBBF86FFEBBF86FFECC491FFEDC99BFFEDCEA6FFD8B483FF9074
          4EFF000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000006B420EFFC99653FFE8BB81FFE5B8
          7DFFE5B87CFFE5B77AFFE5B679FFE5B679FFE5B677FFE5B677FFE5B677FFE5B6
          79FFE5B679FFE5B77AFFE5B77BFFE6B87CFFE6B97DFFE8BB81FFC99854FF6B42
          0EFF000000000000000000000000000000000000000000000000000000000000
          00000000000000000000000000000000000066400CFFC48F49FFE5BB82FFE3B8
          7EFFE3B87EFFE3B87EFFE3B87EFFE3B87EFFE3B87EFFE3B87EFFE3B87EFFE3B8
          7EFFE3B87EFFE3B87EFFE3B87EFFE3B87EFFE3B87EFFE5BB82FFC4904CFF6640
          0CFF000000000000000000000000000000000000000000000000000000000000
          000000000000000000000000000000000000633D0BFFBF8942FFE2BA82FFE0B7
          7EFFE0B77EFFE0B77EFFE0B77EFFE0B77EFFE0B77EFFE0B77EFFE0B77EFFE0B7
          7EFFE0B77EFFE0B77EFFE0B77EFFE0B77EFFE0B77EFFE2BA82FFBF8A45FF633D
          0BFF000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000005E3A09FFB8823AFFE2BB86FFDFB8
          81FFDFB881FFDFB881FFDFB881FFDFB881FFDFB881FFDFB881FFDFB881FFDFB8
          81FFDFB881FFDFB881FFDFB881FFDFB881FFDFB881FFE2BB85FFBB853FFF5E3A
          09FF000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000005C3707FFB37B32FFE1BD8DFFDFB9
          87FFDFB987FFDFB987FFDFB987FFDFB987FFDFB987FFDFB987FFDFB987FFDFB9
          87FFDFB987FFDFB987FFDFB987FFDFB987FFDFB987FFE1BD8CFFB57F39FF5B37
          07FF000000000000000000000000000000000000000000000000000000000000
          000000000000000000000000000000000000583507FFB27C33FFE7C89DFFE3C3
          97FFE3C397FFE3C397FFE3C397FFE3C397FFE3C397FFE3C397FFE3C397FFE3C3
          97FFE3C397FFE3C397FFE3C397FFE3C397FFE3C397FFE7C89DFFB27C33FF5935
          07FF000000000000000000000000000000000000000000000000000000000000
          000000000000000000000000000000000000462A04E287510EFFA76C21FFA56B
          1FFFA56B1FFFA56B1FFFA56B1FFFA56B1FFFA56B1FFFA56B1FFFA56B1FFFA56B
          1FFFA56B1FFFA56B1FFFA56B1FFFA56B1FFFA56B1FFFA76C21FF87510EFF462A
          04E2000000000000000000000000000000000000000000000000000000000000
          000000000000000000000000000000000000130B013E422603DC533005FE5230
          04FF523004FF523004FF523004FF523004FF523004FF523004FF523004FF5230
          04FF523004FF523004FF523004FF523004FF523004FF533005FE422603DC130B
          013E000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000}
      end
      item
        ImageClass = 'TBitmap'
        Image.Data = {
          36100000424D3610000000000000360000002800000020000000200000000100
          2000000000000010000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          00000000000000000000000000000000000000000000323130ED1A1818A40606
          0733000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          00000000000000000000000000000000000000000000221E1EA96F6761FF2246
          59FF14415CE4092A3CA1030A0E24000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000007090B37355F73FF38AC
          CCFF2681A8FF1872A4FF23748CFE020D0F250000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000001164865E742A2
          C0FF34A7C4FF309DC0FF229CBDFF117387FD020C0E2200000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          00000000000000000000000000000000000000000000000000000C2C3E9F2980
          ADFF49B3CEFF4ECFE5FF42CCE2FF1B9FBAFF127387FD030C0E22000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          000000000000000000000000000000000000000000000000000002090C252C81
          A3FF42B7CFFF7AE5F3FF44CFE5FF45CEE4FF1DA2BCFF147489FD020D0F220000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          000000000000000000000000000000000000000000000000000000000000050F
          112A117A90FF3EB7CEFF78E4F3FF46D0E7FF46CFE6FF1FA4BEFF15768AFD020B
          0D1E000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000040E1028137C93FF40B9D0FF78E5F3FF49D4EAFF48D2E8FF21A7C2FF126F
          81FC01080A1A0000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000001E14073E684415DC845618FE8356
          18FF835618FF835618FF835618FF835618FF835618FF835618FF835618FF8458
          1BFF8F6833FF8D7D5BFF147D91FF40BAD0FF79E5F3FF4BD6ECFF4BD5EBFF25A9
          C5FF137082FC01080A1A00000000000000000000000000000000000000000000
          0000000000000000000000000000000000006A4514E2C89247FFE8C589FFE6C2
          86FFE6C285FFE6C285FFE6C285FFE6C285FFE6C285FFE6C285FFE6C285FFE6C2
          85FFE5C185FFE5C590FFC8BC9AFF157D91FF40BAD1FF79E6F3FF4DD9EFFF4DD7
          EDFF26ADC7FF147285FC01080A1A000000000000000000000000000000000000
          000000000000000000000000000000000000805316FFE5C186FFFFF9D1FFFEF6
          CEFFFEF5CDFFFEF5CDFFFEF5CDFFFEF5CDFFFEF5CDFFFEF5CDFFFEF5CDFFFEF5
          CDFFFEF5CDFFFDF4CCFFFBF3CFFFD9DEC7FF177D92FF41BBD1FF7AE7F4FF50DD
          F2FF4FD9EFFF24B0CBFF346777FD131312220000000000000000000000000000
          0000000000000000000000000000000000007B5014FFDDB67AFFF8EABFFFF6E6
          BAFFF6E6BAFFF6E6BAFFF6E6BAFFF6E6BAFFF6E6BAFFF6E6BAFFF6E6BAFFF6E6
          BAFFF6E6BAFFF6E6BAFFF5E5BAFFF4E5C0FFD8D5BEFF187E93FF40BBD1FF7BE8
          F6FF53E1F6FF41C6E1FF9C999CFF838281FD1212122200000000000000000000
          000000000000000000000000000000000000784D12FFDAB172FFF7DFB0FFF5DC
          ACFFF5DCACFFF5DCACFFF5DCACFFF5DCACFFF5DCACFFF5DCACFFF5DCACFFF5DC
          ACFFF5DCACFFF5DCACFFF5DCACFFF4DBACFFF3DCB3FFD9D1B6FF1D7C91FF40BE
          D5FF6DDDF0FF738693FFACA49DFFCFCAC5FF81807DFD0C0C0C16000000000000
          000000000000000000000000000000000000734A12FFD9A96AFFF8D5A3FFF5D2
          9FFFF5D29FFFF5D29FFFF5D29FFFF5D29FFFF5D29FFFF5D29FFFF5D29FFFF5D2
          9FFFF5D29FFFF5D29FFFF5D29FFFF5D29FFFF4D19FFFF6D6ABFFC8B38EFF3F6F
          7FFFB3B6BDFFFFFFFFFFD4D1CEFFACA69CFF9FA3C9FF00004CCC000000000000
          000000000000000000000000000000000000704810FFD5A462FFF4CB96FFF3C8
          92FFF2C892FFF2C892FFF2C892FFF2C892FFF2C892FFF2C892FFF2C892FFF2C8
          92FFF2C892FFF2C892FFF2C892FFF2C892FFF3C892FFF3CA96FFD6AC72FF917A
          59FF807E7BFDFFFFFEFFFFFFFDFFD3D0D1FF3150DAFF001A95FD000000000000
          0000000000000000000000000000000000006D4510FFCE9C5AFFEDC088FFEBBF
          86FFEBBF86FFEBBF86FFEBBF86FFEBBF86FFEBBF86FFEBBF86FFEBBF86FFEBBF
          86FFEBBF86FFEBBF86FFEBBF86FFEBBF86FFEBBF86FFEDC189FFCD9C5CFF7C5A
          2CFF131313287C7B76FDC7CBEEFF364FD7FF5062E6FF152264BB000000000000
          0000000000000000000000000000000000006B420EFFC99653FFE8BB81FFE5B8
          7DFFE5B87CFFE5B77AFFE5B679FFE5B679FFE5B677FFE5B677FFE5B677FFE5B6
          79FFE5B679FFE5B77AFFE5B77BFFE6B87CFFE6B97DFFE8BB81FFC99854FF6C44
          11FF000000000D0D0C1600004FCF00138BFE152163BD03040A18000000000000
          00000000000000000000000000000000000066400CFFC48F49FFE5BB82FFE3B8
          7EFFE3B87EFFE3B87EFFE3B87EFFE3B87EFFE3B87EFFE3B87EFFE3B87EFFE3B8
          7EFFE3B87EFFE3B87EFFE3B87EFFE3B87EFFE3B87EFFE5BB82FFC4904CFF6640
          0CFF000000000000000000000000000000000000000000000000000000000000
          000000000000000000000000000000000000633D0BFFBF8942FFE2BA82FFE0B7
          7EFFE0B77EFFE0B77EFFE0B77EFFE0B77EFFE0B77EFFE0B77EFFE0B77EFFE0B7
          7EFFE0B77EFFE0B77EFFE0B77EFFE0B77EFFE0B77EFFE2BA82FFBF8A45FF633D
          0BFF000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000005E3A09FFB8823AFFE2BB86FFDFB8
          81FFDFB881FFDFB881FFDFB881FFDFB881FFDFB881FFDFB881FFDFB881FFDFB8
          81FFDFB881FFDFB881FFDFB881FFDFB881FFDFB881FFE2BB85FFBB853FFF5E3A
          09FF000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000005C3707FFB37B32FFE1BD8DFFDFB9
          87FFDFB987FFDFB987FFDFB987FFDFB987FFDFB987FFDFB987FFDFB987FFDFB9
          87FFDFB987FFDFB987FFDFB987FFDFB987FFDFB987FFE1BD8CFFB57F39FF5B37
          07FF000000000000000000000000000000000000000000000000000000000000
          000000000000000000000000000000000000583507FFB27C33FFE7C89DFFE3C3
          97FFE3C397FFE3C397FFE3C397FFE3C397FFE3C397FFE3C397FFE3C397FFE3C3
          97FFE3C397FFE3C397FFE3C397FFE3C397FFE3C397FFE7C89DFFB27C33FF5935
          07FF000000000000000000000000000000000000000000000000000000000000
          000000000000000000000000000000000000462A04E287510EFFA76C21FFA56B
          1FFFA56B1FFFA56B1FFFA56B1FFFA56B1FFFA56B1FFFA56B1FFFA56B1FFFA56B
          1FFFA56B1FFFA56B1FFFA56B1FFFA56B1FFFA56B1FFFA76C21FF87510EFF462A
          04E2000000000000000000000000000000000000000000000000000000000000
          000000000000000000000000000000000000130B013E422603DC533005FE5230
          04FF523004FF523004FF523004FF523004FF523004FF523004FF523004FF5230
          04FF523004FF523004FF523004FF523004FF523004FF533005FE422603DC130B
          013E000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000}
      end
      item
        ImageClass = 'TBitmap'
        Image.Data = {
          36100000424D3610000000000000360000002800000020000000200000000100
          2000000000000010000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0006000000140000000C00000001000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          000000000000000000000000000000000004000000180000003B000000620000
          0084000000910000006F0000002A000000030000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          000300000015000000380000005F00000082181818A73B3B3BC45C5C5CDD8C8C
          8CF6616161FE131313D700000083000000380000000700000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          00000000000000000000000000000000000200000012000000340000005C0000
          0080151515A5393939C4595959DD868686F6A6A6A6FFC4C4C4FFDDDDDEFFF2F2
          F2FF858585FF2A2A2AFF1E1E1EE903030395000000460000000C000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          00010000001000000031000000590000007E141414A4343434C2545454DB7B7B
          7BF49E9E9EFFBEBEBEFFD8D8D9FFC0BFBEFF9E9C9AFF74716FFF46413DFFF3F3
          F3FF838383FF343434FF3D3D3DFF292929F30A0A0AA600000056000000130000
          00000000000000000000000000000000000000000000000000000000001D0000
          0079131313A3313131C2525252DB797979F49A9A9AFFB5B5B6FFD2D1D2FFC6C5
          C5FFB0AFADFFBABABAFF524F4EFF42413EFF272726FF060402FF898887FFF0F1
          F1FF878785FF2F2F2FFF434243FF4A4A4AFF333333FA121212B9000000650000
          001D000000010000000000000000000000000000000000000000383736767C7C
          7CEA949494FFB0B0B0FFCCCDCDFFBCBBBBFF9C9C98FF7A7774FF534F4BFF4946
          43FF56524FFFB9B9B9FF070807FF3F3F40FF727171FFACACAAFFD6D5D3FFD9D9
          D7FFDBDBD9FF717372FF3F3F3EFF4C4C4CFF575757FF434343FE202020CB0000
          0075000000280000000200000000000000000000000000000000595654D3DEDE
          DEFF8B8A8AFF7E7C7BFF464442FF3D3A38FF565352FF242321FF434241FF7473
          73FF888888FFC7C6C5FFBEBDBAFFBDBBB9FFBAB9B7FFC4C3C1FFC8C7C4FFD3D4
          D0FFC4C5C3FF999F9DFF919899FF535454FF565555FF626262FF4F4F4FFF2727
          25DC0202028600000036000000050000000000000000000000005D5B58DAC6C6
          C6FF222323FF2D2C2CFF474748FF6F6F6EFF868685FFB4B3B1FFD4D0CBFFDAD5
          CEFFE9E3DAFFDFD9D0FFD9D3C9FFD4CDC5FFD3CEC6FFD8D3CCFFE1DDD8FFE7E5
          E0FFC9C3BCFF8A8883FF848A88FF8E9594FF686A68FF606060FF676766FF5354
          50FF2D2B2BEA05050597000000450000000A0000000000000000656361E2D4D5
          D4FFAAA9A8FFBFBFBEFFCED0CFFFC7C8C7FFCECCC5FFD8D1C5FFDCD5CBFFDCD5
          CDFFD8D2CAFFD4D0C8FFCBC6C1FFC3BDB4FFBEB7ACFFBEB4A7FFBAAE9DFFA497
          85FF908472FF918476FF857D75FF807E7AFF7E8280FF727472FF656464FF6361
          60FF575552FF333330F40C0B0AA90000005500000011000000006B6661E7BAB7
          B0FFC0BCB6FFC1C1C0FFC4C5C4FFBCBDBAFFC8C0B6FFCDC6BDFFD2CBC3FFCDC6
          BDFFBFB7ACFFADA397FF9F9486FF948A7CFF8E8375FF8D8476FF8E8376FF9689
          7BFF908577FF83796CFF796D60FF857E75FF6D6B68FF7C7F7CFF7A7C78FF6463
          60FF5E5C58FF595751FF383731FB141210BB00000063000000107A7470EBBBB6
          B1FEBFBDB9FEC5C6C5FFBFC1BEFFB2AFA7FFC0B3A4FFC5B9A7FFB4A58FFFA797
          83FF988A77FF837666FF655C51FF645D54FF776D62FF887D70FF968C7EFFA399
          8AFFA79C8CFFAB9F8EFF998D7DFF827667FF827A6EFF727370FF7D7E7AFF9294
          8CFF6A6863FF5B5852FF59564DFF3D3A33FF1C1A17CA000000317F7B75F6BCB6
          AEFEC1B9ACFEBFB6A9FEC1B5A8FFB1A596FFC5B8A5FFAB9B83FFAA9A82FFA898
          7FFFA4947BFF918471FF948D84FF918E89FF807C77FF85817CFF9D9892FFC7BE
          B3FFB9AE9FFFB5A997FFB5A896FF9E9482FF867B6BFF9D9384FF545250FF5E5E
          5DFF7B7A76FF706D65FF56534BFF565248FF474036FE1D1A168D44413E76837E
          79F5ADA69DFEC2B9ABFEC0B8ADFFB8AFA5FFB8AB9AFFA2927DFFA0917CFF9E8D
          78FF9A8B75FFBAB5B0FFE3E1DDFFB1ACA6FFA19E9BFF8B8681FF959694FF827D
          78FFD6CCBFFFC2B5A4FFBFB29FFFBEAF9CFFA99D8AFF665F56FF8A8172FF726E
          67FF5E5F5FFF5C5B5AFF757064FF555047FF5B5446FF2B261ECA000000000F0F
          0D18504E4C8E838079F5A49D94FEC2BAAFFEBEB6ACFFADA292FF928472FF887B
          6AFF7D7160FF928A7EFFC5C1BCFFAEABA7FFC3C2C0FF9C9996FF9C9C9AFFA29A
          91FF9D9283FFA4998BFFB0A493FFC4B5A3FF989285FF6A665EFF8A867DFFA69D
          90FF988E84FF595959FF6E6C67FF8E8779FF655D4DFF39332BD6000000000000
          000000000000100E0E1A5755539688857DF9A69F96FEC6BFB5FEBFB8AFFFB6AF
          A5FFBAB4ACFFB3ADA7FFABA69EFFA7A29BFFB1AEA9FFB5B3AFFFD3D1CFFFD1CD
          C8FFCDC7BFFFC6C2B9FF9C9B92FF85827DFF7A7770FFABA69EFFBEB8B1FFB3AE
          A4FFBCB4A8FFB1A798FF7F7B76FFBAB2A8FFC5B8A5FF534E45E1000000000000
          0000000000000000000000000000131312205854519A8A867DF9ACA69DFEC8C1
          B9FFC6C0B9FFC7C2BBFFB3ADA7FF78746BFF635D52FF857A6CFFA99D8CFFBDB4
          A8FFC7C5C0FFCFCDCBFFD9D6D3FFB3B1ACFF8C8783FFA49F97FFC5BFB6FFBDB6
          ACFFB8B0A6FFB6AEA3FFB7AD9EFFDACFC1FFD7CBBAFF6C655AEE000000000000
          00000000000000000000000000000000000000000000161515245F5E5AA38F88
          82FBAEA79DFECCC5BDFECDC7C1FFD1CCC7FFCDC2B2FFC7B8A3FFBCAD97FFA998
          80FF8B8172FF797169FFABA59DFFB8B4B1FFC7C3BCFFD1CCC5FFC6C0B8FFC0B9
          AFFFB9B2A7FFC0B7A9FFD5C7B7FFD2C5B1FFD8CAB8FE756C61FA000000000000
          0000000000000000000000000000000000000000000000000000000000001817
          16295E5955A6918A85FBB6AFA6FED4CCC6FFC7C0B6FFA7987FFF988469FFA08C
          71FFA18F74FFB5A68FFFC7BCADFFD1CAC1FFB7AFA5FFD3CBBEFFC7BEB2FFBAAF
          A2FEB1A89BFEA89E90FE9A9287FE8D867FF16D6860CC45423E7F000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000001D1D1C2F65615FB0948E86FDBAB2AAFEDFD9D2FFCEC5B8FFB1A0
          89FFA69780FFA39583FFABA296FEA29A91FE968E86FB7C7670DB625E57B54D4A
          448E3937346824211F42100E0D1B000000010000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          00000000000000000000000000001F1D1C3364605CB1948D87FC7D7770ED6964
          5EC95754509C433F3D762D2B2850171615290303030600000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000}
      end
      item
        ImageClass = 'TBitmap'
        Image.Data = {
          36100000424D3610000000000000360000002800000020000000200000000100
          2000000000000010000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          00000000000000001D3302028FF800001E330000000000000000000000000000
          00000000000000000000010121330404A1F70101213300000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          000000001B3302028CFA2222B3FF040499FD00001E3300000000000000000000
          000000000000010121330707ACFD2A2AC6FF0505A5FA01012133000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000010184F71E1EAEFF0B0BB1FF2929C4FF05059DFD00001E33000000000000
          0000000020330808AFFD3434D7FF1616C7FF2A2AC3FF0404A1F8000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          000000001A3302028CFD2626BCFF1313C2FF3131D4FF0606A1FD00001E330000
          1E330A0AAFFD3C3CE8FF2020D9FF3131D3FF0606AAFD01012133000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          00000000000000001A3303038FFD2C2CCAFF1C1CD1FF3939E2FF0808A5FE0909
          ABFE4444FAFF2828EAFF3838E0FF0606ACFD0101213300000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000001A33040493FD3232D5FF2222DDFF3C3CEBFF4242
          F3FF2D2DF2FF3B3BE9FF0707AAFD000020330000000000000000000000000000
          000000000000000000000000000000000001000000050000000C0000000F0000
          000F0000000F0000000F0000000F0000000F0000000F0000000F0000000F0000
          000F0000000F0000000F0202020F04041E3F040494FD3333D9FF2222E0FF2525
          E6FF3A3AE7FF0606A6FE00001E33000000000000000000000000000000000000
          0000000000000000000000000000000000050000001A000000320000003B0000
          003D0000003D0000003D0000003D0000003D0000003D0000003D0000003D0000
          003D0000003D0101013D0909093D12122B64111196FD3939D3FF1C1CD4FF1F1F
          D9FF3535DDFF0606A1FE00001E33000000000000000000000000000000000000
          00000000000000000000000000000000000C1A11065B634114DD845618FE8356
          18FF835618FF835618FF835618FF835618FF835618FF835618FF835618FF8356
          18FF84581CFF906A35FF836A61FF161690FF5F5FD2FF4A4AD0FF4545D2FF3030
          CFFF1717CAFF2D2DCCFF05059EFE00001E330000000000000000000000000000
          00000000000000000000000000000000000F674414E3C89247FFE8C589FFE6C2
          86FFE6C285FFE6C285FFE6C285FFE6C285FFE6C285FFE6C285FFE6C285FFE5C2
          86FFE5C792FFB8A69CFF1B1B8BFF6B6BCBFF5656C7FF6363D1FF151596FF1313
          98FF4646CCFF1E1EBFFF2A2ABEFF040499FE00001E3300000000000000000000
          00000000000000000000000000000000000F805316FFE5C186FFFFF9D1FFFEF6
          CEFFFEF5CDFFFEF5CDFFFEF5CDFFFEF5CDFFFEF5CDFFFEF5CDFFFEF5CDFFFCF4
          D0FFC7C2C1FF21218AFF7A7ACBFF6262C2FF6F6FCBFF1B1B91FFB8A8A5FF8872
          6EFF141496FD5555C7FF3737BAFF4242BAFF0B0B98FE00001E33000000000000
          00000000000000000000000000000000000F7B5014FFDDB67AFFF8EABFFFF6E6
          BAFFF6E6BAFFF6E6BAFFF6E6BAFFF6E6BAFFF6E6BAFFF6E6BAFFF6E6BAFFF4E5
          BFFF212084FF8F8FD3FF8383CEFF7F7FCCFF1F1F8DFFC3BBBCFFDCBC8AFF8C68
          35FF0D0D275E141494FD5353BBFF3535AFFF4444B1FF090990F8000000000000
          00000000000000000000000000000000000F784D12FFDAB172FFF7DFB0FFF5DC
          ACFFF5DCACFFF5DCACFFF5DCACFFF5DCACFFF5DCACFFF5DCACFFF5DCACFFF4DD
          B3FFC2B3B0FF272689FF9595D4FF25258BFFC2B2B0FFF5DFB7FFD9B174FF7A50
          16FF0707073601011B35151592FD5858B9FF101090FA00001D33000000000000
          00000000000000000000000000000000000F734A12FFD9A96AFFF8D5A3FFF5D2
          9FFFF5D29FFFF5D29FFFF5D29FFFF5D29FFFF5D29FFFF5D29FFFF5D29FFFF4D2
          A0FFF3D5A9FFC2AFA9FF222185FFC2AEA9FFF3D5A9FFF7D5A4FFD9A96AFF734A
          12FF010101360000000300001A330F0F89F800001B3300000000000000000000
          00000000000000000000000000000000000F704810FFD5A462FFF4CB96FFF3C8
          92FFF2C892FFF2C892FFF2C892FFF2C892FFF2C892FFF2C892FFF2C892FFF2C8
          92FFF1C893FFF1CC9CFFF0CC9DFFF1CC9CFFF2C893FFF4CB96FFD5A462FF7048
          10FF000000360000000300000000000000000000000000000000000000000000
          00000000000000000000000000000000000F6D4510FFCE9C5AFFEDC088FFEBBF
          86FFEBBF86FFEBBF86FFEBBF86FFEBBF86FFEBBF86FFEBBF86FFEBBF86FFEBBF
          86FFEBBF86FFEBBF86FFEBBF86FFEBBF86FFEBBF86FFEDC189FFCE9C5AFF6D45
          10FF000000360000000300000000000000000000000000000000000000000000
          00000000000000000000000000000000000F6B420EFFC99653FFE8BB81FFE5B8
          7DFFE5B87CFFE5B77AFFE5B679FFE5B679FFE5B677FFE5B677FFE5B677FFE5B6
          79FFE5B679FFE5B77AFFE5B77BFFE6B87CFFE6B97DFFE8BB81FFC99854FF6B42
          0EFF000000360000000300000000000000000000000000000000000000000000
          00000000000000000000000000000000000F66400CFFC48F49FFE5BB82FFE3B8
          7EFFE3B87EFFE3B87EFFE3B87EFFE3B87EFFE3B87EFFE3B87EFFE3B87EFFE3B8
          7EFFE3B87EFFE3B87EFFE3B87EFFE3B87EFFE3B87EFFE5BB82FFC4904CFF6640
          0CFF000000360000000300000000000000000000000000000000000000000000
          00000000000000000000000000000000000F633D0BFFBF8942FFE2BA82FFE0B7
          7EFFE0B77EFFE0B77EFFE0B77EFFE0B77EFFE0B77EFFE0B77EFFE0B77EFFE0B7
          7EFFE0B77EFFE0B77EFFE0B77EFFE0B77EFFE0B77EFFE2BA82FFBF8A45FF633D
          0BFF000000360000000300000000000000000000000000000000000000000000
          00000000000000000000000000000000000F5E3A09FFB8823AFFE2BB86FFDFB8
          81FFDFB881FFDFB881FFDFB881FFDFB881FFDFB881FFDFB881FFDFB881FFDFB8
          81FFDFB881FFDFB881FFDFB881FFDFB881FFDFB881FFE2BB85FFBB853FFF5E3A
          09FF000000360000000200000000000000000000000000000000000000000000
          00000000000000000000000000000000000F5C3707FFB37B32FFE1BD8DFFDFB9
          87FFDFB987FFDFB987FFDFB987FFDFB987FFDFB987FFDFB987FFDFB987FFDFB9
          87FFDFB987FFDFB987FFDFB987FFDFB987FFDFB987FFE1BD8CFFB57F39FF5B37
          07FF000000350000000200000000000000000000000000000000000000000000
          00000000000000000000000000000000000C583507FFB27C33FFE7C89DFFE3C3
          97FFE3C397FFE3C397FFE3C397FFE3C397FFE3C397FFE3C397FFE3C397FFE3C3
          97FFE3C397FFE3C397FFE3C397FFE3C397FFE3C397FFE7C89DFFB27C33FF5935
          07FF000000320000000200000000000000000000000000000000000000000000
          000000000000000000000000000000000005452904E287510EFFA76C21FFA56B
          1FFFA56B1FFFA56B1FFFA56B1FFFA56B1FFFA56B1FFFA56B1FFFA56B1FFFA56B
          1FFFA56B1FFFA56B1FFFA56B1FFFA56B1FFFA56B1FFFA76C21FF87510EFF4428
          04E2000000270000000100000000000000000000000000000000000000000000
          000000000000000000000000000000000001130B0141422603DC533005FE5230
          04FF523004FF523004FF523004FF523004FF523004FF523004FF523004FF5230
          04FF523004FF523004FF523004FF523004FF523004FF533005FE402503DD110A
          01530000000A0000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000}
      end
      item
        ImageClass = 'TBitmap'
        Image.Data = {
          36100000424D3610000000000000360000002800000020000000200000000100
          2000000000000010000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000020000
          000A0000001B000000320000004E00000068000000750000007A000000790000
          00710000006400000053000000410000003100000022000000150000000C0000
          0005000000010000000000000000000000000000000000000000000000000000
          000000000000000000000000000000000000000000020000000C0000001E0000
          00350000004B0B0B0B821A1A1AB7272727D9373737EB464646F64C4C4CF54747
          47EB3D3D3DD82E2E2EB7151515860000005C0000004F00000043000000360000
          00260000001A0000000F00000007000000020000000000000000000000000000
          000000000000000000000000000000000000000000040000000C0000001A0A0A
          0A751A1A1AE03D3E3EFF717272FF9A9B9CFFBBBBBCFFCCCBCBFFD2D3D1FFD2D1
          D2FFC4C5C5FFA6A6A7FF7F7F7FFF545454E0262626870101013A0000002F0000
          00260000001E000000160000000E000000080000000300000000000000000000
          000000000000000000000000000000000000000000000606062D181818CC3535
          36FF7E7F7FFFBCB9B6FFD7D1C6FFE8DDCFFFEBDFD0FFD8CDC0FFE0D4C6FFE8DB
          CCFFE8DDD1FFE6DFD6FFEAE7E5FFD8D8D9FF919191FF4B4B4BCE1212123C0000
          0014000000100000000C00000008000000040000000100000000000000000000
          000000000000000000000000000000000000111111512E2E2EF4606161FFAAA9
          A6FFE5DBCEFFF0E5D6FFE3D9CEFFD6CDC3FFD0C7BEFFD0C7BEFFE3DAD0FFD2CA
          C0FFD6CDC3FFDDD3C7FFE9DDCEFFE9E0D2FFF0EDEBFFCCCCCDFF6B6B6CF22121
          214D000000030000000100000000000000000000000000000000000000000000
          0000000000000000000000000000161616553F3F3FFA686969FFC1BAB3FFF3E8
          DAFFB8B0A9FFD2CAC1FFDBD4CBFFE3DBD3FFECE3DBFFD9D1C9FFE6DED5FFEAE1
          D8FFE4DBD2FFD9D0C8FFCDC4BCFFB7AEA6FFE9DCCDFFEBE5DDFFE3E4E4FF7777
          77FA2323234F0000000000000000000000000000000000000000000000000000
          0000000000000000000011111136484848F7636364FFC6BEB3FFF4E9DDFFD1CA
          C1FFCDC7C0FF95918BFFFFF8F0FFFAF2EAFFFAF2EAFFFAF2EAFFFAF2E9FFFAF0
          E7FFFAF1E7FFFAF1E7FFD6CDC6FFD4CBC3FFCFC6BCFFE7DBCDFFE9E0D7FFE5E5
          E6FF6E6E6EF51616163200000000000000000000000000000000000000000000
          0000000000000303030A444545DD656566FFB1AAA2FFE7DED1FFDED7CFFFE6DF
          D9FFFAF1EAFF5E5E5BFFEAE4DDFFFBF4EDFFF9F2EAFFF9F1EAFFF9F1EAFFF9F1
          E9FFF8F0E8FFF9EFE8FFF2E9E0FFF2E9DFFFE2D9D0FFE0D7CDFFDFD3C6FFEAE4
          DCFFD3D4D4FF565656D803030307000000000000000000000000000000000000
          0000000000002E2E2E82696A6AFF807D7AFFF9EEE2FFDFD8D0FFDAD5CEFFFCF5
          EEFFFCF7EFFFE2DCD7FF757272FFFFFBF5FFFBF3EDFFFAF3EDFFF9F3ECFFF9F2
          EBFFF9F1EAFFF9F1E9FFF8F0E8FFF9F0E7FFFCF2E7FFD6CEC5FFDED5CAFFE6DB
          CDFFEEEAE6FF9F9F9FFF31313179000000000000000000000000000000000000
          00000606060E5E5E5FEE666767FFD9CEC4FFB5AFA9FFE3DDD6FFFEF7F0FFFBF5
          EDFFFAF4EEFFFFFEF7FF888683FFDAD5D1FFFDF8F3FFFAF5EFFFFAF4EEFFFAF4
          EDFFFAF3ECFFF9F2EBFFF9F1EAFFF8F0E8FFF8EFE6FFFCF2E8FFDFD5CDFFB3AB
          A3FFE3D8CBFFE1E2E2FF5F5F5FEC0303030A0000000000000000000000000000
          00002B2B2B64777878FF8C8984FFEBE1D8FFDDD7D1FFBFBAB5FFFDF7F3FFFAF5
          F0FFFBF6F1FFFDF8F4FFF7F3EFFF7A7977FFFFFCF8FFFCF6F3FFFBF6F1FFFAF5
          F0FFFAF4EFFFFAF3EDFFF9F2ECFFF9F1EAFFF8F0E8FFFBF2E8FFBFB9B1FFDED5
          CBFFE2D6C9FFE7E3DEFF939393FF2323235C0000000000000000000000000000
          0000525252B57C7C7DFFBCB5ACFFD6CFC8FFDED8D3FFFDF7F2FFFBF6F2FFFBF6
          F2FFFBF7F3FFFDF9F4FFFFFEFBFFAFAEACFFC9C7C4FFFFFCF8FFFBF7F3FFFBF6
          F2FFFBF6F1FFFAF5EFFFFAF4EDFFF9F2ECFFF9F1EAFFF8F0E9FFFCF3EAFFE2D9
          D0FFD9D0C5FFE7DDD2FFBBBCBDFF3C3C3CAB0000000000000000000000000000
          0001797979EE6C6D6DFFE5DDD3FFDAD4CEFFDCD8D3FFF7F2EDFFFAF4F0FFFCF8
          F5FFFCFAF7FFFCF9F6FFFDFCF8FFFFFFFDFF706F6EFFFFFDF9FFFEFBF8FFFDF9
          F5FFFBF7F3FFFBF6F1FFFAF5EFFFFAF3EDFFF9F2EBFFF9F1E9FFF9F0E8FFE6DD
          D5FFE2D8CEFFE6DACCFFD5D7D6FF545454E60000000000000000000000000B0B
          0B17838484FF7A7875FFEAE5DBFFD7D3CEFFE2DED9FFF4F0EAFFF5F2EEFFF8F7
          F3FFFCFAF8FFFCFCFAFFFEFBF9FFFFFFFFFFC1C0BFFFA4A3A3FFFFFEFAFFDCD5
          CBFFFEFAF8FFFBF7F3FFFBF6F1FFFAF4EFFFFAF3EDFFF9F2EAFFF9F2E9FFEBE3
          DAFFE0D7CDFFE7DCCCFFD9D6D5FF626262FE0606060F00000000000000001515
          152B898989FF898581FFE8E3DCFFD0CCCAFFEBE6E2FFEEEBE7FFF2EFECFFF5F3
          F1FFF9F6F5FFFAF9F8FFFFFFFFFFB0AFAFFF868585FF3B3B3BFF96918AFFFFFF
          FFFFFFFFFFFFFFFDF9FFFDF9F4FFFBF6F1FFFBF5EFFFF9F2EBFFFAF1EBFFF3EB
          E3FFCBC3BAFFE6DACDFFD5D2CEFF686969FF0A0A0A2200000000000000001515
          152B89898AFF8A8784FFCAC6C1FFC3C1BFFFD9D6D5FFF0EDECFFEFECEAFFF1F0
          EEFFF3F3F4FFF6F6F7FFF9F9FAFFF7F7F8FFC8C8C8FF646362FF2B2B2CFF3F40
          3FFF6F6D6CFFAEACAAFFEEE9E7FFFFFFFBFFFFFBF5FFFBF5EEFFF7EFE8FFD4CC
          C5FFB8AFA9FFBCB3A8FFD0CBC7FF636363FF0D0D0D2A00000000000000001212
          12258D8D8DFF84827FFFE4DED9FFD1CECCFFEEEBE9FFF1EFEDFFF2F1F0FFF0F0
          EFFFF0F0F0FFF2F2F2FFF4F4F4FFF9F9F9FFEBE9E6FFECE9E2FF636363FFE5E5
          E4FFCAC9C7FF878584FF444443FF373637FF777673FFC9C4BFFFF5ECE5FFECE4
          DDFFC4BEB5FFDFD3C6FFC8C5C2FF545454FF0606061800000000000000000404
          04088F8F8FFB777675FFE0DAD4FFCFCDCCFFE7E3E3FFEEECECFFF0EFEEFFF3F3
          F1FFF4F4F4FFF2F2F2FFF1F1F1FFF1F0F1FFC4BDB5FFFAFAFAFFDDDDDDFFC4C4
          C4FFFAFAF7FFFCF8F6FFFDFAF7FFFAF6F2FFCDC9C6FFD1CCC7FFEEE7E0FFE0D7
          D2FFC6BFB8FFDBD1C4FFB9B8B8FF3D3E3EF80000000300000000000000000000
          0000727272D2838384FFC9C3BCFFD8D6D4FFDCDAD8FFEEEDEBFFEEEDEEFFF0F0
          F1FFF2F2F3FFF4F4F4FFF7F8F8FFD7D4D0FFF3F2F3FFF4F4F4FFF4F4F4FFF3F3
          F3FFF1F0EFFFF1EFECFFF0EDEAFFF0EDE9FFF1ECE7FFEFEAE5FFEEE8E4FFD8D2
          CCFFCEC8C0FFD6CDC1FF939494FF282828CB0000000000000000000000000000
          00004C4C4C8F919292FF9F9B97FFE1DEDBFFD3D1D0FFEAE8E7FFECEDEBFFEEEE
          EEFFF0F0F0FFF3F3F3FFE1E0DDFFE7E6E5FFF5F5F5FFF3F3F3FFF4F4F4FFF2F2
          F3FFF3F2F0FFF1EFEFFFF1EDEBFFEEEBE8FFEEEAE5FFECE7E3FFE7E1DCFFC7C2
          BCFFD8D0C6FFC2BBB4FF636464FF171717850000000000000000000000000000
          00001D1D1D33979797FE7B7B79FFD6D2CDFFC6C5C4FFCFCECDFFEDECEBFFEDEC
          ECFFEEEEEFFFEBEBEAFFDAD7D6FFF3F3F3FFF1F1F1FFF1F1F1FFF0F0F0FFF0EF
          EFFFEFEEEDFFEEECEAFFEDEAE8FFEBE8E5FFE9E5E2FFEAE6E1FFBDB9B5FFB2AD
          A8FFD5CBBFFFA19F9EFF2E2E2EFE0606062C0000000000000000000000000000
          0000000000006B6B6BC1939393FF9F9A95FFE2E0DEFFD1D0D0FFE8E7E6FFECEC
          EBFFEEEFEFFFD1D0CFFFF0F1F1FFEFEFEFFFEFEFEFFFEEEEEEFFEEEEEDFFEDED
          ECFFECEBE9FFEBE9E7FFEAE7E5FFE8E6E3FFE8E4E0FFE3DFDBFFBFBBB6FFD9D1
          C9FFB8B2ABFF5B5B5CFF111111B7000000000000000000000000000000000000
          0000000000001F1F1F37969696FC7F7F7EFFC0BAB5FFE0DEDCFFDCDBDAFFE3E2
          E1FFD5D4D3FFEAEAE9FFEDEEEEFFEDEDEDFFEDEDECFFECECEBFFEBEBEAFFEBE9
          E8FFE9E8E6FFE8E7E5FFE7E5E2FFE7E3E0FFD6D2CFFFCFCBC7FFD4CFC9FFC7C0
          B5FF7B7B7BFF242525FB05050530000000000000000000000000000000000000
          000000000000000000004D4D4D8B9E9E9FFF7D7D7CFFC8C3BEFFDEDDDCFFE0E0
          DFFFDDDBDAFFE2E2E1FFEEECEDFFEBEBEAFFECEAE9FFEAE9E8FFE9E8E8FFE9E6
          E5FFE6E4E4FFE7E4E2FFCECCC9FFD9D6D2FFD0CDCAFFCBC6C1FFC8C1B7FF7B7A
          79FF424242FF1515158400000000000000000000000000000000000000000000
          0000000000000000000002020205666666BB9E9E9FFF7D7C7AFFC1BDB7FFE3E1
          DFFFD2D1D0FFE1E0DFFFE6E5E4FFEAE9E8FFEAE9E8FFE1E0DFFFE4E1E1FFE6E5
          E3FFE3E1DFFFDAD8D6FFD0CDCAFFB4B1AFFFD4CEC8FFBEB7AEFF747271FF5353
          53FF232323B50000000400000000000000000000000000000000000000000000
          00000000000000000000000000000808080E676767BFA0A0A0FF7D7C7CFFA5A1
          9BFFCCC9C6FFE3E2E0FFDAD9D9FFD6D5D4FFD7D6D5FFD2D1D0FFDAD8D6FFD1CF
          CDFFCAC8C7FFC9C6C4FFD3CFCBFFC5C0B7FF97928CFF676665FF5A5A5AFF2B2B
          2BB9020202090000000000000000000000000000000000000000000000000000
          000000000000000000000000000000000000040404095656569B999999FE8D8E
          8EFF7F7E7CFFA29E99FFCBC6C1FFD5D2CEFFD7D5D2FFCFCDCCFFD7D5D2FFD3D1
          CCFFD2CDC9FFC9C3BAFF9A948DFF71706DFF6E6E6EFF5C5C5CFE2B2B2B950101
          0105000000000000000000000000000000000000000000000000000000000000
          00000000000000000000000000000000000000000000000000002B2B2B4B7777
          77DA989899FF909091FF797878FF82807DFF8B8884FF928E8AFF908D88FF8784
          7FFF7B7976FF6B6B6BFF7A7B7BFF727272FF4E4E4ED219191948000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000202
          02042F2F2F55616161B58D8D8DF6929292FF8B8B8BFF8B8C8CFF898A8AFF8384
          84FF828282FF757575F44B4B4BB0212121500000000200000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          00000000000000000000040404081A1A1A342D2D2D5733333366323232662929
          2956181818340303030700000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000}
      end
      item
        ImageClass = 'TBitmap'
        Image.Data = {
          36100000424D3610000000000000360000002800000020000000200000000100
          2000000000000010000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          00000000000024201964141311A6030202330000000800000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          00001816123C7B6D59FC3D3833FF151412A40000002F00000012000000040000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000706
          040E5F5544E9B8A284FF443E38FF171413A80000003D000000220000000F0000
          0004000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000004A41
          35B8A38F75FFC3AB8CFF454038FF171512A40000003B00000025000000140000
          000918181830262626792E2E2EB60D0D0DA30000001D00000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          00000000000000000000000000000000000000000000000000002F29226D8E7F
          68FFC1AA8BFFC4AD8EFF474139FF181513A61E1E1E6B3D3D3D9F5C5C5CCF8B8B
          8BF4ABABABFF9F9F9FFF767676FF252525FF0D0D0D9400000003000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000014110F29786A56F8C4AD
          8EFFBAA68BFFBFA98AFF4A443BFF747474FF959595FFB2B2B2FFCFCFCFFFD9D9
          D9FFCFCFCFFFADADADFF7E7E7EFF2A2A2AFF0E0E0EA400000004000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          000000000000000000000000000000000000000000005E5242C3BDA78AFFC0AB
          8EFFBFA98BFFBDA889FF706963FFCBCCCCFFC9C9C9FFC4C4C4FFB8B8B8FFB0AF
          B0FFA9A6A8FF999999FF818181FF2C2C2CFF0E0E0EA500000004000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000074726DFACAB393FFBEA8
          8BFFC8B193FFBEA88AFF79746EFFCBCCCCFFBABABAFFB1B1B1FFABA8AAFF879B
          8DFF578363FF949193FF848384FF2D2D2DFF111111AE00000005000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          00000000000000000000000000000000000000000000777472FCC3AB8CFFCBB4
          95FFCCB394FFBCA588FF79746DFFB8B8B9FFAAAAAAFFA3A1A3FF8C938EFF3EA0
          57FF1A652EFF394A3EFF8A8589FF302A2EFF100E10B400000006000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          00000000000000000000000000000000000000000000787571FCCDB494FFCEB6
          97FFCEB897FFBEA88BFF6A645DFFA5A5A5FF9D9C9DFF929092FF348849FF56EE
          7DFF1F6E34FF295533FF4D8C5DFF2C7841FF1E6633EF145325BB0B3C17980422
          0B62000802150000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000404040B7D7971FED3BA9BFFD2BA
          9BFFD3BA9BFFC7AF91FF59544CFF565656FF797478FF427C52FF3AC55FFF58F6
          81FF5CCD79FF83EF9EFF68F78DFF4FF27AFF3FD968FF2DBA52FF1B963CFF0E75
          29FF0E6023F60933147F00000001000000000000000000000000000000000000
          00000000000000000000000000000000000006060611827D76FFD4BC9DFFD8BF
          9FFFD2BEA2FFBFB09AFF5E574FFF555256FF3A5B43FF2AA149FF46E670FF55EF
          7DFF78F698FF89F9A6FF69F48DFF4EEB77FF3DD365FF2EBC53FF1EA341FF118D
          32FF179A3AFF177F33FE082A1261000000000000000000000000000000000000
          00000000000000000000000000000000000006060611837E78FFD9C1A1FFD7C2
          A6FFDBC3A3FF8A847DFF645A51FF49564EFF1E8338FF3AD463FF44E06EFF53EE
          7BFF77F498FF8FF8A9FF74F696FF5BEF81FF49D86FFF32BD57FF1FA342FF118C
          31FF169738FF20A142FF0D421B9F000000000000000000000000000000000000
          0000000000000000000000000000000000000A0B0B1A87837CFFD8C3A7FFD8C2
          A4FFBAAD9BFF8B857DFF5F5950FF166C2FFF2EBB53FF49D66EFF5FE883FF73F4
          94FF8CF8A7FF94FAAEFF76F697FF56ED7DFF41D568FF2FBB54FF1EA241FF118C
          31FF169638FF21A344FF10481EB0000000000000000000000000000000000000
          0000000000000000000000000000000000000F0F0F24928B82FFE2C9AAFFCAC2
          B7FFACA298FF979089FF526149FF3A9552FF64DD83FF61DF81FF5FE882FF62F2
          87FF7BF79BFF8DFBA9FF6CF690FF4EEE77FF3ED665FF2EBB53FF1FA240FF0F8A
          30FF169537FF20A945FF115020C0000000000000000000000000000000000000
          0000000000000000000000000000000000000F0F0F24938C84FFECD5B5FFD7C3
          A9FFD7BFA1FFCDBEA9FF655A50FF3F5E47FF2F9149FF42D669FF48E170FF54F0
          7DFF58DE7BFF54DB77FF47D66CFF43D76AFF40D065FF3BC861FF36C95CFF28B2
          4CFF1DA140FF1FA743FF125924D1000000000000000000000000000000000000
          0000000000000000000000000000000000001212122A949087FFDEC8ADFFEAD0
          AFFFE9D3B4FFD5BFA4FF625A4FFF494649FF3A5240FF258B40FF42DC6BFF58F7
          81FF199139FF175A29FF4E805BFF376744FF20502DEC1953279F1D622FC02686
          3FF631B152FF32C658FF15672BE2000000000000000000000000000000000000
          00000000000000000000000000000000000018181837A2998FFFEBD2B4FFECD4
          B3FFEAD6B9FFDCC7ADFF60594EFF464646FF444142FF3A473EFF2B8A44FF54E8
          7BFF1E9B3FFF1B4726FF868085FF535153FF1E1B1EE00000000D000000000208
          030F25783DDD37CD5FFF1D7433E8000000000000000000000000000000000000
          00000000000000000000000000000000000018181837A39B92FFE9D3B6FFEED6
          B7FFEED9BCFFE5D1B8FF60584EFF404142FF3E3E3EFF3C3A3BFF353A38FF3A87
          4DFF127D2FFF164923FF827F81FF525252FF1E1E1EE00000000F000000000000
          00000C2F155B165727B70D351868000000000000000000000000000000000000
          00000000000000000000000000000000000019191939A49D93FFEAD6B9FFF0D9
          BCFFEEDAC0FFE7D3BAFF60594CFF3C3D3EFF3B3B3BFF373737FF343434FF302F
          30FF1A3A22FF37453AFF818181FF545454FF202020E300000010000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000002121214BAEA89DFFEBD5BBFFF1DD
          C2FFF0DEC5FFE8D7BFFF60574BFF38383AFF373737FF343434FF303030FF2E2D
          2DFF292728FF454545FF828282FF5D5D5DFF252525EB00000011000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000002121214BB2ABA1FFECD7BDFFF3E2
          CBFFE7D6C0FFE9D9C4FF61574CFF343435FF333333FF303030FF2D2D2DFF2929
          29FF242424FF353535FF818181FF616161FF252525EB00000012000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000002222224BB2ABA3FFEBD9C0FFF5E5
          D0FFE8D8C3FFECDECBFF61584AFF303031FF2F2F2FFF2C2C2CFF292929FF2626
          26FF222222FF2F2F2FFF818181FF5D5D5DFF262626ED00000014000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000002A2A2A5CBAB3AAFFEDDBC4FFF6E8
          D5FFE9DAC7FFEEE0CFFF615749FF2B2C2DFF2B2B2BFF282828FF252525FF2222
          22FF1D1D1DFF2C2C2CFF868686FF666666FF2C2C2CF600000015000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000002A2B2B5EC1BAB0FFEDDDC8FFF7EA
          D8FFEEE1CDFFEDE0CEFF615749FF282829FF272727FF242424FF212121FF1E1E
          1EFF1B1B1BFF262626FF8C8C8CFF707070FF2D2D2DF600000017000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000002A2B2B5EC0BAB1FFF1E3D0FFF5E9
          D9FFDCCDBBFFEDE0D0FF5B5143FF222323FF232323FF202020FF1D1D1DFF1A1A
          1AFF171717FF121212FFB8B8B8FF808080FF2D2D2DF600000019000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000003232326CC7C1B8FFD8CBB6FFE0D4
          C4FFF7EDDEFFEEE2D3FF584E40FF1F1F20FF1E1E1EFF1C1C1CFF191919FF1616
          16FF131313FF0E0E0EFFBABABAFF828282FF323232FF0000001C000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          00000000000000000000000000000000000035353572CEC7BDFFF8EEE0FFFAEF
          E2FFFCF3E6FFF8ECDEFF5C5041FF191A1AFF1A1A1AFF161616FF131313FF1010
          10FF0B0B0BFF050505FFBCBCBCFF8C8C8CFF343434FF0000001E000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          00000000000000000000000000000000000036363672CFC9C0FFFFF6EAFFFDF5
          E9FFCBC2B5FF656059FF191919FF161616FF1B1B1BFF252525FF323232FF3D3D
          3DFF494949FF525252FFB0B0B0FF8F8F8FFF333333FF00000020000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000003C3C3C7BCBC6BEFFC1B9ADFF8D89
          84FF818183FF9E9E9FFFB4B5B5FFBDBDBDFFC4C4C4FFC4C4C4FFC1C1C1FFBEBE
          BEFFBBBBBBFFBCBCBCFFBFBFBFFF9F9F9FFF2F2F2FFF03030331000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          00000000000000000000000000000000000040404085ADAEAEFFC1C2C2FFBABB
          BBFFB2B2B2FFA9A9A9FFA0A0A0FF969696FF909090FF868686FF808080FF7979
          79FF717171FF686868FF5C5C5CFF5B5B5BFF7C7C7CED03030322000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          000000000000000000000000000000000000121212313D3D3DBD434343E03F3F
          3FDA383838CF333333C32C2C2CB5282828A7242424991E1E1E89181818771313
          13640F0F0F500A0A0A3E05050528000000120000000900000000000000000000
          0000000000000000000000000000000000000000000000000000}
      end
      item
        ImageClass = 'TBitmap'
        Image.Data = {
          36100000424D3610000000000000360000002800000020000000200000000100
          2000000000000010000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000030000000E0000001C000000180000000A00000002000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          000300000011010100301D1102820E090161000000270000000B000000020000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000030000
          0011010100312F1C03B7643C07FF4F2E07F6110A0072000000290000000B0000
          0002000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000003000000110101
          0031311C04B76A3F07FFEDA64CFFA36A1EFF4C2D06F6110B0272000000290000
          000B000000020000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          000000000000000000000000000000000000000000030000001101010031321C
          04B76C4008FFECA54BFFFFD796FFFFC777FFA4691EFF4F2F07F6110B02720000
          0026000000080000000100000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000030000001101010031321D04B76D41
          09FFEBA54BFFFFD492FFFFCF8CFFFFC77DFFFFBF65FFA66C20FF523209F6130C
          0269000000160000000100000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          00000000000000000000000000030000001101010031321E05B76E430AFFE9A4
          49FFFFD18CFFFFCC87FFFFC375FFFDB963FFFBB255FFFFB34FFF8F5914FF3821
          06BD000000210000000100000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          000000000000000000030000001102010031321D05B770430BFFE59F45FFFFCB
          84FFFEC77FFFFABE6DFFF8B35EFFF4AB50FFF5AA48FFAA6E22FF58360CF8150D
          025D0000000C0000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000030000001102010031322005B771450CFFDF9B42FFFFC67DFFFBC2
          78FFF5B767FFF0AE58FFEDA54BFFEEA444FFA96D20FF58350AF8160E03610000
          000D000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          00030000001102010031322006B773470CFFDA953DFFFAC075FFF5BB70FFEFB1
          5FFFE9A853FFE5A047FFE79F3FFFA96D21FF59360BF8180E03610000000D0000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000030000
          001102010031322006B775480FFFD59139FFF4B86CFFEFB366FFE8A958FFE3A2
          4CFFE09B41FFE1993CFFA76C20FF5B370CF7180E03610000000D000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000003000000110201
          0031342006B776490FFFD08C36FFECAE60FFE7AA5DFFE1A250FFDC9B45FFD995
          3CFFD89438FFA66C1FFF5C390DF7180F03610000000D00000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000300000011020100313422
          08B7784B10FFCB8730FFE4A453FFE0A152FFDA9A47FFD5943FFFD18E37FFD18E
          34FFA56B1EFF5E3B0EF7190F03610000000D0000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000020000001002010031352207B7794D
          11FFC6812BFFDB9844FFD79644FFD2913DFFCE8D37FFCA8832FFCA8930FFA46B
          1EFF5F3D0FF7190F03610000000D000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          00000000000000000000000000000000000702010028362207B77D4F13FFC07B
          27FFD48A34FFCF8B37FFCC8833FFC78530FFC4822DFFC3812BFFA56A1DFF603D
          0FF8190F04620000000D00000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000073221079D7F5013FFB17524FFBB78
          27FFC57928FFC27B2AFFBD7B2AFFB97828FFB67826FFA0671DFF5F3C10F8160E
          036C000000160000000200000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000023521089A805214FFAA7023FFA86F
          24FFAB6F23FFB26F23FFAE6F23FFAB6F23FFA97023FF9B641BFF5C3C0FF3120B
          026D000000270000000B00000002000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          000000000000000000000000000000000000020100093C2709B3805214FFA069
          20FF9D6820FF9E6820FF9F6820FF9D6820FF9D6920FF9F6A21FF9D661CFF603F
          10F2130C036D000000270000000B000000020000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          00000000000000000000000000000000000000000000020100093D280BB38454
          16FF97641EFF92601DFF92601DFF92601DFF92601DFF92601DFF94611EFF9C65
          1DFF624011F2130C036D000000270000000B0000000200000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000020100093F29
          0BB3875716FF905F1CFF895B1DFF885919FF885919FF885819FF885818FF8757
          18FF99621BFF644113F2140C036D000000270000000B00000002000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000201
          000940290BB38A5817FF8D6124FF8C6734FF8D6634FF8E6835FF906A38FF9471
          41FF9A784CFF9B6821FF664213F2140D036D000000270000000B000000020000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          000002010009412B0DB38B5A18FF8A612CFF8E6F46FF92744BFF967951FF9A7D
          58FFA08460FF9F8562FF9B6723FF674214F2150D036D000000270000000B0000
          0002000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          00000000000002010009432C0DB38D5B18FF8A6534FF917857FF967C59FF9A81
          61FF9F8767FFA48D71FFA28E71FF9C6823FF6A4515F2150D046D000000270000
          000A000000020000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000002010009452E0DB38F5D18FF8A683DFF988368FF9B86
          6AFFA08C72FFA49279FFAA9982FFA89781FF9B6925FF6D4516F2150E046C0000
          0024000000070000000100000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          000000000000000000000000000002010009462E0FB3925E19FF8A6D46FF9F8F
          7CFFA2917CFFA79783FFAC9D8AFFB2A593FFAEA292FF9C6B27FF704917F2160F
          0465000000150000000100000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000201000948300FB3925F19FF8D72
          4FFFA99C8DFFAB9E8EFFB0A595FFB6AB9CFFBEB5A9FFADA499FFA76D1FFF4C32
          10BD000000210000000100000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          000000000000000000000000000000000000000000000201000948300FB3945F
          19FF957B59FFB6ADA2FFB9AEA1FFC0B7ABFFBDB5ACFFA67530FF774E17F61B13
          055B0000000C0000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000020100094A32
          0FB397611AFF9D8564FFC8C2B9FFBFB8B0FFA77430FF774E17F61D13065E0000
          000C000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000201
          00094B3311B398631AFFA0886AFFAA7835FF785018F61D13065E0000000C0000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000020100094C3311B29D6820FF7A531AF61E13065E0000000C000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000201000833220B6F1A1105440000000900000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000}
      end
      item
        ImageClass = 'TBitmap'
        Image.Data = {
          36100000424D3610000000000000360000002800000020000000200000000100
          2000000000000010000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000010000
          0008000000170000001D00000010000000040000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000001000000080000
          001E0E09015A1C1002830101003C000000150000000500000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          00000000000000000000000000000000000000000001000000080000001E130B
          01664F2E07F6643C07FF2D1A03BA010100420000001500000005000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          000000000000000000000000000000000001000000080000001E130C02664C2D
          06F6A36A1EFFEDA64CFF6A3F08FF2E1B03BA0101004200000015000000050000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000050000001A140C02644F2F07F6A469
          1EFFFFC777FFFFD796FFECA54BFF6C4008FF2E1B04BA01010042000000150000
          0005000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          000000000000000000000000000000000008140D0258543209F6A66C20FFFFBF
          65FFFFC77DFFFFCF8CFFFFD492FFEBA54BFF6D4109FF2F1B04BA010100420000
          0015000000050000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000053A2307BA8D5914FFFFB34FFFFBB2
          55FFFDB963FFFFC375FFFFCC87FFFFD18CFFE9A449FF6E430AFF301B04BA0101
          0042000000150000000500000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          000000000000000000000000000000000001180F024958350CF8AA6E22FFF5AA
          48FFF4AB50FFF8B35EFFFABE6DFFFEC77FFFFFCB84FFE59F45FF70430BFF301D
          04BA010100420000001500000005000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          000000000000000000000000000000000000000000011B10035058350AF8A96D
          20FFEEA444FFEDA54BFFF0AE58FFF5B767FFFBC278FFFFC67DFFDF9B42FF7146
          0CFF321D04BA0201004200000015000000050000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          00000000000000000000000000000000000000000000000000011B1003505936
          0BF8A96D21FFE79F3FFFE5A047FFE9A853FFEFB15FFFF5BB70FFFAC075FFDA95
          3DFF73470CFF2F1E06BA02010042000000150000000500000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000011A11
          03505A370CF8A76C20FFE1993CFFE09B41FFE3A24CFFE8A958FFEFB366FFF4B8
          6CFFD59139FF75480FFF321F06BA020100420000001500000005000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          00011C1103505B390DF8A66C1FFFD89438FFD9953CFFDC9B45FFE1A250FFE7AA
          5DFFECAE60FFD08C36FF76490FFF321F06BA0201004200000015000000050000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000011C1103505C3A0EF8A56B1EFFD18E34FFD18E37FFD5943FFFDA9A
          47FFE0A152FFE4A453FFCB8730FF784B10FF322007BA02010042000000150000
          0005000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          000000000000000000011C1103505E3C0FF8A56B1EFFCA8930FFCA8832FFCE8D
          37FFD2913DFFD79644FFDB9844FFC6812BFF794D11FF322207BA020100420000
          0014000000040000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          00000000000000000000000000011C120451603D0FF8A56A1DFFC3812BFFC482
          2DFFC78530FFCC8833FFCF8B37FFD48A34FFC07B27FF7B4E13FF352207BA0201
          003C0000000C0000000100000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000001000000091A10045D5F3C10F8A0671DFFB678
          26FFB97828FFBD7B2AFFC27B2AFFC57928FFBB7827FFB17524FF7F5013FF301F
          06A40000001F0000000100000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          00000000000000000001000000080000001D140C025F5D3C0FF39B641BFFA970
          23FFAB6F23FFAE6F23FFB26F23FFAB6F23FFA86F24FFAA7023FF805214FF3120
          08A10000001A0000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          000000000001000000080000001D150E045F613F10F39D661CFF9F6A21FF9D69
          20FF9D6820FF9F6820FF9E6820FF9D6820FFA06920FF805214FF392409B60201
          0022000000010000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0001000000080000001D150E045F654211F39C651DFF94611EFF92601DFF9260
          1DFF92601DFF92601DFF92601DFF97631EFF845416FF3A260AB6020100220000
          0001000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000010000
          00080000001D160E045F664113F299621BFF875718FF885818FF885819FF8859
          19FF885919FF895B1DFF905F1CFF875716FF3B270BB602010022000000010000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000001000000080000
          001D160F045F674313F29B6821FF9A784CFF947041FF906A38FF8E6835FF8D66
          34FF8C6734FF8D6124FF895817FF3E280BB60201002200000001000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          00000000000000000000000000000000000000000001000000080000001D170F
          035F6B4414F39B6723FF9F8562FFA08460FF9A7F58FF967951FF92744BFF8E6F
          46FF8A612CFF8B5A18FF3F290CB6020100220000000100000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          000000000000000000000000000000000001000000080000001D160F045F6D47
          15F39C6823FFA28E71FFA48F71FF9F8768FF9A8161FF967C59FF917857FF8A65
          34FF8D5B18FF3F2A0DB602010022000000010000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000050000001A1810045F6F4716F39B69
          25FFA89781FFAA9982FFA49279FFA08C72FF9B866AFF988368FF8A683DFF8F5D
          18FF402C0DB60201002200000001000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          00000000000000000000000000000000000818110553704917F39C6B28FFAEA2
          92FFB2A593FFAC9D8AFFA79783FFA2917CFF9F8F7CFF8A6D46FF905E19FF432C
          0DB6020100220000000100000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          000000000000000000000000000000000005503511BAA76D1FFFADA499FFBEB5
          A9FFB6AB9CFFB0A595FFAB9E8EFFA99C8DFF8D724FFF925F18FF442D0EB60201
          0022000000010000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000011E150647784E17F6A67530FFBDB5
          ACFFC0B7ABFFB9AEA1FFB6ADA2FF957B59FF945F19FF452E0EB6020100220000
          0001000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          000000000000000000000000000000000000000000012015064A784E17F6A774
          30FFBFB8B0FFC8C2B9FF9D8564FF97611AFF462F0EB602010022000000010000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          00000000000000000000000000000000000000000000000000012115064B7950
          18F6AA7735FFA0886AFF98631AFF483010B60201002200000001000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000012116
          064B7B531AF69D6820FF483110B5020100220000000100000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          00011B13053B32210B7102010018000000010000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000}
      end
      item
        ImageClass = 'TBitmap'
        Image.Data = {
          36100000424D3610000000000000360000002800000020000000200000000100
          2000000000000010000000000000000000000000000000000000000000060514
          19680F4353E8135568FC082633B4000000470000003A0000002D000000220000
          00170000000F0000000900000004000000020000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000030F12320F4F
          62F70A5171FF075170FF235775FE0F1E2CB8000000630000005C000000530000
          00490000003E00000032000000270000001D000000140000000C000000070000
          0003000000010000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000093442B82667
          87FF457194FF0D4565FF4685A9FF234C6CFE0F1C289200000042000000440000
          00420000003D000000370000003000000029000000210000001A000000130000
          000D000000080000000400000002000000010000000000000000000000000000
          00000000000000000000000000000000000000000000000000000A4D63F9769B
          B5FF8FA8C2FF2A6B89FF2E5F86FF3E729BFF284C6BFD0D192267000000170000
          001F000000230000002400000023000000200000001C00000018000000140000
          00100000000B0000000700000004000000020000000100000000000000000000
          0000000000000000000000000000000000000000000000000000215768F45192
          AAFF4E869FFF437D9DFF114873FF1E5079FF40729BFF244B68FA0A141B4D0000
          000200000005000000090000000C0000000D0000000E0000000D0000000B0000
          0009000000070000000500000003000000020000000100000000000000000000
          00000000000000000000000000000000000000000000000000004544467F3F67
          7FFE5A92B4FF447DA3FF326B93FF1B527CFF205279FF3C6E96FF224461F5070E
          143C000000000000000000000000000000010000000100000002000000020000
          0002000000020000000200000001000000010000000000000000000000000000
          000000000000000000000000000000000000000000000000000000000000091C
          2C86215173FE5D97BEFF5D96BAFF417BA2FF265D87FF25567DFF34658BFF1C3B
          55EE040A0F2E0000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          00000E212E81255479FE6DA8CBFF71ADCFFF5390B5FF336C94FF305E85FF2856
          7EFF133149E502060A2100000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000E222F7C24597EFE7AB4D7FF83BFE1FF6AA7CBFF437DA5FF3D6C
          90FF1C4A70FF09233BDA00030416000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          000000000000000000000D223077215A81FE82BDE1FF90D0F1FF81C1E3FF528D
          B4FF4B7B9CFF133F63FF00182BCD0001030E0000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          00000000000000000000000000000C202E711D5B86FD88C2E8FF91D3F7FF8DCD
          EEFF5D9ABFFF5B88A9FF103B5DFF001326BE0001020800000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000B202F6C1E5A88FD88C0E6FF88CC
          F2FF92D4F6FF6AA7CAFF6896B5FF184261FE2C2E2AAB00000001000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          000000000000000000000000000000000000000000000B202E671C5885FD8BC1
          E4FF7DC2ECFF93D6F8FF75B5D8FF71A3C3FF635A4CFE13120E47000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          00000000000000000000000000000000000000000000000000000A1E2B631B5A
          82FC8EC1E3FF71BAE6FF8DD4F9FF80BBDBFF827463FF3B3A33A9070707240F0E
          0D411C1D1D4D201E1D48151412330405030E0000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000A1C
          285D175681FB94C4E3FF69B3E2FFB8BFBDFF93826EFF78736AFE484544FE4946
          43FF514D48FF8E887FFF8C8579FF6E665AFC47433CD2272626880C0C0C2E0000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000161D1E58686349F9AFA798FFC4B9A9FFC2B3A1FF817464FF6F6C6AFF615D
          57FF45403BFFC3BAADFFBCB1A0FFAB9F8DFF948D82FF6D6D6AFF494B50FE2124
          27BD0808093B0000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          000000000000282826766C6C6EFF99978FFFACA498FF827E79FF736E6DFF645E
          5BFF605953FFCEC5B6FFB6AA98FFA29886FF8F8A81FF7C7C7CFF6A6E75FF4549
          4FFF1D1F22FD0407079C0000000C000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000003B372ECD91918FFFB9B9B8FFABAAA6FFB9B8B3FF9C9995FF7D7B
          76FE73716CFE716E69FE838078FF817C72FF747069FF737578FF5E636CFF4144
          4AFF25282CFF060507FF070706D20202021C0000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          00000B090723595346FEBFBCB6FFA9A7A0FE6A6660F5625B50EA766B5FE38579
          6ADD7B6E5ED660513ED2382917D0382E1DD65B554AEA706E69FD606062FF3739
          3DFF1B1C1FFF050605FF20201CFF1D1D1ADA0404031500000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          00001B1916616D675AFFB0ADA9FE7F7A73EFC0B8B0E1B5B1A8C38F898192726E
          677263625A6361605A616A655E6D696157824C3E2B93291801AD463E32D66D6C
          66FC282726FF050504FF31312AFF49473FFF292A24B900000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          00002D2A259EADA9A3FF6F6B65EEE8E5E3EBC2BFBAC273675773605446605B4F
          415B554B3F554F453B4F49413649433E3343434239434A433B4B392D1C6B2B1D
          0BA35A574EE947463FFF373730FF626256FF5C5B50FE1A191651000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          00006F6F6CD4898985FFB0A494DDC4BFB4C4CCC6BECCCAC5BDCAA1998DA17669
          57766D604F6D675C4D67615649615C50435C564C405650483C504A473B4A4B42
          34513E2F1B8247423ADB64645AFF69685CFF858475FF3A3A32BA000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          00007E7D7BE677736EFFC0AF97EDC0B9A8C0C2B6A8C2D8D3CCD8DAD7D1DAD3CE
          C8D3AAA093AA847462847A6C597A746757746E62526E685E4F68625749625D53
          475D5A52465A4F402E7D4D4B43E37B7B6CFF939281FF56554BF5000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000686664CC878684FF97805FFFCCB79ADCDAD3C7DACEC3B1CEE1DDD4E1E6E0
          DAE6E7E2DDE7E1DDDBE1C0B7ACC0998B79998677638681725E817B6E5C7B7568
          57756F63546F6C63526C4E4332916F6F65FC929181FF605F54FE000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000403F3E84AFAFABFF5F503BFFAA9170FEDCC5A7E8EBE7E0EBDCD0BFDCE4D9
          CFE4EFEAE7EFF0EAE8F0F1EDE9F1F2EEECF2DFDAD4DFBEB4A7BE9D8E779D8D7C
          658D87786287827461827F76617F4B473ED9949383FF4B4A42E5000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          00000D0D0B1A888784F3787873FF8C7654FFAE9470FFE5CEB0F8F6F2ECF6ECE1
          D5ECE5D6C2E5F4EEE9F4F7F2F0F7F7F4F3F7F9F7F3F9FAFAF7FAFCFBFCFCEAE6
          E4EACDC5BACDB0A391B0978C7497554B3EC488887AFF35342EA9000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          00000000000032313168A2A19DFE4F4D48FF957D5CFFAF916DFFD9C0A1FEFCFA
          F2FCF9F6F3F9ECDDCAECF0E2D0F0FAF9F6FAFCFCFBFCFDFDFDFDFEFEFEFEFFFF
          FFFFFFFFFFFFFFFFFFFFEEEEEEEE625849DE78776AFF21211D6C000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          000000000000000000004242418E9E9D99FE434440FF6F5C42FFB89974FFBFA3
          7EFFE1D2C1FEF9F7F3FEFBFAF5FBF2E3CDF2F5E7D3F5FCF9F6FCFEFEFEFEFFFF
          FFFFFFFFFFFFEEE5D7FDE1C5A2F85E594EFF67665BFE0D0D0D2C000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          00000000000000000000000000003939377D93908CFC666664FF322D27FF9B84
          67FFC3A47CFFC3A47DFFCFB594FFDDCAB3FFE4D1B8FEE7CAA5FDE7D1B2FEE7D3
          BAFFE2C7A4FFEDCFAAFF837460FF737367FF414138C700000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000001D1E1C40696963D992908AFF595B
          5CFF444242FF887D6FFFB6A086FFD1B38DFFD9BA92FFDFC19BFFE6C7A0FFE4C8
          A2FFBDA688FF5F574AFF707064FF55544BEE0E0D0C2A00000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          00000000000000000000000000000000000000000000020202052E2C2A666160
          5AD78B8A82FE71716BFF666A6AFF656B71FF686A6CFF676865FF63635CFF5C5D
          56FF616159FF737368FE46453ECC0E0E0B290000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          000017171536363632814D4D48BB616159E46F6E66FD75746BFE68675FF95251
          49D9393934A11A19174C00000002000000000000000000000000}
      end
      item
        ImageClass = 'TdxPNGImage'
        Image.Data = {
          89504E470D0A1A0A0000000D4948445200000020000000200806000000737A7A
          F40000000774494D4507D8040F0D2E2E405315C4000000097048597300000B12
          00000B1201D2DD7EFC0000000467414D410000B18F0BFC610500000947494441
          5478DAA557798C9C651D7EBE73EEF3DB99D9D9EDCC6EBBBBDDD263976A4B0BF4
          9A0631F540894852124513341EFF188D07C60401138C1A2262E452423586A360
          F1A016D012689B70B4D0D9E25EEDEE76B79DED323BF73DDFF5FAFBBE36041019
          8C6FF2E59B77E63D9EF7F93DBFE7FD0D87F7B47BEEBE5B29D72A872627A63604
          43A197CBE592188FF74C8C8F8F8BA3A3A3B3D3D3D3E6E0E0E0523A9DAE6DDCB8
          7191FA8B8944623993C9B4F6EFDFAFE27F6CE23B3BDFFCEE0FBF983E33FF9595
          F1AE4D4A4F02918077A7284970381D57F7F725210A0282013F9C4E071445610E
          5906CF739ADBEDE2354D2DDC7AEBADE2C4C4C4787F7F3FB7B0B030964C269D93
          9393CF1F3A74E8D1FF06807B67E781871E31366DDBC173CC448B8930D5261A1A
          43B35242533750CEE7213B24649796105342A04D105182C89C3F0F8580CDCCCE
          211209209BCD23E0F5A2DE6C58BF3121A07CBFD9E69FFDCB1FEF1FFB40062489
          67A36B56E2B1270EE0F39FBB1E478EBC846D575D85B99933185A3D8C7C2E87AE
          4804D97CD11EDF2270A6D146BDCDC09B6D5C69D0726A1DD9520322D7C6FC621E
          1BC0B85C7EF9677F3B70E0C734C5F38100DA9A5E664078F3B65D6002E0EEEE83
          C68B38470B7A8A558C8D4D2299B44E350FD205D45A09BCEC4424EC43ADA66275
          4F08C5A28E4D23C3C865B3D8B3E34A1CFCC78BF8D3534FA25429383B6A405775
          D5A0B7FBD85F317EEF6D886DDD85FA9A516C8EC620B03CAE4976830F4A589DDC
          0CCEE5428306AB4D0D86DA42BB5940AD6DE0E4EC0538DD5E3CF5DC51DCF8F19D
          304D03326986E3F87A4700B47F9907BA1DBDFD70F50D402F17503FFE121A3C07
          9E04C8BB3DD04B79A89905B076138E681CCE91AD70AFDD88E170173835804F0F
          C5C0090CDFD8FB5908A20055D5200822048E6F7504A0A92D8A26359E07537598
          4E933EF268F8E3F05CB10B67EFBD135DAC0AF7E55B20C412D0180F831657CF4D
          43CB2D4124565AB48096CD2070DDCD748855D048BCA224C200D33A023019ABEA
          26A58628137526F44A0D1728B6233FB8070AA5A172D93A94F7FD1C6D7F14E12F
          7D078158143A4D68E5B2C83EF338B4C71E804E9F99A6C1B9ED53701200DD3020
          F016035CF5FD00F0EFEE0A755535C128BFDB0BB3A8865620F5CC317B731BA0A1
          C3A855E1FBC45E7BF356B58AE59327E0EDEE46FCA6AF233B374F4B907A050E8C
          FCC36253334C48B2646D657404C04CBDA1E93A655203B5373350CB15CC1D7A06
          13B77FFB6DDB608C43E9B9A7B1F4F2519CB9E35BF8D7CE2B502C37E074C91036
          5C0946F3199D9AD1A9894C1856082CFD70ACD21100B159AF375B300572383F10
          D58B68FCF62E4AF8162CF88C31FB7165E750FBCD8F90FFDDC3F0DF7117DC0137
          DA561A9F3E45830C70143E4E122EAE4960785EA0B00A7A670D705CB3D552E125
          B57BD66E204D90FA211033A487B70799D0CA45CC8CCF60F52BF3E81E4AA2415F
          BF71CB5E74B573245C8FB52B3120DBA00D1ACF0B3CA5A1D0390D996656754D85
          C3EBB3024E7DA293E26990359BB64861D3BB70A1888DAF9C834C873CF5C83E54
          EEBC05119EC6FA681EFD4E8642F3445B03264DE2399EC6F2CD8E21E02DFF3435
          A24B8405C4B4626930E8D51A72F906F980178DF9190CFEF271CA75F20DDA2BB9
          E73A0C1C48A3F5BD075010BC56D02D2DD16234805D04CD918F501C3A874060AC
          6C50FE0BE12064CA7356A494220189E7A650FCC276E47C4134E766D0BCEF2708
          6CD901219E84D4B30AFEF56BE119598B53FB7E01AE51B35960A28398A38FA419
          CB4B445EA87604C0045ED588BEB218C0D97B0EC347BF3AB28B702ED1A6F37390
          487CCEC559E8BFBF0FE587EEA3B8D21C7A4E93C5B08128DC6A05A6C4DB9A6122
          A59E6965D625009268740440895332750D12676293CF805BE270528D2292EC41
          7ECD76F40680576FBC0D830AE5F77C06CEB93168D369C83363503269E8B35998
          744E0A240123973461EBC702207062AD23008309AA46F439441E5339038A4740
          48D6D0EFA52CA0AB77796E011F8927905BC8A0E5EB4574C71ED4B7EF4191EAA0
          0C85BC4A4C0CA87954D2AF212E396D0D50046C00BC836F77142181AE186A1B32
          7D1B21CFEF9EF827AABA802367F258AC33F426FBC89A1938D985989BC1AB9770
          76EA342EF318288DA7A190001BBC03857529A8D63D6101302F0270705C670012
          D9BAAE5B0C00E7B9100A1BAE21EFE3E8A69391F00938FACA71F40504684DB260
          4AFEB2E144FFC02A9CAF32AC1E1AA27964525A99ECBA008927EAAD7A8B846287
          4074740E016366CDD035DBCEC3678F536E1730E6DB08B8E85A950DA4AEBE02D3
          791D1E7F085E02944E8F21188ED8375E37F5CB520C1ECE0BA7DF651FC22D5F3A
          A50542123A8B90E8A2B5349B96D2CACD28840167A60D075FC6727E1947A617B1
          76DD7A9C9C9A4572F528368D8EA06A90CF53B01D64C612D13E3E368D40BC0F1E
          B9CB5E93F28142CB4312E572671F70090149BA08DB77EA3042EC2DD4623BE1F3
          70F086147C74B01B678A26860707A8CA01724B0B586E097051B61854A0B8E343
          B86AF3E558A809EF5496CD80C87F88347408F2574747D6DB0C44B7EF46916298
          2812034CA59AAF86270E9EC4353BAE467AE234E283EB118FF6C24BA293798646
          B50C17013DF6EA09C8E115E013BD6F6BC02EBE45B3D111C0D1F4E45647F4456C
          DBBA05C3C9385DA33CFA3C0E0B1AB2347DA46F3772751323EB2E438DA62E9D9F
          C5592A6387E37E144A254A593F3EB67D0BA68AA69D821743C091A67862C9D9EC
          0860E6ADEC96A5479F3AF5FCD1138A3F14C620297CB8BF17832BE21822406E52
          56DC6DF14355B0CA5008AC410FF9034F57B04EB79F22735841D741A179F1DA6E
          6B97B280544D7F623A9764AF1FDC7F61F79E1BD6653373D7E63267530B9363BB
          8E0795FE40A88B0B280AFA1209AC4AC490EC8E10287AFBC9EF4DAB4811B132A8
          205331315520432270065970812A26B7CB8D46B30251E62B1D0158EDF0DF9F7C
          8B5E7FB8F420F5999B5736CBCBA9A5792135F3E689D41B4AB427A87471BE6017
          56F4C6908845D0D315C2CA1511AC0ABBEDDB7820483728012B55EA90A93453E9
          6A1645D9FC5000DEDB5EF8F3BE397A59CFC356FF93377C79B898BB9012C1A766
          DCAE9D2125160DC7629C2F10A6BF650AE2042616F2631585AD40452D1522B439
          C73C4ECFFB32C07502D0A171D7EFFDDA3AD9C1A548692997C7BD3312E90E7545
          BB394F20841EFAF7F4C6EBAFB199374FBEE815AAD73EF8E0BEFFD0C1FF0BE05D
          EDD73FBD9D3FB6901D9574294565D8EE4028B8AD59ABBF909D6ADEF4F4B3BF7A
          DF2CF837027C1ED677D60BA70000000049454E44AE426082}
      end
      item
        ImageClass = 'TdxPNGImage'
        Image.Data = {
          89504E470D0A1A0A0000000D4948445200000020000000200806000000737A7A
          F40000000774494D4507D8040F0D2F01F29919DC000000097048597300000B12
          00000B1201D2DD7EFC0000000467414D410000B18F0BFC61050000033D494441
          5478DAE557DD4F1341109FD92B4588851884C47FD14423D134B188282AA80F45
          8D3EA8FF9E4F46E001F0ABED8DBBB73BBB337BDB3BDF39D2EE756FBEE737BF5B
          00AEFB857CF3ECE42B11D83FF75D93DDB11F0ABF29DC97F65ACF6B77EBF5DD37
          B12DBFE71782E9CB7D54911C4CBF50DF35397EDF2BF3E8E075AFCCEEDE21B1DF
          01DFF848017E5CCDE1EF6C0135A5E0560706B6472B36B9BAF9FDEDEC0FA00130
          314F6BA842D8190DE3CED9E51C104599D13FB9B53E484AE06D8400BC71B4810C
          8D6994F8136ACA4B74CE060CBA5557949D378E6520A9113A001916222503F6AA
          3900A895210C11A270CE8948411D9ABE520542CD9D3AD9942A83517941BA4DB6
          40A2BCA83D701E2E0920F52856800A15909B4D4F4DCA5094A2592A44E0BFE81F
          494580CA65C281EAA56A0197B90E1FDBB841A802CBC7DE11367758A86D0AA3ED
          9C5A52720AC2E6CEC6CAF28685FE6E77CA783B0DDA97CAB4DB0293A377E449C5
          83CD930B74130C934CF44B512F552B910FCBBBE5C3DB17BA7E8F5F9DFC07C91C
          F793CCE4B057E6FE78BF44447EFD7E316B7A6BC4FECC82EFCEE63002F5F46A06
          75ED3333A1DF6EDD726415323FFF358F36241A36D62AC503020361C651910360
          65514F498A0D3A7CBA781011F261719761D20A0854CFA914401831E9DC69995A
          6C0AF0B8515CC80C916D4B424B0F08CB3C90A09AF140A31A7028784EDDC57DC9
          45C18E749E7395AA5432486509F465963136C532185F16BA0594144320F1BD82
          9988AA7898F1F8C21191538E01D77B1B85118E2963B9A6E4D8B69547D09A82DB
          A3E524C3BDDBEA94F1EBE68DAAD78E6812409871289D5E22B19068D41282899A
          24092B65CD3E3E4DDF68583C7C7AD44B200F26CF7B65EE8D9FF4CADCDD1DB789
          88233CBD9C05E0A4F799EBA7E4F6F39FB3002CFDC2DF5C1BC4CC2F7ECFA305C6
          827B7273B552206C8D21134BDC2ECCAF11085FD6DFDCB99C82320FE4A0083F4A
          0CE6C7528F6D2B189108966CE501B478482820E642198A1511E9444ACE8BEF02
          A9992BCBE364296B7DFA21A5AB8E64A907716FE9914C9694D43B1FD469A80534
          2A248219B6BA40D87992099A0DDA7B64D68755AF8CAC1BB8198F1948428AE443
          FAD413EDA47FD912614122A98CD0D8CEE78FD3AED3FA35BAFE01A0BCF514D7A4
          02EF0000000049454E44AE426082}
      end
      item
        ImageClass = 'TdxPNGImage'
        Image.Data = {
          89504E470D0A1A0A0000000D4948445200000020000000200806000000737A7A
          F40000000774494D4507D8040F0E15064B12EC5F000000097048597300000B12
          00000B1201D2DD7EFC0000000467414D410000B18F0BFC6105000007F5494441
          5478DABD967B6C546919C69F73CECC3973BF74667A995B3B2DA5176E762B9605
          091228655974D510134DBC1205134D4C4C361BE305E3BF26FE67CCBA26921816
          5D45430CB0C0B25C852D6C5B4A6977DAE965DA4E67A673BF9DFB9CE307FEA784
          D292F8252727993339DFEF7BCEFB3CEF4BE139EBE4F77F78AC774BF76F93F99A
          776E29A194AB7C5A9185545DD3929AA6A768E8298D62D206D493AA462569564F
          63894B7FF8D1691E2FB80CCF7BC859D85327BEF36D9FC16C8628EB2CD938248A
          4248E02B28174BC8E50BC814C83D5744BE58C06ABE88424B49FF5ADF8F4A424D
          4819183DEE723B7EFAFBDFFCFAC14600289FCBDD7EEC6F8F313C9F05ADEB3090
          8BA32998681A0E8E81DFC622E0F2A23510C1963E2BBEDCE4408BD3449958832B
          91CEB9AA954AF73FFFF1D75EF2AEF0BA01DE3C75AAC561B39B265215D8180A94
          A63FBDA06990550559514336AF61240E742786719533A3A2B3707ABDE8EE08E3
          F8E036AC9679A47225FF863E019FCD6FD59AC394BA5C02070A2AC500E4F43401
          6088123481A1290AD029EC2C4DC04054E14511DABC8845FE300C47FA70EEEA5D
          CCCCC5573706204A3B649B17F6F1B338F2D5EDE02B341A4CED481525723215AB
          451525BE0E13C761AAF9D3500A05D032B92A71D01627E42730045295C48D01D0
          94DE5E5258440246F46C6D40B3A9196D9630344A439D515190F2A40E9C48646A
          58C97B5013552CA6B3585C2050BA0DB96205AA2243ABABA90D01188CC6608E9C
          30D2E680DDE944C4BA09856401F96A1EA55C092CCD4169A2119F8E82B6539085
          125EE9F1A198E7E1A87B50ACF2E00B19B02CF7C9860018832198A98AD09302F4
          84066B370D916CE877F8D0DA11402C3E8B7879013902A4A465E457F2A0049DD8
          D1817023830A2F42916BA059C3EC860038CE146ADBDC8EDF2D1FC4A5B72B6095
          0B68643578AC32AC561EAD412B22AD0EF4ECEA4063D00B87C309A9C6E3FC4F46
          610F514F0B52955428A2BABC6E809FBDF5964D3298DCBF38D485130321DC8865
          F031C982474B25C4335550350DD10915D2300F45C880516330190502C5219BE5
          C019755405058A22C064724CAD1BA02CCB9106978F2E8B0A64BE8AFDA40EBEB0
          B5090CCD809714CCA6CB8867AB48642BC81479E4CA222A55090A3971B897426F
          07811E9986AA4A9AC8494BEB06A8D6B4DE4EAF07995C1E53D119C4A66770F4E8
          618C8E8DA3777327DCC47A56AF017B3A2360188680D14F2D47620A9A5E4799D4
          4EBE52435D554BD7CF9EADAD1B4051F86E1F49B4EB37EE60646C043D9B3A70F5
          FA2DCCC762680B85707F7C02854C06AFBF7E04B7EF7E84B6A01F2DCD2D486756
          110A0551209B437F920152126B2CFA593F4A8ADAED6F0E6068703F8EBDF179EC
          D8B11D5065B86D267C3C3286AB97AF8021E7BD7EEB36922BCBC813A578BE86CB
          57AE411005142B3C915F019120BD16C03315A0692AE070BBB0B894C0C4D427A0
          C35DB00D1C45967C8ADDBBBA11DADE0F07644C47A330933E512C9771FACCBB28
          AE66881B5C88C6D3E0CB45D006E3EC86008CAC29CCB206FCE5DCDF2114B2309A
          22882F4CC2A794309D97716EBC84BD4116ADBB8730FCE1087E4572BFBFBF0F99
          4C962820914295A18A55222FB3B06E80FD7B7632168BB9C96AB1E007278E636E
          2686A2CD8F07932BF0BAEC78FBE218EC8A8479CE8E7C3D81C99904CAE508B15F
          0EE38F26E00F862112373CE9051443C5D60DD0D9FF6AC06677705512A5730B8B
          B876E33A864EBE095F4543A755C1409F0789A5145185C39DC914F66FF2E2FCC5
          F7492DA49E1620A91F32BCC824804498592EBA6E80BACAB5DBED766A3A368B4B
          972E118B51B8F8600EA9952CEA4D26341A5CF8E38D69FCFCF86174682CCC248A
          F7F56CC5E3A929B8DC0D4F8BAFCA0B50EB922E09F5C57503A875BEC7450AB0BB
          6B33EC560B2459C4CDE52A8C5C1DCB851AEECD4E12080D63F339DC9B5C46BF8B
          B89F787F7A76119D1D142C2492CB550175323C5E3BFFA7FCBA016449EC6A68F0
          20994A6186A850D2686CFED41E7C707B0CDF3AB00D73893C6CAA177793699805
          0106B38C774E9F819126030A09269E34A13A01AA2B526AADCD9F0DA0A85DA170
          2B6EDDBC898987A3080E1CC2AD3B51A4E752187D650B1EAFCAF048351CDDD787
          7B130B18683422137023195F404B2088956CE149029259405D33849E0960A40D
          01B3D58AA1A1216CEDE9418D75408C15491A7A7185D4824836686C77E0BDE105
          CC2FA4D1ED69C596DDFB70AF62C25E96B4E19A08BE5424B563987F1180FF4942
          ABD311A4C8DC974AAD105B8D23A319E08B046077DB71F2D500DED8E645C06D86
          90C94121FF31D9ED383B1CC3FD991439759DD48C4C14904151C4A31B51405135
          6785F4F5CBEF5F4172691E81C83E326AA5D044F3D0F275DC9CAFE18B3B7CF8DC
          CE46E49A8DA891C4F51A29844C14045981A812886A190CC54E6D08A0562EDE1F
          79F868E0C06B47495FA7309E55505245E2020A7FBE3A0E562843FF4C1B2A1285
          9BD15538B23496B3656C7732906532233C09214980D1CAAE9901CF0460DCB643
          53A30FBE3B39FAE090C5E9DCEBF1F84CBB027ECAEF0FA03FE245A150C1C3B90C
          A6880DDB380D8F632B107909DE9606A2DE7F3E01C9025DAA33F11701A09EF7F0
          2B5FFAA5C9EACB7E56853E487AFE4167836787CBDBC884FC7E903B140DB83F5B
          26D62C626F970DE12617FEF5701AD1D13BE28533EF58C82BF49702F8EFF58DEF
          FDD8A7EBF2014DD70759CE78D0E96E0C791A7D54301804479C53ABC978189D43
          F4FEB5992BE7DEDDFCD20AACB5BE79FC64579D310E6AAA3A68B139F6E5AB8243
          146B3968F8FA85B37FB8F432EFFEBFAD7F031562FBC1145ABDCA000000004945
          4E44AE426082}
      end
      item
        ImageClass = 'TdxPNGImage'
        Image.Data = {
          89504E470D0A1A0A0000000D4948445200000020000000200806000000737A7A
          F40000000774494D4507D8040F0F13098C353C7F000000097048597300000B12
          00000B1201D2DD7EFC0000000467414D410000B18F0BFC610500000998494441
          5478DAC5577B705C7515FEEEDDC7DD7792CD3E926D369BDDA469D39690310969
          43A69216A4340A5561004145D0411E030A38A0C2A0D54229F2073A1D19ED5414
          1DED082A112C509AA669D234A5A44D21B4691E9B64BBBBD9EE66DFD9F7DDEBB9
          1761284D4B3BC38C2793D9BB7BF79EF3FDCEF9CE77CE32F80CDBB2F9E9658C4A
          73CBF0C8F026CF8CA79ECFE66E3CF24EFFEE4F7EA7B9E3FA150A15AB39F4F6BF
          8E7C96BF4F9BEC4237373FF5DC433687B37B456353E7175AD7544CBB6714D158
          A4535B697971DEEB4D4BDFD9F2EC33AC56F597342F7CCF5C61EFB0D7379CF44E
          8EF93E17005F5C7BF51D4D6BAE6C91711CB43A1DBC1E0FF2455E9F8E24AAFCDE
          997FFC6CCBB6DB6A5CB5BFFAE6EDDF666A9C2E26962BBA52D1C85D26A3E9B0CF
          333D713100E417BAC9337C5228F250281428160B685DDD8E402486B254FA1B57
          AEEFF2979B2DF736AF6E67920B4934D456A154B701DB3E18668B855CC5C56680
          FDF40797AD6EB6D10B23DD64581E82F02118BE8865F52E2C5FBE1C8D97B73006
          73E5236B3BAFD6E4F379C818F10106A150848EA4844CAE4E5D2C808F33B06DFB
          F315BD7B0EBC198D252E6BE9B86A3C97E777660B990A869CD7D8CCD0A9955290
          FBBE7333147239E43219920B29C417D248A67390D1FB782A0539A7022F639397
          0C20164A3FFED0A38F377A4E7B71F0D050BDC7E7DB6A29B7A0BDA901D1641AB9
          42119C5C86543A43C159E8B51A02A546A95E43D9E1A93409C4D35929039456D5
          2501787CEB16BBD5587197D65082FA653AAC5CB5127E9F1F1B3B5723124B2295
          4AE3CD034328140A30961960D0A8A05671B0594C702CA9A4D3B3283768A06404
          B094099E615E58D5D67152A33644797E61290A6C2DA790EF3BD8B7C7BD2800F2
          5BAB54693808457A2748FF5F1183275378EFE438F60FBE8BEBD6B543ABA2D3C9
          E4505010A582A56B16B1781C4AA512D98280AF6FE844602E40FEF2E6F940F0B8
          5AA3622B2DF54C2A938177DA7D881CAFF93400A90DFB7B7AA6ED3575ADD58EEA
          7A8D468BBA256614897C93D31EBCFE761F6EDE742D051103CBA1948BC1655029
          39A839A54854A4D3C483E4875CA8AD71A0CA6EC76DB7DCC2DEB4E97AA6736D07
          3205607A66664989D9321498759FD59E1F77815CC5DDD3DFDB1357720A180D3A
          0AA2C0EFFFF457DC7E6317142C0315114F47A937961A201233180C62CA3D8B58
          6201F3D1246582FEA3712262869E3780A3A3852361F8E6825859BF14E5153682
          CA3EB16806443BDCDF1B6F696DCF56DB8CD7BAE814FB060E41AFD1A0CE550339
          CB52ED4B20A353F31009A883B5C24AFAC0A2A76F105A8D0109E249301CA5B228
          88A859C41309E2865CBA2666209E8C63766A52E59B9978EE7F753E57071C3663
          BCC26492AEF7EDEBC5551D6D5052F0B2121D7881253112D07B6000EF0C0DC2E7
          994585C5821BBA36E0F07BA30845E208136143E130A2F1347CFE2032D93C750F
          8F13E3E338B0F7AD1045BB8E5C1717CB00F39327B7AECDE4F20F75ACB9C2A1A7
          14BEFAEFD7D1B5E11A29DD2A6A3791703FDDBA1D7F7CF10F73366B69D7F1E3C7
          73EE696FB3D9BA8431971B09C449F0791EDE4008669311C1F93871069898398D
          57BBFFE943A1B87EA8E7B59145BBE097CF3E3FE0743A573BEBEA1993A502E96C
          016AB5464A4F269385D168C4EEBDFBF1FEB121E452F1FD0F3FF8C33EBAD5F783
          1FFD38C2729AC71CCE3A941068BF3F048664319E5CA05231181818C0FBA3C308
          9FF13F3F367C7874311D904AA0D3E91A5BDADA19835E876CAE20395050BDE789
          5431523AE220C64647914DC4C0F2B9D28F1E8EEBE45B8E8D1C4BF98311491704
          A648DD41524C65135F73B92C6581E6483A5D7D3E21920044C29149F142945381
          FE6289141852B4F97082521995C68128527AA30906B3F5AA359D1B1DE2733B9F
          FC45D2E3F1B963F114A9A18002056429B8D8AA1C69064753B4CC6A837D65CB1D
          6D1B6EB8F3BC008A7C7E3C9E8C8123D42243B2B93C48981008C730178CC243AD
          D4787913945A03AA6A97732A15F7CA976EBDC9FEB5AE6D4A8D5667CB909271A4
          13C45269463094321144E5926AB45CB90E0DCDED5A8BA56A47DBBA8D7FEE58BD
          497F0E09D7AFBFD63D72F4A8D3E73D5D4D538FB558AC54860CDC331E9A6C72A9
          2C6A8D8EE0CA114D15506AADB41532FCBD3C337B5B6353AB4D5F626472E918F8
          228D2B4AB9894829B237129E4779A911D6F232B00A2543D6188EF9BBBCD3132F
          9C05A0B7678FAFBF6FDF4BB58DAB7EB7301FAAADAD753644160AC4E069C8E51C
          A666FDD4EB6A2A919A806821507F1349E5AEBA8672876B29535662C0C4D809A8
          F4469A942C2AAC260974241484B1DC44222683CB518370E80C8EBF3B280B0703
          CF2EAA03DB9F7E3A40819E9C99182F8A7A6F2EB722301F91FAF9E8E829A4A823
          740460794D0DAE686A86CB550783568B48D04B03489C82029151458767A116A5
          5BA9200957109F687C138833DE596AD5CCD145A5F823BBFFFEFBDF3B727CF454
          439D1D1497EA2993E680E8405433152747294975993815B54AF8BC53989D9BA7
          935AA4A958E7AA264E09383DEBC6B2865530D02A5746F2ADD7693179EA0331C4
          5900CE59C91E7B6AB3ADCC64AE1715CC5965863F48D29ACD480413A81DFC8120
          A95D848214E984726A39254A4BCBA42E70D897204F7B83381DF7BEF12ACD1365
          71D9CA46E2749E12A1648301FFC12C9BFBF50501F0297EA3D96A6343A4011693
          01C954562294D8E7994C1A055941144EAA35A5963E179711314BCBEA1CD48232
          EA0239DE7AA31B46E70A4C8C0E0F756F7EB4FD8A7BBECB5938253B3D39965E54
          093F6974B2E8D4945B30945998C442866AAEA43920D0A9D494461D0515A44C88
          4B234BEDA616B7A2123D1648B0441D193E721066BB0BF9E8022267FCAD6BD67D
          D53CF8DB1DC1F309D1396BF9607FDF07550E27B790CA76687425CCC8D161A17B
          D7CE743E9F55543B6B890B726927242DA0DEE7A4F70502944A243134D80BD7D2
          15701149BD813924E33136190E9DF0B8C78E5D3400D146DE3DDC5361AF299F38
          71B2188E84EE3E7164FF235353E30601B26605C731E4989C4711A379EF393D8B
          3DAFBD022565A2B5AD031AB54A9AB52A859C76013F82FE19C13B3DB9EB7C00CE
          F7BB40F8DBCEED0F9CFDD113F72915BE2F975B6C552CD55E5C4CD324BD63136E
          8C4F4DBE65B25436D5386B2D254448083C6AECD5E8CBA569CB2BE670016371D1
          F6006D69F99773A9040D1A0534B48E65F305B1CE026730FFBCC867DAF6EEEE1E
          F19F9E9106D0605FAF50CCA65F0E4CC4EFBC9057F9C586178DCFC9FE1EF2CD3E
          585252CAE8F4A5089F1A4774CE1B18DC4DE5FFCF33FCBD777FABA37F7FCF4EFA
          19D79E4BA61F7E69C76F767D964FE652008876F7038F7D3F994A5D433B42DBCC
          CC74D1E70FDF7AA4AF7B6011BFC2A5FAFEBFD87F015BF303B616E60507000000
          0049454E44AE426082}
      end
      item
        ImageClass = 'TdxPNGImage'
        Image.Data = {
          89504E470D0A1A0A0000000D4948445200000020000000200806000000737A7A
          F4000000017352474200AECE1CE90000000467414D410000B18F0BFC61050000
          00097048597300000EC300000EC301C76FA8640000076A494441545847ED9779
          5094E71DC7B96F105816588EE55A60B9CFBA10944301774160B9EFC3B09C8B20
          41D46843B4A456902BA0DCC272AC27263A8D3369A793DA997426ED98B435ADB1
          5629C57676D3DAD8A9DD36FD23F3EDEF5958A28510B4FFE48F7E67BEC3FBFC9E
          E3F37DDFF779DF77D1FBBFBEC9D27793B62738A7B74D5847EC8DA5B6E94A796B
          DA96D2E6E594D2D46F175728A1A6C54A75EBD27790B448DCF23B34BE6D6FC125
          B35D65298C4FA1FA9642D824D5F870C5CD8B9E8DB370921ED15887A59551D96A
          A5F7EBB502CFFBB6C6BF450971C309F8345F002FBD556521782995FA370DA185
          A7EE27F80CCA8E0D42D0700E8E9987B61C42DF21A549E29A7B4CE3DB3C8FAC96
          53C86FEFC3EEBA37E0BD5F09E7F4039B8660708754F9A267BD02D59DE750D931
          8CD88A6370978DC321E32085106F1A429F93DCB8DB25E7558DA0691E69CDBDC8
          6C1F466AF300126BBB105971029E547712EFDF30844D52850F6777C3A247DD34
          2A4F4CA1E8E82876D476C337AF03CE92575642485ED15806A416D270CB9559CF
          CAC829A571C6EBC02524B68C20FBB559C4C9CF205AD68BF0AA53082AED844F7E
          07BCE4B3704C915388EDBA10FA2BF0FA457ECD048A8F2B907D640CA29A1E088A
          DF807F5917226A87E05DD409F7DA496C8B2DBA4873DCD83CF23332B50C8A4FE2
          8A9BD45E4D4A84D49E4528D9AFB20F5E255DE0177C172ED9C7E194D501767F39
          29F52A0BCFC854ABA8BD42CEAEBA453E9D617E870269872710291B80A0F43484
          550388968F41486BB8BC3C02FB4499DAC4D53F9F5876E475010CC98EE69E5159
          5CB15CEDD13887B0C60944359F4340F559082AFAC12F3E0D9782EF815770121E
          F5D3B0DF255371E2AB96D8E59576CC22E5D014826443F0AD78138135C3D8DEAA
          80B07A082EFB86619B50A536E67A5711834F3661C0FF164BC43A78E61E6152FB
          E406359F365378CB1CBED5761E81B49BFDAB47E0593104D7D23EB896F5C28D2E
          39BF7A147B3BE69170700642D928FCC9C1F269C4B45F4040FD04C147601B5F49
          700F06F7229BADB236942E848BB9473085A857F3EB14886CBB0CD1E1B710D4AC
          84A066127C5AD4BD6A903C04519B02A2D62978D155F0AB9B4268EB45C41DBD0E
          A17C4E7BD96D77563C0D375F656CAA2F43B8054BED126BD5EEB553883C740DA1
          07AFC2573E0F4F6A7BD48E3F6356637DE187DE46106D64ED99EF20B8FDF3C175
          5A0B6142216C13F6A9DD6A682FB45D83A0F932BC09E44D67E82D57AE9A1DCFC1
          67FF25F81D5800AF8AEE795CE90BC375FA32042F40CACEC6F5E551F81040D07A
          954C615A6FAC9A1D2FC0A7F50A78B447B6C59410DCFD7F82EBC4269A9A79C624
          6C8B2BA70063D873FA267C0FBF0BFF233F42E0D19B083C76537BEC4735BF2337
          C0AB3C039BED056A13AE208FE6DA920DD8422F2A7D8BF082309B97CA556EEC39
          1FBD85CCA15B083CFE3EC23A3F40D4A90FB566C741AFBF8F80D77E8280D7DF83
          73E559588B0A54A6BC30F6B262BBFE85A46F29CA0DB58E2D53B9D2A35534751B
          59A3B7117DEA16A2BA3F426CDFC7483CF389D6EC98D5C24FFE1CC1DFF900C19D
          3F8553F920ACA2735586BCA0AFFD806DA45578898ADDF762C51DE44CDE416CFF
          AF103B40E0E1BB904C3E80A8E717E48FE8F83ED52848FFC788A65A64D787083D
          F93338950DC032EAF94368E1563145041F41C9EC3DE44EDFC38EA13B883FF35B
          A48E2F227BEE0F881BBA0BC7921E3896F6236EF02ED51E52DF7DED1851FF6F10
          D57B1B11DDBFD4F69B85676F39C40A5C54A872AB194799F201F267179134FA3B
          A410386BF6218A2FA99138F600DC923E5884652E594448D5DCD237B18BFA4B2E
          7FAA1D933CFE003BCFDE8368F01344F7FF1ADCE25E988565A90CB9C24D43E81B
          87648558C510BC7A0C15979651789E163BB784B49987C8BFA846C5DB9F517B99
          16EC836578E6928135B7DCC0C1ADC822325BCD6AA98A65545EFB2BF268AC44F1
          1049E3BF47DCC87DC4D055E114F6C024345365E8E29B4CAC0D43185A46E6CDDA
          E79E44F9C29F517C59853D337F42A6F253945EFD0CD5EF3C41EA8C8AE03D300F
          CD5832B0712CA139DE64BEA1A39FD4345CAAE614F54232A786ECC63F5072E511
          32E6D5489EFE23122697B1737C19D692576114B05B4973D8E7789D4C4D7CE373
          AC628A351E8DF348BFF818790B7FC3BEEF3F41C30F3E8744F9173814113C640D
          CEBE6AEC11637661214CC2B2D49CC26E645E7804F90FFF8D8AEB7F47DE95C748
          553EA657F33828A4C6802794D17807F2BA9793119967CC8F949945E76BDCEB67
          5074FD5F6879EF0BA49D7F044E41374C43C404E73C0D678BACBD310D393E52E3
          9074B55D7E1772169EE0C08FBF8074E19FE0ED1B8349488646CFD1AF95C609C8
          EC16AC0BC00A6C513E0B611E914B211474259EC08E6E8B69F09E2503CB75709D
          9E0D112456DBD29CCCAB9F83476F4FE3A0748D9E8380C103C8ECE7D857BE1D9F
          0A112E338BCCD35889DBB570BDAF86EBB416428F850814ABCD925B61144467BE
          45B84E6B210C78C1A5B42F26F5AC9C73587BB5BE115C275D089E9EAD57869177
          FC9C01C7B78EDA42F296E03AE9423893D94E77246F78DF36902E0497EC437625
          B3FF8C9EFBA3C416621B9381D9DFADC0756263D96F4C36D778B5FD4D949EDE7F
          002690968DD73E84A60000000049454E44AE426082}
      end
      item
        ImageClass = 'TdxPNGImage'
        Image.Data = {
          89504E470D0A1A0A0000000D4948445200000020000000200806000000737A7A
          F4000000017352474200AECE1CE90000000467414D410000B18F0BFC61050000
          00097048597300000EC300000EC301C76FA8640000098A494441545847D55709
          4CD4E91DB5BADBDAC6A669D36D936DA2BB9B4DB34DB35D1BD76E5B5729A8A0AC
          8A071E8047C1451494FB188E616E8E191018EE8161462E018199C11558E590C5
          45E550EEFB461044418E551098D7DFFFBF63D389366D9AB6C9BEE465EEEFFDAE
          EF7DDFACFA4E422291FC522814BA858787D7A6A5A52D464747777A7B7BC7F078
          BC6D9E9E9E3F377CEDBF0B6767E775A210911D0997A8D5EA1775B5B5989A9A42
          5B7B3B9A1B9B515956014DA116CA54A53E2222725CC017540AF9C278BE88EF22
          E14A4C29D87D14F8F6C848F1AF68B9EF7DBBEABF0065F4864020B0E0F3F919F1
          7171B3159515989898406B5B2BD2B373C00B95A2A4AC0A77EB1BD1D1D983E1C1
          118C8F4DE0D1F8233C1819454B532BAAABAAA1D3EA70E3C60D94138B745AFD69
          27975683C4EB211289DE25D128A9543AA6D56AF53D3D3D686FEF803AEB323C02
          B870F6F6871B870B6FAE0036F68EF00A08465C8A0AA5955FE17E4B3B7AFA0731
          383C8AB1B1713C7E3489D9D959BC585C40DDBD669CF313E063130BBD41EA5590
          E816B95C3ED3D4D4C4667BBDAC1CD74AAEA3E47A051A9A5AD0D3D787D1871398
          9A9EC6A3274F30F8600CE537AB91AC54C33F5880B3AE1E70727547CD1DA6454F
          303F378BFBCDAD70F4E0C2F4C049B878716077F2C48241CE184C9F6363634766
          666630FDF429B2B2725170AD14453545F8B2BC124D4DDD78F2641ACF9F3DC7CC
          CC2CC629BBA1E131CA78006D5DBD68EFEEC310959E998D395AA3BDAB1BCEBE7C
          6C36B786838B07784221049210D8DADA4D1A248D2193C9CE36343480814E7715
          69995A681664C8842B126103717E28E295B9B8947B158A4C0D4ACABFC657B7EF
          A1A5BD13BDFDC3187B388E29AA4A7F7F3F3C8224F8EDA796B0757441B04808BE
          480C49B8145CA108D6478E3E34481A83A6B490C99E4162522A7CFCF9700A3D0B
          07C511B85F3F056B7B7FD85DE0E22C47023F891C3EA218442932208E4CC2B367
          DF607E7E0E99B91ABCB3C90C5676A7114C6242CA58121E4694218027A0C7701C
          B1B5ED32481A83B658EDE4E4246DAD0E8864D1B8189782E4D40C9C3BEB0D1717
          5F78738271CAC91D16874EE2E39D07F19743A7B1F58003EE50BF97979768D8E6
          B07EA3099CDCBC20090B8588C42363E2C01387802712C1CDCB17BE815C1C3F7E
          BCCD20690C0E8753D7D5D585EAAF6B10280C41922A1399F93A9C717687958D23
          3EFAB305CC2C0FC3D93300E1517170F309C0413B07569881AEA40C9BB6EF43B8
          548A8B3172845E8C614BCEA3F29F77F7C0050F4F84CB64B0B1B5BD639034868F
          8F4F55636323BEB8560C0F1F3F585A1DC0E64F4DB0EFB00D383C111497B2A0BE
          5C88B4EC7CC8154AF8F02438EF1784D999A7B4CD16A9150938E2E08C44A50AFC
          903088424211C00D8687B72F82054244C9E5888E8DC5513BBB6A83A431FCFCFC
          4A5B5B5A50565E813B776BF1F4E9347A7BFB905F50480B8870E8A82D366FD906
          CB03D670F5F147AA3A1359F91A8C3E788089F1715CF013C2C9331002B10421D4
          EB80603E02797C444445B1C20C99208E9F3A556C903486AFBFBFB69DACF52E89
          AB32B230323C0CC684BABBBBD1D1D14166D48E86FA065CCEC9A11E87E1ECF90B
          386C63870E7ABFABB3034E5E5C32251E4269DA99A90F95CA101317C70A338FF2
          F878C8E9F9B163C7B406496304060666B14244AE2814434383AC28634AF5F5F5
          B87DFB36AAABAB71F3E64DD65A8B8B8B515050C07EDEDAD20C178E806D55982C
          82158D254186710909884F4C449242C1BEB6B7B7BF6C9034467070B0AAB3B313
          A3A3A334EDCEE827D76B6E6E06E30D353535282B2B6345753A1D2B9C979787EC
          EC6CB4B6B65215DAE0111C0E5E8894157B299A909484C4E46428525311151343
          9511C1E6F8B12C92FBC1B7AAFF002E97276FA11998262733B73A84867B4DA8A1
          769497931D5FBB86A2A22268341AE4E7E72337379715CFC8C860ABD4DDD58900
          4924C4B28B4822414694C938392505A96969904644D24EF0842C3202D6D6D6CC
          0CBC43FC3E2BFC12414141918D8DF7D9A936B7B2465555150AB55791935F88E2
          9252685F234E47333B23BD3DDDE0CB12687BCA29DB1436E314651A549754EC2C
          F87002E8B512628904666666F924F701F187ACF04B5000BCBABA3ACCD0396075
          F404D41999A8A82867CB7E8986323D3307EAF46C621632E9384E4856529953D1
          47AD1AE8EF43985C41E69508A52A0D6914983A5D8D10F2049E508CF42C72CC10
          092C775BB6AC59B3660FC9AD27BE52814066D098008E9C70C08EDD9F61978505
          C4E4E505F95758E6E5E52293028B962740A120A74C4EC2C0C00006891793D321
          4F4AA160D32973353B8C61643C39F41B91440C4B4BCBE6D5AB57DB91D446E24F
          89C617132E977BFED6AD5BEC69269145B1EED6333281BAD6013AEFD3C11787C1
          9DDC2C3424046A950AA9546605F5F901F900B365E35597C984D450A55FA2BD1F
          C36EBBFCC2022ABB183BCD77DE2389D3C42DC4B789C6D933707775F5ADA8A8C0
          3C5D20FC828230343E89B91560E6057109985AD063627E09376ED5431693004E
          40101CCF9C61EF0D63B47352B20B59178C898DA77EA7D2FC6820242B363737AF
          A3E5CF104D89EF127F447C159FEDDDEBF5B9D3397DA0448AEAFA269026BE5906
          E62980397A31BB48A4E7F31414F3D9CD3BF7A90A4A3C7CF8108F26C6A1249B4E
          48494306F55B435B552014C06C87590D2DCD88EF20BE4FFC31D1B8F42674F7B3
          3FED283AEDECB2A4CA29C08389C76CF997F5C00B0A6091B8407C4EAACF881407
          6ED3F54A1A1989D9B939D637261F4D2035470355E665147DA1034F40E2DBCDAA
          687947E276E2EBC5199C7070AC8C90C7EB5B7B0730BFB044472B23BA8CA5A515
          F6F98A5E8F95150329287A1B6EBE01884B4E41447414653FF1F700B2F2AE80EE
          9330313129A3A5FF4ADC46DC4064CAFEFADBF02726BB869C3C395064E4A2B6A9
          0D1D7DC398A37ECF3D5FA6808894FAB3172B5864CA41D05C2D46DDFD163C7E3A
          83C80425466808A7E9FEA7CED3C1D5D3574FE2D768D923C44DC45F10DF24FE73
          D00FD66DD9667EF213931D15A67B0EAD048AA574EDD2A0BEB913EDBD23989A5F
          C6340DC1DCC20A1A1ADBA02DB981316A132F2C0ADB2DF74F7A79787429929357
          BC3841FA8F36FF29879664868DD9E78CD1FC7BFF010C7873C3FBBFF9FDA63F6C
          8DDEBAC372E098BD93FE22198DF6CB4AEA791BCAAA6BA12B2D4757DF10BCB812
          58EC39D8F2C1E6CDBFA6DFAD363535DD606666CE08FF8C598759EC3FC51A2233
          2C6F7FF8E146EB2DA63B7376EF3F3CE515C0C795A252D434D0A9E71DA4DF6575
          E0C67BEFFD8E29EFFF0CAB89CC89F593B56BD7AEFFE3D6AD9FEFDABBBFF4909D
          C3DCDE83875356BDF5D63AF65BFF27307D7C83B896C854E75517FB6E62D5AABF
          01DE2358FC96A084130000000049454E44AE426082}
      end
      item
        ImageClass = 'TdxPNGImage'
        Image.Data = {
          89504E470D0A1A0A0000000D4948445200000020000000200806000000737A7A
          F40000000774494D4507D8040F0D2E2E405315C4000000097048597300000B12
          00000B1201D2DD7EFC0000000467414D410000B18F0BFC61050000096E494441
          5478DAAD575B6C1C67193D33B373DBFB7ABDDEF5DD899D9240E2360D55A23475
          9516442514546841484548944A20E58DAA0F14050955F4A5AAB8492895FAD220
          A040B9F42508812085D03A25BD50D2368D9338DE7593F565EDBDCEEEDC39FF38
          4F251B90CAC8BF676776FEFF3F73BE73BEEF5B093C1EF8D2E7A7D7AB8D234323
          E39FC81786E714098A65752AAEE79611603994249E9D0A7C943D5959465D2BFF
          E237DFEFE0FF7048E2DF37BEF54423994CA675C3444CD7E17A1E344DE7B7127C
          3F0482102177B7BB5DF47ADD90839F3B9B56B75B0E3C7F1952B014BA58F6E096
          D540AB7455A95CB0D7AF1EFFC9F3EEFF04E089EFFDD83F78EF7DB2E7F9C82612
          087C1FAD761B56AB8956A78D66B38146A3895EB707DB7522802A01C64D13B224
          435200854B8581C7672C742D2BEC75BB81DDB3AED95D9B0051B62CFBEFBF3A71
          FC871F041013FF7CC76DAF3736D26953C3C5EA0A01849C23A1EDD830133A52C9
          12C667663090CE2249960232D26E3751DF6C60A3BE893A01AEAF6FA0DE6AC1B6
          6DD88E2BC5544DC90E0D8E8DA63363DD4EEBC0A93FFEFE416E756300846EC70D
          031F9DDCCE8F82F9003145C6C5AB15EC18198317B858585EC1EAC61ADEED6CA2
          98CD312A21023D44AA984576388F3DB7CD46EC199A1611DBEDF5F0CFB7FE85C7
          BFFD1D1CD8BF1FAEEB49370A4104C0F38356E06E169C6BCFC097F208E5024225
          83A0E7A3670FC00B4D6492790C640A1871F3981E1E21501F2141C46490B56BDC
          3C89A6D5C1A5AB2B489135C7F5501A2A20168B41E190C583FD009052074107E1
          C6B38C671C5ACC404CCD202127E12E6BF0830474791801876B2BA8B45330E245
          E4866E87C7F98A2C239F4A719E86622E8F94A9A35ADFC0E5D6D5681385B6927D
          3FE80FC0771AA69E8519FA804A02651F725807E436743D16B941962F450B69B9
          1C9D52C4FCD9052432CF10489E4294E050C02EF748C535BE10F70AC59CEB8312
          E59DFE006836B7E72670F8974F62265FC374721553C92A86F4658CF2F38EE11E
          329924E934F96C936FD38169C4A0290154BEBDCCD1E939C8254D6E2CFE42B4AC
          5EB4798CDFC5844B54C5EA0BC0F7C2465297601B19549411941DC6AD499B5198
          4697942CB5519096304140DBD3558C98652C962DBC78E5357C666E37E9AE635B
          B1045393A3398D8E1D818A098B462C4442F3FB0250638AAB6B2A4CBD8C5E870B
          A9144F5286085B57F2A15060D7627B5155EEC0BCAF21E51998B855C72B3F7B01
          8F1C1984C1E455C8A451EFB470B95A8D42663357C4142502228B1C21ACD55F84
          4153950C3EF475144A296E3C08B4C781FA0C427B1BD63B7486328A74711B5213
          25BA22C0E5BA07595761D1F7BA1A43C2D021A29DD093DC5F42C36AA3BEBEC910
          F0AE10A17C1317902647932914C6AAE35178860B2DBD06557F0B9AAE6047A608
          5DCAC25A37D17B7F081716D338B8E373D8399D45219B8CDEDC76BC488822B7CA
          D19004115C5BBC3FD7669CFB02E084A6EFF7F0F8BD2750ED5CC27BB5B7B1B079
          0EEBDD6564B301AACD15A6DE4DE87915C6C4650C66B6E3810309DCF391BD70A9
          F84D0270991D15262F89B901A29A090DC8CA960B781D4445A51F034148077938
          307118E3835F8894AC92B137AF2C61D35DC762E31D5CE988F12EAE36CE53F13D
          34DA2D9CBFBA1C59AE6E7579CF469C5A489B71A82C0ED455B4B17081B0AFA16A
          765F0084DB10A76EEB6DD49186AC0D42D1F3CC01260E4DEDC39CB48F6F46500C
          D1F2EA2643E56338C70CE9BBE8516C66B389C1541A1DBBC770B469F800A2B029
          220C828150E635AB58FF3C203B0105D0ADFE005DA3022956A220F33068C995EE
          2E84BCD6CD61C43393B0B9E8786E103EA9767C44D550084CE239AE1B48C4CDA8
          907558B26BBD355A718B09A663AF3F00C96F31484898396E7A0581B4CE9B9B0C
          C525AAF23454A665DF4A61A32AD27201E5D51D70C99496184176601713549CA9
          DBE05BF684E1E88530D280C4CD892BB2A12CB2515F11028E1274F1DCF907505B
          BB05B303656C4F5CC2EED20A06F2A2E6B7C9480786C9C7E52A9F3F07D51842CF
          31D15A74487D12553B8DD93BBFCBA4D6E5A66263272A549110C980673BFD0170
          F556C092EBE8433863DF85B3EB1A8CA60170F1616901BBD397B133B388F1F802
          F64C594865D34C1E6B886BF4FFA04C6DD4F1F29B49ACB51A146F40219AD1C692
          226D31401DF8C14D5C10D363BD8021C8984DD814513A3E4E1DB0293155AC29B3
          F833F6E12F6D1579574770BA8609E51CF6642E62C2BC80B1F41266A785CA4D6C
          2B64D0EADA688BD68DCD4C14FF88010586A1B97D01F8BEDFF63D85D9EC252407
          9F245DA3706ABB18985938D62D9CBC13D9ED136851FD723A870BD23D381F7C12
          A9C040AEC9455E62A5B46A3876F205FCE9470F4267BC2D47C32AED29C2209252
          ABD1E86F434D96BB1EED943093ECF98064AAC6B27B86E27B95F5C1600F104767
          A904B87BD968EC8613CE203FB50B0E85B7265374995BA0140DD4DFFC29B6129B
          C4B028910D0503C215A964BABF0D5DD7B51CCFC267671FC6746137CE944F63BE
          FC122A8DB7914E59D05407C95D1D025A64CB751209358746250DFB02DD10EC63
          AD18616B763BC5A96F2D4A063C26289999917F4CC4EC9C58ECFA0288C7E39660
          408FE9B8FFD623D11047BD65E3D4A597716E6D1E67AFFD150BB537989A2D58BE
          03757803C9A90A33DE297C2C39866E8D2DD9681A0F9D98C7E16D73F8F2814F6F
          D96FAB30C071ECF0A60CB0586074208BCA5A8DBF0082A85F1734DEB7EB10EEBF
          ED30AFBE194DF8C3B93378AF7E16AFAD9DC63BABFF402A67332465A8B4A89A55
          30A0B7F1FA42090F1F3C1215A34884FCE0B96E7F0652A9546D7979F9D5DFFDF6
          B7774C4C4E4A13E3E3182C14A207569966EB2CADE2101DEF9DD3B7E253E67E5E
          1D8DEEBD51BE8897974FE17CF32CDEAABE8264D186424B0BEF8BE65E896CC832
          9D48F66F488E1E3D2AE0ED7FFAE9A74797CAE5391698395DD7E7868BC59DE393
          93F2F8D8188AA5523461933F586AECFF45CDD7C8D0DE8919CC8ECC30D53E127D
          7F71E51A260E3155B33A46ECF319C1446D6DF526C5E8FAF1E8A38FBECFD3CFAF
          0F3CF5D453438B4B4B77298A322746A954DA333136A68C92A1D1D1D1684E870D
          89D08FE2CA510734531C8EEE0B118AA0476D1901E406067AFF15C0078FC71E7B
          6C95A75F5F1F2043B94AA572489A9F9FE3E5DD232323B711883A4E406208561C
          D1118BCDC370CB8E2A93197F3768BAB174A33D247C88E3F8F1E3A94EA773901B
          DFCD4BC1D0C7C7C6C6340E696A6A126B14F4435FF96AD8D8D878716420F3C517
          4F9EFC8F307C28001F3C8E1D3B66E6F3F9037C7B11B2BB63AABAFFD9E74E3CFF
          FA7CEC6BC0DF6E588EFF0DE555074B8CC502680000000049454E44AE426082}
      end
      item
        ImageClass = 'TdxPNGImage'
        Image.Data = {
          89504E470D0A1A0A0000000D4948445200000020000000200806000000737A7A
          F40000000774494D4507D8040F0F152DE66C7F28000000097048597300000B12
          00000B1201D2DD7EFC0000000467414D410000B18F0BFC6105000009B8494441
          5478DAC5576B8C5D5515FECE3EEF7BE73E67A6D396A1D3A9655A5E298F5A9A54
          2A14811463D01F4652953F0A51301AA38951FC45620C888A1AE38320014D0844
          420286162820162B322D053AD329D3E98C9DF79DF77D9C7BCF3D8FBD5D7B9F3B
          5324FC10FCE16956CFB9E7EC73F6B7BEB5D6B7D600FFE743FB6F177EE35BDFFD
          CAD0C0897B4BA5D2866C36BB6CDBF6826118338CB181300C8FF9BE7FECE8D1A3
          83B4547C6400777E6663AA5ECFEC0D99F894E0FC4ADBC026CBD4DB4550675AA6
          277DF50D078C52691EB1D010F3185110A0E137505959411405C26DCB1E7AF8F7
          BFBDE54303B8FBC0BEBDD3B3F3F77415CDBD19E639192B46D611300DA1FCD1E4
          7F22C6C69D5F80613A78EB9527516B3234590AD5A605A36D235285F578F5F073
          A2A7A03D018D8D09168FB9B136C60CED5F8B93DAC4C19191E60702F8DA819B77
          6552EE91ED9D4B5675B9445E85F43E83A03DB948D88C2381AEED9F44DB86CB90
          C9E571E2E06FE086B3E05C431446B8E0D2BDE8BCF83A54C7DFC689237F41C481
          206208B9804F74861CBCEE4713DBF7DC3A64DAE9A395C6ECCF1F78E08F9EFCB6
          1146FC9E7556D5E25A1EEDDD5DE4B506DBD4C9531D3C0ED1F06A687A153467DF
          C0C4D04154BC00C24CC11706F142DC081DA5BA8BA5A1D3E07E000311DA1C1D82
          42A4F815912644A43321365FB3A3B079BE9EDDFFF670AD879EDCA100CC8D0DEC
          DAD97B0DD66DBA0CD5A529708DA1EE3711567CF290131017E9620E9DDD174177
          5D18CCA40F13FDB4A65E5941BDBA046FF924CAE7E651ADD6C12C1BF550862C09
          5F2EE7A2EF8A3DE8DC7A15DEFADBAB981B3F8BD4B6FDBB57436098869DC9775E
          8853FDCF13600DBA4E37C9348D7E31831698083C03754B57292359098386A2DF
          74524867DB50E8DC818B0B05B8E9367AC782E5B65192323AE730B7B08281BF1F
          C65F0FFD0A966D43E311060F3E69AF01E0224C79B5B28AB3AE13A514BF586EA5
          09622F441C86100110198953AB5516C51A8266193EBDBBC0C78919D0FB9CC045
          B0287977DF7A07387330F2E6EB181D1E86633B60E494D0197818E4560130594A
          919FD01D4531E2988CCE425A909C39DDE3AD731C73F28EAFAD536B55C2AACF41
          372C68868D932FFF89183170E69DB70818E50B952E5715452C9BEC3C03BA6110
          6A9F3C8DC1240394384402EA3913931D12848FF59E8E6EDF5055C15B3223738C
          B708D164B2E9E72548FEAC2C2E11DD31BC4A054EAE488F22FAB6DA5E564E660D
          802CBBA0E92BAFE4AB3ED5BB2D186A1FDB0096E1F01A150CD52B28951BD85132
          4984920DE238F15A33A4DFC9E6AC1526B9913C4B9692CF0A155A69943A089B4D
          ED3C03444F48E523E92FDB01D52E479A8AC93D3A469B05C8A62CC4691DBEABC1
          A304B42141442A67386D2DFF09DA200A03C4015708622A658D072A6125320946
          134ACE54E9328DAD0991A1596EB319341D19EBD094F114A821409BB091E204CE
          8B60F8210AF44EAEA31BB7DCF54B047E15871EFA3E661657D0E6CD925B01C595
          6A9F2888E9E33C924407499E284C748FDC5F8D92CCBB350001298D572E3B4D4A
          4483EAAF4920E42A12286CBE2887A5D93AEAB5805047E8EADD815ABD81FEE3EF
          E0926BF6E3178357C0E23E0AF551B43746D01E4EA03B38835C4C55C5A0925609
          B948588895C71A0CCB3C0F00BA53AB7BB58EA051055F6E224E31D894C975FAF0
          9E1BB7D2028EBA17626E8AD4301A42269B47319F8345518C9B1E1CCBC7BCD689
          052B0B6E5C8E3C9BC46D8DDFA9D8731EAB5C512922126D91A51845D11A005248
          ADB29A0377DDF7386EBEF5EBD8DAB78BA81378E6F02CBEF9A3B378F8E9120626
          2354FD399C7EED416A541ADE7CE9095CB57E018F7FF145584CD24D7A41791046
          32FE5C554C4C7D4279AF4A430A9BA632D6B49CF30C84215F0A0C121C8A8BBD65
          370AC67AF4EDBB1D479FF8296EEA39894F5F7F0146A77C4C4E05189C88D03DF3
          02464E3CA63AE46CFA36DC7F6427161A26CCC88746010F48A0222E1200E4FE6A
          BA3379251351C810586B9DD188055F0C64FB226395297475B463A55285661AA8
          BED685CBC7FB7069B789CAA60A56BA46F18F5363547A162921C7CED7BF83FABB
          7DF86CDF4D587237E3E4581921D5A990694495C1E348E5006394A074532AAD04
          EE53CCCF4B3167F3A441D4015DDC7BDB2EA4D229746FBB1C3E75C0FE89D38807
          0F622395EA36AA80DEDEED4089323C9DC7055BAE40D12C50B538F0C60790DBA9
          63B6FD754C9DFE279AB60BA9DF11C9387576158624193525F1305D6AC5CB0900
          86B82475DD2464869D52653371FA049552133BF77D0E3DD77D09E7DE7816FD2F
          3E8285ADDBD177ED97F18933E3F046CFC18F2B58A2F2224940F3D459ACDBBB1F
          A383FD32FBA0B7E41A4A2964FC932494E5488F2AEF09815E5231C3EAF423879F
          10DF7EEC18CA918D3F3C7F1C7BAEBE1DBDD3C3D4EF1BE8BC703BCE3EF91422EA
          849CBA5B6A6B1F0227462D58C0E00B8FD00774157FE975528674CD127D6772D0
          91CAC8C5F27B7A0166A845D18BADD2506C1978EED73FC0E603F7E3AB376CC3E8
          4B8F62666C883ADF0A6EB8FB67C85EBB0FF39CBC6F94307BFA19848D322CEAE3
          4CB644D9B289129A425A21602AF964BF900C04B279812FAD01B0993BCD1817B6
          0E0593518CA4549EE97F1941F54E1C7EF74D75CF712C6A5636FEFCC3CFA3BC38
          4D654B9BD03A93C44B970AA83A54E2C1EA30241950D24B2034729D3139C2410E
          B532042932DFB08CDA4004A7468C663885C2D0E82BD26C0BB39484762A4D0012
          6032B3BDA51274624892265A838FEA90BC35BCCA46A52981A17E112521154209
          909AA4E85E10F32ADD2E902DB2678F4FD767AACD87E64347089A78ED948B54CA
          81E3527C532935C528A3DF26B160D0358D51D4F7F5A4ACB4563B16FF690A9874
          572A0FD3548794EB976B9E287BCD697A9045D24081E3C353F72DAF2F44C57CFA
          FAAC6BF574669C8E94CE996B0A101E52BA48B1203BA06CDB825C66723021935E
          CB6772470DADB3A63A7092844CA83A30E4E68B8B98AEC5F3A7A6CA6724FD644D
          A3950B73A3B3CBDF23B3E87A5DDA362EDDD091BD319FB13FDEE63ABD1D6D4E57
          C1E5964B23177567D82C4640B3B6AC1EA82E27E5962B008A6E19799E48B01CF1
          0D1AC31617E7303455690C972A8FD2EDB36492857815C0EA21FBE4A4D78C2647
          A6969EA76BD9B63A6868DABAA923BF2F9F4DEDCE38E645858CB53EE7E869578F
          91B10535AF58258114191E25ACD8764669BF2CE9E999699C9DF32A67666A0F2E
          D49A4FD1E277A5F76B7F197D8843022E92F56E28A6F7B4E7337B726DD6B662DA
          DC584C1BF9ACC3B514ADA06BF4EDB812B15EC03B431378A5FFD4FCDBC3E77E5C
          69844FD3BB13483A333E0A80F71F72C6C893F51433CE555DC5F4DE5CC6BE64CB
          E62D17761673ED811F88B1E9A5A123C7067FE2F9FE215AB780F7FDF1FABF0278
          FF2195480E9CDD649B5A00C7C946C8EA1FF4C2BF01DBF7221DCD0BD175000000
          0049454E44AE426082}
      end
      item
        Image.Data = {
          36100000424D3610000000000000360000002800000020000000200000000100
          2000000000000010000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000041A0A7E082F11F6020F0546000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000003130657104B1FFE39BF5AFF052A0EDD000100090000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          000000000000010B0435083513F53CC961FF46E16EFF1F7836FF041B0A850000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          000001060221052B0FE733AF52FF3DCB62FF3BC75FFF3FD565FF0A3B16F9010A
          032C000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000004
          011804250EDB299746FF3AC65FFF35B556FF36B658FF3BC760FF2EA64DFF0424
          0DCA000000030000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000401170324
          0CD321853BFF38C15CFF30AC51FF2CA14AFF45A960FF3EB85EFF3CCD60FF1968
          2CFF0318097B0000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          000000000000000000000000000000000000000000000000000006270FD12579
          3CFF42B660FF35A753FF2B9E4AFF0F4B1FFF1B542BFF58BA71FF39B559FF38C5
          5BFF0A3915F90109033200000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000052C0FE8489A
          5EFF59AB6EFF49A460FF135323FF041D09A0021F0BC53C8550FF4CB067FF35B6
          56FF2BA349FF04240DD90002000C000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000010E04450934
          13FC57A16BFF165326FF031D0BAE0000000300080225052E0DF455A369FF41A9
          5DFF35BD58FF1D7633FF041D0CA3000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000216
          0775053312FE031E0BAB00010005000000000000000002130667154921FF5CAD
          72FF3CAA59FF35C159FF114E21FF031507670000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          00000006021F0000000100000000000000000000000000000000011E09AD2E6A
          3DFF59AD70FF38AE57FF2FAF50FF093613F8010C043A00000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000201100024
          0ADD4A8B5AFF51AC69FF32AA52FF279744FF052A0FE80006021F000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000108
          0331042E0DF55AA16CFF48A862FF2EA34CFF22833CFF06250FCF000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          00000211065B103F1DFE61AC75FF44A45CFF268E42FF062E11EA000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          000000000000021908871D532BFF46935AFF052D10F1010B0439000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          00000000000000000001041D0AA204290EED010B043B00000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000000000000000
          0000000000000000000000000000000000000000000000000000}
      end
      item
        ImageClass = 'TdxPNGImage'
        Image.Data = {
          89504E470D0A1A0A0000000D4948445200000020000000200806000000737A7A
          F40000000774494D4507D8040F0D2E2DD95A447E000000097048597300000B12
          00000B1201D2DD7EFC0000000467414D410000B18F0BFC610500000945494441
          5478DACD56696C5C67153DEFBD79B3CFD8E37D8F5D3B716D12A724B193A66E15
          27759A340D553149210535A04AA801548AFA278010FD838454552DA888AA0284
          5051AB4A50484B9422B5B1DD90BDB653C74EBCCEC4637BF6F52DF376EE4CFED0
          90144B2D82CFFA347EA379DF77EEB9E79E7B81FFF1623EAF830E3D3C50C3DAAD
          673D0E6BA8DCEF6ECF0BA2766329795192E557462F2FBCF15F0570F4D0E04376
          87E3F507766EA9ECBAAB052C47C79A26E61616F1873FBE65293AF3835367675E
          FADC013C327484AB7709DFF6B8B99706767C91375405A665422EC8C826E248C6
          96D1D0D6897F5C9A36E3F1D4F67746272FDD7A86ED4E876FDEB6B3C3E0F8EFF2
          0EF72E97D757619846863331CCC17875F4BDB7278BBFF121FE7C5373FB0FD737
          55318220229D88209D4C229F4D239F4E62D7C12FE3C6EC75D4045C6CE8867C94
          5E591B80BB376FEB3339FEFDAF7DFD494F7FFFFD703A1D48A432CD97C727368D
          8C0C3FBD7DEF977E159D0A3C776371E4C3E8C2559DDDD6C42752129C9E009C0E
          27B29914BEB0750752A9349289180CDD8452907AD694820D9B7734B83D9E89FE
          81C1AAAEB666CA270BCEE106CBDB010B500D1323A3A3D6ECD5F1BF5D1E6E7BF4
          E9C786DF7CE2D19EA1BB376E81A0BA90CEA9145501A74E4F4310F34884833034
          0D9767562F5D9849F7FE470658463FD6D4DA5E95231A973201CC5DB9089E77A0
          ACB2061EAF8F00D9515F5BCF6492D1031BB64C3D07D684AE531C761FAA2A9B50
          D716006B6470EEFC1482731162234B0CA8B48DD8ED18606FFDC2D0F4DD966940
          20008AA6E39EFE4104E717317375124BA12032990C6C2E37D66FEC83DBEDFE0E
          63E97945D7093881B00C58668100E968AA77A22AE0C5B1A706E170F0602D6BEC
          76006EA301A6511173D0E8BCF87218369B1D8F3DBC055BD731584A9A8891B818
          79117679090BFCEA070CE7082BB20143CD43E79C2500A65640951FD8D3DF0446
          CF211C152CC5B24EAE0980A16BBA4A6564183A929115302C83C70F54A0AB631D
          B613615A21092119C4471757D052AEA52DDDCACA547EF412BD1BA114D9601113
          1E37100878F0E7137308C7F297A7A3EA99B5A5405743AAAAC2E5B4231689A2DD
          9B44F75D7560EC945B6705C0F9C0F03E98A45F43B7187AF8289E962C5591A12A
          1214390F299F01CBDA601230C352D0DD59F5933B95FBBF01602CEB42B5DFC40B
          DFACC4E1C1767A5649FCF4671468CB74AD098E58118976D8B8E035143E5C5ACD
          275445804ED417B76928A4150136DE8DB6BBDAE06DE96B593300B2B213F3A18C
          254B22F66FD4B0BB4BA1A872144D7193A28B9F860A4D33485846341AD8CF2EC6
          8CD1D1336348C7C2585D0A616EFA1A22E15534B777A1A5E7614C848D9736F50F
          ECBF1D00EED62F3299D412EFF21DB079AA1AEFDDE807CF19143179006340A728
          35DA0645393D134428E35BADE2BCBF296FDEBCCDD638809EAD7B20453F869DE7
          B0E9BE4710333A10B75A4903295B2E151FAAAD5B7732125E5CFD5400C5D5DA58
          36D5ECD7BED5DB5D41227490A82C701C77B39E499C3AE5FAD2F802D2FCC6DE83
          07F67B6A2A2BD0DF7B0FCAEB3A30C3EF44FFEE6FC0DFB2033A5B8E303192CAE6
          E172FB6C8A9839D4DCD471EE46703674E714D03AB2B352DAD21980BFAC82EC34
          5BAA6F852ED568EBAA04551630133151D7D8C2488A4675EEA0EA10F1DB711129
          8D07C798C8504F48445729551ACA3D645E3595D8BEB3BFC25BEE7E6FD74307BF
          FA690098E3EFFB7FEA6EDE81406D1319928020B5D57C3A8102291C54EF272E26
          30926C86466C2C2CAD606C7A1E653E17FE343A09BF9E26960C5CF978120BC110
          D5B98EDA801F0DD50174B635E1F1C3871DF575D5BF1BD8B7AFEDB63E60EFBCFF
          47AAA3E260AE72101222E8E9BB17572E9C412CBC028B4A2BE1DE8C5FE407A177
          E6F176388EF55842BDCF8665CD0FB6A1020D2C79C45816A746CFA3DCE743B9D7
          85544E404F673B2AAA6B90CE668BCC3A17161787E8BA173E0160CB83879F5815
          ADE7B395DDCCEF27F278EAD1AF201E8FA1C5DE0B211343DEA8C0EEDE01D84263
          60498C11F2892859C11157012F0E47A02C27D0B2AF13BF7EF324422B31C49D39
          2A6313EB5B892D227B667E01AAAA81B7DBE1F778B77E42849DFD8FED5338FE8D
          94AFDD56564FEC54756076760607B7B582F7D4C15FD38172EA8CE2D573787F3E
          8D685E4121344E7A10C13A3C08092CBC4616D5661C17AE5C230FB0419604D81D
          2EE42489A8B6904A6790A66D5047CD65538599E9A9D74A00BC9B07EED319FB09
          A9AADBE56DEE828D5EF290002F2E26119B3E8FAEA6008AEE6812F2F15FFE0C8D
          0FECC1DF272330E534182106D1E249A7946B17109D1DA7FEE184A6CA14A98B3A
          A90D629EFA84AE219B17204A726906B8367D1D2B4BC1175977E7FDEB4CD37E82
          6DEDF3946FE8838FDA2E153AD2CBF360C4145EBD24E0CC95792468B0187BE704
          3C44E5C1BE0EC842960EBA394E28F4BF2EA4905B9E8524CA2456010EA78BFC03
          C48244CF12CD063224492E0974251A273E989A521538DCDEEFF9D76D0A34F43E
          4274B921A7A34587433634499764C0992A9E797D0CBACD8DF6810761160428A7
          FF8AD66A0FCD9D64C7244C251B8392A64624C641AD8CCAD2496714A71D8B5C93
          7C834A512610C5CB655921768A2D5B592C6940B1B98F71E58D7733AE3270761E
          A66E418C874A2D55CD44C138BDE4CE16DEFA60024FEEEDC1F577FF02756E0A13
          812E2CAF2C135B644ED988655AC6B376713527E6855A02E6520A3253207D64D3
          C44C36432C50F4A6864C2A85E8CAF235DDB086622B4B711BCFBB6A6908412E1A
          041BE3E0F095110BB1927A0D52BA199D0357D102C960F0FD57DEC5D1AA5A2C4E
          4EC0CC7D543228434C59644E3FD7C2575E5E005E2E46D5CDDFDBE6E0980E8B65
          CA0AAAA69BB2A1332C17F07A1D9CC998C1B1B367468B8DB7E403166336583AE5
          2D19294D8805A2D2D4A8031203F4127D52AF8FCE10887518BE1A42771983EA54
          0E2E334C7DD107A3903B6DC5E68EFF6B394F5D3A5BA477116B58946EA3967C94
          462AAB945F5DCAC224CBB50A39BA5CA528CD9B4D32310F27CD83EF8435441249
          60651E5A323C678ACA91B55C74A74553037453931CA6942338245B120A850532
          7E5208F914C3DE04419266A438A2BC1F9302F5062174ADC999DB1B2E52F61916
          075759D452E5039CCBCB1629A78104962A166BAB7431539C6C48D9A64CCC6496
          0D23171BA69A3E6ED3A467E6F542FAB35C5E5C370BB9BEEB3ED6EEF931CB3BF6
          D085364B4C8549592316CB3AC1B9680032A8F759674DA1F01ED2339F29E2FFBB
          F54F537EF4C08E9CC0170000000049454E44AE426082}
      end>
  end
end
