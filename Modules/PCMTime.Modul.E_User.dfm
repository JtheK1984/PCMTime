object frm_Userze: Tfrm_Userze
  Left = 0
  Top = 0
  BorderIcons = []
  Caption = 'PCM - Time: Mitarbeiter'
  ClientHeight = 900
  ClientWidth = 1600
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
  object lactrl_Main: TdxLayoutControl
    Left = 0
    Top = 132
    Width = 1600
    Height = 768
    Margins.Left = 0
    Margins.Top = 0
    Margins.Right = 0
    Margins.Bottom = 0
    Align = alClient
    TabOrder = 0
    LayoutLookAndFeel = dm_PCM.dxLayoutSkinLookAndFeel1
    OptionsImage.Images = dm_PCM.imglst_16x16
    object tedt_Sollstunden: TcxDBTimeEdit
      Left = 10000
      Top = 10000
      DataBinding.DataField = 'Sollstunden'
      DataBinding.DataSource = ds_Kontakte
      Properties.SpinButtons.Visible = False
      Properties.TimeFormat = tfHourMin
      Style.HotTrack = False
      Style.TransparentBorder = False
      TabOrder = 46
      Visible = False
      Width = 1061
    end
    object colcmbbx_KalFarbeArbeit: TcxDBColorComboBox
      Left = 10000
      Top = 10000
      DataBinding.DataField = 'ColCalWork'
      DataBinding.DataSource = ds_Kontakte
      ParentFont = False
      Properties.AllowSelectColor = True
      Properties.CustomColors = <>
      Properties.PrepareList = cxplHTML4
      Properties.ShowDescriptions = False
      Style.Font.Charset = DEFAULT_CHARSET
      Style.Font.Color = clWindowText
      Style.Font.Height = -11
      Style.Font.Name = 'Tahoma'
      Style.Font.Style = []
      Style.HotTrack = False
      Style.TransparentBorder = False
      Style.IsFontAssigned = True
      TabOrder = 57
      Visible = False
      Width = 1019
    end
    object colcmbbx_KalFarbePause: TcxDBColorComboBox
      Left = 10000
      Top = 10000
      DataBinding.DataField = 'ColCalBreak'
      DataBinding.DataSource = ds_Kontakte
      ParentFont = False
      Properties.AllowSelectColor = True
      Properties.CustomColors = <>
      Properties.PrepareList = cxplHTML4
      Properties.ShowDescriptions = False
      Style.Font.Charset = DEFAULT_CHARSET
      Style.Font.Color = clWindowText
      Style.Font.Height = -11
      Style.Font.Name = 'Tahoma'
      Style.Font.Style = []
      Style.HotTrack = False
      Style.TransparentBorder = False
      Style.IsFontAssigned = True
      TabOrder = 59
      Visible = False
      Width = 1019
    end
    object colcmbbx_SchriftFarbePause: TcxDBColorComboBox
      Left = 10000
      Top = 10000
      DataBinding.DataField = 'ColFontBreak'
      DataBinding.DataSource = ds_Kontakte
      ParentFont = False
      Properties.AllowSelectColor = True
      Properties.CustomColors = <>
      Properties.PrepareList = cxplHTML4
      Properties.ShowDescriptions = False
      Style.Font.Charset = DEFAULT_CHARSET
      Style.Font.Color = clWindowText
      Style.Font.Height = -11
      Style.Font.Name = 'Tahoma'
      Style.Font.Style = []
      Style.HotTrack = False
      Style.TransparentBorder = False
      Style.IsFontAssigned = True
      TabOrder = 58
      Visible = False
      Width = 1019
    end
    object colcmbbx_SchriftFarbeArbeit: TcxDBColorComboBox
      Left = 10000
      Top = 10000
      DataBinding.DataField = 'ColFontWork'
      DataBinding.DataSource = ds_Kontakte
      ParentFont = False
      Properties.AllowSelectColor = True
      Properties.CustomColors = <>
      Properties.PrepareList = cxplHTML4
      Properties.ShowDescriptions = False
      Style.Font.Charset = DEFAULT_CHARSET
      Style.Font.Color = clWindowText
      Style.Font.Height = -11
      Style.Font.Name = 'Tahoma'
      Style.Font.Style = []
      Style.HotTrack = False
      Style.TransparentBorder = False
      Style.IsFontAssigned = True
      TabOrder = 56
      Visible = False
      Width = 1019
    end
    object lucmbbx_Benutzer: TcxDBLookupComboBox
      Left = 10000
      Top = 10000
      DataBinding.DataField = 'ID_Benutzer'
      DataBinding.DataSource = ds_Kontakte
      Properties.KeyFieldNames = 'ID'
      Properties.ListColumns = <
        item
          FieldName = 'Benutzer'
        end>
      Properties.ListSource = ds_benutzer
      Style.HotTrack = False
      Style.TransparentBorder = False
      TabOrder = 47
      Visible = False
      Width = 1061
    end
    object sedt_Urlaubanspruch: TcxDBSpinEdit
      Left = 10000
      Top = 10000
      DataBinding.DataField = 'Urlaub'
      DataBinding.DataSource = ds_Kontakte
      Properties.Alignment.Horz = taLeftJustify
      Properties.SpinButtons.Visible = False
      Style.HotTrack = False
      Style.TransparentBorder = False
      TabOrder = 53
      Visible = False
      Width = 1017
    end
    object dedt_Eintritt: TcxDBDateEdit
      Left = 10000
      Top = 10000
      AutoSize = False
      DataBinding.DataField = 'Eintritt'
      DataBinding.DataSource = ds_Kontakte
      ParentFont = False
      Style.Font.Charset = DEFAULT_CHARSET
      Style.Font.Color = clWindowText
      Style.Font.Height = -11
      Style.Font.Name = 'Tahoma'
      Style.Font.Style = []
      Style.HotTrack = False
      Style.TransparentBorder = False
      Style.IsFontAssigned = True
      TabOrder = 45
      Visible = False
      Height = 19
      Width = 1061
    end
    object medt_Resturlaub: TcxDBMaskEdit
      Left = 10000
      Top = 10000
      AutoSize = False
      DataBinding.DataField = 'OffsetResturlaub'
      DataBinding.DataSource = ds_Kontakte
      Properties.Alignment.Horz = taLeftJustify
      Style.HotTrack = False
      Style.TransparentBorder = False
      TabOrder = 54
      Visible = False
      Height = 21
      Width = 1017
    end
    object medt_ResturlaubzumJahr: TcxDBMaskEdit
      Left = 10000
      Top = 10000
      DataBinding.DataField = 'OffsetResturlaubJahr'
      DataBinding.DataSource = ds_Kontakte
      Properties.Alignment.Horz = taLeftJustify
      Style.HotTrack = False
      Style.TransparentBorder = False
      TabOrder = 55
      Visible = False
      Width = 1017
    end
    object medt_Personalnummer: TcxDBMaskEdit
      Left = 10000
      Top = 10000
      DataBinding.DataField = 'Personalnummer'
      DataBinding.DataSource = ds_Kontakte
      Properties.Alignment.Horz = taLeftJustify
      Style.HotTrack = False
      Style.TransparentBorder = False
      TabOrder = 12
      Visible = False
      Width = 289
    end
    object cmbbx_KontaktSucheArt: TcxComboBox
      Left = 101
      Top = 63
      ParentFont = False
      Style.Font.Charset = DEFAULT_CHARSET
      Style.Font.Color = clWindowText
      Style.Font.Height = -11
      Style.Font.Name = 'Tahoma'
      Style.Font.Style = []
      Style.HotTrack = False
      Style.TransparentBorder = False
      Style.IsFontAssigned = True
      TabOrder = 0
      OnKeyDown = SearchKeyDown
      Width = 234
    end
    object edt_KontaktSucheFunktion: TcxTextEdit
      Left = 809
      Top = 123
      ParentFont = False
      Style.Font.Charset = DEFAULT_CHARSET
      Style.Font.Color = clWindowText
      Style.Font.Height = -11
      Style.Font.Name = 'Tahoma'
      Style.Font.Style = []
      Style.HotTrack = False
      Style.TransparentBorder = False
      Style.IsFontAssigned = True
      TabOrder = 8
      OnKeyDown = SearchKeyDown
      Width = 334
    end
    object edt_KontaktSucheOrt: TcxTextEdit
      Left = 459
      Top = 117
      ParentFont = False
      Style.Font.Charset = DEFAULT_CHARSET
      Style.Font.Color = clWindowText
      Style.Font.Height = -11
      Style.Font.Name = 'Tahoma'
      Style.Font.Style = []
      Style.HotTrack = False
      Style.TransparentBorder = False
      Style.IsFontAssigned = True
      TabOrder = 5
      OnKeyDown = SearchKeyDown
      Width = 234
    end
    object edt_KontaktSuchePLZ: TcxTextEdit
      Left = 459
      Top = 89
      ParentFont = False
      Style.Font.Charset = DEFAULT_CHARSET
      Style.Font.Color = clWindowText
      Style.Font.Height = -11
      Style.Font.Name = 'Tahoma'
      Style.Font.Style = []
      Style.HotTrack = False
      Style.TransparentBorder = False
      Style.IsFontAssigned = True
      TabOrder = 4
      OnKeyDown = SearchKeyDown
      Width = 234
    end
    object edt_KontaktSucheStrasse: TcxTextEdit
      Left = 459
      Top = 63
      AutoSize = False
      ParentFont = False
      Style.Font.Charset = DEFAULT_CHARSET
      Style.Font.Color = clWindowText
      Style.Font.Height = -11
      Style.Font.Name = 'Tahoma'
      Style.Font.Style = []
      Style.HotTrack = False
      Style.TransparentBorder = False
      Style.IsFontAssigned = True
      TabOrder = 3
      OnKeyDown = SearchKeyDown
      Height = 19
      Width = 234
    end
    object edt_KontaktSucheVorname: TcxTextEdit
      Left = 101
      Top = 117
      AutoSize = False
      ParentFont = False
      Style.Font.Charset = DEFAULT_CHARSET
      Style.Font.Color = clWindowText
      Style.Font.Height = -11
      Style.Font.Name = 'Tahoma'
      Style.Font.Style = []
      Style.HotTrack = False
      Style.TransparentBorder = False
      Style.IsFontAssigned = True
      TabOrder = 2
      OnKeyDown = SearchKeyDown
      Height = 19
      Width = 234
    end
    object cmbbx_Anrede: TcxDBLookupComboBox
      Left = 10000
      Top = 10000
      DataBinding.DataField = 'ID_Anrede'
      DataBinding.DataSource = ds_Kontakte
      ParentFont = False
      Properties.KeyFieldNames = 'ID'
      Properties.ListColumns = <
        item
          SortOrder = soAscending
          FieldName = 'Bezeichnung'
        end>
      Properties.ListOptions.AnsiSort = True
      Properties.ListSource = ds_Contact_Anrede
      Style.Font.Charset = DEFAULT_CHARSET
      Style.Font.Color = clWindowText
      Style.Font.Height = -11
      Style.Font.Name = 'Tahoma'
      Style.Font.Style = []
      Style.HotTrack = False
      Style.TransparentBorder = False
      Style.IsFontAssigned = True
      TabOrder = 13
      Visible = False
      Width = 289
    end
    object edt_Geburtsland: TcxDBTextEdit
      Left = 10000
      Top = 10000
      DataBinding.DataField = 'Geburtsland'
      DataBinding.DataSource = ds_Kontakte
      ParentFont = False
      Style.Font.Charset = DEFAULT_CHARSET
      Style.Font.Color = clWindowText
      Style.Font.Height = -11
      Style.Font.Name = 'Tahoma'
      Style.Font.Style = []
      Style.HotTrack = False
      Style.TransparentBorder = False
      Style.IsFontAssigned = True
      TabOrder = 17
      Visible = False
      Width = 289
    end
    object edt_KontaktGeburtsname: TcxDBTextEdit
      Left = 10000
      Top = 10000
      DataBinding.DataField = 'Geburtsname'
      DataBinding.DataSource = ds_Kontakte
      ParentFont = False
      Style.Font.Charset = DEFAULT_CHARSET
      Style.Font.Color = clWindowText
      Style.Font.Height = -11
      Style.Font.Name = 'Tahoma'
      Style.Font.Style = []
      Style.HotTrack = False
      Style.TransparentBorder = False
      Style.IsFontAssigned = True
      TabOrder = 16
      Visible = False
      Width = 289
    end
    object edt_KontaktHandy: TcxDBTextEdit
      Left = 10000
      Top = 10000
      DataBinding.DataField = 'Handy_privat'
      DataBinding.DataSource = ds_Kontakte
      ParentFont = False
      Style.Font.Charset = DEFAULT_CHARSET
      Style.Font.Color = clWindowText
      Style.Font.Height = -11
      Style.Font.Name = 'Tahoma'
      Style.Font.Style = []
      Style.HotTrack = False
      Style.TransparentBorder = False
      Style.IsFontAssigned = True
      TabOrder = 25
      Visible = False
      Width = 289
    end
    object edt_KontaktNachname: TcxDBTextEdit
      Left = 10000
      Top = 10000
      DataBinding.DataField = 'Nachname'
      DataBinding.DataSource = ds_Kontakte
      ParentFont = False
      Style.Color = clInfoBk
      Style.Font.Charset = DEFAULT_CHARSET
      Style.Font.Color = clWindowText
      Style.Font.Height = -11
      Style.Font.Name = 'Tahoma'
      Style.Font.Style = []
      Style.HotTrack = False
      Style.TextColor = clInfoText
      Style.TransparentBorder = False
      Style.IsFontAssigned = True
      TabOrder = 15
      Visible = False
      Width = 289
    end
    object edt_KontaktName: TcxDBTextEdit
      Left = 10000
      Top = 10000
      DataBinding.DataField = 'Vorname'
      DataBinding.DataSource = ds_Kontakte
      ParentFont = False
      Style.Color = clInfoBk
      Style.Font.Charset = DEFAULT_CHARSET
      Style.Font.Color = clWindowText
      Style.Font.Height = -11
      Style.Font.Name = 'Tahoma'
      Style.Font.Style = []
      Style.HotTrack = False
      Style.TextColor = clInfoText
      Style.TransparentBorder = False
      Style.IsFontAssigned = True
      TabOrder = 14
      Visible = False
      Width = 289
    end
    object edt_KontaktOrt: TcxDBTextEdit
      Left = 10000
      Top = 10000
      AutoSize = False
      DataBinding.DataField = 'Ort_Privat'
      DataBinding.DataSource = ds_Kontakte
      ParentFont = False
      Style.Font.Charset = DEFAULT_CHARSET
      Style.Font.Color = clWindowText
      Style.Font.Height = -11
      Style.Font.Name = 'Tahoma'
      Style.Font.Style = []
      Style.HotTrack = False
      Style.TransparentBorder = False
      Style.IsFontAssigned = True
      TabOrder = 21
      Visible = False
      Height = 21
      Width = 185
    end
    object edt_KontaktPLZ: TcxDBTextEdit
      Left = 10000
      Top = 10000
      AutoSize = False
      DataBinding.DataField = 'PLZ_Privat'
      DataBinding.DataSource = ds_Kontakte
      ParentFont = False
      Style.Font.Charset = DEFAULT_CHARSET
      Style.Font.Color = clWindowText
      Style.Font.Height = -11
      Style.Font.Name = 'Tahoma'
      Style.Font.Style = []
      Style.HotTrack = False
      Style.TransparentBorder = False
      Style.IsFontAssigned = True
      TabOrder = 20
      Visible = False
      Height = 21
      Width = 69
    end
    object edt_KontaktStrasse: TcxDBTextEdit
      Left = 10000
      Top = 10000
      DataBinding.DataField = 'Strasse_Privat'
      DataBinding.DataSource = ds_Kontakte
      ParentFont = False
      Style.Font.Charset = DEFAULT_CHARSET
      Style.Font.Color = clWindowText
      Style.Font.Height = -11
      Style.Font.Name = 'Tahoma'
      Style.Font.Style = []
      Style.HotTrack = False
      Style.TransparentBorder = False
      Style.IsFontAssigned = True
      TabOrder = 19
      Visible = False
      Width = 289
    end
    object edt_KontaktTelefon1: TcxDBTextEdit
      Left = 10000
      Top = 10000
      DataBinding.DataField = 'Telefon_Privat'
      DataBinding.DataSource = ds_Kontakte
      ParentFont = False
      Style.Font.Charset = DEFAULT_CHARSET
      Style.Font.Color = clWindowText
      Style.Font.Height = -11
      Style.Font.Name = 'Tahoma'
      Style.Font.Style = []
      Style.HotTrack = False
      Style.TransparentBorder = False
      Style.IsFontAssigned = True
      TabOrder = 23
      Visible = False
      Width = 289
    end
    object edt_KontaktTelefon2: TcxDBTextEdit
      Left = 10000
      Top = 10000
      DataBinding.DataField = 'Telefon_Privat1'
      DataBinding.DataSource = ds_Kontakte
      ParentFont = False
      Style.Font.Charset = DEFAULT_CHARSET
      Style.Font.Color = clWindowText
      Style.Font.Height = -11
      Style.Font.Name = 'Tahoma'
      Style.Font.Style = []
      Style.HotTrack = False
      Style.TransparentBorder = False
      Style.IsFontAssigned = True
      TabOrder = 24
      Visible = False
      Width = 289
    end
    object edt_KontaktZusatz: TcxDBTextEdit
      Left = 10000
      Top = 10000
      DataBinding.DataField = 'Zusatz'
      DataBinding.DataSource = ds_Kontakte
      ParentFont = False
      Style.Font.Charset = DEFAULT_CHARSET
      Style.Font.Color = clWindowText
      Style.Font.Height = -11
      Style.Font.Name = 'Tahoma'
      Style.Font.Style = []
      Style.HotTrack = False
      Style.TransparentBorder = False
      Style.IsFontAssigned = True
      TabOrder = 18
      Visible = False
      Width = 289
    end
    object dtEdt_KontaktZusatzGeburtsdatum: TcxDBDateEdit
      Left = 10000
      Top = 10000
      DataBinding.DataField = 'Geburtsdatum'
      DataBinding.DataSource = ds_Kontakte
      ParentFont = False
      Properties.ButtonGlyph.SourceDPI = 96
      Properties.ButtonGlyph.SourceHeight = 16
      Properties.ButtonGlyph.SourceWidth = 16
      Properties.ButtonGlyph.Data = {
        3C3F786D6C2076657273696F6E3D22312E302220656E636F64696E673D227574
        662D38223F3E0D0A3C212D2D2047656E657261746F723A2041646F626520496C
        6C7573747261746F722032312E312E302C20535647204578706F727420506C75
        672D496E202E205356472056657273696F6E3A20362E3030204275696C642030
        2920202D2D3E0D0A3C7376672076657273696F6E3D22312E31222069643D224C
        617965725F312220786D6C6E733D22687474703A2F2F7777772E77332E6F7267
        2F323030302F7376672220786D6C6E733A786C696E6B3D22687474703A2F2F77
        77772E77332E6F72672F313939392F786C696E6B2220783D223070782220793D
        22307078220D0A092076696577426F783D223020302033322033322220737479
        6C653D22656E61626C652D6261636B67726F756E643A6E657720302030203332
        2033323B2220786D6C3A73706163653D227072657365727665223E0D0A3C7374
        796C6520747970653D22746578742F637373223E0D0A092E426C75657B66696C
        6C3A233131373744373B7D0D0A092E59656C6C6F777B66696C6C3A2346464231
        31353B7D0D0A092E426C61636B7B66696C6C3A233732373237323B7D0D0A092E
        477265656E7B66696C6C3A233033394332333B7D0D0A092E5265647B66696C6C
        3A234431314331433B7D0D0A092E7374307B6F7061636974793A302E37353B7D
        0D0A092E7374317B6F7061636974793A302E353B7D0D0A3C2F7374796C653E0D
        0A3C672069643D2243616C656E646172223E0D0A093C7061746820636C617373
        3D225265642220643D224D32392C34682D33763363302C302E352D302E352C31
        2D312C31682D34632D302E352C302D312D302E352D312D315634682D38763363
        302C302E352D302E352C312D312C31483743362E352C382C362C372E352C362C
        37563448330D0A090943322E342C342C322C342E342C322C3576356832385635
        4333302C342E342C32392E362C342C32392C347A222F3E0D0A093C6720636C61
        73733D22737431223E0D0A09093C7265637420783D22382220793D2231342220
        636C6173733D22426C61636B222077696474683D223422206865696768743D22
        34222F3E0D0A09093C7265637420783D2231342220793D2232302220636C6173
        733D22426C61636B222077696474683D223422206865696768743D2234222F3E
        0D0A09093C7265637420783D22382220793D2232302220636C6173733D22426C
        61636B222077696474683D223422206865696768743D2234222F3E0D0A09093C
        7265637420783D2232302220793D2231342220636C6173733D22426C61636B22
        2077696474683D223422206865696768743D2234222F3E0D0A09093C72656374
        20783D2231342220793D2231342220636C6173733D22426C61636B2220776964
        74683D223422206865696768743D2234222F3E0D0A09093C7265637420783D22
        32302220793D2232302220636C6173733D22426C61636B222077696474683D22
        3422206865696768743D2234222F3E0D0A093C2F673E0D0A093C706174682063
        6C6173733D22426C61636B2220643D224D32382C313076313848345631304832
        76313963302C302E362C302E342C312C312C3168323663302E362C302C312D30
        2E342C312D315631304832387A222F3E0D0A093C7265637420783D2232322220
        793D22322220636C6173733D22426C61636B222077696474683D223222206865
        696768743D2234222F3E0D0A093C7265637420783D22382220793D2232222063
        6C6173733D22426C61636B222077696474683D223222206865696768743D2234
        222F3E0D0A3C2F673E0D0A3C2F7376673E0D0A}
      Style.Font.Charset = DEFAULT_CHARSET
      Style.Font.Color = clWindowText
      Style.Font.Height = -11
      Style.Font.Name = 'Tahoma'
      Style.Font.Style = []
      Style.HotTrack = False
      Style.TransparentBorder = False
      Style.IsFontAssigned = True
      TabOrder = 30
      Visible = False
      Width = 852
    end
    object lucmbbx_KontaktZusatzFamilienstand: TcxDBLookupComboBox
      Left = 10000
      Top = 10000
      DataBinding.DataField = 'ID_Familienstand'
      DataBinding.DataSource = ds_Kontakte
      ParentFont = False
      Properties.KeyFieldNames = 'ID'
      Properties.ListColumns = <
        item
          SortOrder = soAscending
          FieldName = 'Bezeichnung'
        end>
      Properties.ListSource = ds_Contact_Familienstand
      Style.Font.Charset = DEFAULT_CHARSET
      Style.Font.Color = clWindowText
      Style.Font.Height = -11
      Style.Font.Name = 'Tahoma'
      Style.Font.Style = []
      Style.HotTrack = False
      Style.TransparentBorder = False
      Style.IsFontAssigned = True
      TabOrder = 32
      Visible = False
      Width = 852
    end
    object lucmbbx_KontaktZusatzGeschlecht: TcxDBLookupComboBox
      Left = 10000
      Top = 10000
      AutoSize = False
      DataBinding.DataField = 'ID_Geschlecht'
      DataBinding.DataSource = ds_Kontakte
      ParentFont = False
      Properties.KeyFieldNames = 'ID'
      Properties.ListColumns = <
        item
          SortOrder = soAscending
          FieldName = 'Bezeichnung'
        end>
      Properties.ListOptions.AnsiSort = True
      Properties.ListSource = ds_Contact_Geschlecht
      Style.Font.Charset = DEFAULT_CHARSET
      Style.Font.Color = clWindowText
      Style.Font.Height = -11
      Style.Font.Name = 'Tahoma'
      Style.Font.Style = []
      Style.HotTrack = False
      Style.TransparentBorder = False
      Style.IsFontAssigned = True
      TabOrder = 31
      Visible = False
      Height = 19
      Width = 852
    end
    object lucmbbx_Konfession: TcxDBLookupComboBox
      Left = 10000
      Top = 10000
      AutoSize = False
      DataBinding.DataField = 'ID_Konfession'
      DataBinding.DataSource = ds_Kontakte
      ParentFont = False
      Properties.KeyFieldNames = 'ID'
      Properties.ListColumns = <
        item
          SortOrder = soAscending
          FieldName = 'Bezeichnung'
        end>
      Properties.ListSource = ds_Contact_Konfession
      Style.Font.Charset = DEFAULT_CHARSET
      Style.Font.Color = clWindowText
      Style.Font.Height = -11
      Style.Font.Name = 'Tahoma'
      Style.Font.Style = []
      Style.HotTrack = False
      Style.TransparentBorder = False
      Style.IsFontAssigned = True
      TabOrder = 35
      Visible = False
      Height = 19
      Width = 824
    end
    object lucmbbx_Staatsanghoerigkeit: TcxDBLookupComboBox
      Left = 10000
      Top = 10000
      DataBinding.DataField = 'ID_Staatsangehoerigkeit'
      DataBinding.DataSource = ds_Kontakte
      ParentFont = False
      Properties.KeyFieldNames = 'ID'
      Properties.ListColumns = <
        item
          SortOrder = soAscending
          FieldName = 'Bezeichnung'
        end>
      Properties.ListSource = ds_Contact_Staatsangehoerigkeit
      Style.Font.Charset = DEFAULT_CHARSET
      Style.Font.Color = clWindowText
      Style.Font.Height = -11
      Style.Font.Name = 'Tahoma'
      Style.Font.Style = []
      Style.HotTrack = False
      Style.TransparentBorder = False
      Style.IsFontAssigned = True
      TabOrder = 33
      Visible = False
      Width = 824
    end
    object img_Picture: TcxDBImage
      Left = 10000
      Top = 10000
      TabStop = False
      DataBinding.DataField = 'Bild'
      DataBinding.DataSource = ds_Kontakte
      Properties.FitMode = ifmProportionalStretch
      Properties.GraphicClassName = 'TdxSmartImage'
      Style.HotTrack = False
      Style.TransparentBorder = False
      TabOrder = 29
      Visible = False
      Height = 150
      Width = 150
    end
    object edt_KontaktGeschaeftlichTelefonDurchwahl: TcxDBTextEdit
      Left = 10000
      Top = 10000
      DataBinding.DataField = 'Telefon_Ges'
      DataBinding.DataSource = ds_Kontakte
      ParentFont = False
      Style.Font.Charset = DEFAULT_CHARSET
      Style.Font.Color = clWindowText
      Style.Font.Height = -11
      Style.Font.Name = 'Tahoma'
      Style.Font.Style = []
      Style.HotTrack = False
      Style.TransparentBorder = False
      Style.IsFontAssigned = True
      TabOrder = 42
      Visible = False
      Width = 1023
    end
    object btn_MapPrivate: TcxButton
      Left = 10000
      Top = 10000
      Width = 21
      Height = 21
      OptionsImage.ImageIndex = 16
      OptionsImage.Images = dm_PCM.imglst_16x16
      PaintStyle = bpsGlyph
      TabOrder = 22
      Visible = False
      OnClick = btn_MapPrivateClick
    end
    object mem_Sonstige: TcxDBMemo
      Left = 10000
      Top = 10000
      DataBinding.DataField = 'Info'
      DataBinding.DataSource = ds_Kontakte
      ParentFont = False
      Style.Font.Charset = DEFAULT_CHARSET
      Style.Font.Color = clWindowText
      Style.Font.Height = -11
      Style.Font.Name = 'Tahoma'
      Style.Font.Style = []
      Style.HotTrack = False
      Style.TransparentBorder = False
      Style.IsFontAssigned = True
      TabOrder = 37
      Visible = False
      Height = 456
      Width = 1132
    end
    object grd_Suche: TcxGrid
      Left = 24
      Top = 195
      Width = 1552
      Height = 549
      BevelInner = bvNone
      BevelOuter = bvNone
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      TabOrder = 11
      LockedStateImageOptions.Effect = lsieDark
      LookAndFeel.ScrollbarMode = sbmDefault
      object grdDBTblView_Suche: TcxGridDBTableView
        Navigator.Buttons.CustomButtons = <>
        ScrollbarAnnotations.CustomAnnotations = <>
        OnCellDblClick = grdDBTblView_SucheCellDblClick
        DataController.DataSource = ds_Kontakte
        DataController.Filter.Options = [fcoCaseInsensitive]
        DataController.Filter.PercentWildcard = '*'
        DataController.Filter.UnderscoreWildcard = '?'
        DataController.KeyFieldNames = 'ID'
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
        OptionsCustomize.ColumnsQuickCustomization = True
        OptionsData.Deleting = False
        OptionsData.Editing = False
        OptionsData.Inserting = False
        OptionsSelection.CellSelect = False
        OptionsSelection.MultiSelect = True
        OptionsView.CellEndEllipsis = True
        OptionsView.NoDataToDisplayInfoText = '<Keine Daten Vorhanden>'
        OptionsView.HeaderFilterButtonShowMode = fbmButton
        OptionsView.IndicatorWidth = 14
        object grdDBTblView_SucheID: TcxGridDBColumn
          DataBinding.FieldName = 'ID'
          Visible = False
        end
        object grdDBTblView_SucheID_Anrede: TcxGridDBColumn
          Caption = 'Anrede'
          DataBinding.FieldName = 'ID_Anrede'
          PropertiesClassName = 'TcxLookupComboBoxProperties'
          Properties.KeyFieldNames = 'ID'
          Properties.ListColumns = <
            item
              FieldName = 'Bezeichnung'
            end>
          Properties.ListSource = ds_Contact_Anrede
          FixedKind = fkLeft
        end
        object grdDBTblView_SucheVorname: TcxGridDBColumn
          DataBinding.FieldName = 'Vorname'
          FixedKind = fkLeft
          SortIndex = 0
          SortOrder = soAscending
          Width = 200
        end
        object grdDBTblView_SucheNachname: TcxGridDBColumn
          DataBinding.FieldName = 'Nachname'
          FixedKind = fkLeft
          SortIndex = 1
          SortOrder = soAscending
          Width = 200
        end
        object grdDBTblView_SucheGeburtsname: TcxGridDBColumn
          DataBinding.FieldName = 'Geburtsname'
          Visible = False
          Width = 200
        end
        object grdDBTblView_SucheGeburtsland: TcxGridDBColumn
          DataBinding.FieldName = 'Geburtsland'
          Visible = False
          Width = 200
        end
        object grdDBTblView_SucheZusatz: TcxGridDBColumn
          DataBinding.FieldName = 'Zusatz'
          Visible = False
          Width = 200
        end
        object grdDBTblView_SucheBild: TcxGridDBColumn
          DataBinding.FieldName = 'Bild'
          PropertiesClassName = 'TcxImageProperties'
          Properties.GraphicClassName = 'TdxPNGImage'
          Visible = False
        end
        object grdDBTblView_SucheStrasse_Privat: TcxGridDBColumn
          Caption = 'Strasse Privat'
          DataBinding.FieldName = 'Strasse_Privat'
          Width = 200
        end
        object grdDBTblView_SuchePLZ_Privat: TcxGridDBColumn
          Caption = 'PLZ Privat'
          DataBinding.FieldName = 'PLZ_Privat'
          Width = 90
        end
        object grdDBTblView_SucheOrt_Privat: TcxGridDBColumn
          Caption = 'Ort Privat'
          DataBinding.FieldName = 'Ort_Privat'
          Width = 200
        end
        object grdDBTblView_SucheID_Kontaktart: TcxGridDBColumn
          Caption = 'Kontaktart'
          DataBinding.FieldName = 'ID_Kontaktart'
          PropertiesClassName = 'TcxLookupComboBoxProperties'
          Properties.KeyFieldNames = 'ID'
          Properties.ListColumns = <
            item
              FieldName = 'Bezeichnung'
            end>
          Width = 120
        end
        object grdDBTblView_SucheTelefon_Privat: TcxGridDBColumn
          Caption = 'Telefon Privat'
          DataBinding.FieldName = 'Telefon_Privat'
          Width = 150
        end
        object grdDBTblView_SucheTelefon_Privat1: TcxGridDBColumn
          Caption = 'Telefon Privat 1'
          DataBinding.FieldName = 'Telefon_Privat1'
          Visible = False
          Width = 150
        end
        object grdDBTblView_SucheHandy_privat: TcxGridDBColumn
          Caption = 'Mobil Privat'
          DataBinding.FieldName = 'Handy_privat'
          Width = 150
        end
        object grdDBTblView_SucheE_Mail_Privat: TcxGridDBColumn
          Caption = 'E-Mail Privat'
          DataBinding.FieldName = 'E_Mail_Privat'
          Width = 150
        end
        object grdDBTblView_SucheE_Mail_Privat1: TcxGridDBColumn
          Caption = 'E-Mail Privat 1'
          DataBinding.FieldName = 'E_Mail_Privat1'
          Visible = False
          Width = 180
        end
        object grdDBTblView_SucheInternet_Privat: TcxGridDBColumn
          Caption = 'Internet Privat'
          DataBinding.FieldName = 'Internet_Privat'
          Visible = False
          Width = 200
        end
        object grdDBTblView_SucheGeburtsdatum: TcxGridDBColumn
          DataBinding.FieldName = 'Geburtsdatum'
          Visible = False
          Width = 100
        end
        object grdDBTblView_SucheID_Geschlecht: TcxGridDBColumn
          Caption = 'Geschlecht'
          DataBinding.FieldName = 'ID_Geschlecht'
          PropertiesClassName = 'TcxLookupComboBoxProperties'
          Properties.KeyFieldNames = 'ID'
          Properties.ListColumns = <
            item
              FieldName = 'Bezeichnung'
            end>
          Visible = False
          Width = 80
        end
        object grdDBTblView_SucheID_Familienstand: TcxGridDBColumn
          Caption = 'Familienstand'
          DataBinding.FieldName = 'ID_Familienstand'
          PropertiesClassName = 'TcxLookupComboBoxProperties'
          Properties.KeyFieldNames = 'ID'
          Properties.ListColumns = <
            item
              FieldName = 'Bezeichnung'
            end>
          Visible = False
          Width = 90
        end
        object grdDBTblView_SucheID_Staatsangehoerigkeit: TcxGridDBColumn
          Caption = 'Staatsangehoerigkeit'
          DataBinding.FieldName = 'ID_Staatsangehoerigkeit'
          PropertiesClassName = 'TcxLookupComboBoxProperties'
          Properties.KeyFieldNames = 'ID'
          Properties.ListColumns = <
            item
              FieldName = 'Bezeichnung'
            end>
          Visible = False
          Width = 120
        end
        object grdDBTblView_SucheID_Konfession: TcxGridDBColumn
          Caption = 'Konfession'
          DataBinding.FieldName = 'ID_Konfession'
          PropertiesClassName = 'TcxLookupComboBoxProperties'
          Properties.KeyFieldNames = 'ID'
          Properties.ListColumns = <
            item
              FieldName = 'Bezeichnung'
            end>
          Visible = False
          Width = 80
        end
        object grdDBTblView_SucheInfo: TcxGridDBColumn
          DataBinding.FieldName = 'Info'
          Visible = False
          Width = 100
        end
        object grdDBTblView_SucheFirma: TcxGridDBColumn
          DataBinding.FieldName = 'ID_Firma'
          PropertiesClassName = 'TcxLookupComboBoxProperties'
          Properties.Alignment.Horz = taLeftJustify
          Properties.KeyFieldNames = 'ID'
          Properties.ListColumns = <
            item
              FieldName = 'Bezeichnung'
            end>
          Properties.ListSource = ds_Firma
          Visible = False
          Width = 200
        end
        object grdDBTblView_SucheStrasse_Ges: TcxGridDBColumn
          Caption = 'Strasse Gesch'#228'ftlich'
          DataBinding.FieldName = 'Strasse_Ges'
          Visible = False
          Width = 200
        end
        object grdDBTblView_SuchePLZ_Ges: TcxGridDBColumn
          Caption = 'PLZ Gesch'#228'ftlich'
          DataBinding.FieldName = 'PLZ_Ges'
          Visible = False
          Width = 90
        end
        object grdDBTblView_SucheOrt_Ges: TcxGridDBColumn
          Caption = 'Ort Gesch'#228'ftlich'
          DataBinding.FieldName = 'Ort_Ges'
          Visible = False
          Width = 200
        end
        object grdDBTblView_SucheAbteilung_Ges: TcxGridDBColumn
          Caption = 'Abteilung'
          DataBinding.FieldName = 'ID_Abteilung'
          PropertiesClassName = 'TcxLookupComboBoxProperties'
          Properties.Alignment.Horz = taLeftJustify
          Properties.KeyFieldNames = 'ID'
          Properties.ListColumns = <
            item
              FieldName = 'Bezeichnung'
            end>
          Properties.ListSource = ds_abteilung
          Visible = False
          Width = 200
        end
        object grdDBTblView_SucheFunktion_Ges: TcxGridDBColumn
          Caption = 'Funktion'
          DataBinding.FieldName = 'Funktion_Ges'
          Visible = False
          Width = 200
        end
        object grdDBTblView_SucheZentrale_Ges: TcxGridDBColumn
          Caption = 'Zentrale'
          DataBinding.FieldName = 'Zentrale_Ges'
          Visible = False
          Width = 200
        end
        object grdDBTblView_SucheTelefon_Ges: TcxGridDBColumn
          Caption = 'Durchwahl'
          DataBinding.FieldName = 'Telefon_Ges'
          Visible = False
          Width = 200
        end
        object grdDBTblView_SucheHandy_Ges: TcxGridDBColumn
          Caption = 'Handy Gesch'#228'ftlich'
          DataBinding.FieldName = 'Handy_Ges'
          Visible = False
          Width = 200
        end
        object grdDBTblView_SucheE_Mail_Ges: TcxGridDBColumn
          Caption = 'E-Mail Gesch'#228'ftlich'
          DataBinding.FieldName = 'E_Mail_Ges'
          Visible = False
          Width = 200
        end
        object grdDBTblView_SucheInternet_Ges: TcxGridDBColumn
          Caption = 'Internet Gesch'#228'ftlich'
          DataBinding.FieldName = 'Internet_Ges'
          Visible = False
          Width = 200
        end
        object grdDBTblView_SucheFacebook: TcxGridDBColumn
          DataBinding.FieldName = 'Facebook'
          Visible = False
          Width = 200
        end
        object grdDBTblView_SucheSkype: TcxGridDBColumn
          DataBinding.FieldName = 'Skype'
          Visible = False
          Width = 200
        end
        object grdDBTblView_SucheLive_Messanger: TcxGridDBColumn
          Caption = 'Microsoft Teams'
          DataBinding.FieldName = 'Live_Messanger'
          Visible = False
          Width = 200
        end
      end
      object grdLvl_Suche: TcxGridLevel
        GridView = grdDBTblView_Suche
      end
    end
    object btn_ClearFilter: TcxButton
      Left = 168
      Top = 161
      Width = 137
      Height = 27
      Caption = 'Filter l'#246'schen'
      OptionsImage.ImageIndex = 30
      OptionsImage.Images = dm_PCM.imglst_16x16
      TabOrder = 10
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      OnClick = btn_ClearFilterClick
    end
    object btn_kontaktsuchen: TcxButton
      Left = 24
      Top = 161
      Width = 137
      Height = 27
      Caption = 'Mitarbeiter suchen'
      OptionsImage.ImageIndex = 14
      OptionsImage.Images = dm_PCM.imglst_16x16
      TabOrder = 9
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      OnClick = btn_kontaktsuchenClick
    end
    object edt_KontakteSonstigesTeams: TcxDBTextEdit
      Left = 10000
      Top = 10000
      DataBinding.DataField = 'Live_Messanger'
      DataBinding.DataSource = ds_Kontakte
      ParentFont = False
      Style.Font.Charset = DEFAULT_CHARSET
      Style.Font.Color = clWindowText
      Style.Font.Height = -11
      Style.Font.Name = 'Tahoma'
      Style.Font.Style = []
      Style.HotTrack = False
      Style.TransparentBorder = False
      Style.IsFontAssigned = True
      TabOrder = 44
      Visible = False
      Width = 1023
    end
    object edt_KontaktGeschaeftlichFunktion: TcxDBTextEdit
      Left = 10000
      Top = 10000
      DataBinding.DataField = 'Funktion_Ges'
      DataBinding.DataSource = ds_Kontakte
      ParentFont = False
      Style.Font.Charset = DEFAULT_CHARSET
      Style.Font.Color = clWindowText
      Style.Font.Height = -11
      Style.Font.Name = 'Tahoma'
      Style.Font.Style = []
      Style.HotTrack = False
      Style.TransparentBorder = False
      Style.IsFontAssigned = True
      TabOrder = 41
      Visible = False
      OnExit = btn_SaveClick
      Width = 1023
    end
    object btn_EditStaatsangehoerigkeit: TcxButton
      Left = 10000
      Top = 10000
      Width = 21
      Height = 21
      Caption = 'btn_EditStaatsangehoerigkeit'
      OptionsImage.ImageIndex = 28
      OptionsImage.Images = dm_PCM.imglst_16x16
      PaintStyle = bpsGlyph
      TabOrder = 34
      Visible = False
      OnClick = btn_EditStaatsangehoerigkeitClick
    end
    object btn_EditKonfession: TcxButton
      Left = 10000
      Top = 10000
      Width = 21
      Height = 21
      Caption = 'cxButton3'
      OptionsImage.ImageIndex = 28
      OptionsImage.Images = dm_PCM.imglst_16x16
      PaintStyle = bpsGlyph
      TabOrder = 36
      Visible = False
      OnClick = btn_EditKonfessionClick
    end
    object cxCheckComboBox1: TcxCheckComboBox
      Left = 809
      Top = 63
      Properties.EmptySelectionText = 'Alle Firmen'
      Properties.Items = <>
      Style.HotTrack = False
      Style.TransparentBorder = False
      TabOrder = 6
      Width = 334
    end
    object cxDBLookupComboBox1: TcxDBLookupComboBox
      Left = 10000
      Top = 10000
      DataBinding.DataField = 'ID_Abteilung'
      DataBinding.DataSource = ds_Kontakte
      Properties.KeyFieldNames = 'ID'
      Properties.ListColumns = <
        item
          FieldName = 'Bezeichnung'
        end>
      Properties.ListSource = ds_abteilung
      Style.HotTrack = False
      Style.TransparentBorder = False
      TabOrder = 40
      Visible = False
      Width = 1023
    end
    object cxDBLookupComboBox2: TcxDBLookupComboBox
      Left = 10000
      Top = 10000
      DataBinding.DataField = 'ID_Firma'
      DataBinding.DataSource = ds_Kontakte
      Properties.KeyFieldNames = 'ID'
      Properties.ListColumns = <
        item
          SortOrder = soAscending
          FieldName = 'Bezeichnung'
        end
        item
          FieldName = 'Typ'
        end>
      Properties.ListSource = ds_Firma
      Style.HotTrack = False
      Style.TransparentBorder = False
      TabOrder = 38
      Visible = False
      Width = 995
    end
    object cxButton1: TcxButton
      Left = 10000
      Top = 10000
      Width = 21
      Height = 21
      OptionsImage.ImageIndex = 16
      OptionsImage.Images = dm_PCM.imglst_16x16
      PaintStyle = bpsGlyph
      TabOrder = 39
      Visible = False
      OnClick = btn_MapBusinessClick
    end
    object cxCheckComboBox2: TcxCheckComboBox
      Left = 809
      Top = 93
      Properties.EmptySelectionText = 'Alle Abteilungen'
      Properties.Items = <>
      Style.HotTrack = False
      Style.TransparentBorder = False
      TabOrder = 7
      Width = 334
    end
    object lucmbbx_Wochenplan: TcxDBLookupComboBox
      Left = 10000
      Top = 10000
      DataBinding.DataField = 'ID_Wochenplan'
      DataBinding.DataSource = ds_ZP
      Properties.Alignment.Horz = taLeftJustify
      Properties.KeyFieldNames = 'ID'
      Properties.ListColumns = <
        item
          FieldName = 'Beschreibung'
        end>
      Properties.ListSource = ds_WP
      Style.HotTrack = False
      Style.TransparentBorder = False
      TabOrder = 50
      Visible = False
      Width = 393
    end
    object grd_ZP: TcxGrid
      Left = 10000
      Top = 10000
      Width = 1112
      Height = 443
      BorderStyle = cxcbsNone
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      TabOrder = 48
      TabStop = False
      Visible = False
      LockedStateImageOptions.Effect = lsieDark
      object grdDBTblView_ZP: TcxGridDBTableView
        Navigator.Buttons.CustomButtons = <>
        FilterBox.CustomizeDialog = False
        ScrollbarAnnotations.CustomAnnotations = <>
        DataController.DataSource = ds_ZP
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
        object grdDBTblView_ZPID: TcxGridDBColumn
          DataBinding.FieldName = 'ID'
          DataBinding.IsNullValueType = True
          Visible = False
        end
        object grdDBTblView_ZPID_Benutzer: TcxGridDBColumn
          DataBinding.FieldName = 'ID_Benutzer'
          DataBinding.IsNullValueType = True
          Visible = False
          VisibleForCustomization = False
        end
        object grdDBTblView_ZPID_Wochenplan: TcxGridDBColumn
          Caption = 'Wochenplan'
          DataBinding.FieldName = 'ID_Wochenplan'
          DataBinding.IsNullValueType = True
          PropertiesClassName = 'TcxLookupComboBoxProperties'
          Properties.KeyFieldNames = 'ID'
          Properties.ListColumns = <
            item
              FieldName = 'Beschreibung'
            end>
          Properties.ListSource = ds_WP
          Width = 300
        end
        object grdDBTblView_ZPVon: TcxGridDBColumn
          DataBinding.FieldName = 'Von'
          DataBinding.IsNullValueType = True
          SortIndex = 0
          SortOrder = soAscending
          Width = 100
        end
        object grdDBTblView_ZPBis: TcxGridDBColumn
          DataBinding.FieldName = 'Bis'
          DataBinding.IsNullValueType = True
          Width = 100
        end
      end
      object grdlvl_ZP: TcxGridLevel
        GridView = grdDBTblView_ZP
      end
    end
    object dxBarDockControl1: TdxBarDockControl
      Left = 10000
      Top = 10000
      Width = 1112
      Height = 58
      Align = dalNone
      BarManager = brmgr_Contacts
      Visible = False
    end
    object edt_Email1: TcxDBButtonEdit
      Left = 10000
      Top = 10000
      DataBinding.DataField = 'E_Mail_Privat'
      DataBinding.DataSource = ds_Kontakte
      Properties.Buttons = <
        item
          Default = True
          ImageIndex = 29
          Kind = bkGlyph
        end>
      Properties.Images = dm_PCM.imglst_16x16
      Properties.OnButtonClick = btn_Mail1PrivateClick
      Style.HotTrack = False
      Style.TransparentBorder = False
      TabOrder = 26
      Visible = False
      Width = 289
    end
    object edt_Email2: TcxDBButtonEdit
      Left = 10000
      Top = 10000
      DataBinding.DataField = 'E_Mail_Privat1'
      DataBinding.DataSource = ds_Kontakte
      Properties.Buttons = <
        item
          Default = True
          ImageIndex = 29
          Kind = bkGlyph
        end>
      Properties.Images = dm_PCM.imglst_16x16
      Properties.OnButtonClick = btn_Mail2PrivateClick
      Style.HotTrack = False
      Style.TransparentBorder = False
      TabOrder = 27
      Visible = False
      Width = 289
    end
    object edt_KontaktInternet: TcxDBButtonEdit
      Left = 10000
      Top = 10000
      DataBinding.DataField = 'Internet_Privat'
      DataBinding.DataSource = ds_Kontakte
      Properties.Buttons = <
        item
          Default = True
          ImageIndex = 31
          Kind = bkGlyph
        end>
      Properties.Images = dm_PCM.imglst_16x16
      Properties.OnButtonClick = btn_WebPrivateClick
      Style.HotTrack = False
      Style.TransparentBorder = False
      TabOrder = 28
      Visible = False
      Width = 289
    end
    object edt_KontaktSucheNachname: TcxTextEdit
      Left = 101
      Top = 91
      AutoSize = False
      ParentFont = False
      Style.Font.Charset = DEFAULT_CHARSET
      Style.Font.Color = clWindowText
      Style.Font.Height = -11
      Style.Font.Name = 'Tahoma'
      Style.Font.Style = []
      Style.HotTrack = False
      Style.TransparentBorder = False
      Style.IsFontAssigned = True
      TabOrder = 1
      OnKeyDown = SearchKeyDown
      Height = 19
      Width = 234
    end
    object edt_KontaktGeschaeftlichEMail: TcxDBButtonEdit
      Left = 10000
      Top = 10000
      DataBinding.DataField = 'E_Mail_Ges'
      DataBinding.DataSource = ds_Kontakte
      Properties.Buttons = <
        item
          Default = True
          ImageIndex = 29
          Kind = bkGlyph
        end>
      Properties.Images = dm_PCM.imglst_16x16
      Properties.OnButtonClick = btn_MailBusinessClick
      Style.HotTrack = False
      Style.TransparentBorder = False
      TabOrder = 43
      Visible = False
      Width = 1023
    end
    object dedt_Von: TcxDBDateEdit
      Left = 10000
      Top = 10000
      DataBinding.DataField = 'Von'
      DataBinding.DataSource = ds_ZP
      Properties.ButtonGlyph.SourceDPI = 96
      Properties.ButtonGlyph.SourceHeight = 16
      Properties.ButtonGlyph.SourceWidth = 16
      Properties.ButtonGlyph.Data = {
        3C3F786D6C2076657273696F6E3D22312E302220656E636F64696E673D227574
        662D38223F3E0D0A3C212D2D2047656E657261746F723A2041646F626520496C
        6C7573747261746F722032312E312E302C20535647204578706F727420506C75
        672D496E202E205356472056657273696F6E3A20362E3030204275696C642030
        2920202D2D3E0D0A3C7376672076657273696F6E3D22312E31222069643D224C
        617965725F312220786D6C6E733D22687474703A2F2F7777772E77332E6F7267
        2F323030302F7376672220786D6C6E733A786C696E6B3D22687474703A2F2F77
        77772E77332E6F72672F313939392F786C696E6B2220783D223070782220793D
        22307078220D0A092076696577426F783D223020302033322033322220737479
        6C653D22656E61626C652D6261636B67726F756E643A6E657720302030203332
        2033323B2220786D6C3A73706163653D227072657365727665223E0D0A3C7374
        796C6520747970653D22746578742F637373223E0D0A092E426C75657B66696C
        6C3A233131373744373B7D0D0A092E59656C6C6F777B66696C6C3A2346464231
        31353B7D0D0A092E426C61636B7B66696C6C3A233732373237323B7D0D0A092E
        477265656E7B66696C6C3A233033394332333B7D0D0A092E5265647B66696C6C
        3A234431314331433B7D0D0A092E7374307B6F7061636974793A302E37353B7D
        0D0A092E7374317B6F7061636974793A302E353B7D0D0A3C2F7374796C653E0D
        0A3C672069643D2243616C656E646172223E0D0A093C7061746820636C617373
        3D225265642220643D224D32392C34682D33763363302C302E352D302E352C31
        2D312C31682D34632D302E352C302D312D302E352D312D315634682D38763363
        302C302E352D302E352C312D312C31483743362E352C382C362C372E352C362C
        37563448330D0A090943322E342C342C322C342E342C322C3576356832385635
        4333302C342E342C32392E362C342C32392C347A222F3E0D0A093C6720636C61
        73733D22737431223E0D0A09093C7265637420783D22382220793D2231342220
        636C6173733D22426C61636B222077696474683D223422206865696768743D22
        34222F3E0D0A09093C7265637420783D2231342220793D2232302220636C6173
        733D22426C61636B222077696474683D223422206865696768743D2234222F3E
        0D0A09093C7265637420783D22382220793D2232302220636C6173733D22426C
        61636B222077696474683D223422206865696768743D2234222F3E0D0A09093C
        7265637420783D2232302220793D2231342220636C6173733D22426C61636B22
        2077696474683D223422206865696768743D2234222F3E0D0A09093C72656374
        20783D2231342220793D2231342220636C6173733D22426C61636B2220776964
        74683D223422206865696768743D2234222F3E0D0A09093C7265637420783D22
        32302220793D2232302220636C6173733D22426C61636B222077696474683D22
        3422206865696768743D2234222F3E0D0A093C2F673E0D0A093C706174682063
        6C6173733D22426C61636B2220643D224D32382C313076313848345631304832
        76313963302C302E362C302E342C312C312C3168323663302E362C302C312D30
        2E342C312D315631304832387A222F3E0D0A093C7265637420783D2232322220
        793D22322220636C6173733D22426C61636B222077696474683D223222206865
        696768743D2234222F3E0D0A093C7265637420783D22382220793D2232222063
        6C6173733D22426C61636B222077696474683D223222206865696768743D2234
        222F3E0D0A3C2F673E0D0A3C2F7376673E0D0A}
      Properties.DateButtons = [btnClear, btnNow, btnToday]
      Style.HotTrack = False
      Style.TransparentBorder = False
      TabOrder = 51
      Visible = False
      Width = 291
    end
    object dedt_Bis: TcxDBDateEdit
      Left = 10000
      Top = 10000
      DataBinding.DataField = 'Bis'
      DataBinding.DataSource = ds_ZP
      Properties.ButtonGlyph.SourceDPI = 96
      Properties.ButtonGlyph.SourceHeight = 16
      Properties.ButtonGlyph.SourceWidth = 16
      Properties.ButtonGlyph.Data = {
        3C3F786D6C2076657273696F6E3D22312E302220656E636F64696E673D227574
        662D38223F3E0D0A3C212D2D2047656E657261746F723A2041646F626520496C
        6C7573747261746F722032312E312E302C20535647204578706F727420506C75
        672D496E202E205356472056657273696F6E3A20362E3030204275696C642030
        2920202D2D3E0D0A3C7376672076657273696F6E3D22312E31222069643D224C
        617965725F312220786D6C6E733D22687474703A2F2F7777772E77332E6F7267
        2F323030302F7376672220786D6C6E733A786C696E6B3D22687474703A2F2F77
        77772E77332E6F72672F313939392F786C696E6B2220783D223070782220793D
        22307078220D0A092076696577426F783D223020302033322033322220737479
        6C653D22656E61626C652D6261636B67726F756E643A6E657720302030203332
        2033323B2220786D6C3A73706163653D227072657365727665223E0D0A3C7374
        796C6520747970653D22746578742F637373223E0D0A092E426C75657B66696C
        6C3A233131373744373B7D0D0A092E59656C6C6F777B66696C6C3A2346464231
        31353B7D0D0A092E426C61636B7B66696C6C3A233732373237323B7D0D0A092E
        477265656E7B66696C6C3A233033394332333B7D0D0A092E5265647B66696C6C
        3A234431314331433B7D0D0A092E7374307B6F7061636974793A302E37353B7D
        0D0A092E7374317B6F7061636974793A302E353B7D0D0A3C2F7374796C653E0D
        0A3C672069643D2243616C656E646172223E0D0A093C7061746820636C617373
        3D225265642220643D224D32392C34682D33763363302C302E352D302E352C31
        2D312C31682D34632D302E352C302D312D302E352D312D315634682D38763363
        302C302E352D302E352C312D312C31483743362E352C382C362C372E352C362C
        37563448330D0A090943322E342C342C322C342E342C322C3576356832385635
        4333302C342E342C32392E362C342C32392C347A222F3E0D0A093C6720636C61
        73733D22737431223E0D0A09093C7265637420783D22382220793D2231342220
        636C6173733D22426C61636B222077696474683D223422206865696768743D22
        34222F3E0D0A09093C7265637420783D2231342220793D2232302220636C6173
        733D22426C61636B222077696474683D223422206865696768743D2234222F3E
        0D0A09093C7265637420783D22382220793D2232302220636C6173733D22426C
        61636B222077696474683D223422206865696768743D2234222F3E0D0A09093C
        7265637420783D2232302220793D2231342220636C6173733D22426C61636B22
        2077696474683D223422206865696768743D2234222F3E0D0A09093C72656374
        20783D2231342220793D2231342220636C6173733D22426C61636B2220776964
        74683D223422206865696768743D2234222F3E0D0A09093C7265637420783D22
        32302220793D2232302220636C6173733D22426C61636B222077696474683D22
        3422206865696768743D2234222F3E0D0A093C2F673E0D0A093C706174682063
        6C6173733D22426C61636B2220643D224D32382C313076313848345631304832
        76313963302C302E362C302E342C312C312C3168323663302E362C302C312D30
        2E342C312D315631304832387A222F3E0D0A093C7265637420783D2232322220
        793D22322220636C6173733D22426C61636B222077696474683D223222206865
        696768743D2234222F3E0D0A093C7265637420783D22382220793D2232222063
        6C6173733D22426C61636B222077696474683D223222206865696768743D2234
        222F3E0D0A3C2F673E0D0A3C2F7376673E0D0A}
      Style.HotTrack = False
      Style.TransparentBorder = False
      TabOrder = 52
      Visible = False
      Width = 284
    end
    object cxDBCheckBox1: TcxDBCheckBox
      Left = 10000
      Top = 10000
      Caption = 'App - Applikation'
      DataBinding.DataField = 'Zugriff_App'
      DataBinding.DataSource = ds_Kontakte
      Style.HotTrack = False
      Style.TransparentBorder = False
      TabOrder = 62
      Transparent = True
      Visible = False
    end
    object cxDBCheckBox2: TcxDBCheckBox
      Left = 10000
      Top = 10000
      Caption = 'Web - Applikation'
      DataBinding.DataField = 'Zurgiff_Web'
      DataBinding.DataSource = ds_Kontakte
      Style.HotTrack = False
      Style.TransparentBorder = False
      TabOrder = 63
      Transparent = True
      Visible = False
    end
    object cxDBTextEdit1: TcxDBTextEdit
      Left = 10000
      Top = 10000
      DataBinding.DataField = 'Benutzer'
      DataBinding.DataSource = ds_Kontakte
      Style.HotTrack = False
      Style.TransparentBorder = False
      TabOrder = 60
      Visible = False
      Width = 1076
    end
    object cxDBTextEdit2: TcxDBTextEdit
      Left = 10000
      Top = 10000
      DataBinding.DataField = 'Passwort'
      DataBinding.DataSource = ds_Kontakte
      Properties.EchoMode = eemPassword
      Properties.ShowPasswordRevealButton = True
      Style.HotTrack = False
      Style.TransparentBorder = False
      TabOrder = 61
      Visible = False
      Width = 1076
    end
    object lagrp_Personal: TdxLayoutGroup
      AlignHorz = ahClient
      AlignVert = avClient
      Hidden = True
      ShowBorder = False
      Index = -1
    end
    object lagrp_MitarbeiterInfo: TdxLayoutGroup
      Parent = lagrp_Mitarbeiter
      AlignHorz = ahLeft
      AlignVert = avClient
      CaptionOptions.Text = 'Kontaktdaten '
      ItemIndex = 13
      ShowBorder = False
      Index = 0
    end
    object lagrp_MitarbeiterInfoDetails: TdxLayoutGroup
      Parent = lagrp_Mitarbeiter
      AlignHorz = ahClient
      AlignVert = avClient
      CaptionOptions.Text = 'Zus'#228'tzlich Informationen'
      LayoutDirection = ldTabbed
      ShowBorder = False
      Index = 1
    end
    object lagrp_Zusatz: TdxLayoutGroup
      Parent = lagrp_MitarbeiterInfoDetails
      AlignHorz = ahClient
      AlignVert = avClient
      CaptionOptions.Text = 'Zusatz'
      Index = 0
    end
    object lagrp_Sonstige: TdxLayoutGroup
      Parent = lagrp_MitarbeiterInfoDetails
      CaptionOptions.Text = 'Urlaub'
      ItemIndex = 2
      Index = 3
    end
    object lagrp_Business: TdxLayoutGroup
      Parent = lagrp_MitarbeiterInfoDetails
      CaptionOptions.Text = 'Gesch'#228'ftlich'
      ItemIndex = 5
      Index = 1
    end
    object itm_Anrede: TdxLayoutItem
      Parent = lagrp_MitarbeiterInfo
      AlignHorz = ahLeft
      AlignVert = avTop
      CaptionOptions.Text = 'Anrede:'
      CaptionOptions.Width = 75
      Control = cmbbx_Anrede
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 289
      ControlOptions.ShowBorder = False
      Index = 1
    end
    object itm_Vorname: TdxLayoutItem
      Parent = lagrp_MitarbeiterInfo
      AlignHorz = ahLeft
      AlignVert = avTop
      CaptionOptions.Text = 'Vorname:'
      CaptionOptions.Width = 75
      Control = edt_KontaktName
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 289
      ControlOptions.ShowBorder = False
      Index = 2
    end
    object itm_Geburtsname: TdxLayoutItem
      Parent = lagrp_MitarbeiterInfo
      AlignHorz = ahLeft
      AlignVert = avTop
      CaptionOptions.Text = 'Geburtsname:'
      CaptionOptions.Width = 75
      Control = edt_KontaktGeburtsname
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 289
      ControlOptions.ShowBorder = False
      Index = 4
    end
    object itm_Nachname: TdxLayoutItem
      Parent = lagrp_MitarbeiterInfo
      AlignHorz = ahLeft
      AlignVert = avTop
      CaptionOptions.Text = 'Nachname:'
      CaptionOptions.Width = 75
      Control = edt_KontaktNachname
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 289
      ControlOptions.ShowBorder = False
      Index = 3
    end
    object itm_Geburtsland: TdxLayoutItem
      Parent = lagrp_MitarbeiterInfo
      AlignHorz = ahLeft
      AlignVert = avTop
      CaptionOptions.Text = 'Geburtsland:'
      Control = edt_Geburtsland
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 289
      ControlOptions.ShowBorder = False
      Index = 5
    end
    object itm_HandyPrivat: TdxLayoutItem
      Parent = lagrp_MitarbeiterInfo
      AlignHorz = ahLeft
      AlignVert = avTop
      CaptionOptions.Text = 'Handy:'
      Control = edt_KontaktHandy
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 289
      ControlOptions.ShowBorder = False
      Index = 11
    end
    object itm_Telefon2: TdxLayoutItem
      Parent = lagrp_MitarbeiterInfo
      AlignHorz = ahLeft
      AlignVert = avTop
      CaptionOptions.Text = 'Telefon 2:'
      Control = edt_KontaktTelefon2
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 289
      ControlOptions.ShowBorder = False
      Index = 10
    end
    object itm_Telefon1: TdxLayoutItem
      Parent = lagrp_MitarbeiterInfo
      AlignHorz = ahLeft
      AlignVert = avTop
      CaptionOptions.Text = 'Telefon 1:'
      Control = edt_KontaktTelefon1
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 289
      ControlOptions.ShowBorder = False
      Index = 9
    end
    object itm_MapPrivat: TdxLayoutItem
      Parent = lagrp_PLZOrtMaps
      AlignHorz = ahLeft
      AlignVert = avTop
      CaptionOptions.Text = 'New Item'
      CaptionOptions.Visible = False
      Control = btn_MapPrivate
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 21
      ControlOptions.ShowBorder = False
      Index = 2
    end
    object itm_OrtPrivat: TdxLayoutItem
      Parent = lagrp_PLZOrtMaps
      AlignHorz = ahLeft
      AlignVert = avClient
      Control = edt_KontaktOrt
      ControlOptions.OriginalHeight = 19
      ControlOptions.OriginalWidth = 185
      ControlOptions.ShowBorder = False
      Index = 1
    end
    object itm_PLZPrivat: TdxLayoutItem
      Parent = lagrp_PLZOrtMaps
      AlignHorz = ahLeft
      AlignVert = avClient
      CaptionOptions.Text = 'PLZ- Ort:'
      CaptionOptions.Width = 75
      Control = edt_KontaktPLZ
      ControlOptions.OriginalHeight = 19
      ControlOptions.OriginalWidth = 69
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object itm_Zusatz: TdxLayoutItem
      Parent = lagrp_MitarbeiterInfo
      AlignHorz = ahLeft
      AlignVert = avTop
      CaptionOptions.Text = 'Zusatz:'
      Control = edt_KontaktZusatz
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 289
      ControlOptions.ShowBorder = False
      Index = 6
    end
    object itm_StrassePrivat: TdxLayoutItem
      Parent = lagrp_MitarbeiterInfo
      AlignHorz = ahLeft
      AlignVert = avTop
      CaptionOptions.Text = 'Stra'#223'e:'
      Control = edt_KontaktStrasse
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 289
      ControlOptions.ShowBorder = False
      Index = 7
    end
    object itm_WebPrivatText: TdxLayoutItem
      Parent = lagrp_MitarbeiterInfo
      AlignHorz = ahLeft
      AlignVert = avTop
      CaptionOptions.Text = 'Internet:'
      Control = edt_KontaktInternet
      ControlOptions.OriginalHeight = 24
      ControlOptions.OriginalWidth = 289
      ControlOptions.ShowBorder = False
      Index = 14
    end
    object itm_Mail1PrivatText: TdxLayoutItem
      Parent = lagrp_MitarbeiterInfo
      AlignHorz = ahLeft
      AlignVert = avTop
      CaptionOptions.Text = 'E-Mail 1:'
      Control = edt_Email1
      ControlOptions.OriginalHeight = 24
      ControlOptions.OriginalWidth = 289
      ControlOptions.ShowBorder = False
      Index = 12
    end
    object itm_Mail2PrivatText: TdxLayoutItem
      Parent = lagrp_MitarbeiterInfo
      AlignHorz = ahLeft
      AlignVert = avTop
      CaptionOptions.Text = 'E-Mail 2:'
      Control = edt_Email2
      ControlOptions.OriginalHeight = 24
      ControlOptions.OriginalWidth = 289
      ControlOptions.ShowBorder = False
      Index = 13
    end
    object itm_Geburtsdatum: TdxLayoutItem
      Parent = lagrp_ZusatzDetailsWithoutiMAGE
      AlignHorz = ahClient
      AlignVert = avTop
      Offsets.Left = 16
      CaptionOptions.Text = 'Geburtsdatum:'
      Control = dtEdt_KontaktZusatzGeburtsdatum
      ControlOptions.OriginalHeight = 24
      ControlOptions.OriginalWidth = 360
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object itm_Familienstand: TdxLayoutItem
      Parent = lagrp_ZusatzDetailsWithoutiMAGE
      AlignHorz = ahClient
      AlignVert = avTop
      Offsets.Left = 16
      CaptionOptions.Text = 'Familienstand:'
      Control = lucmbbx_KontaktZusatzFamilienstand
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 360
      ControlOptions.ShowBorder = False
      Index = 2
    end
    object itm_Geschlecht: TdxLayoutItem
      Parent = lagrp_ZusatzDetailsWithoutiMAGE
      AlignHorz = ahClient
      AlignVert = avTop
      Offsets.Left = 16
      CaptionOptions.Text = 'Geschlecht:'
      Control = lucmbbx_KontaktZusatzGeschlecht
      ControlOptions.OriginalHeight = 19
      ControlOptions.OriginalWidth = 360
      ControlOptions.ShowBorder = False
      Index = 1
    end
    object itm_Konfession: TdxLayoutItem
      Parent = lagrp_Konfession
      AlignHorz = ahClient
      AlignVert = avTop
      Offsets.Left = 16
      CaptionOptions.Text = 'Konfession:'
      Control = lucmbbx_Konfession
      ControlOptions.OriginalHeight = 19
      ControlOptions.OriginalWidth = 360
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object itm_Staatsangehoerigkeit: TdxLayoutItem
      Parent = lagrp_Staatsangehoerigkeit
      AlignHorz = ahClient
      AlignVert = avTop
      Offsets.Left = 16
      CaptionOptions.Text = 'Staatsangh'#246'rigkeit:'
      Control = lucmbbx_Staatsanghoerigkeit
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 360
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object itm_Picture: TdxLayoutItem
      Parent = lagrp_ZusatzDetails
      AlignHorz = ahLeft
      AlignVert = avTop
      Control = img_Picture
      ControlOptions.OriginalHeight = 150
      ControlOptions.OriginalWidth = 150
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object itm_ZusatzSeperator: TdxLayoutSeparatorItem
      Parent = lagrp_Zusatz
      AlignHorz = ahClient
      CaptionOptions.Text = 'Separator'
      Index = 1
    end
    object itm_Sonstiges: TdxLayoutItem
      Parent = lagrp_Zusatz
      AlignHorz = ahClient
      AlignVert = avClient
      Control = mem_Sonstige
      ControlOptions.OriginalHeight = 97
      ControlOptions.OriginalWidth = 1120
      ControlOptions.ShowBorder = False
      Index = 3
    end
    object lbl_Sonstiges: TdxLayoutLabeledItem
      Parent = lagrp_Zusatz
      AlignHorz = ahClient
      CaptionOptions.Text = 'Sonstige Informationen'
      Index = 2
    end
    object lagrp_Zeiterfassung: TdxLayoutGroup
      Parent = lagrp_MitarbeiterInfoDetails
      CaptionOptions.Text = 'Zeiterfassung'
      ItemIndex = 3
      Index = 2
    end
    object itm_StaatsangehoerigkeitBtn: TdxLayoutItem
      Parent = lagrp_Staatsangehoerigkeit
      AlignHorz = ahLeft
      AlignVert = avClient
      CaptionOptions.Text = 'New Item'
      CaptionOptions.Visible = False
      Control = btn_EditStaatsangehoerigkeit
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 21
      ControlOptions.ShowBorder = False
      Index = 1
    end
    object itm_KonfessionBtn: TdxLayoutItem
      Parent = lagrp_Konfession
      AlignHorz = ahLeft
      AlignVert = avClient
      CaptionOptions.Text = 'New Item'
      CaptionOptions.Visible = False
      Control = btn_EditKonfession
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 21
      ControlOptions.ShowBorder = False
      Index = 1
    end
    object lagrp_PersonalTab: TdxLayoutGroup
      Parent = lagrp_Personal
      AlignHorz = ahClient
      AlignVert = avClient
      CaptionOptions.Text = 'New Group'
      SizeOptions.Height = 800
      LayoutDirection = ldTabbed
      Locked = True
      ShowBorder = False
      TabbedOptions.HotTrack = True
      OnTabChanging = lagrp_PersonalTabTabChanging
      Index = 0
    end
    object lagrp_Suche: TdxLayoutGroup
      Parent = lagrp_PersonalTab
      CaptionOptions.ImageIndex = 14
      CaptionOptions.Text = 'Suche'
      ItemIndex = 1
      TabbedOptions.HotTrack = True
      TabbedOptions.MultiLineTabCaptions = True
      TabbedOptions.ShowFrame = True
      Index = 0
    end
    object lagrp_Mitarbeiter: TdxLayoutGroup
      Parent = lagrp_PersonalTab
      AlignHorz = ahClient
      AlignVert = avClient
      CaptionOptions.ImageIndex = 17
      CaptionOptions.Text = 'Mitarbeiter'
      ItemIndex = 1
      LayoutDirection = ldHorizontal
      Index = 1
    end
    object lagrp_SucheFilter: TdxLayoutGroup
      Parent = lagrp_Suche
      AlignHorz = ahClient
      AlignVert = avTop
      CaptionOptions.Text = 'Filterkriterien'
      LayoutDirection = ldHorizontal
      Index = 0
    end
    object itm_SucheErgebnis: TdxLayoutItem
      Parent = lagrp_Suche
      AlignHorz = ahClient
      AlignVert = avClient
      SizeOptions.Height = 570
      Control = grd_Suche
      ControlOptions.OriginalHeight = 200
      ControlOptions.OriginalWidth = 200
      ControlOptions.ShowBorder = False
      Index = 2
    end
    object itm_Funktion: TdxLayoutItem
      Parent = lagrp_Business
      AlignHorz = ahClient
      CaptionOptions.Text = 'Funktion:'
      Control = edt_KontaktGeschaeftlichFunktion
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 535
      ControlOptions.ShowBorder = False
      Index = 2
    end
    object itm_SucheFilterLoeschen: TdxLayoutItem
      Parent = lagrp_SucheFilterButtons
      AlignHorz = ahLeft
      AlignVert = avClient
      CaptionOptions.Text = 'btn_kontaktDeletefilter'
      CaptionOptions.Visible = False
      Control = btn_ClearFilter
      ControlOptions.OriginalHeight = 27
      ControlOptions.OriginalWidth = 137
      ControlOptions.ShowBorder = False
      Index = 1
    end
    object itm_SucheFiltersetzen: TdxLayoutItem
      Parent = lagrp_SucheFilterButtons
      AlignHorz = ahLeft
      AlignVert = avTop
      CaptionOptions.Text = 'btn_kontaktsuchen'
      CaptionOptions.Visible = False
      Control = btn_kontaktsuchen
      ControlOptions.OriginalHeight = 27
      ControlOptions.OriginalWidth = 137
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object itm_Abteilung: TdxLayoutItem
      Parent = lagrp_Business
      AlignHorz = ahClient
      CaptionOptions.Text = 'Abteilung:'
      Control = cxDBLookupComboBox1
      ControlOptions.OriginalHeight = 23
      ControlOptions.OriginalWidth = 145
      ControlOptions.ShowBorder = False
      Index = 1
    end
    object itm_MailBusinessText: TdxLayoutItem
      Parent = lagrp_Business
      AlignHorz = ahClient
      AlignVert = avTop
      CaptionOptions.Text = 'E-Mail:'
      Control = edt_KontaktGeschaeftlichEMail
      ControlOptions.OriginalHeight = 24
      ControlOptions.OriginalWidth = 289
      ControlOptions.ShowBorder = False
      Index = 4
    end
    object itm_Firma: TdxLayoutItem
      Parent = lagrp_Firma
      AlignHorz = ahClient
      CaptionOptions.Text = 'Firma:'
      Control = cxDBLookupComboBox2
      ControlOptions.OriginalHeight = 23
      ControlOptions.OriginalWidth = 145
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object itm_TelefonDurchwahl: TdxLayoutItem
      Parent = lagrp_Business
      AlignHorz = ahClient
      CaptionOptions.Text = 'Telefon Durchwahl:'
      Control = edt_KontaktGeschaeftlichTelefonDurchwahl
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 535
      ControlOptions.ShowBorder = False
      Index = 3
    end
    object itm_KalFarbePause: TdxLayoutItem
      Parent = dxLayoutGroup3
      CaptionOptions.Text = 'Kalender Pause:'
      Control = colcmbbx_KalFarbePause
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 535
      ControlOptions.ShowBorder = False
      Index = 3
    end
    object itm_KalFarbeArbeit: TdxLayoutItem
      Parent = dxLayoutGroup3
      CaptionOptions.Text = 'Kalender Arbeitszeit:'
      Control = colcmbbx_KalFarbeArbeit
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 535
      ControlOptions.ShowBorder = False
      Index = 1
    end
    object itm_SchriftFarbePause: TdxLayoutItem
      Parent = dxLayoutGroup3
      CaptionOptions.Text = 'Schrift Pause:'
      Control = colcmbbx_SchriftFarbePause
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 535
      ControlOptions.ShowBorder = False
      Index = 2
    end
    object itm_SchriftFarbeArbeit: TdxLayoutItem
      Parent = dxLayoutGroup3
      CaptionOptions.Text = 'Schrift Arbeitszeit:'
      Control = colcmbbx_SchriftFarbeArbeit
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 535
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object itm_Eintritt: TdxLayoutItem
      Parent = lagrp_Zeiterfassung
      AlignHorz = ahClient
      AlignVert = avTop
      CaptionOptions.Text = 'Eintritt:'
      Control = dedt_Eintritt
      ControlOptions.OriginalHeight = 19
      ControlOptions.OriginalWidth = 535
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object itm_Benutzer: TdxLayoutItem
      Parent = lagrp_Zeiterfassung
      AlignHorz = ahClient
      AlignVert = avTop
      CaptionOptions.Text = 'Benutzer:'
      Control = lucmbbx_Benutzer
      ControlOptions.OriginalHeight = 23
      ControlOptions.OriginalWidth = 535
      ControlOptions.ShowBorder = False
      Index = 2
    end
    object itm_RUL: TdxLayoutItem
      Parent = lagrp_Sonstige
      CaptionOptions.Text = 'Resturlaub:'
      Control = medt_Resturlaub
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 535
      ControlOptions.ShowBorder = False
      Index = 1
    end
    object itm_RULzumJahr: TdxLayoutItem
      Parent = lagrp_Sonstige
      CaptionOptions.Text = 'Resturlaub zum Jahr:'
      Control = medt_ResturlaubzumJahr
      ControlOptions.OriginalHeight = 23
      ControlOptions.OriginalWidth = 535
      ControlOptions.ShowBorder = False
      Index = 2
    end
    object itm_PersNr: TdxLayoutItem
      Parent = lagrp_MitarbeiterInfo
      AlignHorz = ahLeft
      AlignVert = avTop
      CaptionOptions.Text = 'Personalnummer:'
      Control = medt_Personalnummer
      ControlOptions.OriginalHeight = 23
      ControlOptions.OriginalWidth = 289
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object itm_ULAnspruch: TdxLayoutItem
      Parent = lagrp_Sonstige
      CaptionOptions.Text = 'Urlaubsanspruch:'
      Control = sedt_Urlaubanspruch
      ControlOptions.OriginalHeight = 23
      ControlOptions.OriginalWidth = 535
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object itm_SollStunden: TdxLayoutItem
      Parent = lagrp_Zeiterfassung
      AlignHorz = ahClient
      AlignVert = avTop
      CaptionOptions.Text = 'Sollstunden:'
      Control = tedt_Sollstunden
      ControlOptions.OriginalHeight = 23
      ControlOptions.OriginalWidth = 535
      ControlOptions.ShowBorder = False
      Index = 1
    end
    object itm_KontaktartSuche: TdxLayoutItem
      Parent = lagrp_SucheMitarbeiter
      AlignHorz = ahLeft
      AlignVert = avTop
      CaptionOptions.Text = 'Personalnr:'
      Control = cmbbx_KontaktSucheArt
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 234
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object itm_AbteilungSuche: TdxLayoutItem
      Parent = lagrp_SucheFirma
      Offsets.Left = 48
      CaptionOptions.Text = 'Abteilung:'
      Control = cxCheckComboBox2
      ControlOptions.OriginalHeight = 23
      ControlOptions.OriginalWidth = 334
      ControlOptions.ShowBorder = False
      Index = 1
    end
    object itm_FirmaSuche: TdxLayoutItem
      Parent = lagrp_SucheFirma
      Offsets.Left = 48
      CaptionOptions.Text = 'Firma:'
      Control = cxCheckComboBox1
      ControlOptions.OriginalHeight = 23
      ControlOptions.OriginalWidth = 334
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object itm_FunktionSuche: TdxLayoutItem
      Parent = lagrp_SucheFirma
      Offsets.Left = 48
      CaptionOptions.Text = 'Funktion:'
      Control = edt_KontaktSucheFunktion
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 334
      ControlOptions.ShowBorder = False
      Index = 2
    end
    object itm_NachnameSuche: TdxLayoutItem
      Parent = lagrp_SucheMitarbeiter
      CaptionOptions.Text = 'Nachname:'
      Control = edt_KontaktSucheNachname
      ControlOptions.OriginalHeight = 19
      ControlOptions.OriginalWidth = 234
      ControlOptions.ShowBorder = False
      Index = 1
    end
    object itm_OrtSuche: TdxLayoutItem
      Parent = lagrp_SucheOrt
      Offsets.Left = 48
      CaptionOptions.Text = 'Ort:'
      Control = edt_KontaktSucheOrt
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 234
      ControlOptions.ShowBorder = False
      Index = 2
    end
    object itm_PLZSuche: TdxLayoutItem
      Parent = lagrp_SucheOrt
      Offsets.Left = 48
      CaptionOptions.Text = 'Postleitzahl:'
      Control = edt_KontaktSuchePLZ
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 234
      ControlOptions.ShowBorder = False
      Index = 1
    end
    object itm_StrasseSuche: TdxLayoutItem
      Parent = lagrp_SucheOrt
      Offsets.Left = 48
      CaptionOptions.Text = 'Strasse:'
      Control = edt_KontaktSucheStrasse
      ControlOptions.OriginalHeight = 19
      ControlOptions.OriginalWidth = 234
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object itm_VornameSuche: TdxLayoutItem
      Parent = lagrp_SucheMitarbeiter
      CaptionOptions.Text = 'Vorname:'
      Control = edt_KontaktSucheVorname
      ControlOptions.OriginalHeight = 19
      ControlOptions.OriginalWidth = 234
      ControlOptions.ShowBorder = False
      Index = 2
    end
    object itm_Teams: TdxLayoutItem
      Parent = lagrp_Business
      CaptionOptions.Text = 'Teams:'
      Control = edt_KontakteSonstigesTeams
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 535
      ControlOptions.ShowBorder = False
      Index = 5
    end
    object lagrp_Firma: TdxLayoutGroup
      Parent = lagrp_Business
      AlignHorz = ahClient
      CaptionOptions.Text = 'New Group'
      LayoutDirection = ldHorizontal
      ShowBorder = False
      Index = 0
    end
    object itm_FirmaBtn: TdxLayoutItem
      Parent = lagrp_Firma
      AlignHorz = ahRight
      CaptionOptions.Text = 'New Item'
      CaptionOptions.Visible = False
      Control = cxButton1
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 21
      ControlOptions.ShowBorder = False
      Index = 1
    end
    object dxLayoutItem2: TdxLayoutItem
      Parent = lagrp_ZeitplanEdit
      AlignHorz = ahClient
      CaptionOptions.Text = 'Wochenplan:'
      Control = lucmbbx_Wochenplan
      ControlOptions.OriginalHeight = 23
      ControlOptions.OriginalWidth = 145
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object lagrp_Zeitplan: TdxLayoutGroup
      Parent = lagrp_Zeiterfassung
      AlignHorz = ahClient
      AlignVert = avClient
      CaptionOptions.Text = 'Zeitplan'
      ItemIndex = 2
      Index = 3
    end
    object dxLayoutGroup3: TdxLayoutGroup
      Parent = lagrp_MitarbeiterInfoDetails
      CaptionOptions.Text = 'Kalender'
      ItemIndex = 3
      Index = 4
    end
    object lagrp_ZeitplanEdit: TdxLayoutGroup
      Parent = lagrp_Zeitplan
      AlignHorz = ahClient
      AlignVert = avTop
      CaptionOptions.Text = 'New Group'
      Visible = False
      ItemIndex = 2
      LayoutDirection = ldHorizontal
      ShowBorder = False
      Index = 2
    end
    object itm_ZeitplanGrid: TdxLayoutItem
      Parent = lagrp_Zeitplan
      AlignHorz = ahClient
      AlignVert = avClient
      CaptionOptions.Text = 'New Item'
      CaptionOptions.Visible = False
      Control = grd_ZP
      ControlOptions.OriginalHeight = 494
      ControlOptions.OriginalWidth = 1156
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object itm_ZeitplanBar: TdxLayoutItem
      Parent = lagrp_Zeitplan
      AlignHorz = ahClient
      AlignVert = avTop
      CaptionOptions.Text = 'New Item'
      CaptionOptions.Visible = False
      Control = dxBarDockControl1
      ControlOptions.AutoColor = True
      ControlOptions.OriginalHeight = 58
      ControlOptions.OriginalWidth = 1600
      ControlOptions.ShowBorder = False
      Index = 1
    end
    object lagrp_ZusatzDetails: TdxLayoutGroup
      Parent = lagrp_Zusatz
      AlignHorz = ahClient
      AlignVert = avTop
      CaptionOptions.Text = 'New Group'
      ItemIndex = 1
      LayoutDirection = ldHorizontal
      ShowBorder = False
      Index = 0
    end
    object lagrp_ZusatzDetailsWithoutiMAGE: TdxLayoutGroup
      Parent = lagrp_ZusatzDetails
      AlignHorz = ahClient
      AlignVert = avClient
      CaptionOptions.Text = 'New Group'
      ItemIndex = 4
      ShowBorder = False
      Index = 1
    end
    object lagrp_Staatsangehoerigkeit: TdxLayoutGroup
      Parent = lagrp_ZusatzDetailsWithoutiMAGE
      AlignHorz = ahClient
      AlignVert = avTop
      CaptionOptions.Text = 'New Group'
      LayoutDirection = ldHorizontal
      ShowBorder = False
      Index = 3
    end
    object lagrp_Konfession: TdxLayoutGroup
      Parent = lagrp_ZusatzDetailsWithoutiMAGE
      AlignHorz = ahClient
      AlignVert = avTop
      CaptionOptions.Text = 'New Group'
      LayoutDirection = ldHorizontal
      ShowBorder = False
      Index = 4
    end
    object lagrp_SucheMitarbeiter: TdxLayoutGroup
      Parent = lagrp_SucheFilter
      AlignHorz = ahLeft
      AlignVert = avTop
      CaptionOptions.Text = 'New Group'
      ItemIndex = 2
      ShowBorder = False
      Index = 0
    end
    object lagrp_SucheOrt: TdxLayoutGroup
      Parent = lagrp_SucheFilter
      AlignHorz = ahLeft
      AlignVert = avClient
      CaptionOptions.Text = 'New Group'
      ItemIndex = 2
      ShowBorder = False
      Index = 1
    end
    object lagrp_SucheFirma: TdxLayoutGroup
      Parent = lagrp_SucheFilter
      AlignHorz = ahLeft
      AlignVert = avClient
      CaptionOptions.Text = 'New Group'
      ItemIndex = 2
      ShowBorder = False
      Index = 2
    end
    object lagrp_SucheFilterButtons: TdxLayoutGroup
      Parent = lagrp_Suche
      AlignHorz = ahClient
      AlignVert = avTop
      CaptionOptions.Text = 'New Group'
      LayoutDirection = ldHorizontal
      ShowBorder = False
      Index = 1
    end
    object lagrp_PLZOrtMaps: TdxLayoutGroup
      Parent = lagrp_MitarbeiterInfo
      AlignHorz = ahLeft
      AlignVert = avTop
      CaptionOptions.Text = 'New Group'
      LayoutDirection = ldHorizontal
      ShowBorder = False
      Index = 8
    end
    object dxLayoutItem1: TdxLayoutItem
      Parent = lagrp_ZeitplanEdit
      AlignHorz = ahClient
      CaptionOptions.Text = 'Von:'
      Control = dedt_Von
      ControlOptions.OriginalHeight = 24
      ControlOptions.OriginalWidth = 121
      ControlOptions.ShowBorder = False
      Index = 1
    end
    object dxLayoutItem3: TdxLayoutItem
      Parent = lagrp_ZeitplanEdit
      AlignHorz = ahClient
      CaptionOptions.Text = 'Bis:'
      Control = dedt_Bis
      ControlOptions.OriginalHeight = 24
      ControlOptions.OriginalWidth = 121
      ControlOptions.ShowBorder = False
      Index = 2
    end
    object dxLayoutGroup1: TdxLayoutGroup
      Parent = lagrp_MitarbeiterInfoDetails
      CaptionOptions.Text = 'App / Webzugriff'
      ItemIndex = 2
      Index = 5
    end
    object dxLayoutItem4: TdxLayoutItem
      Parent = dxLayoutGroup1
      CaptionOptions.Text = 'Bneutzer:'
      Control = cxDBTextEdit1
      ControlOptions.OriginalHeight = 23
      ControlOptions.OriginalWidth = 121
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object dxLayoutItem5: TdxLayoutItem
      Parent = dxLayoutGroup1
      CaptionOptions.Text = 'Passwort:'
      Control = cxDBTextEdit2
      ControlOptions.OriginalHeight = 23
      ControlOptions.OriginalWidth = 121
      ControlOptions.ShowBorder = False
      Index = 1
    end
    object dxLayoutItem6: TdxLayoutItem
      Parent = dxLayoutGroup2
      CaptionOptions.Text = 'New Item'
      CaptionOptions.Visible = False
      Control = cxDBCheckBox2
      ControlOptions.OriginalHeight = 19
      ControlOptions.OriginalWidth = 102
      ControlOptions.ShowBorder = False
      Index = 1
    end
    object dxLayoutGroup2: TdxLayoutGroup
      Parent = dxLayoutGroup1
      CaptionOptions.Text = 'Zugriff:'
      Index = 2
    end
    object dxLayoutItem7: TdxLayoutItem
      Parent = dxLayoutGroup2
      CaptionOptions.Text = 'New Item'
      CaptionOptions.Visible = False
      Control = cxDBCheckBox1
      ControlOptions.OriginalHeight = 19
      ControlOptions.OriginalWidth = 102
      ControlOptions.ShowBorder = False
      Index = 0
    end
  end
  object rib_contacts: TdxRibbon
    Left = 0
    Top = 0
    Width = 1600
    Height = 132
    BarManager = brmgr_Contacts
    Style = rsOffice365
    ColorSchemeName = 'Colorful'
    Contexts = <>
    TabOrder = 1
    TabStop = False
    object ribTS_Contacts: TdxRibbonTab
      Active = True
      Caption = 'Mitarbeiter'
      Groups = <
        item
          Caption = 'Kontakt'
          ToolbarName = 'tb_Contacts'
        end
        item
          Caption = 'Navigation'
          ToolbarName = 'brmgr_ContactsBar1'
        end>
      Index = 0
    end
  end
  object ds_Kontakte: TDataSource
    DataSet = qry_Kontakte
    Left = 541
    Top = 448
  end
  object qry_Kontakte: TFDQuery
    Active = True
    AfterOpen = SetButtonsEnabledVisible
    AfterInsert = SetButtonsEnabledVisible
    AfterEdit = SetButtonsEnabledVisible
    BeforePost = qry_KontakteBeforePost
    AfterPost = SetButtonsEnabledVisible
    AfterCancel = SetButtonsEnabledVisible
    AfterDelete = SetButtonsEnabledVisible
    Connection = dm_PCM.con_PCM
    SQL.Strings = (
      'SELECT * '
      'From time_user'
      '')
    Left = 496
    Top = 688
    object qry_KontakteID: TFDAutoIncField
      FieldName = 'ID'
      Origin = 'ID'
      ProviderFlags = [pfInWhere, pfInKey]
    end
    object qry_KontakteID_Anrede: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'ID_Anrede'
      Origin = 'ID_Anrede'
    end
    object qry_KontakteVorname: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'Vorname'
      Origin = 'Vorname'
      Size = 128
    end
    object qry_KontakteNachname: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'Nachname'
      Origin = 'Nachname'
      Size = 128
    end
    object qry_KontakteZusatz: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'Zusatz'
      Origin = 'Zusatz'
      Size = 128
    end
    object qry_KontakteStrasse_Privat: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'Strasse_Privat'
      Origin = 'Strasse_Privat'
      Size = 128
    end
    object qry_KontaktePLZ_Privat: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'PLZ_Privat'
      Origin = 'PLZ_Privat'
      Size = 128
    end
    object qry_KontakteOrt_Privat: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'Ort_Privat'
      Origin = 'Ort_Privat'
      Size = 128
    end
    object qry_KontakteTelefon_Privat: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'Telefon_Privat'
      Origin = 'Telefon_Privat'
      Size = 128
    end
    object qry_KontakteTelefon_Privat1: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'Telefon_Privat1'
      Origin = 'Telefon_Privat1'
      Size = 128
    end
    object qry_KontakteTelefon_Privat2: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'Telefon_Privat2'
      Origin = 'Telefon_Privat2'
      Size = 128
    end
    object qry_KontakteHandy_privat: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'Handy_privat'
      Origin = 'Handy_privat'
      Size = 128
    end
    object qry_KontakteE_Mail_Privat: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'E_Mail_Privat'
      Origin = 'E_Mail_Privat'
      Size = 128
    end
    object qry_KontakteE_Mail_Privat1: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'E_Mail_Privat1'
      Origin = 'E_Mail_Privat1'
      Size = 128
    end
    object qry_KontakteE_Mail_Privat2: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'E_Mail_Privat2'
      Origin = 'E_Mail_Privat2'
      Size = 128
    end
    object qry_KontakteInternet_Privat: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'Internet_Privat'
      Origin = 'Internet_Privat'
      Size = 128
    end
    object qry_KontakteID_Kontaktart: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'ID_Kontaktart'
      Origin = 'ID_Kontaktart'
    end
    object qry_KontakteBild: TBlobField
      AutoGenerateValue = arDefault
      FieldName = 'Bild'
      Origin = 'Bild'
    end
    object qry_KontakteGeburtsdatum: TDateField
      AutoGenerateValue = arDefault
      FieldName = 'Geburtsdatum'
      Origin = 'Geburtsdatum'
    end
    object qry_KontakteID_Geschlecht: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'ID_Geschlecht'
      Origin = 'ID_Geschlecht'
    end
    object qry_KontakteID_Familienstand: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'ID_Familienstand'
      Origin = 'ID_Familienstand'
    end
    object qry_KontakteID_Staatsangehoerigkeit: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'ID_Staatsangehoerigkeit'
      Origin = 'ID_Staatsangehoerigkeit'
    end
    object qry_KontakteID_Konfession: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'ID_Konfession'
      Origin = 'ID_Konfession'
    end
    object qry_KontakteInfo: TMemoField
      AutoGenerateValue = arDefault
      FieldName = 'Info'
      Origin = 'Info'
      BlobType = ftMemo
    end
    object qry_KontakteFirma: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'Firma'
      Origin = 'Firma'
      Size = 128
    end
    object qry_KontakteStrasse_Ges: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'Strasse_Ges'
      Origin = 'Strasse_Ges'
      Size = 128
    end
    object qry_KontaktePLZ_Ges: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'PLZ_Ges'
      Origin = 'PLZ_Ges'
      Size = 128
    end
    object qry_KontakteOrt_Ges: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'Ort_Ges'
      Origin = 'Ort_Ges'
      Size = 128
    end
    object qry_KontakteAbteilung_Ges: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'Abteilung_Ges'
      Origin = 'Abteilung_Ges'
      Size = 128
    end
    object qry_KontakteFunktion_Ges: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'Funktion_Ges'
      Origin = 'Funktion_Ges'
      Size = 128
    end
    object qry_KontakteZentrale_Ges: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'Zentrale_Ges'
      Origin = 'Zentrale_Ges'
      Size = 128
    end
    object qry_KontakteTelefon_Ges: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'Telefon_Ges'
      Origin = 'Telefon_Ges'
      Size = 128
    end
    object qry_KontakteHandy_Ges: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'Handy_Ges'
      Origin = 'Handy_Ges'
      Size = 128
    end
    object qry_KontakteE_Mail_Ges: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'E_Mail_Ges'
      Origin = 'E_Mail_Ges'
      Size = 128
    end
    object qry_KontakteInternet_Ges: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'Internet_Ges'
      Origin = 'Internet_Ges'
      Size = 128
    end
    object qry_KontakteFacebook: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'Facebook'
      Origin = 'Facebook'
      Size = 128
    end
    object qry_KontakteSkype: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'Skype'
      Origin = 'Skype'
      Size = 128
    end
    object qry_KontakteICQ: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'ICQ'
      Origin = 'ICQ'
      Size = 128
    end
    object qry_KontakteLive_Messanger: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'Live_Messanger'
      Origin = 'Live_Messanger'
      Size = 128
    end
    object qry_KontakteID_Benutzer: TIntegerField
      FieldName = 'ID_Benutzer'
      Origin = 'ID_Benutzer'
      Required = True
    end
    object qry_KontakteGeburtsname: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'Geburtsname'
      Origin = 'Geburtsname'
      Size = 128
    end
    object qry_KontakteGeburtsland: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'Geburtsland'
      Origin = 'Geburtsland'
      Size = 128
    end
    object qry_KontakteSollstunden: TTimeField
      AutoGenerateValue = arDefault
      FieldName = 'Sollstunden'
      Origin = 'Sollstunden'
    end
    object qry_KontakteColFontWork: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'ColFontWork'
      Origin = 'ColFontWork'
    end
    object qry_KontakteColCalWork: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'ColCalWork'
      Origin = 'ColCalWork'
    end
    object qry_KontakteColFontBreak: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'ColFontBreak'
      Origin = 'ColFontBreak'
    end
    object qry_KontakteColCalBreak: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'ColCalBreak'
      Origin = 'ColCalBreak'
    end
    object qry_KontakteUrlaub: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'Urlaub'
      Origin = 'Urlaub'
    end
    object qry_KontakteEintritt: TDateField
      AutoGenerateValue = arDefault
      FieldName = 'Eintritt'
      Origin = 'Eintritt'
    end
    object qry_KontakteID_Zeiterfasser: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'ID_Zeiterfasser'
      Origin = 'ID_Zeiterfasser'
    end
    object qry_KontakteOffsetResturlaub: TFMTBCDField
      AutoGenerateValue = arDefault
      FieldName = 'OffsetResturlaub'
      Origin = 'OffsetResturlaub'
      Precision = 20
      Size = 2
    end
    object qry_KontakteOffsetResturlaubJahr: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'OffsetResturlaubJahr'
      Origin = 'OffsetResturlaubJahr'
    end
    object qry_KontaktePersonalnummer: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'Personalnummer'
      Origin = 'Personalnummer'
    end
    object qry_KontakteID_KontakteApp: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'ID_KontakteApp'
      Origin = 'ID_KontakteApp'
    end
    object qry_KontakteID_Firma: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'ID_Firma'
      Origin = 'ID_Firma'
    end
    object qry_KontakteID_Abteilung: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'ID_Abteilung'
      Origin = 'ID_Abteilung'
    end
    object qry_KontakteID_Wochenplan: TIntegerField
      AutoGenerateValue = arDefault
      FieldName = 'ID_Wochenplan'
      Origin = 'ID_Wochenplan'
    end
    object qry_KontakteBenutzer: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'Benutzer'
      Origin = 'Benutzer'
      Size = 255
    end
    object qry_KontaktePasswort: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'Passwort'
      Origin = 'Passwort'
      Size = 255
    end
    object qry_KontakteZurgiff_Web: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'Zurgiff_Web'
      Origin = 'Zurgiff_Web'
      FixedChar = True
      Size = 5
    end
    object qry_KontakteZugriff_App: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'Zugriff_App'
      Origin = 'Zugriff_App'
      FixedChar = True
      Size = 5
    end
  end
  object qry_Contact_Staatsangehoerigkeit: TFDQuery
    Connection = dm_PCM.con_PCM
    SQL.Strings = (
      'Select ID,Bezeichnung From time_Staatsangehoerigkeit')
    Left = 133
    Top = 251
  end
  object ds_Contact_Staatsangehoerigkeit: TDataSource
    DataSet = qry_Contact_Staatsangehoerigkeit
    Left = 93
    Top = 395
  end
  object ds_Contact_Geschlecht: TDataSource
    DataSet = qry_Contact_Geschlecht
    Left = 221
    Top = 395
  end
  object qry_Contact_Geschlecht: TFDQuery
    Connection = dm_PCM.con_PCM
    SQL.Strings = (
      'Select ID,Bezeichnung From time_Geschlecht')
    Left = 221
    Top = 339
  end
  object qry_Contact_Familienstand: TFDQuery
    Connection = dm_PCM.con_PCM
    SQL.Strings = (
      'Select ID,Bezeichnung From time_familienstand')
    Left = 525
    Top = 531
  end
  object ds_Contact_Familienstand: TDataSource
    DataSet = qry_Contact_Familienstand
    Left = 341
    Top = 395
  end
  object ds_Contact_Anrede: TDataSource
    DataSet = qry_Contact_Anrede
    Left = 445
    Top = 395
  end
  object qry_Contact_Anrede: TFDQuery
    Connection = dm_PCM.con_PCM
    SQL.Strings = (
      'Select ID, Bezeichnung From time_Anrede')
    Left = 429
    Top = 466
  end
  object ds_Contact_Konfession: TDataSource
    DataSet = qry_Contact_Konfession
    Left = 661
    Top = 395
  end
  object qry_Contact_Konfession: TFDQuery
    Connection = dm_PCM.con_PCM
    SQL.Strings = (
      'Select ID,Bezeichnung From time_Konfession')
    Left = 669
    Top = 234
  end
  object brmgr_Contacts: TdxBarManager
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -12
    Font.Name = 'Segoe UI'
    Font.Style = []
    Categories.Strings = (
      'Default'
      'pm_kontakte'
      'pm_KontaktImExport'
      'PopupMenu1')
    Categories.ItemsVisibles = (
      2
      2
      2
      2)
    Categories.Visibles = (
      True
      True
      True
      True)
    ImageOptions.LargeImages = dm_PCM.imglst_32x32
    ImageOptions.LargeIcons = True
    ImageOptions.UseLargeImagesForLargeIcons = True
    NotDocking = [dsNone, dsLeft, dsTop, dsRight, dsBottom]
    PopupMenuLinks = <>
    Style = bmsUseLookAndFeel
    UseSystemFont = True
    Left = 112
    Top = 488
    PixelsPerInch = 96
    object tb_Contacts: TdxBar
      Caption = 'tb_Contacts'
      CaptionButtons = <>
      DockedLeft = 0
      DockedTop = 0
      FloatLeft = 1133
      FloatTop = 2
      FloatClientWidth = 133
      FloatClientHeight = 486
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
        end>
      NotDocking = [dsNone, dsLeft, dsTop, dsRight, dsBottom]
      OneOnRow = False
      Row = 0
      ShowMark = False
      SizeGrip = False
      UseOwnFont = False
      UseRestSpace = True
      Visible = True
      WholeRow = False
    end
    object brmgr_ContactsBar1: TdxBar
      Caption = 'Custom 1'
      CaptionButtons = <>
      DockedLeft = 522
      DockedTop = 0
      FloatLeft = 1628
      FloatTop = 2
      FloatClientWidth = 0
      FloatClientHeight = 0
      ItemLinks = <
        item
          Visible = True
          ItemName = 'btn_First'
        end
        item
          Visible = True
          ItemName = 'btn_Prior'
        end
        item
          Visible = True
          ItemName = 'btn_Next'
        end
        item
          Visible = True
          ItemName = 'btn_Last'
        end
        item
          Visible = True
          ItemName = 'btn_Close'
        end>
      OneOnRow = False
      Row = 0
      UseOwnFont = False
      Visible = True
      WholeRow = False
    end
    object brmgr_ContactsBar2: TdxBar
      Caption = 'Custom 2'
      CaptionButtons = <>
      DockControl = dxBarDockControl1
      DockedDockControl = dxBarDockControl1
      DockedLeft = 0
      DockedTop = 0
      FloatLeft = 1628
      FloatTop = 2
      FloatClientWidth = 0
      FloatClientHeight = 0
      ItemLinks = <
        item
          Visible = True
          ItemName = 'btn_ZPNew'
        end
        item
          Visible = True
          ItemName = 'btn_ZPSave'
        end
        item
          Visible = True
          ItemName = 'btn_ZPCancel'
        end
        item
          Visible = True
          ItemName = 'btn_ZPDelete'
        end
        item
          Visible = True
          ItemName = 'btn_ZPAdd'
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
      Caption = 'Mitarbeiter anlegen'
      Category = 0
      Hint = 'Mitarbeiter anlegen'
      Visible = ivAlways
      OnClick = btn_NewClick
      AutoGrayScale = False
      LargeImageIndex = 0
      Width = 125
      SyncImageIndex = False
      ImageIndex = 27
    end
    object btn_Next: TdxBarLargeButton
      Caption = 'n'#228'chster Mitarbeiter'
      Category = 0
      Hint = 'n'#228'chster Mitarbeiter'
      Visible = ivNever
      OnClick = btn_NextClick
      AutoGrayScale = False
      LargeImageIndex = 6
      Width = 125
      SyncImageIndex = False
      ImageIndex = -1
    end
    object btn_Prior: TdxBarLargeButton
      Caption = 'vorheriger Mitarbeiter'
      Category = 0
      Hint = 'vorheriger Mitarbeiter'
      Visible = ivNever
      OnClick = btn_PriorClick
      AutoGrayScale = False
      LargeImageIndex = 5
      Width = 125
      SyncImageIndex = False
      ImageIndex = -1
    end
    object btn_First: TdxBarLargeButton
      Caption = 'erster Mitarbeiter'
      Category = 0
      Hint = 'erster Mitarbeiter'
      Visible = ivNever
      OnClick = btn_FirstClick
      AutoGrayScale = False
      LargeImageIndex = 7
      Width = 125
      SyncImageIndex = False
      ImageIndex = -1
    end
    object btn_Delete: TdxBarLargeButton
      Caption = 'Mitarbeiter l'#246'schen'
      Category = 0
      Hint = 'Mitarbeiter l'#246'schen'
      Visible = ivAlways
      OnClick = btn_DeleteClick
      AutoGrayScale = False
      LargeImageIndex = 3
      Width = 125
      SyncImageIndex = False
      ImageIndex = -1
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
      SyncImageIndex = False
      ImageIndex = -1
    end
    object btn_Save: TdxBarLargeButton
      Caption = 'Mitarbeiter speichern'
      Category = 0
      Hint = 'Mitarbeiter speichern'
      Visible = ivAlways
      Glyph.SourceDPI = 96
      Glyph.Data = {
        3C3F786D6C2076657273696F6E3D22312E302220656E636F64696E673D227574
        662D38223F3E0D0A3C212D2D2047656E657261746F723A2041646F626520496C
        6C7573747261746F722031392E312E302C20535647204578706F727420506C75
        672D496E202E205356472056657273696F6E3A20362E3030204275696C642030
        2920202D2D3E0D0A3C7376672076657273696F6E3D22312E31222069643D224C
        617965725F312220786D6C6E733D22687474703A2F2F7777772E77332E6F7267
        2F323030302F7376672220786D6C6E733A786C696E6B3D22687474703A2F2F77
        77772E77332E6F72672F313939392F786C696E6B2220783D223070782220793D
        22307078220D0A092076696577426F783D223020302033322033322220656E61
        626C652D6261636B67726F756E643D226E657720302030203332203332222078
        6D6C3A73706163653D227072657365727665223E0D0A3C706F6C79676F6E2066
        696C6C3D22233337374142352220706F696E74733D22322C3220322C33302033
        302C33302033302C362032362C3220222F3E0D0A3C7265637420783D22362220
        793D223134222066696C6C3D2223464646464646222077696474683D22323022
        206865696768743D223134222F3E0D0A3C7265637420783D22362220793D2232
        22206F7061636974793D22302E36222066696C6C3D2223464646464646222065
        6E61626C652D6261636B67726F756E643D226E65772020202022207769647468
        3D22313822206865696768743D223130222F3E0D0A3C7265637420783D223230
        2220793D2232222066696C6C3D2223333737414235222077696474683D223222
        206865696768743D2238222F3E0D0A3C2F7376673E0D0A}
      OnClick = btn_SaveClick
      AutoGrayScale = False
      LargeImageIndex = 1
      Width = 125
      SyncImageIndex = False
      ImageIndex = -1
    end
    object btn_Last: TdxBarLargeButton
      Caption = 'letzter Mitarbeiter'
      Category = 0
      Hint = 'letzter Mitarbeiter'
      Visible = ivNever
      OnClick = btn_LastClick
      AutoGrayScale = False
      LargeImageIndex = 8
      Width = 125
      SyncImageIndex = False
      ImageIndex = -1
    end
    object btn_Close: TdxBarLargeButton
      Align = iaRight
      Caption = 'Formular Schlie'#223'en'
      Category = 0
      Hint = 'Formular Schlie'#223'en'
      Visible = ivAlways
      OnClick = btn_CloseClick
      AutoGrayScale = False
      LargeImageIndex = 4
    end
    object btn_ZPNew: TdxBarLargeButton
      Caption = 'Neu'
      Category = 0
      Hint = 'Neu'
      Visible = ivAlways
      OnClick = btn_ZPNewClick
      AutoGrayScale = False
      LargeImageIndex = 0
      Width = 70
    end
    object btn_ZPSave: TdxBarLargeButton
      Caption = 'Speichern'
      Category = 0
      Hint = 'Speichern'
      Visible = ivAlways
      OnClick = btn_ZPSaveClick
      AutoGrayScale = False
      LargeImageIndex = 1
      Width = 70
    end
    object btn_ZPCancel: TdxBarLargeButton
      Caption = 'Abbrechen'
      Category = 0
      Hint = 'Abbrechen'
      Visible = ivAlways
      OnClick = btn_ZPCancelClick
      AutoGrayScale = False
      LargeImageIndex = 2
      Width = 70
    end
    object btn_ZPDelete: TdxBarLargeButton
      Caption = 'L'#246'schen'
      Category = 0
      Hint = 'L'#246'schen'
      Visible = ivAlways
      OnClick = btn_ZPDeleteClick
      AutoGrayScale = False
      LargeImageIndex = 3
      Width = 70
    end
    object btn_ZPAdd: TdxBarLargeButton
      Caption = 'Eintragen'
      Category = 0
      Hint = 'Eintragen'
      Visible = ivAlways
      OnClick = btn_ZPAddClick
      AutoGrayScale = False
      LargeImageIndex = 10
      Width = 70
    end
  end
  object qry_Contact_Kontaktart: TFDQuery
    Connection = dm_PCM.con_PCM
    SQL.Strings = (
      'Select ID,Bezeichnung From manager_Kontaktart'
      '')
    Left = 709
    Top = 474
  end
  object ds_Contact_Kontaktart: TDataSource
    DataSet = qry_Contact_Kontaktart
    Left = 549
    Top = 395
  end
  object qry_Firma: TFDQuery
    Active = True
    Connection = dm_PCM.con_PCM
    SQL.Strings = (
      
        'Select ID, Nummer, Bezeichnung, if(Typ = 1, '#39'Hauptsitz'#39', '#39'Arbeit' +
        'sort'#39') as Typ From time_Firma')
    Left = 1037
    Top = 458
  end
  object ds_Firma: TDataSource
    DataSet = qry_Firma
    Left = 1037
    Top = 531
  end
  object qry_abteilung: TFDQuery
    Active = True
    Connection = dm_PCM.con_PCM
    SQL.Strings = (
      'Select * From time_Abteilung')
    Left = 1149
    Top = 450
  end
  object ds_abteilung: TDataSource
    DataSet = qry_abteilung
    Left = 1149
    Top = 523
  end
  object qry_benutzer: TFDQuery
    ObjectView = False
    Connection = dm_PCM.con_PCM
    SQL.Strings = (
      'Select 0 as ID, '#39'Kein Benutzer'#39' as Benutzer '
      'union all'
      'Select ID, Benutzer From Benutzer')
    Left = 869
    Top = 466
    object qry_benutzerID: TLargeintField
      AutoGenerateValue = arDefault
      FieldName = 'ID'
      Origin = 'ID'
      ProviderFlags = [pfInKey]
      ReadOnly = True
    end
    object qry_benutzerBenutzer: TStringField
      AutoGenerateValue = arDefault
      FieldName = 'Benutzer'
      Origin = 'Benutzer'
      ProviderFlags = []
      ReadOnly = True
      Size = 255
    end
  end
  object ds_benutzer: TDataSource
    DataSet = qry_benutzer
    Left = 869
    Top = 539
  end
  object qry_wp: TFDQuery
    Active = True
    Connection = dm_PCM.con_PCM
    SQL.Strings = (
      
        'Select null as ID, '#39'Kein Wochenplan'#39' as Beschreibung From time_w' +
        'ochenplan'
      'union all'
      'Select ID, Beschreibung From time_wochenplan')
    Left = 720
    Top = 656
  end
  object ds_WP: TDataSource
    DataSet = qry_wp
    Left = 717
    Top = 715
  end
  object qry_ZP: TFDQuery
    AfterOpen = SetButtonsEnabledVisibleZP
    AfterInsert = SetButtonsEnabledVisibleZP
    AfterEdit = SetButtonsEnabledVisibleZP
    AfterPost = SetButtonsEnabledVisibleZP
    AfterCancel = SetButtonsEnabledVisibleZP
    AfterDelete = SetButtonsEnabledVisibleZP
    AfterScroll = qry_ZPAfterScroll
    Connection = dm_PCM.con_PCM
    SQL.Strings = (
      'Select * From time_user_wochenplan')
    Left = 1080
    Top = 564
  end
  object ds_ZP: TDataSource
    DataSet = qry_ZP
    Left = 1085
    Top = 635
  end
end
