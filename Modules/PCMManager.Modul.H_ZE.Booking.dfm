object frm_Booking: Tfrm_Booking
  Left = 0
  Top = 0
  BorderIcons = []
  Caption = 'PCM - Manager: Buchungs'#252'bersicht'
  ClientHeight = 900
  ClientWidth = 1600
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -12
  Font.Name = 'Segoe UI'
  Font.Style = []
  Position = poScreenCenter
  TextHeight = 15
  object grpbx_Booking: TcxGroupBox
    Left = 0
    Top = 63
    Align = alClient
    Caption = 'Arbeitszeiten'
    TabOrder = 0
    ExplicitTop = 58
    ExplicitHeight = 842
    Height = 837
    Width = 1600
    object lucmbbx_Fehltag: TcxDBLookupComboBox
      AlignWithMargins = True
      Left = 9
      Top = 316
      Margins.Left = 6
      Margins.Top = 0
      Margins.Right = 6
      Margins.Bottom = 0
      TabStop = False
      Align = alTop
      DataBinding.DataField = 'Fehltag'
      DataBinding.DataSource = frm_ZE.ds_Buchungen
      Enabled = False
      Properties.KeyFieldNames = 'Kuerzel'
      Properties.ListColumns = <
        item
          FieldName = 'Beschreibung'
        end>
      Properties.ListSource = frm_ZE.ds_Fehltag
      TabOrder = 6
      Width = 1582
    end
    object lbl_Fehltag: TcxLabel
      AlignWithMargins = True
      Left = 9
      Top = 297
      Margins.Left = 6
      Margins.Top = 0
      Margins.Right = 6
      Margins.Bottom = 0
      Align = alTop
      Caption = 'Fehltag:'
      Transparent = True
      ExplicitLeft = 8
      ExplicitTop = 314
      ExplicitWidth = 1584
    end
    object lbl_Gehen: TcxLabel
      AlignWithMargins = True
      Left = 9
      Top = 57
      Margins.Left = 6
      Margins.Top = 0
      Margins.Right = 6
      Margins.Bottom = 0
      Align = alTop
      Caption = 'Gehen:'
      Transparent = True
      ExplicitLeft = 8
      ExplicitTop = 62
      ExplicitWidth = 1584
    end
    object lbl_Kommen: TcxLabel
      AlignWithMargins = True
      Left = 9
      Top = 17
      Margins.Left = 6
      Margins.Top = 0
      Margins.Right = 6
      Margins.Bottom = 0
      Align = alTop
      Caption = 'Kommen:'
      Transparent = True
      ExplicitLeft = 8
      ExplicitTop = 20
      ExplicitWidth = 1584
    end
    object lbl_Pause1Beginn: TcxLabel
      AlignWithMargins = True
      Left = 9
      Top = 97
      Margins.Left = 6
      Margins.Top = 0
      Margins.Right = 6
      Margins.Bottom = 0
      Align = alTop
      Caption = '1. Pause Beginn:'
      Transparent = True
      ExplicitLeft = 8
      ExplicitTop = 100
      ExplicitWidth = 1584
    end
    object lbl_Pause1Ende: TcxLabel
      AlignWithMargins = True
      Left = 9
      Top = 137
      Margins.Left = 6
      Margins.Top = 0
      Margins.Right = 6
      Margins.Bottom = 0
      Align = alTop
      Caption = '1. Pause Ende:'
      Transparent = True
      ExplicitLeft = 8
      ExplicitTop = 140
      ExplicitWidth = 1584
    end
    object lbl_Pause2Beginn: TcxLabel
      AlignWithMargins = True
      Left = 9
      Top = 177
      Margins.Left = 6
      Margins.Top = 0
      Margins.Right = 6
      Margins.Bottom = 0
      Align = alTop
      Caption = '2. Pause Beginn:'
      Transparent = True
      ExplicitLeft = 8
      ExplicitTop = 180
      ExplicitWidth = 1584
    end
    object lbl_Pause2Ende: TcxLabel
      AlignWithMargins = True
      Left = 9
      Top = 217
      Margins.Left = 6
      Margins.Top = 0
      Margins.Right = 6
      Margins.Bottom = 0
      Align = alTop
      Caption = '2. Pause Ende:'
      Transparent = True
      ExplicitLeft = 8
      ExplicitTop = 220
      ExplicitWidth = 1584
    end
    object tedt_Gehen: TcxDBTimeEdit
      AlignWithMargins = True
      Left = 9
      Top = 76
      Margins.Left = 6
      Margins.Top = 0
      Margins.Right = 6
      Margins.Bottom = 0
      Align = alTop
      DataBinding.DataField = 'Gehen'
      DataBinding.DataSource = frm_ZE.ds_Buchungen
      Properties.SpinButtons.Visible = False
      Properties.TimeFormat = tfHourMin
      TabOrder = 1
      Width = 1582
    end
    object tedt_Kommen: TcxDBTimeEdit
      AlignWithMargins = True
      Left = 9
      Top = 36
      Margins.Left = 6
      Margins.Top = 0
      Margins.Right = 6
      Margins.Bottom = 0
      Align = alTop
      DataBinding.DataField = 'Kommen'
      DataBinding.DataSource = frm_ZE.ds_Buchungen
      Properties.SpinButtons.Visible = False
      Properties.TimeFormat = tfHourMin
      TabOrder = 0
      Width = 1582
    end
    object tedt_Pause1Beginn: TcxDBTimeEdit
      AlignWithMargins = True
      Left = 9
      Top = 116
      Margins.Left = 6
      Margins.Top = 0
      Margins.Right = 6
      Margins.Bottom = 0
      Align = alTop
      DataBinding.DataField = 'Pause1Beginn'
      DataBinding.DataSource = frm_ZE.ds_Buchungen
      Properties.SpinButtons.Visible = False
      Properties.TimeFormat = tfHourMin
      TabOrder = 2
      ExplicitTop = 120
      Width = 1582
    end
    object tedt_Pause1Ende: TcxDBTimeEdit
      AlignWithMargins = True
      Left = 9
      Top = 156
      Margins.Left = 6
      Margins.Top = 0
      Margins.Right = 6
      Margins.Bottom = 0
      Align = alTop
      DataBinding.DataField = 'Pause1Ende'
      DataBinding.DataSource = frm_ZE.ds_Buchungen
      Properties.SpinButtons.Visible = False
      Properties.TimeFormat = tfHourMin
      TabOrder = 3
      ExplicitTop = 162
      Width = 1582
    end
    object tedt_Pause2Beginn: TcxDBTimeEdit
      AlignWithMargins = True
      Left = 9
      Top = 196
      Margins.Left = 6
      Margins.Top = 0
      Margins.Right = 6
      Margins.Bottom = 0
      Align = alTop
      DataBinding.DataField = 'Pause2Beginn'
      DataBinding.DataSource = frm_ZE.ds_Buchungen
      Properties.SpinButtons.Visible = False
      Properties.TimeFormat = tfHourMin
      TabOrder = 4
      ExplicitTop = 204
      Width = 1582
    end
    object tedt_Pause2Ende: TcxDBTimeEdit
      AlignWithMargins = True
      Left = 9
      Top = 236
      Margins.Left = 6
      Margins.Top = 0
      Margins.Right = 6
      Margins.Bottom = 0
      Align = alTop
      DataBinding.DataField = 'Pause2Ende'
      DataBinding.DataSource = frm_ZE.ds_Buchungen
      Properties.SpinButtons.Visible = False
      Properties.TimeFormat = tfHourMin
      TabOrder = 5
      ExplicitTop = 246
      Width = 1582
    end
    object lbl_Mehrarbeit: TcxLabel
      AlignWithMargins = True
      Left = 9
      Top = 337
      Margins.Left = 6
      Margins.Top = 0
      Margins.Right = 6
      Margins.Bottom = 0
      Align = alTop
      Caption = 'Mehrarbeit:'
      Transparent = True
      ExplicitLeft = 8
      ExplicitTop = 342
      ExplicitWidth = 1584
    end
    object edt_Mehrarbeit: TcxDBTextEdit
      AlignWithMargins = True
      Left = 9
      Top = 356
      Margins.Left = 6
      Margins.Top = 0
      Margins.Right = 6
      Margins.Bottom = 0
      Align = alTop
      DataBinding.DataField = 'Mehrarbeit'
      DataBinding.DataSource = frm_ZE.ds_Buchungen
      Enabled = False
      TabOrder = 16
      ExplicitTop = 370
      Width = 1582
    end
    object lbl_Arbeitsort: TcxLabel
      AlignWithMargins = True
      Left = 9
      Top = 257
      Margins.Left = 6
      Margins.Top = 0
      Margins.Right = 6
      Margins.Bottom = 0
      Align = alTop
      Caption = 'Arbeitsst'#228'tte:'
      Transparent = True
      ExplicitLeft = 8
      ExplicitTop = 260
      ExplicitWidth = 1584
    end
    object imgcmbbx_Arbeitsort: TcxDBImageComboBox
      AlignWithMargins = True
      Left = 9
      Top = 276
      Margins.Left = 6
      Margins.Top = 0
      Margins.Right = 6
      Margins.Bottom = 0
      Align = alTop
      DataBinding.DataField = 'Buchungsart'
      DataBinding.DataSource = frm_ZE.ds_Buchungen
      Properties.Alignment.Horz = taLeftJustify
      Properties.Items = <
        item
          Description = 'B'#252'ro'
          ImageIndex = 0
          Value = 0
        end
        item
          Description = 'HomeOffice'
          Value = 1
        end
        item
          Value = -1
        end>
      TabOrder = 7
      ExplicitTop = 288
      Width = 1582
    end
  end
  object brmgr_Data: TdxBarManager
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
    ImageOptions.LargeImages = frm_ZE.imglst_32x32
    PopupMenuLinks = <>
    Style = bmsUseLookAndFeel
    UseSystemFont = True
    Left = 400
    Top = 200
    PixelsPerInch = 96
    DockControlHeights = (
      0
      0
      63
      0)
    object tb_Data: TdxBar
      Caption = 'Custom 1'
      CaptionButtons = <>
      DockedDockingStyle = dsTop
      DockedLeft = 0
      DockedTop = 0
      DockingStyle = dsTop
      FloatLeft = 652
      FloatTop = 2
      FloatClientWidth = 0
      FloatClientHeight = 0
      ItemLinks = <
        item
          Visible = True
          ItemName = 'btn_DataSave'
        end
        item
          Visible = True
          ItemName = 'btn_DataCancel'
        end
        item
          Visible = True
          ItemName = 'btn_DataPrev'
        end
        item
          Visible = True
          ItemName = 'btn_DataNext'
        end
        item
          Visible = True
          ItemName = 'btn_DataClose'
        end>
      NotDocking = [dsNone, dsLeft, dsTop, dsRight, dsBottom]
      OneOnRow = True
      Row = 0
      ShowMark = False
      SizeGrip = False
      UseOwnFont = False
      UseRestSpace = True
      Visible = True
      WholeRow = False
    end
    object btn_DataSave: TdxBarLargeButton
      Caption = '&Speichern'
      Category = 0
      Hint = 'Speichern'
      Visible = ivAlways
      OnClick = btn_DataSaveClick
      AutoGrayScale = False
      LargeImageIndex = 3
      Width = 120
    end
    object btn_DataCancel: TdxBarLargeButton
      Caption = '&Abbrechen'
      Category = 0
      Hint = 'Abbrechen'
      Visible = ivAlways
      OnClick = btn_DataCancelClick
      AutoGrayScale = False
      LargeImageIndex = 14
      Width = 120
    end
    object btn_DataPrev: TdxBarLargeButton
      Caption = '&vorheriger Datensatz'
      Category = 0
      Hint = 'vorheriger Datensatz'
      Visible = ivAlways
      OnClick = btn_DataPrevClick
      AutoGrayScale = False
      LargeImageIndex = 7
      Width = 120
    end
    object btn_DataNext: TdxBarLargeButton
      Caption = '&n'#228'chster Datensatz'
      Category = 0
      Hint = 'n'#228'chster Datensatz'
      Visible = ivAlways
      OnClick = btn_DataNextClick
      AutoGrayScale = False
      LargeImageIndex = 8
      Width = 125
    end
    object btn_DataClose: TdxBarLargeButton
      Align = iaRight
      Caption = 'S&chlie'#223'en'
      Category = 0
      Hint = 'Schlie'#223'en'
      Visible = ivAlways
      OnClick = btn_DataCloseClick
      AutoGrayScale = False
      LargeImageIndex = 6
      Width = 120
    end
  end
end
