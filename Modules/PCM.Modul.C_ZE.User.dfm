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
  object grpbx_KontaktAllgemein: TcxGroupBox
    AlignWithMargins = True
    Left = 0
    Top = 63
    Margins.Left = 0
    Margins.Top = 0
    Margins.Right = 0
    TabStop = True
    Align = alLeft
    Caption = 'Kontakt'
    TabOrder = 0
    ExplicitTop = 58
    Height = 834
    Width = 394
    object cmbbx_KontaktAnrede: TcxDBLookupComboBox
      Left = 96
      Top = 20
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
      Style.BorderStyle = ebsFlat
      Style.Font.Charset = DEFAULT_CHARSET
      Style.Font.Color = clWindowText
      Style.Font.Height = -11
      Style.Font.Name = 'Tahoma'
      Style.Font.Style = []
      Style.IsFontAssigned = True
      TabOrder = 0
      Width = 289
    end
    object edt_KontaktEmail1: TcxDBTextEdit
      Left = 96
      Top = 317
      DataBinding.DataField = 'E_Mail_Privat'
      DataBinding.DataSource = ds_Kontakte
      ParentFont = False
      Style.BorderStyle = ebsFlat
      Style.Font.Charset = DEFAULT_CHARSET
      Style.Font.Color = clWindowText
      Style.Font.Height = -11
      Style.Font.Name = 'Tahoma'
      Style.Font.Style = []
      Style.IsFontAssigned = True
      TabOrder = 12
      Width = 289
    end
    object edt_KontaktEmail2: TcxDBTextEdit
      Left = 96
      Top = 344
      DataBinding.DataField = 'E_Mail_Privat1'
      DataBinding.DataSource = ds_Kontakte
      ParentFont = False
      Style.BorderStyle = ebsFlat
      Style.Font.Charset = DEFAULT_CHARSET
      Style.Font.Color = clWindowText
      Style.Font.Height = -11
      Style.Font.Name = 'Tahoma'
      Style.Font.Style = []
      Style.IsFontAssigned = True
      TabOrder = 13
      Width = 289
    end
    object edt_KontaktGeburtsland: TcxDBTextEdit
      Left = 96
      Top = 130
      DataBinding.DataField = 'Geburtsland'
      DataBinding.DataSource = ds_Kontakte
      ParentFont = False
      Style.BorderStyle = ebsFlat
      Style.Font.Charset = DEFAULT_CHARSET
      Style.Font.Color = clWindowText
      Style.Font.Height = -11
      Style.Font.Name = 'Tahoma'
      Style.Font.Style = []
      Style.IsFontAssigned = True
      TabOrder = 4
      Width = 289
    end
    object edt_KontaktGeburtsname: TcxDBTextEdit
      Left = 96
      Top = 103
      DataBinding.DataField = 'Geburtsname'
      DataBinding.DataSource = ds_Kontakte
      ParentFont = False
      Style.BorderStyle = ebsFlat
      Style.Font.Charset = DEFAULT_CHARSET
      Style.Font.Color = clWindowText
      Style.Font.Height = -11
      Style.Font.Name = 'Tahoma'
      Style.Font.Style = []
      Style.IsFontAssigned = True
      TabOrder = 3
      Width = 289
    end
    object edt_KontaktHandy: TcxDBTextEdit
      Left = 96
      Top = 290
      DataBinding.DataField = 'Handy_privat'
      DataBinding.DataSource = ds_Kontakte
      ParentFont = False
      Style.BorderStyle = ebsFlat
      Style.Font.Charset = DEFAULT_CHARSET
      Style.Font.Color = clWindowText
      Style.Font.Height = -11
      Style.Font.Name = 'Tahoma'
      Style.Font.Style = []
      Style.IsFontAssigned = True
      TabOrder = 11
      Width = 289
    end
    object edt_KontaktNachname: TcxDBTextEdit
      Left = 96
      Top = 74
      DataBinding.DataField = 'Nachname'
      DataBinding.DataSource = ds_Kontakte
      ParentFont = False
      Style.BorderStyle = ebsFlat
      Style.Color = clInfoBk
      Style.Font.Charset = DEFAULT_CHARSET
      Style.Font.Color = clWindowText
      Style.Font.Height = -11
      Style.Font.Name = 'Tahoma'
      Style.Font.Style = []
      Style.TextColor = clInfoText
      Style.IsFontAssigned = True
      TabOrder = 2
      Width = 289
    end
    object edt_KontaktName: TcxDBTextEdit
      Left = 96
      Top = 47
      DataBinding.DataField = 'Vorname'
      DataBinding.DataSource = ds_Kontakte
      ParentFont = False
      Style.BorderStyle = ebsFlat
      Style.Color = clInfoBk
      Style.Font.Charset = DEFAULT_CHARSET
      Style.Font.Color = clWindowText
      Style.Font.Height = -11
      Style.Font.Name = 'Tahoma'
      Style.Font.Style = []
      Style.TextColor = clInfoText
      Style.IsFontAssigned = True
      TabOrder = 1
      Width = 289
    end
    object edt_KontaktOrt: TcxDBTextEdit
      Left = 174
      Top = 209
      DataBinding.DataField = 'Ort_Privat'
      DataBinding.DataSource = ds_Kontakte
      ParentFont = False
      Style.BorderStyle = ebsFlat
      Style.Font.Charset = DEFAULT_CHARSET
      Style.Font.Color = clWindowText
      Style.Font.Height = -11
      Style.Font.Name = 'Tahoma'
      Style.Font.Style = []
      Style.IsFontAssigned = True
      TabOrder = 8
      Width = 211
    end
    object edt_KontaktPLZ: TcxDBTextEdit
      Left = 96
      Top = 209
      DataBinding.DataField = 'PLZ_Privat'
      DataBinding.DataSource = ds_Kontakte
      ParentFont = False
      Style.BorderStyle = ebsFlat
      Style.Font.Charset = DEFAULT_CHARSET
      Style.Font.Color = clWindowText
      Style.Font.Height = -11
      Style.Font.Name = 'Tahoma'
      Style.Font.Style = []
      Style.IsFontAssigned = True
      TabOrder = 7
      Width = 72
    end
    object edt_KontaktStrasse: TcxDBTextEdit
      Left = 96
      Top = 182
      DataBinding.DataField = 'Strasse_Privat'
      DataBinding.DataSource = ds_Kontakte
      ParentFont = False
      Style.BorderStyle = ebsFlat
      Style.Font.Charset = DEFAULT_CHARSET
      Style.Font.Color = clWindowText
      Style.Font.Height = -11
      Style.Font.Name = 'Tahoma'
      Style.Font.Style = []
      Style.IsFontAssigned = True
      TabOrder = 6
      Width = 289
    end
    object edt_KontaktTelefon1: TcxDBTextEdit
      Left = 96
      Top = 236
      DataBinding.DataField = 'Telefon_Privat'
      DataBinding.DataSource = ds_Kontakte
      ParentFont = False
      Style.BorderStyle = ebsFlat
      Style.Font.Charset = DEFAULT_CHARSET
      Style.Font.Color = clWindowText
      Style.Font.Height = -11
      Style.Font.Name = 'Tahoma'
      Style.Font.Style = []
      Style.IsFontAssigned = True
      TabOrder = 9
      Width = 289
    end
    object edt_KontaktTelefon2: TcxDBTextEdit
      Left = 96
      Top = 263
      DataBinding.DataField = 'Telefon_Privat1'
      DataBinding.DataSource = ds_Kontakte
      ParentFont = False
      Style.BorderStyle = ebsFlat
      Style.Font.Charset = DEFAULT_CHARSET
      Style.Font.Color = clWindowText
      Style.Font.Height = -11
      Style.Font.Name = 'Tahoma'
      Style.Font.Style = []
      Style.IsFontAssigned = True
      TabOrder = 10
      Width = 289
    end
    object edt_KontaktZusatz: TcxDBTextEdit
      Left = 96
      Top = 157
      DataBinding.DataField = 'Zusatz'
      DataBinding.DataSource = ds_Kontakte
      ParentFont = False
      Style.BorderStyle = ebsFlat
      Style.Font.Charset = DEFAULT_CHARSET
      Style.Font.Color = clWindowText
      Style.Font.Height = -11
      Style.Font.Name = 'Tahoma'
      Style.Font.Style = []
      Style.IsFontAssigned = True
      TabOrder = 5
      Width = 289
    end
    object lbl_KontaktAnrede: TcxLabel
      Left = 8
      Top = 23
      Caption = 'Anrede:'
      ParentFont = False
      Style.Font.Charset = DEFAULT_CHARSET
      Style.Font.Color = clWindowText
      Style.Font.Height = -11
      Style.Font.Name = 'Tahoma'
      Style.Font.Style = []
      Style.IsFontAssigned = True
      Transparent = True
    end
    object lbl_KontaktEmail1: TcxLabel
      Left = 8
      Top = 320
      Caption = 'E-Mail 1:'
      ParentFont = False
      Style.Font.Charset = DEFAULT_CHARSET
      Style.Font.Color = clWindowText
      Style.Font.Height = -11
      Style.Font.Name = 'Tahoma'
      Style.Font.Style = []
      Style.IsFontAssigned = True
      Transparent = True
    end
    object lbl_KontaktEmail2: TcxLabel
      Left = 8
      Top = 347
      Caption = 'E-Mail 2:'
      ParentFont = False
      Style.Font.Charset = DEFAULT_CHARSET
      Style.Font.Color = clWindowText
      Style.Font.Height = -11
      Style.Font.Name = 'Tahoma'
      Style.Font.Style = []
      Style.IsFontAssigned = True
      Transparent = True
    end
    object lbl_KontaktGeburtsland: TcxLabel
      Left = 8
      Top = 133
      Caption = 'Geburtsland:'
      ParentFont = False
      Style.Font.Charset = DEFAULT_CHARSET
      Style.Font.Color = clWindowText
      Style.Font.Height = -11
      Style.Font.Name = 'Tahoma'
      Style.Font.Style = []
      Style.IsFontAssigned = True
      Transparent = True
    end
    object lbl_KontaktGeburtsname: TcxLabel
      Left = 8
      Top = 106
      Caption = 'Geburtsname:'
      ParentFont = False
      Style.Font.Charset = DEFAULT_CHARSET
      Style.Font.Color = clWindowText
      Style.Font.Height = -11
      Style.Font.Name = 'Tahoma'
      Style.Font.Style = []
      Style.IsFontAssigned = True
      Transparent = True
    end
    object lbl_KontaktHandy: TcxLabel
      Left = 8
      Top = 293
      Caption = 'Handy:'
      ParentFont = False
      Style.Font.Charset = DEFAULT_CHARSET
      Style.Font.Color = clWindowText
      Style.Font.Height = -11
      Style.Font.Name = 'Tahoma'
      Style.Font.Style = []
      Style.IsFontAssigned = True
      Transparent = True
    end
    object lbl_KontaktNachname: TcxLabel
      Left = 9
      Top = 77
      Caption = 'Nachname:'
      ParentFont = False
      Style.Font.Charset = DEFAULT_CHARSET
      Style.Font.Color = clWindowText
      Style.Font.Height = -11
      Style.Font.Name = 'Tahoma'
      Style.Font.Style = []
      Style.IsFontAssigned = True
      Transparent = True
    end
    object lbl_KontaktName: TcxLabel
      Left = 9
      Top = 50
      Caption = 'Vorname:'
      ParentFont = False
      Style.Font.Charset = DEFAULT_CHARSET
      Style.Font.Color = clWindowText
      Style.Font.Height = -11
      Style.Font.Name = 'Tahoma'
      Style.Font.Style = []
      Style.IsFontAssigned = True
      Transparent = True
    end
    object lbl_KontaktPLZOrt: TcxLabel
      Left = 8
      Top = 212
      Caption = 'Plz - Ort:'
      ParentFont = False
      Style.Font.Charset = DEFAULT_CHARSET
      Style.Font.Color = clWindowText
      Style.Font.Height = -11
      Style.Font.Name = 'Tahoma'
      Style.Font.Style = []
      Style.IsFontAssigned = True
      Transparent = True
    end
    object lbl_KontaktStrasse: TcxLabel
      Left = 8
      Top = 185
      Caption = 'Stra'#223'e:'
      ParentFont = False
      Style.Font.Charset = DEFAULT_CHARSET
      Style.Font.Color = clWindowText
      Style.Font.Height = -11
      Style.Font.Name = 'Tahoma'
      Style.Font.Style = []
      Style.IsFontAssigned = True
      Transparent = True
    end
    object lbl_KontaktTelefon1: TcxLabel
      Left = 8
      Top = 239
      Caption = 'Telefon 1:'
      ParentFont = False
      Style.Font.Charset = DEFAULT_CHARSET
      Style.Font.Color = clWindowText
      Style.Font.Height = -11
      Style.Font.Name = 'Tahoma'
      Style.Font.Style = []
      Style.IsFontAssigned = True
      Transparent = True
    end
    object lbl_KontaktTelefon2: TcxLabel
      Left = 8
      Top = 266
      Caption = 'Telefon 2:'
      ParentFont = False
      Style.Font.Charset = DEFAULT_CHARSET
      Style.Font.Color = clWindowText
      Style.Font.Height = -11
      Style.Font.Name = 'Tahoma'
      Style.Font.Style = []
      Style.IsFontAssigned = True
      Transparent = True
    end
    object lbl_KontaktZusatz: TcxLabel
      Left = 8
      Top = 160
      Caption = 'Zusatz:'
      ParentFont = False
      Style.Font.Charset = DEFAULT_CHARSET
      Style.Font.Color = clWindowText
      Style.Font.Height = -11
      Style.Font.Name = 'Tahoma'
      Style.Font.Style = []
      Style.IsFontAssigned = True
      Transparent = True
    end
  end
  object pc_Kontakte_Kontakte_Adressen: TcxPageControl
    AlignWithMargins = True
    Left = 394
    Top = 63
    Width = 1206
    Height = 837
    Margins.Left = 0
    Margins.Top = 0
    Margins.Right = 0
    Margins.Bottom = 0
    Align = alClient
    BiDiMode = bdLeftToRight
    Color = clBtnFace
    ParentBackground = False
    ParentBiDiMode = False
    ParentColor = False
    TabOrder = 1
    Properties.ActivePage = ts_A_Zusatz
    Properties.CustomButtons.Buttons = <>
    Properties.Options = [pcoAlwaysShowGoDialogButton, pcoGradient, pcoGradientClientArea]
    Properties.TabSlants.Kind = skCutCorner
    Properties.TabWidth = 100
    ClientRectBottom = 831
    ClientRectLeft = 2
    ClientRectRight = 1200
    ClientRectTop = 29
    object ts_A_Zusatz: TcxTabSheet
      Caption = 'Zusatz'
      ImageIndex = 0
      object grpbx_KontakteZusatzSonstige: TcxGroupBox
        AlignWithMargins = True
        Left = 0
        Top = 187
        Margins.Left = 0
        Margins.Top = 0
        Margins.Right = 0
        Margins.Bottom = 0
        Align = alClient
        Caption = 'Sonstige Informationen'
        TabOrder = 1
        Height = 615
        Width = 1198
        object mem_KontakteZusatzSonstige: TcxDBMemo
          Left = 8
          Top = 24
          DataBinding.DataField = 'Info'
          DataBinding.DataSource = ds_Kontakte
          ParentFont = False
          Style.BorderStyle = ebsNone
          Style.Font.Charset = DEFAULT_CHARSET
          Style.Font.Color = clWindowText
          Style.Font.Height = -11
          Style.Font.Name = 'Tahoma'
          Style.Font.Style = []
          Style.IsFontAssigned = True
          TabOrder = 0
          Height = 57
          Width = 640
        end
      end
      object grpbx_KontakteZusatz: TcxGroupBox
        AlignWithMargins = True
        Left = 0
        Top = 0
        Margins.Left = 0
        Margins.Top = 0
        Margins.Right = 0
        Margins.Bottom = 0
        Align = alTop
        Caption = 'Zusatzinformation'
        TabOrder = 0
        Height = 187
        Width = 1198
        object lbl_KontaktZusatzFamilienstand: TcxLabel
          Left = 184
          Top = 91
          Caption = 'Familienstand:'
          ParentFont = False
          Style.Font.Charset = DEFAULT_CHARSET
          Style.Font.Color = clWindowText
          Style.Font.Height = -11
          Style.Font.Name = 'Tahoma'
          Style.Font.Style = []
          Style.IsFontAssigned = True
          Transparent = True
        end
        object lbl_KontaktZusatzGeburtsdatum: TcxLabel
          Left = 184
          Top = 37
          Caption = 'Geburtsdatum:'
          ParentFont = False
          Style.Font.Charset = DEFAULT_CHARSET
          Style.Font.Color = clWindowText
          Style.Font.Height = -11
          Style.Font.Name = 'Tahoma'
          Style.Font.Style = []
          Style.IsFontAssigned = True
          Transparent = True
        end
        object lbl_KontaktZusatzGeschlecht: TcxLabel
          Left = 184
          Top = 64
          Caption = 'Geschlecht:'
          ParentFont = False
          Style.Font.Charset = DEFAULT_CHARSET
          Style.Font.Color = clWindowText
          Style.Font.Height = -11
          Style.Font.Name = 'Tahoma'
          Style.Font.Style = []
          Style.IsFontAssigned = True
          Transparent = True
        end
        object lbl_KontaktZusatzkonfession: TcxLabel
          Left = 184
          Top = 145
          Caption = 'Konfession:'
          ParentFont = False
          Style.Font.Charset = DEFAULT_CHARSET
          Style.Font.Color = clWindowText
          Style.Font.Height = -11
          Style.Font.Name = 'Tahoma'
          Style.Font.Style = []
          Style.IsFontAssigned = True
          Transparent = True
        end
        object lbl_KontaktZusatzStaatsanghoerigkeit: TcxLabel
          Left = 184
          Top = 118
          Caption = 'Staatsangeh'#246'rigkeit:'
          ParentFont = False
          Style.Font.Charset = DEFAULT_CHARSET
          Style.Font.Color = clWindowText
          Style.Font.Height = -11
          Style.Font.Name = 'Tahoma'
          Style.Font.Style = []
          Style.IsFontAssigned = True
          Transparent = True
        end
        object dtEdt_KontaktZusatzGeburtsdatum: TcxDBDateEdit
          Left = 288
          Top = 34
          DataBinding.DataField = 'Geburtsdatum'
          DataBinding.DataSource = ds_Kontakte
          ParentFont = False
          Style.BorderStyle = ebsFlat
          Style.Font.Charset = DEFAULT_CHARSET
          Style.Font.Color = clWindowText
          Style.Font.Height = -11
          Style.Font.Name = 'Tahoma'
          Style.Font.Style = []
          Style.IsFontAssigned = True
          TabOrder = 0
          Width = 360
        end
        object lucmbbx_KontaktZusatzFamilienstand: TcxDBLookupComboBox
          Left = 288
          Top = 88
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
          Style.BorderStyle = ebsFlat
          Style.Font.Charset = DEFAULT_CHARSET
          Style.Font.Color = clWindowText
          Style.Font.Height = -11
          Style.Font.Name = 'Tahoma'
          Style.Font.Style = []
          Style.IsFontAssigned = True
          TabOrder = 2
          Width = 360
        end
        object lucmbbx_KontaktZusatzGeschlecht: TcxDBLookupComboBox
          Left = 288
          Top = 61
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
          Style.BorderStyle = ebsFlat
          Style.Font.Charset = DEFAULT_CHARSET
          Style.Font.Color = clWindowText
          Style.Font.Height = -11
          Style.Font.Name = 'Tahoma'
          Style.Font.Style = []
          Style.IsFontAssigned = True
          TabOrder = 1
          Width = 360
        end
        object lucmbbx_KontaktZusatzkonfession: TcxDBLookupComboBox
          Left = 288
          Top = 142
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
          Style.BorderStyle = ebsFlat
          Style.Font.Charset = DEFAULT_CHARSET
          Style.Font.Color = clWindowText
          Style.Font.Height = -11
          Style.Font.Name = 'Tahoma'
          Style.Font.Style = []
          Style.IsFontAssigned = True
          TabOrder = 4
          Width = 360
        end
        object lucmbbx_KontaktZusatzStaatsanghoerigkeit: TcxDBLookupComboBox
          Left = 288
          Top = 115
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
          Style.BorderStyle = ebsFlat
          Style.Font.Charset = DEFAULT_CHARSET
          Style.Font.Color = clWindowText
          Style.Font.Height = -11
          Style.Font.Name = 'Tahoma'
          Style.Font.Style = []
          Style.IsFontAssigned = True
          TabOrder = 3
          Width = 360
        end
        object pnl_KontaktZusatzPicture: TcxGroupBox
          Left = 8
          Top = 24
          PanelStyle.Active = True
          Style.BorderStyle = ebsNone
          TabOrder = 10
          Height = 150
          Width = 150
          object img_KontaktZusatzPicture: TcxDBImage
            Left = -4
            Top = 1
            TabStop = False
            DataBinding.DataField = 'Bild'
            DataBinding.DataSource = ds_Kontakte
            Properties.FitMode = ifmProportionalStretch
            Properties.GraphicClassName = 'TdxSmartImage'
            Style.BorderStyle = ebsFlat
            TabOrder = 0
            Height = 150
            Width = 150
          end
        end
      end
    end
    object ts_B_Geschaeftlich: TcxTabSheet
      Caption = 'Gesch'#228'ftlich'
      ImageIndex = 2
      object grpbx_KontakteGeschaeftlich: TcxGroupBox
        Left = 0
        Top = 0
        Margins.Left = 0
        Margins.Top = 0
        Margins.Right = 0
        Margins.Bottom = 0
        Align = alClient
        Caption = 'Kontakdaten Gesch'#228'ftlich'
        TabOrder = 0
        Height = 802
        Width = 1198
        object edt_KontaktGeschaeftlichAbteilung: TcxDBTextEdit
          Left = 113
          Top = 101
          DataBinding.DataField = 'Abteilung_Ges'
          DataBinding.DataSource = ds_Kontakte
          ParentFont = False
          Style.BorderStyle = ebsFlat
          Style.Font.Charset = DEFAULT_CHARSET
          Style.Font.Color = clWindowText
          Style.Font.Height = -11
          Style.Font.Name = 'Tahoma'
          Style.Font.Style = []
          Style.IsFontAssigned = True
          TabOrder = 4
          Width = 535
        end
        object edt_KontaktGeschaeftlichEMail: TcxDBTextEdit
          Left = 113
          Top = 182
          DataBinding.DataField = 'E_Mail_Ges'
          DataBinding.DataSource = ds_Kontakte
          ParentFont = False
          Style.BorderStyle = ebsFlat
          Style.Font.Charset = DEFAULT_CHARSET
          Style.Font.Color = clWindowText
          Style.Font.Height = -11
          Style.Font.Name = 'Tahoma'
          Style.Font.Style = []
          Style.IsFontAssigned = True
          TabOrder = 6
          Width = 535
        end
        object edt_KontaktGeschaeftlichFirma: TcxDBTextEdit
          Left = 113
          Top = 20
          DataBinding.DataField = 'Firma'
          DataBinding.DataSource = ds_Kontakte
          ParentFont = False
          Style.BorderStyle = ebsFlat
          Style.Font.Charset = DEFAULT_CHARSET
          Style.Font.Color = clWindowText
          Style.Font.Height = -11
          Style.Font.Name = 'Tahoma'
          Style.Font.Style = []
          Style.IsFontAssigned = True
          TabOrder = 0
          Width = 535
        end
        object edt_KontaktGeschaeftlichInternet: TcxDBTextEdit
          Left = 113
          Top = 209
          DataBinding.DataField = 'Internet_Ges'
          DataBinding.DataSource = ds_Kontakte
          ParentFont = False
          Style.BorderStyle = ebsFlat
          Style.Font.Charset = DEFAULT_CHARSET
          Style.Font.Color = clWindowText
          Style.Font.Height = -11
          Style.Font.Name = 'Tahoma'
          Style.Font.Style = []
          Style.IsFontAssigned = True
          TabOrder = 7
          Width = 535
        end
        object edt_KontaktGeschaeftlichOrt: TcxDBTextEdit
          Left = 191
          Top = 74
          DataBinding.DataField = 'Ort_Ges'
          DataBinding.DataSource = ds_Kontakte
          ParentFont = False
          Style.BorderStyle = ebsFlat
          Style.Font.Charset = DEFAULT_CHARSET
          Style.Font.Color = clWindowText
          Style.Font.Height = -11
          Style.Font.Name = 'Tahoma'
          Style.Font.Style = []
          Style.IsFontAssigned = True
          TabOrder = 3
          Width = 457
        end
        object edt_KontaktGeschaeftlichPLZ: TcxDBTextEdit
          Left = 113
          Top = 74
          DataBinding.DataField = 'PLZ_Ges'
          DataBinding.DataSource = ds_Kontakte
          ParentFont = False
          Style.BorderStyle = ebsFlat
          Style.Font.Charset = DEFAULT_CHARSET
          Style.Font.Color = clWindowText
          Style.Font.Height = -11
          Style.Font.Name = 'Tahoma'
          Style.Font.Style = []
          Style.IsFontAssigned = True
          TabOrder = 2
          Width = 72
        end
        object edt_KontaktGeschaeftlichStrasse: TcxDBTextEdit
          Left = 113
          Top = 47
          DataBinding.DataField = 'Strasse_Ges'
          DataBinding.DataSource = ds_Kontakte
          ParentFont = False
          Style.BorderStyle = ebsFlat
          Style.Font.Charset = DEFAULT_CHARSET
          Style.Font.Color = clWindowText
          Style.Font.Height = -11
          Style.Font.Name = 'Tahoma'
          Style.Font.Style = []
          Style.IsFontAssigned = True
          TabOrder = 1
          Width = 535
        end
        object edt_KontaktGeschaeftlichTelefonZentrale: TcxDBTextEdit
          Left = 113
          Top = 128
          DataBinding.DataField = 'Zentrale_Ges'
          DataBinding.DataSource = ds_Kontakte
          ParentFont = False
          Style.BorderStyle = ebsFlat
          Style.Font.Charset = DEFAULT_CHARSET
          Style.Font.Color = clWindowText
          Style.Font.Height = -11
          Style.Font.Name = 'Tahoma'
          Style.Font.Style = []
          Style.IsFontAssigned = True
          TabOrder = 5
          Width = 535
        end
        object lbl_KontaktGeschaeftlichAbteilung: TcxLabel
          Left = 8
          Top = 104
          Caption = 'Abteilung:'
          ParentFont = False
          Style.Font.Charset = DEFAULT_CHARSET
          Style.Font.Color = clWindowText
          Style.Font.Height = -11
          Style.Font.Name = 'Tahoma'
          Style.Font.Style = []
          Style.IsFontAssigned = True
          Transparent = True
        end
        object lbl_KontaktGeschaeftlichEMail: TcxLabel
          Left = 8
          Top = 183
          Caption = 'E-Mail:'
          ParentFont = False
          Style.Font.Charset = DEFAULT_CHARSET
          Style.Font.Color = clWindowText
          Style.Font.Height = -11
          Style.Font.Name = 'Tahoma'
          Style.Font.Style = []
          Style.IsFontAssigned = True
          Transparent = True
        end
        object lbl_KontaktGeschaeftlichFirma: TcxLabel
          Left = 8
          Top = 23
          Caption = 'Firma:'
          ParentFont = False
          Style.Font.Charset = DEFAULT_CHARSET
          Style.Font.Color = clWindowText
          Style.Font.Height = -11
          Style.Font.Name = 'Tahoma'
          Style.Font.Style = []
          Style.IsFontAssigned = True
          Transparent = True
        end
        object lbl_KontaktGeschaeftlichInternet: TcxLabel
          Left = 8
          Top = 210
          Caption = 'Internet:'
          ParentFont = False
          Style.Font.Charset = DEFAULT_CHARSET
          Style.Font.Color = clWindowText
          Style.Font.Height = -11
          Style.Font.Name = 'Tahoma'
          Style.Font.Style = []
          Style.IsFontAssigned = True
          Transparent = True
        end
        object lbl_KontaktGeschaeftlichPLZOrt: TcxLabel
          Left = 8
          Top = 77
          Caption = 'Plz - Ort:'
          ParentFont = False
          Style.Font.Charset = DEFAULT_CHARSET
          Style.Font.Color = clWindowText
          Style.Font.Height = -11
          Style.Font.Name = 'Tahoma'
          Style.Font.Style = []
          Style.IsFontAssigned = True
          Transparent = True
        end
        object lbl_KontaktGeschaeftlichStrasse: TcxLabel
          Left = 8
          Top = 50
          Caption = 'Stra'#223'e:'
          ParentFont = False
          Style.Font.Charset = DEFAULT_CHARSET
          Style.Font.Color = clWindowText
          Style.Font.Height = -11
          Style.Font.Name = 'Tahoma'
          Style.Font.Style = []
          Style.IsFontAssigned = True
          Transparent = True
        end
        object lbl_KontaktGeschaeftlichTelefonZentrale: TcxLabel
          Left = 8
          Top = 129
          Caption = 'Telefon Zentrale:'
          ParentFont = False
          Style.Font.Charset = DEFAULT_CHARSET
          Style.Font.Color = clWindowText
          Style.Font.Height = -11
          Style.Font.Name = 'Tahoma'
          Style.Font.Style = []
          Style.IsFontAssigned = True
          Transparent = True
        end
        object edt_KontaktGeschaeftlichTelefonDurchwahl: TcxDBTextEdit
          Left = 113
          Top = 155
          DataBinding.DataField = 'Telefon_Ges'
          DataBinding.DataSource = ds_Kontakte
          ParentFont = False
          Style.BorderStyle = ebsFlat
          Style.Font.Charset = DEFAULT_CHARSET
          Style.Font.Color = clWindowText
          Style.Font.Height = -11
          Style.Font.Name = 'Tahoma'
          Style.Font.Style = []
          Style.IsFontAssigned = True
          TabOrder = 15
          Width = 535
        end
        object cxLabel4: TcxLabel
          Left = 8
          Top = 156
          Caption = 'Telefon Durchwahl:'
          ParentFont = False
          Style.Font.Charset = DEFAULT_CHARSET
          Style.Font.Color = clWindowText
          Style.Font.Height = -11
          Style.Font.Name = 'Tahoma'
          Style.Font.Style = []
          Style.IsFontAssigned = True
          Transparent = True
        end
      end
    end
    object ts_B_Ze: TcxTabSheet
      Caption = 'Zeiterfassung'
      ImageIndex = 2
      object grpbx_ZE: TcxGroupBox
        Left = 0
        Top = 0
        Align = alClient
        Caption = 'Zeiterfassung'
        TabOrder = 0
        ExplicitLeft = 1
        Height = 802
        Width = 1198
        object lbl_Sollstunden: TcxLabel
          Left = 8
          Top = 21
          Caption = 'Sollstunden:'
          ParentFont = False
          Style.Font.Charset = DEFAULT_CHARSET
          Style.Font.Color = clWindowText
          Style.Font.Height = -11
          Style.Font.Name = 'Tahoma'
          Style.Font.Style = []
          Style.IsFontAssigned = True
          Transparent = True
        end
        object lbl_CalWork: TcxLabel
          Left = 8
          Top = 75
          Caption = 'Kalender Arbeitszeit:'
          ParentFont = False
          Style.Font.Charset = DEFAULT_CHARSET
          Style.Font.Color = clWindowText
          Style.Font.Height = -11
          Style.Font.Name = 'Tahoma'
          Style.Font.Style = []
          Style.IsFontAssigned = True
          Transparent = True
        end
        object lbl_CalBreak: TcxLabel
          Left = 8
          Top = 129
          Caption = 'Kalender Pause:'
          ParentFont = False
          Style.Font.Charset = DEFAULT_CHARSET
          Style.Font.Color = clWindowText
          Style.Font.Height = -11
          Style.Font.Name = 'Tahoma'
          Style.Font.Style = []
          Style.IsFontAssigned = True
          Transparent = True
        end
        object tedt_Sollstunden: TcxDBTimeEdit
          Left = 113
          Top = 20
          DataBinding.DataField = 'Sollstunden'
          DataBinding.DataSource = ds_Kontakte
          Properties.SpinButtons.Visible = False
          Properties.TimeFormat = tfHourMin
          TabOrder = 3
          Width = 535
        end
        object colcmbbx_CalWork: TcxDBColorComboBox
          Left = 113
          Top = 74
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
          Style.IsFontAssigned = True
          TabOrder = 4
          Width = 535
        end
        object colcmbbx_CalBreak: TcxDBColorComboBox
          Left = 113
          Top = 128
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
          Style.IsFontAssigned = True
          TabOrder = 5
          Width = 535
        end
        object colcmbbx_FontBreak: TcxDBColorComboBox
          Left = 113
          Top = 101
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
          Style.IsFontAssigned = True
          TabOrder = 6
          Width = 535
        end
        object colcmbbx_FontWork: TcxDBColorComboBox
          Left = 113
          Top = 47
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
          Style.IsFontAssigned = True
          TabOrder = 7
          Width = 535
        end
        object lbl_FontBreak: TcxLabel
          Left = 8
          Top = 102
          Caption = 'Schrift Pause:'
          ParentFont = False
          Style.Font.Charset = DEFAULT_CHARSET
          Style.Font.Color = clWindowText
          Style.Font.Height = -11
          Style.Font.Name = 'Tahoma'
          Style.Font.Style = []
          Style.IsFontAssigned = True
          Transparent = True
        end
        object lbl_FontWork: TcxLabel
          Left = 8
          Top = 48
          Caption = 'Schrift Arbeitszeit:'
          ParentFont = False
          Style.Font.Charset = DEFAULT_CHARSET
          Style.Font.Color = clWindowText
          Style.Font.Height = -11
          Style.Font.Name = 'Tahoma'
          Style.Font.Style = []
          Style.IsFontAssigned = True
          Transparent = True
        end
        object cxLabel1: TcxLabel
          Left = 8
          Top = 156
          Caption = 'Benutzer:'
          ParentFont = False
          Style.Font.Charset = DEFAULT_CHARSET
          Style.Font.Color = clWindowText
          Style.Font.Height = -11
          Style.Font.Name = 'Tahoma'
          Style.Font.Style = []
          Style.IsFontAssigned = True
          Transparent = True
        end
        object cxDBLookupComboBox1: TcxDBLookupComboBox
          Left = 113
          Top = 155
          DataBinding.DataField = 'ID_Zeiterfasser'
          DataBinding.DataSource = ds_Kontakte
          Properties.KeyFieldNames = 'ID'
          Properties.ListColumns = <
            item
              FieldName = 'Name'
            end>
          Properties.ListSource = dm_PCM.ds_Kalender_Benutzer
          TabOrder = 11
          Width = 535
        end
        object cxLabel6: TcxLabel
          Left = 8
          Top = 186
          Caption = 'Urlaubsanspruch:'
          ParentFont = False
          Style.Font.Charset = DEFAULT_CHARSET
          Style.Font.Color = clWindowText
          Style.Font.Height = -11
          Style.Font.Name = 'Tahoma'
          Style.Font.Style = []
          Style.IsFontAssigned = True
          Transparent = True
        end
        object cxDBSpinEdit1: TcxDBSpinEdit
          Left = 113
          Top = 184
          DataBinding.DataField = 'Urlaub'
          DataBinding.DataSource = ds_Kontakte
          Properties.Alignment.Horz = taLeftJustify
          Properties.SpinButtons.Visible = False
          TabOrder = 13
          Width = 535
        end
        object cxLabel5: TcxLabel
          Left = 8
          Top = 214
          Caption = 'Eintritt:'
          ParentFont = False
          Style.Font.Charset = DEFAULT_CHARSET
          Style.Font.Color = clWindowText
          Style.Font.Height = -11
          Style.Font.Name = 'Tahoma'
          Style.Font.Style = []
          Style.IsFontAssigned = True
          Transparent = True
        end
        object cxDBDateEdit1: TcxDBDateEdit
          Left = 113
          Top = 213
          DataBinding.DataField = 'Eintritt'
          DataBinding.DataSource = ds_Kontakte
          ParentFont = False
          Style.BorderStyle = ebsFlat
          Style.Font.Charset = DEFAULT_CHARSET
          Style.Font.Color = clWindowText
          Style.Font.Height = -11
          Style.Font.Name = 'Tahoma'
          Style.Font.Style = []
          Style.IsFontAssigned = True
          TabOrder = 15
          Width = 535
        end
        object cxLabel2: TcxLabel
          Left = 8
          Top = 244
          Caption = 'Benutzer:'
          ParentFont = False
          Style.Font.Charset = DEFAULT_CHARSET
          Style.Font.Color = clWindowText
          Style.Font.Height = -11
          Style.Font.Name = 'Tahoma'
          Style.Font.Style = []
          Style.IsFontAssigned = True
          Transparent = True
        end
        object cxDBLookupComboBox2: TcxDBLookupComboBox
          Left = 113
          Top = 242
          DataBinding.DataField = 'ID_Benutzer'
          DataBinding.DataSource = ds_Kontakte
          Properties.KeyFieldNames = 'ID'
          Properties.ListColumns = <
            item
              FieldName = 'Name'
            end>
          Properties.ListSource = dm_PCM.ds_Kalender_Benutzer
          TabOrder = 17
          Width = 535
        end
        object cxDBMaskEdit1: TcxDBMaskEdit
          Left = 113
          Top = 271
          DataBinding.DataField = 'OffsetResturlaub'
          DataBinding.DataSource = ds_Kontakte
          Properties.Alignment.Horz = taLeftJustify
          TabOrder = 18
          Width = 535
        end
        object cxDBMaskEdit2: TcxDBMaskEdit
          Left = 113
          Top = 300
          DataBinding.DataField = 'OffsetResturlaubJahr'
          DataBinding.DataSource = ds_Kontakte
          Properties.Alignment.Horz = taLeftJustify
          TabOrder = 19
          Width = 535
        end
        object cxLabel3: TcxLabel
          Left = 8
          Top = 273
          Caption = 'Resturlaub:'
          ParentFont = False
          Style.Font.Charset = DEFAULT_CHARSET
          Style.Font.Color = clWindowText
          Style.Font.Height = -11
          Style.Font.Name = 'Tahoma'
          Style.Font.Style = []
          Style.IsFontAssigned = True
          Transparent = True
        end
        object cxLabel7: TcxLabel
          Left = 8
          Top = 302
          Caption = 'Resturlaub zum Jahr:'
          ParentFont = False
          Style.Font.Charset = DEFAULT_CHARSET
          Style.Font.Color = clWindowText
          Style.Font.Height = -11
          Style.Font.Name = 'Tahoma'
          Style.Font.Style = []
          Style.IsFontAssigned = True
          Transparent = True
        end
        object cxDBMaskEdit3: TcxDBMaskEdit
          Left = 113
          Top = 329
          DataBinding.DataField = 'Personalnummer'
          DataBinding.DataSource = ds_Kontakte
          Properties.Alignment.Horz = taLeftJustify
          TabOrder = 22
          Width = 535
        end
        object cxLabel8: TcxLabel
          Left = 8
          Top = 331
          Caption = 'Personalnummer:'
          ParentFont = False
          Style.Font.Charset = DEFAULT_CHARSET
          Style.Font.Color = clWindowText
          Style.Font.Height = -11
          Style.Font.Name = 'Tahoma'
          Style.Font.Style = []
          Style.IsFontAssigned = True
          Transparent = True
        end
      end
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
  object brmgr_User: TdxBarManager
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
    ImageOptions.LargeImages = dm_PCM.imglst_32x32
    PopupMenuLinks = <>
    Style = bmsUseLookAndFeel
    UseSystemFont = True
    Left = 520
    Top = 336
    PixelsPerInch = 96
    DockControlHeights = (
      0
      0
      63
      0)
    object tb_User: TdxBar
      Caption = 'Custom 1'
      CaptionButtons = <>
      DockedDockingStyle = dsTop
      DockedLeft = 0
      DockedTop = 0
      DockingStyle = dsTop
      FloatLeft = 1077
      FloatTop = 2
      FloatClientWidth = 0
      FloatClientHeight = 0
      ItemLinks = <
        item
          Visible = True
          ItemName = 'btn_Save'
        end
        item
          Visible = True
          ItemName = 'btn_Close'
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
    object btn_Save: TdxBarLargeButton
      Caption = 'Speichern'
      Category = 0
      Hint = 'Speichern'
      Visible = ivAlways
      OnClick = btn_SaveClick
      AutoGrayScale = False
      LargeImageIndex = 12
      Width = 100
    end
    object btn_Close: TdxBarLargeButton
      Align = iaRight
      Caption = 'Schlie'#223'en'
      Category = 0
      Hint = 'Schlie'#223'en'
      Visible = ivAlways
      OnClick = btn_CloseClick
      AutoGrayScale = False
      LargeImageIndex = 81
      Width = 100
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
end
