unit controleCliente;

interface

uses
  classeCliente;

type
  TControleCliente = class
  private
    // fun��o privada para validar o CPF do cliente
    function ValidarUF(UF: string): boolean;
  public
    // procedimento para salvar o cliente
    function Salvar(const objetoCliente: TCliente): string;
    function GetNome(const objetoCliente: TCliente): string;
    function PertenceUF(const objetoCliente: TCliente): Boolean;
  end;

implementation

uses
  StrUtils, SysUtils;

{ TControleCliente }

function TControleCliente.GetNome(const objetoCliente: TCliente): string;
begin
   result := objetoCliente.GetNome(objetoCliente);
end;

function TControleCliente.PertenceUF(const objetoCliente: TCliente): Boolean;
begin
  //Aqui daria pra fazer mais uma valida��o se aquela cidade pertence aquela UF
end;

function TControleCliente.Salvar(const objetoCliente: TCliente): string;
 var retorno: string;
begin
  retorno := '';
  if objetoCliente.Codigo <= 0 then
    retorno := 'Preencha o c�digo do cliente.';

  if objetoCliente.Nome= '' then
    retorno := 'Preencha o nome do cliente.';

  if not (ValidarUF(objetoCliente.UF)) then
    retorno := 'UF inv�lida!';

  // se o objeto for v�lido, o m�todo Salvar � invocado
  if retorno = '' then
    objetoCliente.Salvar(objetoCliente);

  result := retorno;
end;

function TControleCliente.ValidarUF(UF: string): boolean;
const
Estados = 'SPMGRJRSSCPRESDFMTMSGOTOBASEALPBPEMARNCEPIPAAMAPFNACRRRO';
var
Posicao : integer;
begin
  Result := true;
  if UF <> '' then begin
     Posicao := Pos(UpperCase(UF), Estados);
  end;
  if (Posicao = 0) or ((Posicao mod 2) = 0) then begin
     Result := false;
  end;
end;

end.
