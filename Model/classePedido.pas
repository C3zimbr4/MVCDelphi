unit classePedido;

interface

uses
  Dialogs, FireDAC.Stan.Intf, classeConexao,
  FireDAC.Stan.Option, FireDAC.Stan.Error, FireDAC.UI.Intf, FireDAC.Phys.Intf,
  FireDAC.Stan.Def, FireDAC.Stan.Pool, FireDAC.Stan.Async, FireDAC.Phys,
  FireDAC.VCLUI.Wait, FireDAC.Stan.Param, FireDAC.DatS, FireDAC.DApt.Intf,
  FireDAC.DApt, Data.DB, FireDAC.Comp.DataSet, FireDAC.Comp.Client;

type
  TPedido = class
  private
    // atributos da classe
    FCodigo: integer;
    FCodigoCliente: integer;

  public
    // m�todos p�blicos da classe
    constructor Create;
    function Salvar(const objetoPedido: TPedido): string;
    function Buscar(const objetoPedido: TPedido): TPedido;

    // propriedades da classe (semelhante aos getters and setters)
    property Codigo: integer read FCodigo write FCodigo;
    property CodigoCliente: integer read FCodigoCliente write FCodigoCliente;

  end;

implementation

uses
  SysUtils;

{ TPedido }

function TPedido.Buscar(const objetoPedido: TPedido): TPedido;
var  conecta: TConexao;
begin
  // a rotina para buscar dados do Pedido
   FCodigo := objetoPedido.Codigo;
   FCodigoCliente := objetoPedido.CodigoCliente;
   conecta := TConexao.Create;
   try
     conecta.FDQuery1.SQL.Add('select * from pedido where idpedido = ' + IntToStr(FCodigo));
     try
       conecta.FDQuery1.Open;
       Fcodigo := conecta.FDQuery1.FieldByName('idpedido').AsInteger;
       FCodigoCliente := conecta.FDQuery1.FieldByName('idcliente').AsInteger;
     except
       On E: Exception do
       begin
         result := objetoPedido;
       end;
     end;

   finally
     result := objetoPedido;
     conecta.Destroy;
   end;

end;

constructor TPedido.Create;
begin
  // inicializa��o dos valores do objeto
  FCodigo := 0;
  FCodigoCliente   := 0;
end;

function TPedido.Salvar(const objetoPedido: TPedido): string;
var  conecta: TConexao;
begin
  // a rotina para salvar o Pedido no banco de dados deve ser escrita aqui
   FCodigo := objetoPedido.Codigo;
   FCodigoCliente := objetoPedido.CodigoCliente;
   conecta := TConexao.Create;
   try
     conecta.FDQuery1.SQL.Add('insert into pedido values ');
     conecta.FDQuery1.SQL.Add('('+ IntToStr(FCodigo) +  ',' + IntToStr(FCodigoCliente) +  ')');
     try
       conecta.FDQuery1.ExecSQL;
     except
       On E: Exception do
       begin
         result := 'N�o foi poss�vel gravar o Pedido: ' + E.Message;
       end;
     end;

   finally
     result := '';
     conecta.Destroy;
   end;
end;

end.
