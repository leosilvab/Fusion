inherited frmCaixa: TfrmCaixa
  Caption = 'frmCaixa'
  TextHeight = 13
  inherited CardPadrao: TCardPanel
    inherited PesquisaPadrao: TCard
      inherited Panel3: TPanel
        inherited Image1: TImage
          OnClick = Image1Click
        end
      end
      inherited Panel4: TPanel
        inherited gdUsuario: TDBGrid
          Columns = <
            item
              Expanded = False
              FieldName = 'NUMERO_DOC'
              Title.Caption = 'Documento'
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'DESCRICAO'
              Title.Caption = 'Descri'#231#227'o'
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'TIPO'
              Title.Caption = 'Tipo'
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'VALOR'
              Title.Caption = 'Valor'
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'DATA_CADASTRO'
              Title.Caption = 'Data'
              Visible = True
            end>
        end
      end
    end
  end
  inherited dsGlobal: TDataSource
    DataSet = dmCaixa.cdsCaixa
  end
end
