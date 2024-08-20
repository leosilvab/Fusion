object frmAtualizaSenha: TfrmAtualizaSenha
  Left = 0
  Top = 0
  BorderIcons = [biSystemMenu]
  BorderStyle = bsSingle
  Caption = 'Fusion'
  ClientHeight = 463
  ClientWidth = 322
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -12
  Font.Name = 'Segoe UI'
  Font.Style = []
  Position = poScreenCenter
  OnShow = FormShow
  TextHeight = 15
  object pnlBG: TPanel
    Left = 0
    Top = 0
    Width = 322
    Height = 463
    Align = alClient
    BevelOuter = bvNone
    Color = clWhite
    ParentBackground = False
    TabOrder = 0
    object lbSubTitulo: TLabel
      Left = 83
      Top = 34
      Width = 170
      Height = 69
      Caption = 'Atualiza'#231#227'o de Senha'#10#10
      Color = clNavy
      Font.Charset = DEFAULT_CHARSET
      Font.Color = 7826464
      Font.Height = -17
      Font.Name = 'Segoe UI'
      Font.Style = [fsBold]
      ParentColor = False
      ParentFont = False
    end
    object pnlDados: TPanel
      Left = 28
      Top = 65
      Width = 261
      Height = 281
      BevelOuter = bvNone
      TabOrder = 0
      object imgHide: TImage
        Left = 225
        Top = 121
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
        Left = 225
        Top = 121
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
      object imgHide2: TImage
        Left = 225
        Top = 192
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
        OnClick = imgHide2Click
      end
      object imgShow2: TImage
        Left = 225
        Top = 192
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
        OnClick = imgShow2Click
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
      object pnl_Senha: TPanel
        Left = 40
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
          Caption = 'NOVA SENHA'
          Color = clSilver
          Font.Charset = ANSI_CHARSET
          Font.Color = clSilver
          Font.Height = -12
          Font.Name = 'Segoe UI'
          Font.Style = [fsBold]
          ParentColor = False
          ParentFont = False
          ExplicitWidth = 75
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
      object pnl_CSenha: TPanel
        Left = 40
        Top = 174
        Width = 185
        Height = 51
        BevelOuter = bvNone
        TabOrder = 2
        object lbCSenha: TLabel
          Left = 0
          Top = 0
          Width = 185
          Height = 15
          Align = alTop
          Caption = 'CONFIRME A SENHA'
          Color = clSilver
          Font.Charset = ANSI_CHARSET
          Font.Color = clSilver
          Font.Height = -12
          Font.Name = 'Segoe UI'
          Font.Style = [fsBold]
          ParentColor = False
          ParentFont = False
          ExplicitWidth = 113
        end
        object edtCSenha: TEdit
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
        object lineCSenha: TPanel
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
    end
    object btnAdicionar: TPanel
      Left = 76
      Top = 381
      Width = 145
      Height = 40
      BevelOuter = bvNone
      TabOrder = 1
      object Shape2: TShape
        Left = 15
        Top = 6
        Width = 121
        Height = 33
        Brush.Color = 5195541
        Pen.Color = 7826464
      end
      object Label4: TLabel
        Left = 59
        Top = 15
        Width = 47
        Height = 17
        Caption = 'SALVAR'
        Font.Charset = DEFAULT_CHARSET
        Font.Color = 16645367
        Font.Height = -13
        Font.Name = 'Segoe UI'
        Font.Style = [fsBold]
        ParentFont = False
      end
      object SpeedButton2: TSpeedButton
        Left = 14
        Top = 5
        Width = 124
        Height = 34
        Flat = True
        OnClick = SpeedButton2Click
      end
      object Image3: TImage
        Left = 17
        Top = 9
        Width = 28
        Height = 33
        Picture.Data = {
          0954506E67496D61676589504E470D0A1A0A0000000D494844520000003C0000
          003C08060000003AFCD972000000097048597300000B1300000B1301009A9C18
          000001C14944415478DAEDDABB4EC3301406601F1A27BDA855CBDEB96BDF0109
          189100F106EC8885113618103B8F50811841BC002BBC02650551907A89A31C0C
          150315CDA54DEA28FDFF3547F1F9624772149358B290E9060006186080010638
          26B8DFE72659EA8259AC1351F5BF9A922D677A78035771D07D26AF0B16272547
          1EA706FEC116D4A3205A0DAA5B18784E74689303D7BDD265DB61750B05CF810E
          9FE191FB316D191B05CF888E30C301039A068FD1671A7DB43CE098E87C8063A0
          F3038E88CE1738421F002F1A9CD4F800A70DF695D5AC54E82549EC780FEF3D67
          12CCCCB7ECC9FDA4D0DF585150977A97B7994970560230C000030C70960330C0
          00CF02E6AEEFD341D9B1EEF556F0334980DEB256FB236F8D56C4A96EB6950130
          774752B6EB446F494227F3CEDC70947AD22D378D827D5FEC548AF23A4DEC6FF4
          4CEF1271C728B828AD5AD2CB785AF4F2AE0D95D7330A4EEBC33FAD7E00061860
          80010618608001067851E0A8875AB210FD71D12B3B767D2EF0C0756F74D99669
          4C4472A764DB7B738187C3618B69E54110354C7382ADFCEA7BB21DF6332FCED1
          C37366B1A19777CDB4EDAF93F52B27EE7C250FA3FCB9C4E1D2BC07E0BC07E0BC
          07E0BCE70B3EA59F4CED7E44DA0000000049454E44AE426082}
        Proportional = True
        Stretch = True
      end
    end
    object Panel1: TPanel
      Left = -9
      Top = 59
      Width = 400
      Height = 1
      Color = clSilver
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = 1
      Font.Name = 'Tahoma'
      Font.Style = []
      ParentBackground = False
      ParentFont = False
      TabOrder = 2
    end
    object pnlInfo: TPanel
      Left = 28
      Top = 306
      Width = 277
      Height = 44
      BevelOuter = bvNone
      TabOrder = 3
      object imgInfo: TImage
        Left = 3
        Top = 9
        Width = 19
        Height = 21
        Picture.Data = {
          0954506E67496D61676589504E470D0A1A0A0000000D49484452000000130000
          00150806000000A409D5D1000000097048597300000B1300000B1301009A9C18
          000001F24944415478DAADD44F48545114C7F137680BAD48102103155A380615
          44936B17E65F06032106A508172541104A928AF887A9342C5D1831B84A068B10
          4123C2A0554A1862AB22447261946259A90589307E0F73AEF378DC7135173E9B
          7BDFFDBD77DEBBE7F962B19893AAE14B79D87228E89DCF413D2EE0240E630B1F
          31812856DD1BF29EBDB086D561500365C307AC211B67908B9F68C693FDC25A71
          178B68C34BFC73DD280315B8073FBAD1650B0BE129DEE022D635E0204E69899B
          3A97855154E28A3CA13B4C4AF88C3F08E0B7EB69DA11561DAEF943788F632822
          6CC584DD646200B518F77C8C0768C2635CF7AC55E9AB6825ACD784BD65A210F9
          F8EFD9701FB730841B9EB5742CE13B61C5264CDECF3B545B8ECF7E6132C6504A
          589609DB6162040D968BA57C790D11345AD61FE11A61E926EC1713D3085A2E96
          A7B9831EF45BD69FA39CB023266C8689E328C0B665C351AC58E6D3F0056B8405
          4C58B3DEB506939E0D25B88D8778ED592BC3143A080B9B30691D39673F700E1B
          AE0D2DE843A7966A462666F5049C20EC9BBB032EE94778E5C4BBC1044A0B9DC5
          BC93682D39B051ADE42A866DBDD9A54FF0494B9BF2BCC30338EFC47BF3347A9D
          783F27FD6BC8F190532FFDB78C3927F1D708E847DAD0F2236653B23019D26F97
          B50CBF96F5170BFA81E4D7F3D5BD612F2C5523A561BB0B05D5D7C85BB3640000
          000049454E44AE426082}
      end
      object lbDescricao: TLabel
        Left = 28
        Top = 7
        Width = 219
        Height = 68
        Caption = 
          'Para seguran'#231'a, a senha deve conter letras, n'#250'meros e s'#237'mbolos e' +
          'speciais.'#10#10
        Color = clNavy
        Font.Charset = DEFAULT_CHARSET
        Font.Color = 7826464
        Font.Height = -13
        Font.Name = 'Segoe UI'
        Font.Style = []
        ParentColor = False
        ParentFont = False
        WordWrap = True
      end
    end
  end
end
