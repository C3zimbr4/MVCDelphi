unit classeItem;

interface

uses
  Dialogs, classeConexao;

type
  TItemPedido = class
  private
    // atributos da classe
    FCodigo: integer;
    FCodigoPedido: integer;
	  FCodigoProduto: integer;
    FQtidade: currency;
    FPreco: currency;

  public
    // métodos públicos da classe
    constructor Create;
    function Salvar(const objetoItem: TItemPedido): string;

    // propriedades da classe (semelhante aos getters and setters)
    property Codigo: integer read FCodigo write FCodigo;
    property CodigoPedido: integer read FCodigoPedido write FCodigoPedido;
    property CodigoProduto: integer read FCodigoProduto write FCodigoProduto;
    property Qtidade: currency read FQtidade write FQtidade;
    property Preco: currency read FPreco write FPreco;

  end;

implementation

uses
  SysUtils;

{ TPedido }

constructor TItemPedido.Create;
begin
  // inicialização dos valores do objeto
  FCodigo := 0;
  FCodigoPedido := 0;
  FCodigoProduto := 0;
  FQtidade := 0;
  FPreco := 0;
end;

function TItemPedido.Salvar(const objetoItem: TItemPedido): string;
var  conecta: TConexao;
    strPreco: string;
begin
  // a rotina para salvar o Pedido no banco de dados deve ser escrita aqui
   FCodigo := objetoItem.Codigo;
   FCodigoPedido := objetoItem.CodigoPedido;
   FCodigoProduto := objetoItem.CodigoProduto;
   FQtidade := objetoItem.Qtidade;
   Fpreco := objetoItem.Preco;
   strPreco := StringReplace(CurrToStr(FPreco), ',', '.', [rfReplaceAll, rfIgnoreCase]);
   conecta := TConexao.Create;
   try
     conecta.FDQuery1.SQL.Add('insert into itempedido (idpedido, idproduto, quantidade, vlunit) ');
     conecta.FDQuery1.SQL.Add(' values ('+ IntToStr(FCodigoPedido) +  ','+ IntToStr(FCodigoProduto));
     conecta.FDQuery1.SQL.Add( ',' + CurrToStr(FQtidade) +  ',' + strPreco + ')');
     try
       conecta.FDQuery1.ExecSQL;
     except
       On E: Exception do
       begin
         result := 'Não foi possível gravar o Pedido: ' + E.Message;
       end;
     end;

   finally
     result := '';
     conecta.Destroy;
   end;
end;

end.
