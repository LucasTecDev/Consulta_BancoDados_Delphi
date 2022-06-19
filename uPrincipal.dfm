object Form1: TForm1
  Left = 0
  Top = 0
  Caption = 'Consulta a Banco de Dados'
  ClientHeight = 422
  ClientWidth = 667
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  OldCreateOrder = False
  PixelsPerInch = 96
  TextHeight = 13
  object LblConsulta: TLabel
    Left = 362
    Top = 16
    Width = 66
    Height = 13
    Caption = 'Digite o Nome'
  end
  object RdgOpcoes: TRadioGroup
    Left = 8
    Top = 8
    Width = 329
    Height = 65
    Caption = 'Op'#231#245'es de Consultas'
    Columns = 2
    ItemIndex = 0
    Items.Strings = (
      'Nome'
      'Bairro')
    TabOrder = 0
    OnClick = RdgOpcoesClick
  end
  object EdtConsulta: TEdit
    Left = 362
    Top = 35
    Width = 297
    Height = 21
    TabOrder = 1
  end
  object BTNConsulta: TButton
    Left = 8
    Top = 103
    Width = 649
    Height = 57
    Caption = 'Realizar Consultar'
    TabOrder = 2
    OnClick = BTNConsultaClick
  end
  object DBGrid1: TDBGrid
    Left = 8
    Top = 166
    Width = 649
    Height = 248
    DataSource = DM.dsConsulta
    TabOrder = 3
    TitleFont.Charset = DEFAULT_CHARSET
    TitleFont.Color = clWindowText
    TitleFont.Height = -11
    TitleFont.Name = 'Tahoma'
    TitleFont.Style = []
    Columns = <
      item
        Expanded = False
        FieldName = 'id'
        Title.Caption = '  ID'
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -11
        Title.Font.Name = 'Tahoma'
        Title.Font.Style = [fsBold]
        Width = 30
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'idade'
        Title.Caption = 'Idade'
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -11
        Title.Font.Name = 'Tahoma'
        Title.Font.Style = [fsBold]
        Width = 40
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'nome'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        Title.Caption = '                                   Nome'
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -11
        Title.Font.Name = 'Tahoma'
        Title.Font.Style = [fsBold]
        Width = 271
        Visible = True
      end
      item
        Expanded = False
        FieldName = 'bairro'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = clWindowText
        Font.Height = -11
        Font.Name = 'Tahoma'
        Font.Style = []
        Title.Caption = '                                     Bairro'
        Title.Font.Charset = DEFAULT_CHARSET
        Title.Font.Color = clWindowText
        Title.Font.Height = -11
        Title.Font.Name = 'Tahoma'
        Title.Font.Style = [fsBold]
        Width = 271
        Visible = True
      end>
  end
end
