object dmConexao: TdmConexao
  OnCreate = DataModuleCreate
  Height = 296
  Width = 348
  object FDGUIxWaitCursor1: TFDGUIxWaitCursor
    Provider = 'Forms'
    Left = 256
    Top = 232
  end
  object SQLConexao: TFDConnection
    Params.Strings = (
      'User_Name=root'
      'Database=fox_sys'
      'Password=root'
      'DriverID=MySQL')
    Connected = True
    Left = 256
    Top = 88
  end
  object sqlObject: TFDQuery
    Connection = SQLConexao
    Left = 256
    Top = 24
  end
end
