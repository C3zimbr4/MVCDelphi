object frmCadastroPedido: TfrmCadastroPedido
  Left = 0
  Top = 0
  BorderIcons = [biSystemMenu, biMinimize]
  BorderStyle = bsSizeToolWin
  Caption = 'MVC para WK '
  ClientHeight = 387
  ClientWidth = 603
  Color = clBtnFace
  Font.Charset = DEFAULT_CHARSET
  Font.Color = clWindowText
  Font.Height = -11
  Font.Name = 'Tahoma'
  Font.Style = []
  KeyPreview = True
  Position = poScreenCenter
  OnActivate = FormActivate
  OnKeyDown = FormKeyDown
  TextHeight = 13
  object lblTitulo: TLabel
    Left = 0
    Top = 0
    Width = 603
    Height = 16
    Align = alTop
    Alignment = taCenter
    Caption = 'Lan'#231'amento do Pedido'
    Font.Charset = DEFAULT_CHARSET
    Font.Color = clWindowText
    Font.Height = -13
    Font.Name = 'Tahoma'
    Font.Style = []
    ParentFont = False
    ExplicitWidth = 129
  end
  object Panel: TPanel
    Left = 0
    Top = 16
    Width = 603
    Height = 121
    Align = alTop
    TabOrder = 0
    ExplicitWidth = 518
    object lblCodigo: TLabel
      Left = 26
      Top = 28
      Width = 51
      Height = 13
      Alignment = taRightJustify
      Caption = 'N'#186' Pedido:'
    end
    object lblCodCli: TLabel
      Left = 136
      Top = 27
      Width = 63
      Height = 13
      Alignment = taRightJustify
      Caption = 'Cod. Cliente:'
    end
    object Label1: TLabel
      Left = 9
      Top = 60
      Width = 68
      Height = 13
      Alignment = taRightJustify
      Caption = 'Cod. Produto:'
    end
    object lblCPF: TLabel
      Left = 17
      Top = 93
      Width = 60
      Height = 13
      Alignment = taRightJustify
      Caption = 'Quantidade:'
    end
    object edtCodigo: TEdit
      Left = 81
      Top = 24
      Width = 49
      Height = 21
      MaxLength = 6
      TabOrder = 0
      OnExit = edtCodigoExit
    end
    object edtCodCli: TEdit
      Left = 205
      Top = 24
      Width = 49
      Height = 21
      MaxLength = 6
      TabOrder = 1
      OnExit = edtCodCliExit
    end
    object edtNomeCli: TEdit
      Left = 260
      Top = 24
      Width = 160
      Height = 21
      MaxLength = 6
      TabOrder = 2
    end
    object edtCodProd: TEdit
      Left = 81
      Top = 57
      Width = 49
      Height = 21
      MaxLength = 6
      TabOrder = 3
      OnExit = edtCodProdExit
    end
    object edtDescProd: TEdit
      Left = 136
      Top = 57
      Width = 160
      Height = 21
      MaxLength = 6
      TabOrder = 4
    end
    object btnIncluir: TBitBtn
      Left = 136
      Top = 88
      Width = 63
      Height = 21
      Caption = '&Incluir'
      Kind = bkYes
      NumGlyphs = 2
      TabOrder = 6
      OnClick = btnIncluirClick
    end
    object edtQtidade: TEdit
      Left = 81
      Top = 88
      Width = 49
      Height = 21
      MaxLength = 6
      TabOrder = 5
      OnExit = edtCodProdExit
    end
  end
  object Panel1: TPanel
    Left = 0
    Top = 137
    Width = 603
    Height = 250
    Align = alClient
    TabOrder = 1
    ExplicitLeft = 8
    ExplicitTop = 143
    object lblInfo1: TLabel
      Left = 1
      Top = 183
      Width = 118
      Height = 13
      Caption = 'Informa'#231#245'es de retorno.'
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsItalic]
      ParentFont = False
    end
    object lblTotal: TLabel
      Left = 384
      Top = 180
      Width = 206
      Height = 13
      AutoSize = False
      Caption = 'Total:  '
      Font.Charset = DEFAULT_CHARSET
      Font.Color = clWindowText
      Font.Height = -11
      Font.Name = 'Tahoma'
      Font.Style = [fsItalic]
      ParentFont = False
    end
    object btnSalvar: TBitBtn
      Left = 519
      Top = 207
      Width = 71
      Height = 29
      Caption = '&Salvar'
      Glyph.Data = {
        BA030000424DBA0300000000000036000000280000000F0000000F0000000100
        20000000000084030000C30E0000C30E00000000000000000000CBCBCBFF494A
        4AFF6D6F6FFF818282FF828484FF828483FF828483FF818483FF818483FF8284
        83FF838585FF7A7C7CFF6E7170FF484B4AFFB3B4B4FF747474FF040606FFD3D4
        D4FFAAABAAFFA0A1A1FFA2A3A3FFA2A3A3FFA2A3A3FFA2A3A3FFA2A3A3FF9B9B
        9BFFCECECEFFF6F6F6FF1B1D1DFF474949FF7A7A7AFF111414FFD4D5D5FF8384
        84FF757676FF777978FF777978FF777978FF777978FF777978FF6C6D6DFFBBBB
        BBFFFDFDFDFF262828FF4F5151FF7B7B7BFF111313FFD4D5D5FF8D8E8EFF8081
        81FF828484FF828484FF828484FF828484FF828484FF787979FFC0C0C0FFFBFB
        FBFF262828FF505252FF7B7B7BFF121414FFD2D3D3FF7F8080FF707171FF7374
        74FF737474FF737474FF737474FF737474FF676868FFB7B8B8FFFCFCFCFF2728
        28FF505252FF7B7B7BFF101212FFDDDDDDFFCBCBCBFFC5C5C5FFC6C6C6FFC6C7
        C7FFC6C6C6FFC6C7C7FFC6C7C7FFC1C2C2FFE2E2E2FFFAFAFAFF282929FF5052
        52FF7B7C7CFF090B0BFFE0E1E2FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF8F8F8FF212222FF515353FF7E7F
        7FFF050606FF545656FF8D8E8EFF868888FF868787FF858787FF878888FF8587
        87FF8F9190FF8A8B8BFF8B8C8CFF626363FF0B0D0DFF575959FF7E7F7FFF0B0D
        0DFF101212FF030505FF080A0AFF0A0C0CFF0A0C0CFF0A0C0CFF141616FF2225
        25FF111313FF000303FF0E1010FF101212FF575959FF7E7F7FFF0A0C0CFF0F11
        11FF515353FFDADADAFFDEDEDEFFDDDEDEFFDDDEDEFFAFB0B0FF8A8B8BFFCDCE
        CEFF6F7171FF0D0F0FFF101212FF575959FF7E7F7FFF0A0C0CFF080A0AFF797B
        7AFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFFF515353FF000000FFB7B8B8FFAEAF
        AFFF070909FF101212FF575959FF7E7F7FFF0A0C0CFF090B0BFF737574FFFFFF
        FFFFFFFFFFFFFFFFFFFFFFFFFFFF4C4E4EFF000000FFABACACFFA6A7A7FF080A
        0AFF0E1010FF4B4E4EFF7C7D7DFF0A0C0CFF080A0AFF767877FFFFFFFFFFFFFF
        FFFFFFFFFFFFFFFFFFFF4B4E4DFF000000FFB2B3B3FFACADADFF000202FF0A0C
        0CFF999A9AFF808181FF000000FF000000FF585A59FFD7D8D7FFD6D7D7FFD6D7
        D7FFD6D7D7FF9D9E9EFF727474FFC3C4C4FF757776FF121313FFB1B2B2FFFFFF
        FFFFEAEAEAFF969797FF969696FF999A9AFF9D9D9DFF9C9D9DFF9C9D9DFF9C9D
        9DFFA8A9A9FFB0B1B1FFA0A1A1FF969696FFE3E3E3FFFFFFFFFFFFFFFFFF}
      TabOrder = 0
      OnClick = btnSalvarClick
    end
    object GridItems: TStringGrid
      Left = 1
      Top = 1
      Width = 601
      Height = 176
      Align = alTop
      ColCount = 7
      FixedCols = 0
      RowCount = 2
      Options = [goFixedVertLine, goFixedHorzLine, goVertLine, goHorzLine, goRangeSelect, goEditing, goFixedRowDefAlign]
      TabOrder = 1
      OnKeyDown = GridItemsKeyDown
      ExplicitWidth = 516
      ColWidths = (
        61
        52
        181
        88
        77
        64
        64)
    end
  end
end
