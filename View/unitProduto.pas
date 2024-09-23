unit unitProduto;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, Mask, StdCtrls, ExtCtrls, Buttons, Data.DB, Datasnap.DBClient;

type
  TfrmCadastroProduto = class(TForm)
    lblTitulo: TLabel;
    Panel: TPanel;
    lblCodigo: TLabel;
    lblNome: TLabel;
    lblCPF: TLabel;
    edtCodigo: TEdit;
    edtNome: TEdit;
    edtPreco: TMaskEdit;
    Bevel: TBevel;
    btnSalvar: TBitBtn;
    lblInfo1: TLabel;
    procedure btnSalvarClick(Sender: TObject);
    procedure FormKeyDown(Sender: TObject; var Key: Word;
      Shift: TShiftState);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmCadastroProduto: TfrmCadastroProduto;

implementation

uses
  classeProduto, controleProduto;

{$R *.dfm}

procedure TfrmCadastroProduto.btnSalvarClick(Sender: TObject);
var
  // variáveis das camadas utilizadas na rotina
  objetoProduto: TProduto;
  objetoControle: TControleProduto;
  retorno: string;
begin
  // instanciação dos objetos
  objetoProduto  := TProduto.Create; // classe Modelo
  objetoControle := TControleProduto.Create; // classe Controle
  try
    // preenchimento dos dados
    objetoProduto.Codigo := StrToIntDef(edtCodigo.Text, 0);
    objetoProduto.Nome   := Trim(edtNome.Text);
    objetoProduto.Preco    := strtocurr(edtPreco.Text);

    // chamada da rotina para gravação
    retorno := objetoControle.Salvar(objetoProduto);
    if retorno <> '' then
       lblInfo1.Caption := retorno
    else
       lblInfo1.Caption := 'Dados Salvos com Sucesso';

    edtCodigo.Clear;
    edtNome.Clear;
    edtPreco.Clear;
    edtCodigo.SetFocus;
  finally
    // liberação dos objetos da memória
    FreeAndNil(objetoProduto);
    FreeAndNil(objetoControle);
  end;
end;

procedure TfrmCadastroProduto.FormKeyDown(Sender: TObject; var Key: Word;
  Shift: TShiftState);
begin
  if Key = VK_ESCAPE then
    Close;
end;

end.
