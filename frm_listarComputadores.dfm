object frmComputador: TfrmComputador
  Left = 0
  Top = 0
  BorderStyle = bsDialog
  Caption = 'Computadores'
  ClientHeight = 480
  ClientWidth = 1222
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  Position = poDesktopCenter
  PixelsPerInch = 96
  TextHeight = 13
  object DBGrid1: TDBGrid
    Left = 8
    Top = 48
    Width = 1206
    Height = 424
    DataSource = DataSource1
    TabOrder = 0
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
    Columns = <
      item
        Expanded = False
        FieldName = 'idnota'
        Title.Caption = 'Nota'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'tipo'
        Title.Caption = 'Tipo'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'cor'
        Title.Caption = 'Cor'
        Width = 150
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'modelo'
        Title.Caption = 'Modelo'
        Width = 150
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'discorigido'
        Title.Caption = 'Disco Rigido'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'memoria'
        Title.Caption = 'Memoria Ram'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'memoriatipo'
        Title.Caption = 'Tipo de Mem'#243'ria'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'processador'
        Title.Caption = 'Socket do Processador'
        Width = 150
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'processador_tipo'
        Title.Caption = 'Tipo de Processador'
        Width = 150
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'processador_serie'
        Title.Caption = 'Serie do Processador'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'placamae'
        Title.Caption = 'Placa M'#227'e'
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'bios'
        Title.Caption = 'Bios'
        Visible = True
      end>
  end
  object RadioGroup1: TRadioGroup
    Left = 8
    Top = 1
    Width = 417
    Height = 41
    Caption = 'Listagem'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 1
  end
  object RadioButton3: TRadioButton
    Left = 304
    Top = 19
    Width = 113
    Height = 17
    Caption = 'Todos'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 2
  end
  object RadioButton2: TRadioButton
    Left = 160
    Top = 19
    Width = 113
    Height = 17
    Caption = 'Finalizados'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 3
  end
  object RadioButton1: TRadioButton
    Left = 24
    Top = 18
    Width = 113
    Height = 17
    Caption = 'Pendentes'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Tahoma'
    Font.Style = [fsBold]
    ParentFont = False
    TabOrder = 4
  end
  object ADOConnection1: TADOConnection
    Connected = True
    ConnectionString = 
      'Provider=Microsoft.Jet.OLEDB.4.0;Data Source=C:\Hefesto\dbase.md' +
      'b;Persist Security Info=False'
    LoginPrompt = False
    Mode = cmShareDenyNone
    Provider = 'Microsoft.Jet.OLEDB.4.0'
    Left = 152
    Top = 112
  end
  object ADOQuery1: TADOQuery
    Active = True
    Connection = ADOConnection1
    CursorType = ctStatic
    Parameters = <>
    SQL.Strings = (
      'SELECT '
      ''
      'nota.idnota, computador.tipo, computador.cor , computador.modelo'
      ''
      ''
      
        ', computador.discorigido, computador.memoria, computador.memoria' +
        'tipo'
      ''
      
        ', computador.processador, computador.processador_tipo, computado' +
        'r.processador_serie'
      ''
      ''
      ', computador.placamae, computador.bios'
      ''
      ''
      ''
      ''
      ''
      ''
      ''
      ''
      'FROM  computador,nota'
      ''
      'where computador.idcomputador = nota.idcomputador;')
    Left = 232
    Top = 120
  end
  object DataSource1: TDataSource
    DataSet = ADOQuery1
    Left = 304
    Top = 128
  end
  object Timer1: TTimer
    Left = 448
    Top = 8
  end
end
