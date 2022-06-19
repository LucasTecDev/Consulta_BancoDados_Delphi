object DM: TDM
  OldCreateOrder = False
  Height = 283
  Width = 488
  object conexao: TFDConnection
    Params.Strings = (
      'User_Name=root'
      'Database=aula'
      'DriverID=MySQL')
    Connected = True
    LoginPrompt = False
    Left = 64
    Top = 48
  end
  object sqlconsulta: TFDQuery
    Active = True
    Connection = conexao
    SQL.Strings = (
      'SELECT* FROM clientes')
    Left = 168
    Top = 48
    ParamData = <
      item
        Name = 'pConsulta'
      end>
  end
  object dsConsulta: TDataSource
    DataSet = sqlconsulta
    Left = 168
    Top = 112
  end
end
