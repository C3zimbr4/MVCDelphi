unit controleProduto;

interface

uses
  classeProduto;

type
  TControleProduto = class
  public
    // procedimento para salvar o Produto
    function Salvar(const objetoProduto: TProduto): string;
    function GetNome(const objetoProduto: TProduto): string;
    function GetPreco(const objetoProduto: TProduto): currency;
  end;

implementation

uses
  StrUtils, SysUtils;

{ TControleProduto }

function TControleProduto.GetNome(const objetoProduto: TProduto): string;
begin
  result := objetoProduto.GetNome(objetoProduto);
end;

function TControleProduto.GetPreco(const objetoProduto: TProduto): currency;
begin
  result := objetoProduto.GetPreco(objetoProduto);
end;

function TControleProduto.Salvar(const objetoProduto: TProduto): string;
var retorno: string;
begin

  retorno := '';
  if objetoProduto.Codigo <= 0 then
    retorno := 'C�digo do Produto inv�lido';

  if objetoProduto.Nome= '' then
    retorno := 'Preencha o nome do Produto.';

  if objetoProduto.Preco <= 0 then
    retorno := 'Pre�o de Venda Inv�lido';

  // se o objeto for v�lido, o m�todo Salvar � invocado
  if retorno = '' then
    objetoProduto.Salvar(objetoProduto);

  result := retorno;
end;

end.
