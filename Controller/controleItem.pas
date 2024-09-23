unit controleItem;

interface

uses
  classeItem;

type
  TControleItem = class
  private

  public
    // procedimento para salvar o Item
    function Salvar(const objetoItem: TItemPedido): string;
  end;

implementation

uses
  StrUtils, SysUtils;

{ TControleItem }

function TControleItem.Salvar(const objetoItem: TItemPedido): string;
var retorno: string;
begin
  retorno := '';

  if objetoItem.Codigo <= 0 then
     retorno := 'Preencha o código do Item.';

  if objetoItem.Qtidade <= 0 then
     retorno := 'Quantidade inválida';

  if objetoItem.Preco <= 0 then
     retorno := 'Preço inválido';

  // se o objeto for válido, o método Salvar é invocado
  if retorno = '' then
     objetoItem.Salvar(objetoItem);

  result := retorno;
end;

end.
