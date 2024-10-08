unit unitCliente;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Mask, StdCtrls, ExtCtrls, Buttons, FireDAC.Stan.Intf,
  FireDAC.Stan.Option, FireDAC.Stan.Error, FireDAC.UI.Intf, FireDAC.Phys.Intf,
  FireDAC.Stan.Def, FireDAC.Stan.Pool, FireDAC.Stan.Async, FireDAC.Phys,
  FireDAC.VCLUI.Wait, FireDAC.Stan.Param, FireDAC.DatS, FireDAC.DApt.Intf,
  FireDAC.DApt, Data.DB, FireDAC.Comp.DataSet, FireDAC.Comp.Client,
  FireDAC.Phys.MySQL, FireDAC.Phys.MySQLDef, FireDAC.Phys.FBDef,
  FireDAC.Phys.IBBase, FireDAC.Phys.FB;

type
  TfrmCadastroClientes = class(TForm)
    lblTitulo: TLabel;
    Panel: TPanel;
    lblCodigo: TLabel;
    lblNome: TLabel;
    lblCPF: TLabel;
    edtCodigo: TEdit;
    edtNome: TEdit;
    Bevel: TBevel;
    btnSalvar: TBitBtn;
    lblInfo1: TLabel;
    edtUF: TEdit;
    lblCidade: TLabel;
    edtCidade: TEdit;
    FDPhysMySQLDriverLink1: TFDPhysMySQLDriverLink;
    procedure btnSalvarClick(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmCadastroClientes: TfrmCadastroClientes;

implementation

uses
  classeCliente, controleCliente;

{$R *.dfm}

procedure TfrmCadastroClientes.btnSalvarClick(Sender: TObject);
var
  // vari�veis das camadas utilizadas na rotina
  objetoCliente: TCliente;
  objetoControle: TControleCliente;
  retorno: string;
begin
  // instancia��o dos objetos
  objetoCliente  := TCliente.Create; // classe Modelo
  objetoControle := TControleCliente.Create; // classe Controle
  try
    // preenchimento dos dados
    objetoCliente.Codigo := StrToIntDef(edtCodigo.Text, 0);
    objetoCliente.Nome   := Trim(edtNome.Text);
    objetoCliente.UF    := edtUF.Text;
    objetoCliente.Cidade    := edtCidade.Text;

    // chamada da rotina para grava��o
    retorno := objetoControle.Salvar(objetoCliente);
    if retorno <> '' then
       lblInfo1.Caption := retorno
    else
       lblInfo1.Caption := 'Dados Salvos com Sucesso';

    //Limpa os Campos para o pr�ximo cadastro.
    edtCodigo.Clear;
    edtNome.Clear;
    edtUF.Clear;
    edtCidade.Clear;
    edtCodigo.SetFocus;
  finally
    // libera��o dos objetos da mem�ria
    FreeAndNil(objetoCliente);
    FreeAndNil(objetoControle);
  end;
end;

procedure TfrmCadastroClientes.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if Key = VK_ESCAPE then
    Close;
end;

end.
