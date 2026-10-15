object frm_Buchungsfehler: Tfrm_Buchungsfehler
  Left = 0
  Top = 0
  BorderStyle = bsNone
  ClientHeight = 922
  ClientWidth = 1195
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OnShow = FormShow
  TextHeight = 13
  object dxLayoutControl1: TdxLayoutControl
    Left = 0
    Top = 0
    Width = 1195
    Height = 922
    Align = alClient
    TabOrder = 0
    AutoSize = True
    LayoutLookAndFeel = dm_PCM.dxLayoutSkinLookAndFeel1
    object grd_Booking: TcxGrid
      Left = 19
      Top = 25
      Width = 1157
      Height = 878
      TabOrder = 0
      object grdDBTblView_Booking: TcxGridDBTableView
        OnCellDblClick = grdDBTblView_BookingCellDblClick
        DataController.DataSource = ds_Backup
        OptionsData.CancelOnExit = False
        OptionsData.Deleting = False
        OptionsData.DeletingConfirmation = False
        OptionsData.Editing = False
        OptionsData.Inserting = False
        OptionsSelection.CellSelect = False
        OptionsView.GroupByBox = False
        OptionsView.HeaderFilterButtonShowMode = fbmButton
        OptionsView.Indicator = True
        OptionsView.IndicatorWidth = 16
        object grdDBTblView_BookingID_Benutzer: TcxGridDBColumn
          DataBinding.FieldName = 'ID_Benutzer'
          Visible = False
          VisibleForCustomization = False
        end
        object grdDBTblView_BookingName: TcxGridDBColumn
          DataBinding.FieldName = 'Name'
          Width = 400
        end
        object grdDBTblView_BookingDatum: TcxGridDBColumn
          DataBinding.FieldName = 'Datum'
          Width = 70
        end
        object grdDBTblView_BookingMeldung: TcxGridDBColumn
          DataBinding.FieldName = 'Meldung'
          Width = 500
        end
        object grdDBTblView_BookingID_Buchung: TcxGridDBColumn
          DataBinding.FieldName = 'ID_Buchung'
          Visible = False
          VisibleForCustomization = False
        end
      end
      object grdLvl_Booking: TcxGridLevel
        GridView = grdDBTblView_Booking
      end
    end
    object dxLayoutControl1Group_Root: TdxLayoutGroup
      AlignHorz = ahClient
      AlignVert = avClient
      Hidden = True
      LayoutDirection = ldHorizontal
      ShowBorder = False
      Index = -1
    end
    object dxLayoutGroup3: TdxLayoutGroup
      Parent = dxLayoutControl1Group_Root
      AlignHorz = ahClient
      AlignVert = avClient
      CaptionOptions.Text = 'Datensicherung'
      Index = 0
    end
    object dxLayoutItem2: TdxLayoutItem
      Parent = dxLayoutGroup3
      AlignHorz = ahClient
      AlignVert = avClient
      CaptionOptions.Text = 'New Item'
      CaptionOptions.Visible = False
      Control = grd_Booking
      ControlOptions.OriginalHeight = 603
      ControlOptions.OriginalWidth = 1832
      ControlOptions.ShowBorder = False
      Index = 0
    end
  end
  object qry_Backup: TFDQuery
    Connection = dm_PCM.con_PCM
    SQL.Strings = (
      
        'SELECT Concat(tu.Nachname,'#39', '#39',tu.Vorname) AS Name , tm.`*`   FR' +
        'OM time_user tu LEFT OUTER JOIN time_meldungen tm ON tm.ID_Benut' +
        'zer = tu.ID ')
    Left = 776
    Top = 32
  end
  object ds_Backup: TDataSource
    DataSet = qry_Backup
    Left = 828
    Top = 32
  end
  object brmgr_Backup: TdxBarManager
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
    UseSystemFont = True
    Left = 632
    Top = 408
    PixelsPerInch = 96
    object btn_Save: TdxBarLargeButton
      Caption = 'Speichern'
      Category = 0
      Hint = 'Speichern'
      Visible = ivAlways
      AutoGrayScale = False
      LargeImageIndex = 12
      Width = 125
    end
  end
  object tmr_Backup: TTimer
    Enabled = False
    OnTimer = tmr_BackupTimer
    Left = 296
    Top = 80
  end
end
