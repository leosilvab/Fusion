inherited frmCadastroUsuario: TfrmCadastroUsuario
  Caption = 'Cadastro de Usu'#225'rio'
  Color = 16645367
  WindowState = wsMaximized
  TextHeight = 13
  inherited CardPadrao: TCardPanel
    OnCardChange = CardPadraoCardChange
    inherited PesquisaPadrao: TCard
      inherited Panel3: TPanel
        inherited Image1: TImage
          OnClick = Image1Click
        end
        inherited NomeText: TEdit
          CharCase = ecUpperCase
        end
      end
      inherited Panel4: TPanel
        inherited gdUsuario: TDBGrid
          Left = 0
          Top = 0
          Width = 653
          Height = 403
          Align = alClient
          Options = [dgTitles, dgIndicator, dgColumnResize, dgColLines, dgRowLines, dgTabs, dgConfirmDelete, dgCancelOnExit, dgTitleClick, dgTitleHotTrack]
          Columns = <
            item
              Expanded = False
              FieldName = 'ID'
              Title.Caption = 'C'#243'digo'
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'NOME'
              Title.Caption = 'Nome'
              Width = 150
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'LOGIN'
              Title.Caption = 'Login'
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'EMAIL'
              Title.Caption = 'E-mail'
              Width = 150
              Visible = True
            end
            item
              Expanded = False
              FieldName = 'STATUS'
              Title.Caption = 'Status'
              Width = 64
              Visible = True
            end>
        end
      end
      inherited Panel5: TPanel
        inherited Panel2: TPanel
          Left = 0
          Top = 0
          Width = 653
          Height = 76
          Align = alBottom
          ExplicitLeft = 0
          ExplicitTop = 0
          ExplicitWidth = 653
          ExplicitHeight = 76
          inherited btnAdd: TPanel
            inherited SpeedButton1: TSpeedButton
              OnClick = SpeedButton1Click
            end
          end
          inherited btnClose: TPanel
            inherited SpeedButton7: TSpeedButton
              OnClick = SpeedButton7Click
            end
          end
        end
      end
    end
    inherited CadastroPadrao: TCard
      inherited PnlHeader: TPanel
        inherited PnlTitle: TPanel
          inherited LblTitle: TLabel
            Width = 188
            Caption = 'Cadastro de Usu'#225'rios'
            ExplicitWidth = 188
          end
          inherited Label2: TLabel
            Width = 359
            Caption = 'Preencha as Informa'#231#245'es abaixo para Criar um Novo Usu'#225'rio'
            ExplicitWidth = 359
          end
        end
      end
      inherited PnlBody: TPanel
        inherited PnlContent: TPanel
          Width = 742
          ExplicitWidth = 742
          object lbSubTitulo: TLabel
            Left = 32
            Top = 9
            Width = 366
            Height = 21
            Caption = 'Adicione e Atualize as informa'#231#245'es dos usu'#225'rios'
            Color = clNavy
            Font.Charset = DEFAULT_CHARSET
            Font.Color = 7826464
            Font.Height = -16
            Font.Name = 'Segoe UI'
            Font.Style = [fsBold]
            ParentColor = False
            ParentFont = False
          end
          object lbl_Admin: TLabel
            Left = 53
            Top = 244
            Width = 83
            Height = 17
            Caption = 'Administrador'
            Color = clNavy
            Font.Charset = DEFAULT_CHARSET
            Font.Color = 7826464
            Font.Height = -13
            Font.Name = 'Segoe UI'
            Font.Style = []
            ParentColor = False
            ParentFont = False
          end
          object lbl_AlteraSenha: TLabel
            Left = 53
            Top = 264
            Width = 202
            Height = 17
            Caption = 'Alterar a senha no pr'#243'ximo Login?'
            Color = clNavy
            Font.Charset = DEFAULT_CHARSET
            Font.Color = 7826464
            Font.Height = -13
            Font.Name = 'Segoe UI'
            Font.Style = []
            ParentColor = False
            ParentFont = False
          end
          object Panel1: TPanel
            Left = 0
            Top = 36
            Width = 720
            Height = 1
            Color = clSilver
            Font.Charset = DEFAULT_CHARSET
            Font.Color = clWindowText
            Font.Height = 1
            Font.Name = 'Tahoma'
            Font.Style = []
            ParentBackground = False
            ParentFont = False
            TabOrder = 0
          end
          object PnlDados: TPanel
            Left = 13
            Top = 43
            Width = 500
            Height = 166
            BevelOuter = bvNone
            Color = clWhite
            ParentBackground = False
            TabOrder = 1
            object imgHide: TImage
              Left = 473
              Top = 123
              Width = 27
              Height = 20
              Cursor = crHandPoint
              Picture.Data = {
                0954506E67496D61676589504E470D0A1A0A0000000D49484452000000170000
                00170806000000E02AD4A0000000097048597300000B1300000B1301009A9C18
                000001AD4944415478DADDD54B28447114C7F13B798524C5464A2952CA4649D9
                504A24ECE559A62C287934E42D8F221616F24E2CAC288F25C92329290B5B1259
                612389647C4F9D5B3357775CC582539F6E33FFB9BFFFFF9EFBBF775C5EAFD7F8
                AD72FD89F0A87A4F0787D0C789E1AE1F0D27B893431F1609AFF20B6730D0B9A9
                C8461262E51C3CE00A07C8C7089650F1A92D36E11968401EE26D267E4638B650
                8C7727E112DA8318BCE977C101AE4E2619C3109EECC2C3308E3AFDBC826814E0
                02F378450BE270AFBFA9460476508E5B6B7824267D061B71894DBCA014A768C2
                A806CB628AB41D7348C63ECA706D8607E94D310365824334EBF7D2A25E74E971
                1AC71A28E3AD1A3C855CACCB0466B85B0764C58538D3B60CA24D579DAEDB6D16
                B5C8C21EB651A2ED8AD32BCD84C769F882F6D50C36BE136ED716B3BF523370FB
                EC902A9DF4CBB6D8DDD0020D91ED9583130D4EC42A529CDC50BBAD28758304CB
                56AC449AEE9E23275BD1B736744552760F9157C7420C870F9194BCDDFAB18647
                23F0E37FA7AB9576EE5A07ADE1ED18C0B25E9ED4572FAE73C3F24EF10B378B49
                BAE566F1DAAC317EA0FEC63FD1FF0AFF00BC89D2156EC532140000000049454E
                44AE426082}
              Visible = False
              OnClick = imgHideClick
            end
            object imgShow: TImage
              Left = 473
              Top = 123
              Width = 27
              Height = 20
              Cursor = crHandPoint
              Picture.Data = {
                0954506E67496D61676589504E470D0A1A0A0000000D49484452000000170000
                00170806000000E02AD4A0000000097048597300000B1300000B1301009A9C18
                000001344944415478DAEDD43F48026118C7F1A4222842845A5A82A0081A0511
                9C829622B05D425D82868230E4DA6CA921B1311AAAD529306C2CA23FB4050EAD
                8A044EE1265284D7F785E7E03878C3385EA77BE033DCFBDEFDDE7B9FFB13B26D
                7BC8548582706DF8E48EF5D7398B48600E53EA1AB4D1C433DED1FB6F7814BB58
                C18C66E14FDCE30C0FFD86ABD00222F891B111CF39B6CC8DA28B128ED1D1858F
                E114DB725C4618ABA8E312DF4863096F784516E3B28B4DB4BCE113B23D67720F
                0D54F1850D0953358B6B2C605D7A7E81793C21850F277C98831357A05AE005FB
                32AE5A74E8694B0657329F97E0732CE3462DE0846FC984BAE335D424E0080772
                D7154F781C8FB84352DA352D3B8DC11A48B8AE2D3914FDB645F740D51B72EBF7
                811A7F15DD65E4237297B1CFDF5DFE7E5CA62A081F7CF82F62E1BF150DF16B50
                0000000049454E44AE426082}
              OnClick = imgShowClick
            end
            object pnl_Senha: TPanel
              Left = 280
              Top = 102
              Width = 185
              Height = 51
              BevelOuter = bvNone
              TabOrder = 1
              object lbSenha: TLabel
                Left = 0
                Top = 0
                Width = 185
                Height = 15
                Align = alTop
                Caption = 'SENHA'
                Color = clSilver
                Font.Charset = ANSI_CHARSET
                Font.Color = clSilver
                Font.Height = -12
                Font.Name = 'Segoe UI'
                Font.Style = [fsBold]
                ParentColor = False
                ParentFont = False
                ExplicitWidth = 39
              end
              object edtSenha: TEdit
                Left = 16
                Top = 24
                Width = 201
                Height = 20
                BevelOuter = bvNone
                BorderStyle = bsNone
                Font.Charset = ANSI_CHARSET
                Font.Color = 10066329
                Font.Height = -13
                Font.Name = 'Segoe UI'
                Font.Style = [fsBold]
                ParentFont = False
                PasswordChar = '*'
                TabOrder = 1
              end
              object lineSenha: TPanel
                Left = 0
                Top = 50
                Width = 185
                Height = 1
                Align = alBottom
                Color = clSilver
                Font.Charset = ANSI_CHARSET
                Font.Color = clSilver
                Font.Height = -13
                Font.Name = 'Segoe UI'
                Font.Style = []
                ParentBackground = False
                ParentFont = False
                TabOrder = 0
              end
            end
            object pnl_Email: TPanel
              Left = 280
              Top = 33
              Width = 185
              Height = 48
              BevelOuter = bvNone
              TabOrder = 2
              object lbEmail: TLabel
                Left = 0
                Top = 0
                Width = 185
                Height = 15
                Align = alTop
                Caption = 'E-MAIL'
                Color = clSilver
                Font.Charset = ANSI_CHARSET
                Font.Color = clSilver
                Font.Height = -12
                Font.Name = 'Segoe UI'
                Font.Style = [fsBold]
                ParentColor = False
                ParentFont = False
                ExplicitWidth = 40
              end
              object edtEmail: TEdit
                Left = 16
                Top = 24
                Width = 201
                Height = 20
                BevelOuter = bvNone
                BorderStyle = bsNone
                Font.Charset = ANSI_CHARSET
                Font.Color = 10066329
                Font.Height = -13
                Font.Name = 'Segoe UI'
                Font.Style = [fsBold]
                ParentFont = False
                TabOrder = 1
              end
              object lineEmail: TPanel
                Left = 0
                Top = 47
                Width = 185
                Height = 1
                Align = alBottom
                Color = clSilver
                Font.Charset = ANSI_CHARSET
                Font.Color = clSilver
                Font.Height = -13
                Font.Name = 'Segoe UI'
                Font.Style = []
                ParentBackground = False
                ParentFont = False
                TabOrder = 0
              end
            end
            object pnl_Login: TPanel
              Left = 40
              Top = 102
              Width = 185
              Height = 51
              BevelOuter = bvNone
              TabOrder = 3
              object lbLogin: TLabel
                Left = 0
                Top = 0
                Width = 185
                Height = 15
                Align = alTop
                Caption = 'LOGIN'
                Color = clSilver
                Font.Charset = ANSI_CHARSET
                Font.Color = clSilver
                Font.Height = -12
                Font.Name = 'Segoe UI'
                Font.Style = [fsBold]
                ParentColor = False
                ParentFont = False
                ExplicitWidth = 37
              end
              object edtLogin: TEdit
                Left = 19
                Top = 24
                Width = 198
                Height = 20
                BevelOuter = bvNone
                BorderStyle = bsNone
                CharCase = ecUpperCase
                Font.Charset = ANSI_CHARSET
                Font.Color = 10066329
                Font.Height = -13
                Font.Name = 'Segoe UI'
                Font.Style = [fsBold]
                ParentFont = False
                TabOrder = 1
              end
              object lineLogin: TPanel
                Left = 0
                Top = 50
                Width = 185
                Height = 1
                Align = alBottom
                Color = clSilver
                Font.Charset = ANSI_CHARSET
                Font.Color = clSilver
                Font.Height = -13
                Font.Name = 'Segoe UI'
                Font.Style = []
                ParentBackground = False
                ParentFont = False
                TabOrder = 0
              end
            end
            object pnl_user: TPanel
              Left = 40
              Top = 33
              Width = 185
              Height = 48
              BevelOuter = bvNone
              TabOrder = 0
              object lbNome: TLabel
                Left = 0
                Top = 0
                Width = 185
                Height = 15
                Align = alTop
                Caption = 'NOME'
                Color = clSilver
                Font.Charset = ANSI_CHARSET
                Font.Color = clSilver
                Font.Height = -12
                Font.Name = 'Segoe UI'
                Font.Style = [fsBold]
                ParentColor = False
                ParentFont = False
                ExplicitWidth = 35
              end
              object edtNome: TEdit
                Left = 19
                Top = 24
                Width = 198
                Height = 20
                BevelOuter = bvNone
                BorderStyle = bsNone
                Font.Charset = ANSI_CHARSET
                Font.Color = 10066329
                Font.Height = -13
                Font.Name = 'Segoe UI'
                Font.Style = [fsBold]
                ParentFont = False
                TabOrder = 0
              end
              object lineNome: TPanel
                Left = 0
                Top = 47
                Width = 185
                Height = 1
                Align = alBottom
                Color = clSilver
                Font.Charset = ANSI_CHARSET
                Font.Color = clSilver
                Font.Height = -13
                Font.Name = 'Segoe UI'
                Font.Style = []
                ParentBackground = False
                ParentFont = False
                TabOrder = 1
              end
            end
          end
          object PnlStatus: TPanel
            Left = 519
            Top = 43
            Width = 133
            Height = 103
            BevelOuter = bvNone
            TabOrder = 2
            object lbAtivo: TLabel
              Left = 49
              Top = 45
              Width = 29
              Height = 17
              Caption = 'Ativo'
              Color = clNavy
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clSilver
              Font.Height = -13
              Font.Name = 'Segoe UI'
              Font.Style = []
              ParentColor = False
              ParentFont = False
            end
            object lbInativo: TLabel
              Left = 49
              Top = 66
              Width = 38
              Height = 17
              Caption = 'Inativo'
              Color = clNavy
              Font.Charset = DEFAULT_CHARSET
              Font.Color = clSilver
              Font.Height = -13
              Font.Name = 'Segoe UI'
              Font.Style = []
              ParentColor = False
              ParentFont = False
            end
            object lbStatus: TLabel
              Left = 32
              Top = 25
              Width = 35
              Height = 17
              Caption = 'Status'
              Color = clNavy
              Font.Charset = DEFAULT_CHARSET
              Font.Color = 7826464
              Font.Height = -13
              Font.Name = 'Segoe UI'
              Font.Style = []
              ParentColor = False
              ParentFont = False
            end
            object rgStatus: TRadioGroup
              Left = 19
              Top = 29
              Width = 99
              Height = 61
              Caption = '               '
              Items.Strings = (
                ' '
                '  ')
              TabOrder = 0
            end
          end
          object chkAdmin: TDBCheckBox
            Left = 32
            Top = 244
            Width = 17
            Height = 17
            Color = clWhite
            DataField = 'ADMIN'
            DataSource = DataSource1
            ParentColor = False
            TabOrder = 3
            ValueChecked = 'S'
            ValueUnchecked = 'N'
          end
          object chkSenhaTemp: TDBCheckBox
            Left = 32
            Top = 264
            Width = 17
            Height = 17
            Color = clWhite
            DataField = 'SENHA_TEMP'
            DataSource = DataSource1
            ParentColor = False
            TabOrder = 4
            ValueChecked = 'S'
            ValueUnchecked = 'N'
            OnClick = chkSenhaTempClick
          end
        end
      end
      inherited PnlBotoes: TPanel
        inherited PnlBtns: TPanel
          Left = -24
          ExplicitLeft = -24
          inherited btnAdicionar: TPanel
            Left = 117
            ExplicitLeft = 117
            inherited SpeedButton2: TSpeedButton
              OnClick = SpeedButton2Click
            end
          end
          inherited btnFechar: TPanel
            Left = 419
            ExplicitLeft = 419
          end
          inherited btnCancelar: TPanel
            Left = 268
            ExplicitLeft = 268
            inherited SpeedButton4: TSpeedButton
              OnClick = SpeedButton4Click
            end
          end
        end
      end
    end
  end
  inherited ImageList1: TImageList
    Left = 729
    Top = 436
  end
end
