program ProjetoMVC;



uses
  Forms,
  classeCliente in 'Model\classeCliente.pas',
  controleCliente in 'Controller\controleCliente.pas',
  controlePedido in 'Controller\controlePedido.pas',
  controleProduto in 'Controller\controleProduto.pas',
  classePedido in 'Model\classePedido.pas',
  classeProduto in 'Model\classeProduto.pas',
  unitPedido in 'View\unitPedido.pas' {frmCadastroPedido},
  unitProduto in 'View\unitProduto.pas' {frmCadastroProduto},
  unitCliente in 'View\unitCliente.pas' {frmCadastroClientes},
  controleItem in 'Controller\controleItem.pas',
  classeItem in 'Model\classeItem.pas',
  classeConexao in 'Model\classeConexao.pas';

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  Application.CreateForm(TfrmCadastroPedido, frmCadastroPedido);
  Application.CreateForm(TfrmCadastroProduto, frmCadastroProduto);
  Application.CreateForm(TfrmCadastroClientes, frmCadastroClientes);
  Application.Run;
end.
