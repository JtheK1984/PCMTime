object frm_Config: Tfrm_Config
  Left = 0
  Top = 0
  BorderStyle = bsNone
  Caption = 'frm_Config'
  ClientHeight = 800
  ClientWidth = 1280
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
    Width = 1280
    Height = 800
    Align = alClient
    TabOrder = 0
    AutoSize = True
    LayoutLookAndFeel = dm_PCM.dxLayoutSkinLookAndFeel1
    object cxDBCheckBox1: TcxDBCheckBox
      Left = 30
      Top = 56
      Caption = 'Meldungen erzeugen'
      DataBinding.DataField = 'MeldungenErzeugen'
      DataBinding.DataSource = ds_Config
      Properties.Alignment = taLeftJustify
      Properties.ImmediatePost = True
      Properties.ValueChecked = 1
      Properties.ValueUnchecked = 0
      Properties.OnEditValueChanged = ConfigurationChanged
      Style.HotTrack = False
      Style.TransparentBorder = False
      TabOrder = 0
      Transparent = True
    end
    object cxDBCheckBox2: TcxDBCheckBox
      Left = 39
      Top = 94
      Caption = 'gesetzliche Pausenpr'#252'fung'
      DataBinding.DataField = 'Pausenpruefung'
      DataBinding.DataSource = ds_Config
      Properties.Alignment = taLeftJustify
      Properties.ImmediatePost = True
      Properties.ValueChecked = 1
      Properties.ValueUnchecked = 0
      Properties.OnEditValueChanged = ConfigurationChanged
      Style.HotTrack = False
      Style.TransparentBorder = False
      TabOrder = 1
      Transparent = True
    end
    object cxDBCheckBox3: TcxDBCheckBox
      Left = 39
      Top = 117
      Caption = 'logische Buchungen'
      DataBinding.DataField = 'LogischeBuchungen'
      DataBinding.DataSource = ds_Config
      Properties.Alignment = taLeftJustify
      Properties.ImmediatePost = True
      Properties.ValueChecked = 1
      Properties.ValueUnchecked = 0
      Properties.OnEditValueChanged = ConfigurationChanged
      Style.HotTrack = False
      Style.TransparentBorder = False
      TabOrder = 2
      Transparent = True
    end
    object cxDBCheckBox4: TcxDBCheckBox
      Left = 39
      Top = 140
      Caption = 'Beginn / Ende Fehler'
      DataBinding.DataField = 'BeginnEndeFehler'
      DataBinding.DataSource = ds_Config
      Properties.Alignment = taLeftJustify
      Properties.ImmediatePost = True
      Properties.ValueChecked = 1
      Properties.ValueUnchecked = 0
      Properties.OnEditValueChanged = ConfigurationChanged
      Style.HotTrack = False
      Style.TransparentBorder = False
      TabOrder = 3
      Transparent = True
    end
    object cxDBCheckBox5: TcxDBCheckBox
      Left = 39
      Top = 163
      Caption = 'Maximale Arbeitszeit'
      DataBinding.DataField = 'MaximalArbeitszeit'
      DataBinding.DataSource = ds_Config
      Properties.Alignment = taLeftJustify
      Properties.ImmediatePost = True
      Properties.ValueChecked = 1
      Properties.ValueUnchecked = 0
      Properties.OnEditValueChanged = ConfigurationChanged
      Style.HotTrack = False
      Style.TransparentBorder = False
      TabOrder = 4
      Transparent = True
    end
    object dxLayoutControl1Group_Root: TdxLayoutGroup
      AlignHorz = ahClient
      AlignVert = avClient
      Hidden = True
      LayoutDirection = ldHorizontal
      ShowBorder = False
      Index = -1
    end
    object lagrp_ConfigTab: TdxLayoutGroup
      Parent = dxLayoutControl1Group_Root
      AlignHorz = ahClient
      AlignVert = avClient
      LayoutDirection = ldTabbed
      ShowBorder = False
      Index = 0
    end
    object dxLayoutGroup17: TdxLayoutGroup
      Parent = lagrp_ConfigTab
      AlignHorz = ahClient
      AlignVert = avClient
      CaptionOptions.Text = 'Meldungen und Pr'#252'fungen'
      Index = 0
    end
    object dxLayoutItem1: TdxLayoutItem
      Parent = dxLayoutGroup2
      CaptionOptions.Text = 'New Item'
      CaptionOptions.Visible = False
      Control = cxDBCheckBox2
      ControlOptions.OriginalHeight = 17
      ControlOptions.OriginalWidth = 95
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object dxLayoutItem2: TdxLayoutItem
      Parent = dxLayoutGroup1
      CaptionOptions.Text = 'sdsd'
      CaptionOptions.Visible = False
      Control = cxDBCheckBox1
      ControlOptions.OriginalHeight = 17
      ControlOptions.OriginalWidth = 95
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object dxLayoutItem3: TdxLayoutItem
      Parent = dxLayoutGroup2
      CaptionOptions.Text = 'New Item'
      CaptionOptions.Visible = False
      Control = cxDBCheckBox3
      ControlOptions.OriginalHeight = 17
      ControlOptions.OriginalWidth = 112
      ControlOptions.ShowBorder = False
      Index = 1
    end
    object dxLayoutGroup1: TdxLayoutGroup
      Parent = dxLayoutGroup17
      CaptionOptions.Text = 'Buchungsfehlerassistent'
      ItemIndex = 1
      Index = 0
    end
    object dxLayoutGroup2: TdxLayoutGroup
      Parent = dxLayoutGroup1
      CaptionOptions.Text = 'Pr'#252'fungen'
      ItemIndex = 3
      Index = 1
    end
    object dxLayoutItem4: TdxLayoutItem
      Parent = dxLayoutGroup2
      CaptionOptions.Text = 'New Item'
      CaptionOptions.Visible = False
      Control = cxDBCheckBox4
      ControlOptions.OriginalHeight = 17
      ControlOptions.OriginalWidth = 117
      ControlOptions.ShowBorder = False
      Index = 2
    end
    object dxLayoutItem5: TdxLayoutItem
      Parent = dxLayoutGroup2
      CaptionOptions.Text = 'New Item'
      CaptionOptions.Visible = False
      Control = cxDBCheckBox5
      ControlOptions.OriginalHeight = 17
      ControlOptions.OriginalWidth = 116
      ControlOptions.ShowBorder = False
      Index = 3
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
      'Default'
      'PopupMenu1')
    Categories.ItemsVisibles = (
      2
      2)
    Categories.Visibles = (
      True
      True)
    ImageOptions.LargeImages = dm_PCM.imglst_32x32
    ImageOptions.LargeIcons = True
    NotDocking = [dsNone, dsLeft, dsTop, dsRight, dsBottom]
    PopupMenuLinks = <>
    UseSystemFont = True
    Left = 552
    Top = 313
    PixelsPerInch = 96
  end
  object qry_Config: TFDQuery
    Active = True
    Connection = dm_PCM.con_PCM
    UpdateOptions.UpdateTableName = 'time_config'
    UpdateOptions.KeyFields = 'ID'
    SQL.Strings = (
      'SELECT * FROM time_config')
    Left = 187
    Top = 200
  end
  object ds_Config: TDataSource
    DataSet = qry_Config
    Left = 243
    Top = 200
  end
end
