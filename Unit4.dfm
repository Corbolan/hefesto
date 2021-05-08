object frm_oficina: Tfrm_oficina
  Left = 0
  Top = 0
  BorderStyle = bsDialog
  Caption = 'Oficina'
  ClientHeight = 642
  ClientWidth = 1194
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poDesktopCenter
  OnActivate = FormActivate
  PixelsPerInch = 96
  TextHeight = 13
  object Label3: TLabel
    Left = 24
    Top = 59
    Width = 103
    Height = 32
    Caption = 'Hor'#225'rio:'
    Color = clNavy
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clNavy
    Font.Height = -27
    Font.Name = 'Cambria'
    Font.Style = [fsBold]
    ParentColor = False
    ParentFont = False
  end
  object lbHora: TLabel
    Left = 144
    Top = 59
    Width = 17
    Height = 32
    Caption = 'X'
    Color = clNavy
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clRed
    Font.Height = -27
    Font.Name = 'Cambria'
    Font.Style = [fsBold]
    ParentColor = False
    ParentFont = False
  end
  object Label5: TLabel
    Left = 24
    Top = 8
    Width = 65
    Height = 32
    Caption = 'Data:'
    Color = clNavy
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clNavy
    Font.Height = -27
    Font.Name = 'Cambria'
    Font.Style = [fsBold]
    ParentColor = False
    ParentFont = False
  end
  object lbData: TLabel
    Left = 128
    Top = 8
    Width = 17
    Height = 32
    Caption = 'X'
    Color = clNavy
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clRed
    Font.Height = -27
    Font.Name = 'Cambria'
    Font.Style = [fsBold]
    ParentColor = False
    ParentFont = False
  end
  object GroupBox2: TGroupBox
    Left = 352
    Top = 24
    Width = 817
    Height = 425
    Caption = 'Consulta'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clDefault
    Font.Height = -13
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 0
    object Label1: TLabel
      Left = 344
      Top = 29
      Width = 63
      Height = 16
      Caption = 'Categoria'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clMaroon
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Label2: TLabel
      Left = 16
      Top = 29
      Width = 63
      Height = 16
      Caption = 'Categoria'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clMaroon
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
    end
    object Button4: TButton
      Left = 592
      Top = 25
      Width = 201
      Height = 65
      Caption = 'Buscar'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clDefault
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 0
    end
    object DBComboBox1: TDBComboBox
      Left = 344
      Top = 48
      Width = 185
      Height = 27
      Style = csDropDownList
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clNavy
      Font.Height = -16
      Font.Name = 'Cambria'
      Font.Style = [fsBold]
      Items.Strings = (
        'Computadores'
        'Notebooks'
        'Celulares'
        'Tablets'
        'IPhone'
        'IPad'
        '')
      ParentFont = False
      TabOrder = 1
    end
    object Edit1: TEdit
      Left = 16
      Top = 48
      Width = 305
      Height = 27
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clNavy
      Font.Height = -16
      Font.Name = 'Cambria'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 2
    end
    object DBGrid1: TDBGrid
      Left = 24
      Top = 112
      Width = 769
      Height = 310
      TabOrder = 3
      TitleFont.Charset = DEFAULT_CHARSET
      TitleFont.Color = clDefault
      TitleFont.Height = -13
      TitleFont.Name = 'Tahoma'
      TitleFont.Style = [fsBold]
      Columns = <
        item
          Expanded = False
          FieldName = 'idnota'
          Title.Caption = 'Nota'
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'nome'
          Title.Caption = 'Servi'#231'o'
          Width = 150
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'servicos.tipo'
          Title.Caption = 'Tipo de Servi'#231'o'
          Width = 200
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'computador.tipo'
          Title.Caption = 'Tipo de Computador'
          Width = 150
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'cor'
          Title.Caption = 'Cor'
          Width = 100
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'modelo'
          Title.Caption = 'Modelo'
          Width = 200
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'memoria'
          Title.Caption = 'Mem'#243'ria Ram'
          Width = 150
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'memoriatipo'
          Title.Caption = 'Tipo de Mem'#243'ria'
          Width = 150
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'discorigido'
          Title.Caption = 'Disco Rigido'
          Width = 150
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'placamae'
          Title.Caption = 'Placa-M'#227'e'
          Width = 150
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'bios'
          Title.Caption = 'Bios'
          Width = 300
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'processador'
          Title.Caption = 'Socket'
          Width = 200
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'processador_serie'
          Title.Caption = 'Serie'
          Width = 200
          Visible = True
        end
        item
          Expanded = False
          FieldName = 'processador_tipo'
          Title.Caption = 'Marca'
          Width = 200
          Visible = True
        end>
    end
  end
  object GroupBox3: TGroupBox
    Left = 24
    Top = 119
    Width = 300
    Height = 282
    Caption = 'Baixa de Equipamento'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -17
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 1
    object Button5: TButton
      Left = 5
      Top = 31
      Width = 150
      Height = 40
      Caption = 'Computadores'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clDefault
      Font.Height = -16
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 0
      OnClick = Button5Click
    end
    object Button6: TButton
      Left = 5
      Top = 156
      Width = 150
      Height = 40
      Caption = 'Celulares'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clDefault
      Font.Height = -16
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 1
    end
    object Button7: TButton
      Left = 5
      Top = 94
      Width = 150
      Height = 40
      Caption = 'Notebooks'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clDefault
      Font.Height = -16
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 2
    end
    object Button8: TButton
      Left = 5
      Top = 222
      Width = 150
      Height = 40
      Caption = 'Tablets'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clDefault
      Font.Height = -16
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 3
    end
    object Button9: TButton
      Left = 168
      Top = 31
      Width = 131
      Height = 40
      Caption = 'IPhone'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clDefault
      Font.Height = -16
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 4
    end
    object Button10: TButton
      Left = 168
      Top = 94
      Width = 131
      Height = 40
      Caption = 'IPad'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clDefault
      Font.Height = -16
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 5
    end
  end
  object GroupBox1: TGroupBox
    Left = 24
    Top = 415
    Width = 169
    Height = 202
    Caption = 'Acervo Bios'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -17
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 2
    object Button1: TButton
      Left = 5
      Top = 31
      Width = 150
      Height = 66
      Caption = 'Computadores'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clDefault
      Font.Height = -16
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 0
      OnClick = Button1Click
    end
    object Button3: TButton
      Left = 3
      Top = 117
      Width = 150
      Height = 68
      Caption = 'Notebooks'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clDefault
      Font.Height = -16
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 1
      OnClick = Button3Click
    end
  end
  object GroupBox4: TGroupBox
    Left = 201
    Top = 415
    Width = 169
    Height = 194
    Caption = 'Acervo ROM'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -17
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 3
    object Button2: TButton
      Left = 11
      Top = 32
      Width = 150
      Height = 30
      Caption = 'Celular'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clDefault
      Font.Height = -16
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 0
      OnClick = Button2Click
    end
    object Button11: TButton
      Left = 11
      Top = 66
      Width = 150
      Height = 30
      Caption = 'Tablet'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clDefault
      Font.Height = -16
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 1
      OnClick = Button11Click
    end
    object Button12: TButton
      Left = 11
      Top = 101
      Width = 150
      Height = 30
      Caption = 'IPhone'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clDefault
      Font.Height = -16
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 2
      OnClick = Button12Click
    end
    object Button13: TButton
      Left = 11
      Top = 137
      Width = 150
      Height = 30
      Caption = 'IPad'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clDefault
      Font.Height = -16
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 3
      OnClick = Button13Click
    end
  end
  object GroupBox5: TGroupBox
    Left = 376
    Top = 465
    Width = 769
    Height = 152
    Caption = 'Emiss'#227'o de Laudo'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -17
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 4
    object DBMemo1: TDBMemo
      Left = 16
      Top = 64
      Width = 737
      Height = 57
      DataField = 'laudo'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -13
      Font.Name = 'Tahoma'
      Font.Style = [fsBold]
      ParentFont = False
      TabOrder = 0
    end
    object DBComboBox2: TDBComboBox
      Left = 16
      Top = 29
      Width = 169
      Height = 29
      DataField = 'idnota'
      TabOrder = 1
    end
    object Button14: TButton
      Left = 600
      Top = 24
      Width = 147
      Height = 34
      Caption = 'Salvar'
      TabOrder = 2
    end
  end
  object Button15: TButton
    Left = 185
    Top = 341
    Width = 131
    Height = 40
    Caption = 'Or'#231'amento'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clDefault
    Font.Height = -16
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 5
  end
  object Timer1: TTimer
    Interval = 100
    OnTimer = Timer1Timer
    Left = 568
    Top = 448
  end
  object ADOConnection1: TADOConnection
    Connected = True
    ConnectionString = 
      'Provider=Microsoft.Jet.OLEDB.4.0;Data Source=C:\Hefesto\dbase.md' +
      'b;Persist Security Info=False'
    LoginPrompt = False
    Mode = cmShareDenyNone
    Provider = 'Microsoft.Jet.OLEDB.4.0'
    Left = 200
    Top = 8
  end
end
