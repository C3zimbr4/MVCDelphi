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
     retorno := 'Preencha o c�digo do Item.';

  if objetoItem.Qtidade <= 0 then
     retorno := 'Quantidade inv�lida';

  if objetoItem.Preco <= 0 then
     retorno := 'Pre�o inv�lido';

  // se o objeto for v�lido, o m�todo Salvar � invocado
  if retorno = '' then
     objetoItem.Salvar(objetoItem);

  result := retorno;
end;

end.
