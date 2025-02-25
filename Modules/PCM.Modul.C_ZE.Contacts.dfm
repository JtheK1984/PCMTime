object frm_Userze: Tfrm_Userze
  Left = 0
  Top = 0
  BorderIcons = []
  Caption = 'PCM - Zeiterfassung: Zeiterfasser'
  ClientHeight = 900
  ClientWidth = 1600
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -12
  Font.Name = 'Segoe UI'
  Font.Style = []
  Position = poScreenCenter
  OnShow = FormShow
  TextHeight = 15
  object lactrl_Main: TdxLayoutControl
    Left = 0
    Top = 0
    Width = 1600
    Height = 900
    Margins.Left = 0
    Margins.Top = 0
    Margins.Right = 0
    Margins.Bottom = 0
    Align = alClient
    TabOrder = 2
    LayoutLookAndFeel = dm_PCM.dxLayoutSkinLookAndFeel1
    OptionsImage.Images = dm_PCM.imglst_16x16
    ExplicitTop = 63
    ExplicitHeight = 837
    object tedt_Sollstunden: TcxDBTimeEdit
      Left = 10000
      Top = 10000
      DataBinding.DataField = 'Sollstunden'
      DataBinding.DataSource = ds_Kontakte
      Properties.SpinButtons.Visible = False
      Properties.TimeFormat = tfHourMin
      Style.HotTrack = False
      Style.TransparentBorder = False
      TabOrder = 56
      Visible = False
      Width = 1021
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
      TabOrder = 58
      Visible = False
      Width = 1021
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
      TabOrder = 60
      Visible = False
      Width = 1021
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
      TabOrder = 59
      Visible = False
      Width = 1021
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
      TabOrder = 57
      Visible = False
      Width = 1021
    end
    object lucmbbx_Benutzer: TcxDBLookupComboBox
      Left = 10000
      Top = 10000
      DataBinding.DataField = 'ID_Zeiterfasser'
      DataBinding.DataSource = ds_Kontakte
      Properties.KeyFieldNames = 'ID'
      Properties.ListColumns = <
        item
          FieldName = 'Name'
        end>
      Properties.ListSource = dm_PCM.ds_Kalender_Benutzer
      Style.HotTrack = False
      Style.TransparentBorder = False
      TabOrder = 61
      Visible = False
      Width = 1021
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
      TabOrder = 62
      Visible = False
      Width = 1021
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
      TabOrder = 63
      Visible = False
      Height = 19
      Width = 1021
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
      TabOrder = 64
      Visible = False
      Height = 21
      Width = 1021
    end
    object medt_ResturlaubzumJahr: TcxDBMaskEdit
      Left = 10000
      Top = 10000
      DataBinding.DataField = 'OffsetResturlaubJahr'
      DataBinding.DataSource = ds_Kontakte
      Properties.Alignment.Horz = taLeftJustify
      Style.HotTrack = False
      Style.TransparentBorder = False
      TabOrder = 65
      Visible = False
      Width = 1021
    end
    object medt_Personalnummer: TcxDBMaskEdit
      Left = 10000
      Top = 10000
      DataBinding.DataField = 'Personalnummer'
      DataBinding.DataSource = ds_Kontakte
      Properties.Alignment.Horz = taLeftJustify
      Style.HotTrack = False
      Style.TransparentBorder = False
      TabOrder = 66
      Visible = False
      Width = 1021
    end
    object cmbbx_KontaktSucheArt: TcxComboBox
      Left = 102
      Top = 139
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
      OnKeyDown = edt_KontaktSucheNachnameKeyDown
      Width = 234
    end
    object edt_KontaktSucheAbteilung: TcxTextEdit
      Left = 810
      Top = 113
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
      TabOrder = 7
      OnKeyDown = edt_KontaktSucheNachnameKeyDown
      Height = 19
      Width = 234
    end
    object edt_KontaktSucheFirma: TcxTextEdit
      Left = 810
      Top = 87
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
      TabOrder = 6
      OnKeyDown = edt_KontaktSucheNachnameKeyDown
      Height = 19
      Width = 234
    end
    object edt_KontaktSucheFunktion: TcxTextEdit
      Left = 810
      Top = 139
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
      OnKeyDown = edt_KontaktSucheNachnameKeyDown
      Width = 234
    end
    object edt_KontaktSucheNachname: TcxTextEdit
      Left = 102
      Top = 87
      ParentFont = False
      Style.Font.Charset = DEFAULT_CHARSET
      Style.Font.Color = clWindowText
      Style.Font.Height = -11
      Style.Font.Name = 'Tahoma'
      Style.Font.Style = []
      Style.HotTrack = False
      Style.LookAndFeel.NativeStyle = False
      Style.TransparentBorder = False
      Style.IsFontAssigned = True
      StyleDisabled.LookAndFeel.NativeStyle = False
      StyleDisabled.TextColor = clBtnShadow
      StyleDisabled.TextStyle = []
      StyleFocused.LookAndFeel.NativeStyle = False
      StyleFocused.TextStyle = []
      StyleHot.LookAndFeel.NativeStyle = False
      StyleHot.TextStyle = []
      TabOrder = 0
      OnKeyDown = edt_KontaktSucheNachnameKeyDown
      Width = 234
    end
    object edt_KontaktSucheOrt: TcxTextEdit
      Left = 460
      Top = 139
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
      OnKeyDown = edt_KontaktSucheNachnameKeyDown
      Width = 234
    end
    object edt_KontaktSuchePLZ: TcxTextEdit
      Left = 460
      Top = 113
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
      OnKeyDown = edt_KontaktSucheNachnameKeyDown
      Width = 234
    end
    object edt_KontaktSucheStrasse: TcxTextEdit
      Left = 460
      Top = 87
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
      OnKeyDown = edt_KontaktSucheNachnameKeyDown
      Height = 19
      Width = 234
    end
    object edt_KontaktSucheVorname: TcxTextEdit
      Left = 102
      Top = 113
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
      OnKeyDown = edt_KontaktSucheNachnameKeyDown
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
      TabOrder = 12
      Visible = False
      Width = 289
    end
    object edt_Email2: TcxDBTextEdit
      Left = 10000
      Top = 10000
      AutoSize = False
      DataBinding.DataField = 'E_Mail_Privat1'
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
      TabOrder = 27
      Visible = False
      Height = 21
      Width = 260
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
      TabOrder = 16
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
      TabOrder = 15
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
      TabOrder = 24
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
      TabOrder = 14
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
      TabOrder = 13
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
      TabOrder = 20
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
      TabOrder = 19
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
      TabOrder = 18
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
      TabOrder = 22
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
      TabOrder = 23
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
      TabOrder = 17
      Visible = False
      Width = 289
    end
    object dtEdt_KontaktZusatzGeburtsdatum: TcxDBDateEdit
      Left = 10000
      Top = 10000
      DataBinding.DataField = 'Geburtsdatum'
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
      TabOrder = 32
      Visible = False
      Width = 856
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
      TabOrder = 34
      Visible = False
      Width = 856
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
      TabOrder = 33
      Visible = False
      Height = 19
      Width = 856
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
      TabOrder = 37
      Visible = False
      Height = 19
      Width = 828
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
      TabOrder = 35
      Visible = False
      Width = 828
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
      TabOrder = 31
      Visible = False
      Height = 150
      Width = 150
    end
    object edt_KontaktGeschaeftlichAbteilung: TcxDBTextEdit
      Left = 10000
      Top = 10000
      DataBinding.DataField = 'Abteilung_Ges'
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
      Width = 1027
    end
    object edt_KontaktGeschaeftlichEMail: TcxDBTextEdit
      Left = 10000
      Top = 10000
      DataBinding.DataField = 'E_Mail_Ges'
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
      TabOrder = 49
      Visible = False
      Width = 999
    end
    object edt_KontaktGeschaeftlichFirma: TcxDBTextEdit
      Left = 10000
      Top = 10000
      DataBinding.DataField = 'Firma'
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
      TabOrder = 40
      Visible = False
      Width = 1027
    end
    object edt_KontaktGeschaeftlichInternet: TcxDBTextEdit
      Left = 10000
      Top = 10000
      DataBinding.DataField = 'Internet_Ges'
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
      TabOrder = 51
      Visible = False
      Width = 999
    end
    object edt_KontaktGeschaeftlichOrt: TcxDBTextEdit
      Left = 10000
      Top = 10000
      AutoSize = False
      DataBinding.DataField = 'Ort_Ges'
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
      TabOrder = 43
      Visible = False
      Height = 21
      Width = 923
    end
    object edt_KontaktGeschaeftlichPLZ: TcxDBTextEdit
      Left = 10000
      Top = 10000
      DataBinding.DataField = 'PLZ_Ges'
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
      Width = 69
    end
    object edt_KontaktGeschaeftlichStrasse: TcxDBTextEdit
      Left = 10000
      Top = 10000
      AutoSize = False
      DataBinding.DataField = 'Strasse_Ges'
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
      Height = 19
      Width = 1027
    end
    object edt_KontaktGeschaeftlichTelefonZentrale: TcxDBTextEdit
      Left = 10000
      Top = 10000
      DataBinding.DataField = 'Zentrale_Ges'
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
      TabOrder = 47
      Visible = False
      Width = 1027
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
      TabOrder = 48
      Visible = False
      Width = 1027
    end
    object btn_MapPrivate: TcxButton
      Left = 10000
      Top = 10000
      Width = 21
      Height = 21
      OptionsImage.ImageIndex = 89
      OptionsImage.Images = dm_PCM.imglst_16x16
      PaintStyle = bpsGlyph
      TabOrder = 21
      Visible = False
      OnClick = btn_MapPrivateClick
    end
    object edt_Email1: TcxDBTextEdit
      Left = 10000
      Top = 10000
      AutoSize = False
      DataBinding.DataField = 'E_Mail_Privat'
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
      Height = 21
      Width = 260
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
      TabOrder = 39
      Visible = False
      Height = 502
      Width = 1136
    end
    object btn_Mail1Private: TcxButton
      Left = 10000
      Top = 10000
      Width = 21
      Height = 21
      Caption = 'btn_Mail1Private'
      OptionsImage.ImageIndex = 15
      OptionsImage.Images = dm_PCM.imglst_16x16
      PaintStyle = bpsGlyph
      TabOrder = 26
      Visible = False
      OnClick = btn_Mail1PrivateClick
    end
    object btn_Mail2Private: TcxButton
      Left = 10000
      Top = 10000
      Width = 21
      Height = 21
      Caption = 'cxButton1'
      OptionsImage.ImageIndex = 15
      OptionsImage.Images = dm_PCM.imglst_16x16
      PaintStyle = bpsGlyph
      TabOrder = 28
      Visible = False
      OnClick = btn_Mail2PrivateClick
    end
    object grd_Suche: TcxGrid
      Left = 26
      Top = 212
      Width = 1544
      Height = 658
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
          DataBinding.FieldName = 'Firma'
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
          DataBinding.FieldName = 'Abteilung_Ges'
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
      Left = 170
      Top = 178
      Width = 137
      Height = 27
      Caption = 'Filter l'#246'schen'
      OptionsImage.ImageIndex = 24
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
      Left = 26
      Top = 178
      Width = 137
      Height = 27
      Caption = 'Mitarbeiter suchen'
      OptionsImage.ImageIndex = 25
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
    object edt_KontakteSonstigesFacebook: TcxDBTextEdit
      Left = 10000
      Top = 10000
      DataBinding.DataField = 'Facebook'
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
      TabOrder = 53
      Visible = False
      Width = 1076
    end
    object edt_KontakteSonstigesSkype: TcxDBTextEdit
      Left = 10000
      Top = 10000
      DataBinding.DataField = 'Skype'
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
      TabOrder = 54
      Visible = False
      Width = 1076
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
      TabOrder = 55
      Visible = False
      Width = 1076
    end
    object edt_KontaktInternet: TcxDBTextEdit
      Left = 10000
      Top = 10000
      DataBinding.DataField = 'Internet_Privat'
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
      TabOrder = 29
      Visible = False
      OnExit = btn_SaveClick
      Width = 260
    end
    object btn_WebPrivate: TcxButton
      Left = 10000
      Top = 10000
      Width = 21
      Height = 21
      OptionsImage.ImageIndex = 75
      OptionsImage.Images = dm_PCM.imglst_16x16
      TabOrder = 30
      TabStop = False
      Visible = False
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      OnClick = btn_WebPrivateClick
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
      TabOrder = 46
      Visible = False
      OnExit = btn_SaveClick
      Width = 1027
    end
    object btn_EditStaatsangehoerigkeit: TcxButton
      Left = 10000
      Top = 10000
      Width = 21
      Height = 21
      Caption = 'btn_EditStaatsangehoerigkeit'
      OptionsImage.ImageIndex = 74
      OptionsImage.Images = dm_PCM.imglst_16x16
      PaintStyle = bpsGlyph
      TabOrder = 36
      Visible = False
      OnClick = btn_EditStaatsangehoerigkeitClick
    end
    object btn_EditKonfession: TcxButton
      Left = 10000
      Top = 10000
      Width = 21
      Height = 21
      Caption = 'cxButton3'
      OptionsImage.ImageIndex = 74
      OptionsImage.Images = dm_PCM.imglst_16x16
      PaintStyle = bpsGlyph
      TabOrder = 38
      Visible = False
      OnClick = btn_EditKonfessionClick
    end
    object btn_WebBusiness: TcxButton
      Left = 10000
      Top = 10000
      Width = 21
      Height = 21
      OptionsImage.ImageIndex = 75
      OptionsImage.Images = dm_PCM.imglst_16x16
      TabOrder = 52
      TabStop = False
      Visible = False
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentFont = False
      OnClick = btn_WebBusinessClick
    end
    object btn_MapBusiness: TcxButton
      Left = 10000
      Top = 10000
      Width = 21
      Height = 21
      OptionsImage.ImageIndex = 89
      OptionsImage.Images = dm_PCM.imglst_16x16
      PaintStyle = bpsGlyph
      TabOrder = 44
      Visible = False
      OnClick = btn_MapBusinessClick
    end
    object btn_MailBusiness: TcxButton
      Left = 10000
      Top = 10000
      Width = 21
      Height = 21
      Caption = 'cxButton1'
      OptionsImage.ImageIndex = 15
      OptionsImage.Images = dm_PCM.imglst_16x16
      PaintStyle = bpsGlyph
      TabOrder = 50
      Visible = False
      OnClick = btn_MailBusinessClick
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
      CaptionOptions.Text = 'Zusatz'
      Index = 0
    end
    object lagrp_Sonstige: TdxLayoutGroup
      Parent = lagrp_MitarbeiterInfoDetails
      CaptionOptions.Text = 'Sonstiges'
      ItemIndex = 2
      Index = 2
    end
    object lagrp_Business: TdxLayoutGroup
      Parent = lagrp_MitarbeiterInfoDetails
      CaptionOptions.Text = 'Gesch'#228'ftlich'
      ItemIndex = 2
      Index = 1
    end
    object itm_Anrede: TdxLayoutItem
      Parent = lagrp_MitarbeiterInfo
      AlignHorz = ahLeft
      AlignVert = avTop
      CaptionOptions.Text = 'Anrede:'
      CaptionOptions.Width = 75
      Control = cmbbx_Anrede
      ControlOptions.OriginalHeight = 19
      ControlOptions.OriginalWidth = 289
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object itm_Vorname: TdxLayoutItem
      Parent = lagrp_MitarbeiterInfo
      AlignHorz = ahLeft
      AlignVert = avTop
      CaptionOptions.Text = 'Vorname:'
      CaptionOptions.Width = 75
      Control = edt_KontaktName
      ControlOptions.OriginalHeight = 19
      ControlOptions.OriginalWidth = 289
      ControlOptions.ShowBorder = False
      Index = 1
    end
    object itm_Geburtsname: TdxLayoutItem
      Parent = lagrp_MitarbeiterInfo
      AlignHorz = ahLeft
      AlignVert = avTop
      CaptionOptions.Text = 'Geburtsname:'
      CaptionOptions.Width = 75
      Control = edt_KontaktGeburtsname
      ControlOptions.OriginalHeight = 19
      ControlOptions.OriginalWidth = 289
      ControlOptions.ShowBorder = False
      Index = 3
    end
    object itm_Nachname: TdxLayoutItem
      Parent = lagrp_MitarbeiterInfo
      AlignHorz = ahLeft
      AlignVert = avTop
      CaptionOptions.Text = 'Nachname:'
      CaptionOptions.Width = 75
      Control = edt_KontaktNachname
      ControlOptions.OriginalHeight = 19
      ControlOptions.OriginalWidth = 289
      ControlOptions.ShowBorder = False
      Index = 2
    end
    object itm_Geburtsland: TdxLayoutItem
      Parent = lagrp_MitarbeiterInfo
      AlignHorz = ahLeft
      AlignVert = avTop
      CaptionOptions.Text = 'Geburtsland:'
      Control = edt_Geburtsland
      ControlOptions.OriginalHeight = 19
      ControlOptions.OriginalWidth = 289
      ControlOptions.ShowBorder = False
      Index = 4
    end
    object itm_HandyPrivat: TdxLayoutItem
      Parent = lagrp_MitarbeiterInfo
      AlignHorz = ahLeft
      AlignVert = avTop
      CaptionOptions.Text = 'Handy:'
      Control = edt_KontaktHandy
      ControlOptions.OriginalHeight = 19
      ControlOptions.OriginalWidth = 289
      ControlOptions.ShowBorder = False
      Index = 10
    end
    object itm_Telefon2: TdxLayoutItem
      Parent = lagrp_MitarbeiterInfo
      AlignHorz = ahLeft
      AlignVert = avTop
      CaptionOptions.Text = 'Telefon 2:'
      Control = edt_KontaktTelefon2
      ControlOptions.OriginalHeight = 19
      ControlOptions.OriginalWidth = 289
      ControlOptions.ShowBorder = False
      Index = 9
    end
    object itm_Telefon1: TdxLayoutItem
      Parent = lagrp_MitarbeiterInfo
      AlignHorz = ahLeft
      AlignVert = avTop
      CaptionOptions.Text = 'Telefon 1:'
      Control = edt_KontaktTelefon1
      ControlOptions.OriginalHeight = 19
      ControlOptions.OriginalWidth = 289
      ControlOptions.ShowBorder = False
      Index = 8
    end
    object itm_MapPrivat: TdxLayoutItem
      Parent = lagrp_PLZOrtPrivat
      CaptionOptions.Text = 'New Item'
      CaptionOptions.Visible = False
      Control = btn_MapPrivate
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 21
      ControlOptions.ShowBorder = False
      Index = 2
    end
    object itm_OrtPrivat: TdxLayoutItem
      Parent = lagrp_PLZOrtPrivat
      AlignVert = avClient
      Control = edt_KontaktOrt
      ControlOptions.OriginalHeight = 19
      ControlOptions.OriginalWidth = 185
      ControlOptions.ShowBorder = False
      Index = 1
    end
    object itm_PLZPrivat: TdxLayoutItem
      Parent = lagrp_PLZOrtPrivat
      AlignVert = avClient
      CaptionOptions.Text = 'PLZ- Ort:'
      CaptionOptions.Width = 75
      Control = edt_KontaktPLZ
      ControlOptions.OriginalHeight = 19
      ControlOptions.OriginalWidth = 69
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object lagrp_PLZOrtPrivat: TdxLayoutAutoCreatedGroup
      Parent = lagrp_MitarbeiterInfo
      LayoutDirection = ldHorizontal
      Index = 7
    end
    object itm_Zusatz: TdxLayoutItem
      Parent = lagrp_MitarbeiterInfo
      AlignHorz = ahLeft
      AlignVert = avTop
      CaptionOptions.Text = 'Zusatz:'
      Control = edt_KontaktZusatz
      ControlOptions.OriginalHeight = 19
      ControlOptions.OriginalWidth = 289
      ControlOptions.ShowBorder = False
      Index = 5
    end
    object itm_StrassePrivat: TdxLayoutItem
      Parent = lagrp_MitarbeiterInfo
      AlignHorz = ahLeft
      AlignVert = avTop
      CaptionOptions.Text = 'Stra'#223'e:'
      Control = edt_KontaktStrasse
      ControlOptions.OriginalHeight = 19
      ControlOptions.OriginalWidth = 289
      ControlOptions.ShowBorder = False
      Index = 6
    end
    object itm_Mail1PrivatBtn: TdxLayoutItem
      Parent = lagrp_Mail1Privat
      CaptionOptions.Text = 'New Item'
      CaptionOptions.Visible = False
      Control = btn_Mail1Private
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 21
      ControlOptions.ShowBorder = False
      Index = 1
    end
    object itm_Mail2PrivatBtn: TdxLayoutItem
      Parent = lagrp_Mail2Privat
      SizeOptions.MaxHeight = 21
      CaptionOptions.Text = 'New Item'
      CaptionOptions.Visible = False
      Control = btn_Mail2Private
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 21
      ControlOptions.ShowBorder = False
      Index = 1
    end
    object lagrp_Mail1Privat: TdxLayoutAutoCreatedGroup
      Parent = lagrp_MitarbeiterInfo
      AlignVert = avTop
      LayoutDirection = ldHorizontal
      Index = 11
    end
    object itm_WebPrivatText: TdxLayoutItem
      Parent = lagrp_InternetPrivat
      AlignHorz = ahLeft
      CaptionOptions.Text = 'Internet:'
      Control = edt_KontaktInternet
      ControlOptions.OriginalHeight = 19
      ControlOptions.OriginalWidth = 260
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object itm_Mail1PrivatText: TdxLayoutItem
      Parent = lagrp_Mail1Privat
      AlignVert = avClient
      CaptionOptions.Text = 'E-Mail 1:'
      Control = edt_Email1
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 260
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object itm_Mail2PrivatText: TdxLayoutItem
      Parent = lagrp_Mail2Privat
      AlignHorz = ahLeft
      AlignVert = avTop
      CaptionOptions.Text = 'E-Mail 2:'
      Control = edt_Email2
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 260
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object itm_Geburtsdatum: TdxLayoutItem
      Parent = lagrp_Details
      AlignHorz = ahClient
      Offsets.Left = 16
      CaptionOptions.Text = 'Geburtsdatum:'
      Control = dtEdt_KontaktZusatzGeburtsdatum
      ControlOptions.OriginalHeight = 19
      ControlOptions.OriginalWidth = 360
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object itm_Familienstand: TdxLayoutItem
      Parent = lagrp_Details
      AlignHorz = ahClient
      Offsets.Left = 16
      CaptionOptions.Text = 'Familienstand:'
      Control = lucmbbx_KontaktZusatzFamilienstand
      ControlOptions.OriginalHeight = 19
      ControlOptions.OriginalWidth = 360
      ControlOptions.ShowBorder = False
      Index = 2
    end
    object itm_Geschlecht: TdxLayoutItem
      Parent = lagrp_Details
      AlignHorz = ahClient
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
      Offsets.Left = 16
      CaptionOptions.Text = 'Staatsangh'#246'rigkeit:'
      Control = lucmbbx_Staatsanghoerigkeit
      ControlOptions.OriginalHeight = 19
      ControlOptions.OriginalWidth = 360
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object itm_Picture: TdxLayoutItem
      Parent = lagrp_ZusatzDetails
      Control = img_Picture
      ControlOptions.OriginalHeight = 150
      ControlOptions.OriginalWidth = 150
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object lagrp_ZusatzDetails: TdxLayoutAutoCreatedGroup
      Parent = lagrp_Zusatz
      LayoutDirection = ldHorizontal
      Index = 0
    end
    object lagrp_Details: TdxLayoutAutoCreatedGroup
      Parent = lagrp_ZusatzDetails
      AlignHorz = ahClient
      Index = 1
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
      Index = 3
    end
    object itm_StaatsangehoerigkeitBtn: TdxLayoutItem
      Parent = lagrp_Staatsangehoerigkeit
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
      AlignVert = avClient
      CaptionOptions.Text = 'New Item'
      CaptionOptions.Visible = False
      Control = btn_EditKonfession
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 21
      ControlOptions.ShowBorder = False
      Index = 1
    end
    object lagrp_Staatsangehoerigkeit: TdxLayoutAutoCreatedGroup
      Parent = lagrp_Details
      LayoutDirection = ldHorizontal
      Index = 3
    end
    object lagrp_Konfession: TdxLayoutAutoCreatedGroup
      Parent = lagrp_Details
      LayoutDirection = ldHorizontal
      Index = 4
    end
    object lagrp_Mail2Privat: TdxLayoutAutoCreatedGroup
      Parent = lagrp_MitarbeiterInfo
      AlignVert = avTop
      LayoutDirection = ldHorizontal
      Index = 12
    end
    object itm_WebPrivatBtn: TdxLayoutItem
      Parent = lagrp_InternetPrivat
      CaptionOptions.Text = 'New Item'
      CaptionOptions.Visible = False
      Control = btn_WebPrivate
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 21
      ControlOptions.ShowBorder = False
      Index = 1
    end
    object lagrp_InternetPrivat: TdxLayoutAutoCreatedGroup
      Parent = lagrp_MitarbeiterInfo
      LayoutDirection = ldHorizontal
      Index = 13
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
      Index = 0
    end
    object lagrp_Suche: TdxLayoutGroup
      Parent = lagrp_PersonalTab
      CaptionOptions.ImageIndex = 25
      CaptionOptions.Text = 'Suche'
      TabbedOptions.HotTrack = True
      TabbedOptions.MultiLineTabCaptions = True
      TabbedOptions.ShowFrame = True
      Index = 0
    end
    object lagrp_Mitarbeiter: TdxLayoutGroup
      Parent = lagrp_PersonalTab
      AlignHorz = ahClient
      AlignVert = avClient
      CaptionOptions.ImageIndex = 11
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
      ControlOptions.OriginalHeight = 19
      ControlOptions.OriginalWidth = 535
      ControlOptions.ShowBorder = False
      Index = 4
    end
    object itm_SucheFilterLoeschen: TdxLayoutItem
      Parent = lagroup_SucheFilterButtons
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
      Parent = lagroup_SucheFilterButtons
      AlignHorz = ahLeft
      CaptionOptions.Text = 'btn_kontaktsuchen'
      CaptionOptions.Visible = False
      Control = btn_kontaktsuchen
      ControlOptions.OriginalHeight = 27
      ControlOptions.OriginalWidth = 137
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object lagroup_SucheFilterButtons: TdxLayoutAutoCreatedGroup
      Parent = lagrp_Suche
      LayoutDirection = ldHorizontal
      Index = 1
    end
    object itm_StrasseBusiness: TdxLayoutItem
      Parent = lagrp_Business
      AlignHorz = ahClient
      CaptionOptions.Text = 'Stra'#223'e:'
      Control = edt_KontaktGeschaeftlichStrasse
      ControlOptions.OriginalHeight = 19
      ControlOptions.OriginalWidth = 535
      ControlOptions.ShowBorder = False
      Index = 1
    end
    object itm_Abteilung: TdxLayoutItem
      Parent = lagrp_Business
      AlignHorz = ahClient
      CaptionOptions.Text = 'Abteilung:'
      Control = edt_KontaktGeschaeftlichAbteilung
      ControlOptions.OriginalHeight = 19
      ControlOptions.OriginalWidth = 535
      ControlOptions.ShowBorder = False
      Index = 3
    end
    object itm_MailBusinessText: TdxLayoutItem
      Parent = lagrp_MailBusiness
      AlignHorz = ahClient
      CaptionOptions.Text = 'E-Mail:'
      Control = edt_KontaktGeschaeftlichEMail
      ControlOptions.OriginalHeight = 19
      ControlOptions.OriginalWidth = 535
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object itm_Firma: TdxLayoutItem
      Parent = lagrp_Business
      AlignHorz = ahClient
      CaptionOptions.Text = 'Firma:'
      Control = edt_KontaktGeschaeftlichFirma
      ControlOptions.OriginalHeight = 19
      ControlOptions.OriginalWidth = 535
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object itm_WebBusinessText: TdxLayoutItem
      Parent = lagrp_InternetBusiness
      AlignHorz = ahClient
      CaptionOptions.Text = 'Internet:'
      Control = edt_KontaktGeschaeftlichInternet
      ControlOptions.OriginalHeight = 19
      ControlOptions.OriginalWidth = 535
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object itm_OrtBusiness: TdxLayoutItem
      Parent = lagrp_PLZOrtBusiness
      AlignHorz = ahClient
      AlignVert = avClient
      Control = edt_KontaktGeschaeftlichOrt
      ControlOptions.OriginalHeight = 19
      ControlOptions.OriginalWidth = 457
      ControlOptions.ShowBorder = False
      Index = 1
    end
    object itm_PLZBusiness: TdxLayoutItem
      Parent = lagrp_PLZOrtBusiness
      AlignHorz = ahLeft
      CaptionOptions.Text = 'Plz - Ort:'
      Control = edt_KontaktGeschaeftlichPLZ
      ControlOptions.OriginalHeight = 19
      ControlOptions.OriginalWidth = 69
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object itm_TelefonDurchwahl: TdxLayoutItem
      Parent = lagrp_Business
      AlignHorz = ahClient
      CaptionOptions.Text = 'Telefon Durchwahl:'
      Control = edt_KontaktGeschaeftlichTelefonDurchwahl
      ControlOptions.OriginalHeight = 19
      ControlOptions.OriginalWidth = 535
      ControlOptions.ShowBorder = False
      Index = 6
    end
    object itm_TelefonZentrale: TdxLayoutItem
      Parent = lagrp_Business
      AlignHorz = ahClient
      CaptionOptions.Text = 'Telefon Zentrale:'
      Control = edt_KontaktGeschaeftlichTelefonZentrale
      ControlOptions.OriginalHeight = 19
      ControlOptions.OriginalWidth = 535
      ControlOptions.ShowBorder = False
      Index = 5
    end
    object itm_KalFarbePause: TdxLayoutItem
      Parent = lagrp_Zeiterfassung
      AlignHorz = ahClient
      CaptionOptions.Text = 'Kalender Pause:'
      Control = colcmbbx_KalFarbePause
      ControlOptions.OriginalHeight = 19
      ControlOptions.OriginalWidth = 535
      ControlOptions.ShowBorder = False
      Index = 4
    end
    object itm_KalFarbeArbeit: TdxLayoutItem
      Parent = lagrp_Zeiterfassung
      AlignHorz = ahClient
      AlignVert = avTop
      CaptionOptions.Text = 'Kalender Arbeitszeit:'
      Control = colcmbbx_KalFarbeArbeit
      ControlOptions.OriginalHeight = 19
      ControlOptions.OriginalWidth = 535
      ControlOptions.ShowBorder = False
      Index = 2
    end
    object itm_SchriftFarbePause: TdxLayoutItem
      Parent = lagrp_Zeiterfassung
      AlignHorz = ahClient
      CaptionOptions.Text = 'Schrift Pause:'
      Control = colcmbbx_SchriftFarbePause
      ControlOptions.OriginalHeight = 19
      ControlOptions.OriginalWidth = 535
      ControlOptions.ShowBorder = False
      Index = 3
    end
    object itm_SchriftFarbeArbeit: TdxLayoutItem
      Parent = lagrp_Zeiterfassung
      AlignHorz = ahClient
      CaptionOptions.Text = 'Schrift Arbeitszeit:'
      Control = colcmbbx_SchriftFarbeArbeit
      ControlOptions.OriginalHeight = 19
      ControlOptions.OriginalWidth = 535
      ControlOptions.ShowBorder = False
      Index = 1
    end
    object itm_Eintritt: TdxLayoutItem
      Parent = lagrp_Zeiterfassung
      AlignHorz = ahClient
      CaptionOptions.Text = 'Eintritt:'
      Control = dedt_Eintritt
      ControlOptions.OriginalHeight = 19
      ControlOptions.OriginalWidth = 535
      ControlOptions.ShowBorder = False
      Index = 7
    end
    object itm_Benutzer: TdxLayoutItem
      Parent = lagrp_Zeiterfassung
      AlignHorz = ahClient
      CaptionOptions.Text = 'Benutzer:'
      Control = lucmbbx_Benutzer
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 535
      ControlOptions.ShowBorder = False
      Index = 5
    end
    object itm_RUL: TdxLayoutItem
      Parent = lagrp_Zeiterfassung
      AlignHorz = ahClient
      CaptionOptions.Text = 'Resturlaub:'
      Control = medt_Resturlaub
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 535
      ControlOptions.ShowBorder = False
      Index = 8
    end
    object itm_RULzumJahr: TdxLayoutItem
      Parent = lagrp_Zeiterfassung
      AlignHorz = ahClient
      CaptionOptions.Text = 'Resturlaub zum Jahr:'
      Control = medt_ResturlaubzumJahr
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 535
      ControlOptions.ShowBorder = False
      Index = 9
    end
    object itm_PersNr: TdxLayoutItem
      Parent = lagrp_Zeiterfassung
      AlignHorz = ahClient
      CaptionOptions.Text = 'Personalnummer:'
      Control = medt_Personalnummer
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 535
      ControlOptions.ShowBorder = False
      Index = 10
    end
    object itm_ULAnspruch: TdxLayoutItem
      Parent = lagrp_Zeiterfassung
      AlignHorz = ahClient
      CaptionOptions.Text = 'Urlaubsanspruch:'
      Control = sedt_Urlaubanspruch
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 535
      ControlOptions.ShowBorder = False
      Index = 6
    end
    object itm_SollStunden: TdxLayoutItem
      Parent = lagrp_Zeiterfassung
      AlignHorz = ahClient
      CaptionOptions.Text = 'Sollstunden:'
      Control = tedt_Sollstunden
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 535
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object itm_KontaktartSuche: TdxLayoutItem
      Parent = lagrp_SucheMitarbeiter
      CaptionOptions.Text = 'Kontaktart:'
      Control = cmbbx_KontaktSucheArt
      ControlOptions.OriginalHeight = 19
      ControlOptions.OriginalWidth = 234
      ControlOptions.ShowBorder = False
      Index = 2
    end
    object itm_AbteilungSuche: TdxLayoutItem
      Parent = lagrp_SucheFirma
      Offsets.Left = 48
      CaptionOptions.Text = 'Abteilung:'
      Control = edt_KontaktSucheAbteilung
      ControlOptions.OriginalHeight = 19
      ControlOptions.OriginalWidth = 234
      ControlOptions.ShowBorder = False
      Index = 1
    end
    object itm_FirmaSuche: TdxLayoutItem
      Parent = lagrp_SucheFirma
      Offsets.Left = 48
      CaptionOptions.Text = 'Firma:'
      Control = edt_KontaktSucheFirma
      ControlOptions.OriginalHeight = 19
      ControlOptions.OriginalWidth = 234
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object itm_FunktionSuche: TdxLayoutItem
      Parent = lagrp_SucheFirma
      Offsets.Left = 48
      CaptionOptions.Text = 'Funktion:'
      Control = edt_KontaktSucheFunktion
      ControlOptions.OriginalHeight = 19
      ControlOptions.OriginalWidth = 234
      ControlOptions.ShowBorder = False
      Index = 2
    end
    object itm_NachnameSuche: TdxLayoutItem
      Parent = lagrp_SucheMitarbeiter
      AlignHorz = ahLeft
      AlignVert = avTop
      CaptionOptions.Text = 'Nachname:'
      Control = edt_KontaktSucheNachname
      ControlOptions.OriginalHeight = 19
      ControlOptions.OriginalWidth = 234
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object itm_OrtSuche: TdxLayoutItem
      Parent = lagrp_SucheOrt
      Offsets.Left = 48
      CaptionOptions.Text = 'Ort:'
      Control = edt_KontaktSucheOrt
      ControlOptions.OriginalHeight = 19
      ControlOptions.OriginalWidth = 234
      ControlOptions.ShowBorder = False
      Index = 2
    end
    object itm_PLZSuche: TdxLayoutItem
      Parent = lagrp_SucheOrt
      Offsets.Left = 48
      CaptionOptions.Text = 'Postleitzahl:'
      Control = edt_KontaktSuchePLZ
      ControlOptions.OriginalHeight = 19
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
      AlignHorz = ahLeft
      CaptionOptions.Text = 'Vorname:'
      Control = edt_KontaktSucheVorname
      ControlOptions.OriginalHeight = 19
      ControlOptions.OriginalWidth = 234
      ControlOptions.ShowBorder = False
      Index = 1
    end
    object lagrp_SucheMitarbeiter: TdxLayoutAutoCreatedGroup
      Parent = lagrp_SucheFilter
      AlignHorz = ahLeft
      AlignVert = avTop
      Index = 0
    end
    object lagrp_SucheOrt: TdxLayoutAutoCreatedGroup
      Parent = lagrp_SucheFilter
      AlignHorz = ahLeft
      AlignVert = avClient
      Index = 1
    end
    object lagrp_SucheFirma: TdxLayoutAutoCreatedGroup
      Parent = lagrp_SucheFilter
      AlignHorz = ahLeft
      AlignVert = avClient
      Index = 2
    end
    object itm_Facebook: TdxLayoutItem
      Parent = lagrp_Sonstige
      AlignHorz = ahClient
      CaptionOptions.Text = 'Facebook:'
      Control = edt_KontakteSonstigesFacebook
      ControlOptions.OriginalHeight = 19
      ControlOptions.OriginalWidth = 535
      ControlOptions.ShowBorder = False
      Index = 0
    end
    object itm_Skype: TdxLayoutItem
      Parent = lagrp_Sonstige
      AlignHorz = ahClient
      CaptionOptions.Text = 'Skype:'
      Control = edt_KontakteSonstigesSkype
      ControlOptions.OriginalHeight = 19
      ControlOptions.OriginalWidth = 535
      ControlOptions.ShowBorder = False
      Index = 1
    end
    object itm_Teams: TdxLayoutItem
      Parent = lagrp_Sonstige
      AlignHorz = ahClient
      CaptionOptions.Text = 'Teams:'
      Control = edt_KontakteSonstigesTeams
      ControlOptions.OriginalHeight = 19
      ControlOptions.OriginalWidth = 535
      ControlOptions.ShowBorder = False
      Index = 2
    end
    object lagrp_PLZOrtBusiness: TdxLayoutAutoCreatedGroup
      Parent = lagrp_Business
      LayoutDirection = ldHorizontal
      Index = 2
    end
    object itm_WebBusinessBtn: TdxLayoutItem
      Parent = lagrp_InternetBusiness
      AlignVert = avClient
      CaptionOptions.Text = 'New Item'
      CaptionOptions.Visible = False
      Control = btn_WebBusiness
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 21
      ControlOptions.ShowBorder = False
      Index = 1
    end
    object itm_MailBusinessBtn: TdxLayoutItem
      Parent = lagrp_MailBusiness
      AlignVert = avClient
      CaptionOptions.Text = 'New Item'
      CaptionOptions.Visible = False
      Control = btn_MailBusiness
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 21
      ControlOptions.ShowBorder = False
      Index = 1
    end
    object lagrp_MailBusiness: TdxLayoutAutoCreatedGroup
      Parent = lagrp_Business
      LayoutDirection = ldHorizontal
      Index = 7
    end
    object lagrp_InternetBusiness: TdxLayoutAutoCreatedGroup
      Parent = lagrp_Business
      LayoutDirection = ldHorizontal
      Index = 8
    end
    object itm_MapBusiness: TdxLayoutItem
      Parent = lagrp_PLZOrtBusiness
      AlignVert = avClient
      CaptionOptions.Text = 'New Item'
      CaptionOptions.Visible = False
      Control = btn_MapBusiness
      ControlOptions.OriginalHeight = 21
      ControlOptions.OriginalWidth = 21
      ControlOptions.ShowBorder = False
      Index = 2
    end
  end
  object ds_Kontakte: TDataSource
    DataSet = qry_Kontakte
    Left = 509
    Top = 344
  end
  object qry_Kontakte: TFDQuery
    Active = True
    AfterOpen = SetButtonsEnabledVisible
    AfterInsert = SetButtonsEnabledVisible
    AfterEdit = SetButtonsEnabledVisible
    AfterPost = SetButtonsEnabledVisible
    AfterCancel = SetButtonsEnabledVisible
    AfterDelete = SetButtonsEnabledVisible
    Connection = dm_PCM.con_PCM
    SQL.Strings = (
      'SELECT * '
      'From time_user'
      '')
    Left = 504
    Top = 288
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
  end
  object qry_Contact_Staatsangehoerigkeit: TFDQuery
    Active = True
    Connection = dm_PCM.con_PCM
    SQL.Strings = (
      'Select ID,Bezeichnung From time_Staatsangehoerigkeit')
    Left = 93
    Top = 339
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
    Active = True
    Connection = dm_PCM.con_PCM
    SQL.Strings = (
      'Select ID,Bezeichnung From time_Geschlecht')
    Left = 221
    Top = 339
  end
  object qry_Contact_Familienstand: TFDQuery
    Active = True
    Connection = dm_PCM.con_PCM
    SQL.Strings = (
      'Select ID,Bezeichnung From time_familienstand')
    Left = 341
    Top = 339
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
    Active = True
    Connection = dm_PCM.con_PCM
    SQL.Strings = (
      'Select ID, Bezeichnung From time_Anrede')
    Left = 445
    Top = 338
  end
  object ds_Contact_Konfession: TDataSource
    DataSet = qry_Contact_Konfession
    Left = 661
    Top = 395
  end
  object qry_Contact_Konfession: TFDQuery
    Active = True
    Connection = dm_PCM.con_PCM
    SQL.Strings = (
      'Select ID,Bezeichnung From time_Konfession')
    Left = 661
    Top = 338
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
    ImageOptions.Images = dm_PCM.imglst_16x16
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
      DockedDockingStyle = dsTop
      DockedLeft = 0
      DockedTop = 0
      DockingStyle = dsTop
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
        end
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
        end>
      NotDocking = [dsNone, dsLeft, dsTop, dsRight, dsBottom]
      OneOnRow = True
      Row = 0
      ShowMark = False
      SizeGrip = False
      UseOwnFont = False
      UseRestSpace = True
      Visible = False
      WholeRow = False
    end
    object btn_New: TdxBarLargeButton
      Caption = 'Mitarbeiter anlegen'
      Category = 0
      Hint = 'Mitarbeiter anlegen'
      Visible = ivAlways
      OnClick = btn_NewClick
      AutoGrayScale = False
      LargeImageIndex = 27
      Width = 125
      SyncImageIndex = False
      ImageIndex = -1
    end
    object btn_Next: TdxBarLargeButton
      Caption = 'n'#228'chster Mitarbeiter'
      Category = 0
      Hint = 'n'#228'chster Mitarbeiter'
      Visible = ivAlways
      OnClick = btn_NextClick
      AutoGrayScale = False
      LargeImageIndex = 26
      Width = 125
      SyncImageIndex = False
      ImageIndex = -1
    end
    object btn_Prior: TdxBarLargeButton
      Caption = 'vorheriger Mitarbeiter'
      Category = 0
      Hint = 'vorheriger Mitarbeiter'
      Visible = ivAlways
      OnClick = btn_PriorClick
      AutoGrayScale = False
      LargeImageIndex = 25
      Width = 125
      SyncImageIndex = False
      ImageIndex = -1
    end
    object btn_First: TdxBarLargeButton
      Caption = 'erster Mitarbeiter'
      Category = 0
      Hint = 'erster Mitarbeiter'
      Visible = ivAlways
      OnClick = btn_FirstClick
      AutoGrayScale = False
      LargeImageIndex = 33
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
      LargeImageIndex = 24
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
      LargeImageIndex = 0
      Width = 125
      SyncImageIndex = False
      ImageIndex = -1
    end
    object btn_Save: TdxBarLargeButton
      Caption = 'Mitarbeiter speichern'
      Category = 0
      Hint = 'Mitarbeiter speichern'
      Visible = ivAlways
      OnClick = btn_SaveClick
      AutoGrayScale = False
      LargeImageIndex = 12
      Width = 125
      SyncImageIndex = False
      ImageIndex = -1
    end
    object btn_Last: TdxBarLargeButton
      Caption = 'letzter Mitarbeiter'
      Category = 0
      Hint = 'letzter Mitarbeiter'
      Visible = ivAlways
      OnClick = btn_LastClick
      AutoGrayScale = False
      LargeImageIndex = 37
      Width = 125
      SyncImageIndex = False
      ImageIndex = -1
    end
  end
  object qry_Contact_Kontaktart: TFDQuery
    Connection = dm_PCM.con_PCM
    SQL.Strings = (
      'Select ID,Bezeichnung From manager_Kontaktart'
      '')
    Left = 541
    Top = 338
  end
  object ds_Contact_Kontaktart: TDataSource
    DataSet = qry_Contact_Kontaktart
    Left = 549
    Top = 395
  end
end
