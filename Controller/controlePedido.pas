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
     retorno := 'Preencha o c�digo do Pedido.';

  if objetoPedido.CodigoCliente <= 0 then
     retorno := 'Preencha o C�digo do Cliente';

  // se o objeto for v�lido, o m�todo Salvar � invocado
  if retorno = '' then
     retorno := objetoPedido.Salvar(objetoPedido);

  result := retorno;
end;

end.
