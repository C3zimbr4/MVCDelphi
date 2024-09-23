unit controlePedido;

interface

uses
  classePedido;

type
  TControlePedido = class
  private

  public
    // procedimento para salvar o Pedido
    function Salvar(const objetoPedido: TPedido): string;
    function Buscar(const objetoPedido: TPedido): TPedido;
  end;

implementation

uses
  StrUtils, SysUtils;

{ TControlePedido }

function TControlePedido.Buscar(const objetoPedido: TPedido): TPedido;
begin
  result := objetoPedido.Buscar(objetoPedido);
end;

function TControlePedido.Salvar(const objetoPedido: TPedido): string;
var retorno: string;
begin
  retorno := '';

  if objetoPedido.Codigo <= 0 then
     retorno := 'Preencha o código do Pedido.';

  if objetoPedido.CodigoCliente <= 0 then
     retorno := 'Preencha o Código do Cliente';

  // se o objeto for válido, o método Salvar é invocado
  if retorno = '' then
     retorno := objetoPedido.Salvar(objetoPedido);

  result := retorno;
end;

end.
