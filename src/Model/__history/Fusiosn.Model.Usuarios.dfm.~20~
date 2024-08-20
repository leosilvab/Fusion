object dmUsuarios: TdmUsuarios
  Height = 278
  Width = 354
  object sqlUsuarios: TFDQuery
    Connection = dmConexao.SQLConexao
    SQL.Strings = (
      'select * from fx_usuario')
    Left = 32
    Top = 24
  end
  object dspUsuarios: TDataSetProvider
    DataSet = sqlUsuarios
    Options = [poAllowCommandText, poUseQuoteChar]
    Left = 104
    Top = 24
  end
  object cdsUsuarios: TClientDataSet
    Aggregates = <>
    Params = <>
    ProviderName = 'dspUsuarios'
    Left = 168
    Top = 24
    object cdsUsuariosID: TIntegerField
      FieldName = 'ID'
      Origin = 'id'
      ProviderFlags = [pfInWhere, pfInKey]
    end
    object cdsUsuariosNOME: TStringField
      FieldName = 'NOME'
      Origin = 'nome'
      Size = 50
    end
    object cdsUsuariosLOGIN: TStringField
      FieldName = 'LOGIN'
      Origin = 'login'
    end
    object cdsUsuariosSENHA: TStringField
      FieldName = 'SENHA'
      Origin = 'senha'
    end
    object cdsUsuariosSENHA_TEMP: TStringField
      FieldName = 'SENHA_TEMP'
      Origin = 'senha_temp'
      Size = 1
    end
    object cdsUsuariosDATA_CADASTRO: TDateField
      FieldName = 'DATA_CADASTRO'
      Origin = 'data_cadastro'
    end
    object cdsUsuariosSTATUS: TStringField
      FieldName = 'STATUS'
      Origin = 'status'
    end
    object cdsUsuariosEMAIL: TStringField
      FieldName = 'EMAIL'
      Origin = 'email'
    end
    object cdsUsuariosADMIN: TStringField
      FieldName = 'ADMIN'
      Origin = 'admin'
      Size = 1
    end
  end
  object qryAuxiliar: TFDQuery
    Connection = dmConexao.SQLConexao
    Left = 32
    Top = 88
  end
end
