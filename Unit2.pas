unit Unit2;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Vcl.ComCtrls, Data.DB,
  Vcl.ExtCtrls, Vcl.DBCtrls, Vcl.Grids, Vcl.DBGrids, Data.Win.ADODB, Vcl.Mask,
  System.Rtti, System.Bindings.Outputs, Vcl.Bind.Editors, Data.Bind.EngExt,
  Vcl.Bind.DBEngExt, Data.Bind.Components, Data.Bind.DBScope, FireDAC.Stan.Intf,
  FireDAC.Stan.Option, FireDAC.Stan.Error, FireDAC.UI.Intf, FireDAC.Phys.Intf,
  FireDAC.Stan.Def, FireDAC.Stan.Pool, FireDAC.Stan.Async, FireDAC.Phys,
  FireDAC.Phys.MSAcc, FireDAC.Phys.MSAccDef, FireDAC.Stan.Param, FireDAC.DatS,
  FireDAC.DApt.Intf, FireDAC.DApt, FireDAC.Comp.DataSet, FireDAC.Comp.Client,
  FireDAC.VCLUI.Wait, FireDAC.Comp.UI, Vcl.Buttons;

type
  Tfrm_cliente = class(TForm)
    DBGrid1: TDBGrid;
    DataSource1: TDataSource;
    ADOConnection1: TADOConnection;
    ADODataSet1: TADODataSet;
    Label2: TLabel;
    txtNome: TDBEdit;
    Label3: TLabel;
    txtRg: TDBEdit;
    Label4: TLabel;
    txtCPF: TDBEdit;
    Label5: TLabel;
    txtEndereco: TDBMemo;
    cbCidade: TDBComboBox;
    Label6: TLabel;
    cbUF: TDBComboBox;
    Label7: TLabel;
    Label8: TLabel;
    txtTelefone: TDBEdit;
    Label9: TLabel;
    txtTelefone2: TDBEdit;
    sbNovo: TSpeedButton;
    sbSalvar: TSpeedButton;
    ADODataSet1idcliente: TLargeintField;
    ADODataSet1nome: TStringField;
    ADODataSet1rg: TStringField;
    ADODataSet1cpf: TStringField;
    ADODataSet1endereco: TMemoField;
    ADODataSet1cidade: TStringField;
    ADODataSet1uf: TStringField;
    ADODataSet1telefone: TStringField;
    ADODataSet1telefone2: TStringField;
    txtId: TDBEdit;
    Label1: TLabel;
    sbPrimeiro: TSpeedButton;
    sbAnterior: TSpeedButton;
    sbUltimo: TSpeedButton;
    sbProximo: TSpeedButton;
    sbEditar: TSpeedButton;
    sbDeletar: TSpeedButton;
    procedure sbNovoClick(Sender: TObject);
    procedure sbSalvarClick(Sender: TObject);
    procedure sbPrimeiroClick(Sender: TObject);
    procedure sbAnteriorClick(Sender: TObject);
    procedure sbProximoClick(Sender: TObject);
    procedure sbUltimoClick(Sender: TObject);
    procedure sbEditarClick(Sender: TObject);
    procedure sbDeletarClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frm_cliente: Tfrm_cliente;

implementation

{$R *.dfm}

uses modulo_conexao, Unit1;


procedure Tfrm_cliente.sbAnteriorClick(Sender: TObject);
begin
ADODataSet1.Prior;
end;

procedure Tfrm_cliente.sbDeletarClick(Sender: TObject);
begin
 txtId.Enabled:=false;
txtNome.Enabled:=false;
txtRg.Enabled:=false;
txtCPF.Enabled:=false;
txtEndereco.Enabled:=false;
txtTelefone.Enabled:=false;
txtTelefone2.Enabled:=false;
cbCidade.Enabled:=false;
cbUF.Enabled:=false;
sbSalvar.Enabled:=false;
sbDeletar.Enabled:=false;
sbEditar.Enabled:=true;
sbNovo.Enabled:=true;
ADODataSet1.Edit;
ADODataSet1.Delete;
ADODataSet1.Active:=False;
ADODataSet1.Active:=True;
end;

procedure Tfrm_cliente.sbEditarClick(Sender: TObject);
begin
txtId.Enabled:=true;
txtNome.Enabled:=true;
txtRg.Enabled:=true;
txtCPF.Enabled:=true;
txtEndereco.Enabled:=true;
txtTelefone.Enabled:=true;
txtTelefone2.Enabled:=true;
cbCidade.Enabled:=true;
cbUF.Enabled:=true;
sbSalvar.Enabled:=true;
sbDeletar.Enabled:=true;
sbNovo.Enabled:=false;

ADODataSet1.Edit;

end;

procedure Tfrm_cliente.sbNovoClick(Sender: TObject);
begin


txtId.Text:='';
txtNome.Text:='';
txtRg.Text:='';
txtCPF.Text:='';
txtEndereco.Text:='';
txtTelefone.Text:='';
txtTelefone2.Text:='';
cbCidade.Text:='';
cbUF.Text:='';














txtId.Enabled:=true;
txtNome.Enabled:=true;
txtRg.Enabled:=true;
txtCPF.Enabled:=true;
txtEndereco.Enabled:=true;
txtTelefone.Enabled:=true;
txtTelefone2.Enabled:=true;
cbCidade.Enabled:=true;
cbUF.Enabled:=true;


sbSalvar.Enabled:=True;
sbDeletar.Enabled:=True;
sbEditar.Enabled:=false;
sbNovo.Enabled:=False;


txtId.SetFocus;





ADODataSet1.Insert;
ADODataSet1.Append;

end;

procedure Tfrm_cliente.sbPrimeiroClick(Sender: TObject);
begin
ADODataSet1.First;
end;

procedure Tfrm_cliente.sbProximoClick(Sender: TObject);
begin
ADODataSet1.Next;
end;

procedure Tfrm_cliente.sbSalvarClick(Sender: TObject);
begin
txtId.Enabled:=false;
txtNome.Enabled:=false;
txtRg.Enabled:=false;
txtCPF.Enabled:=false;
txtEndereco.Enabled:=false;
txtTelefone.Enabled:=false;
txtTelefone2.Enabled:=false;
cbCidade.Enabled:=false;
cbUF.Enabled:=false;
sbSalvar.Enabled:=false;
sbDeletar.Enabled:=false;
sbEditar.Enabled:=true;
sbNovo.Enabled:=true;

ADODataSet1.Edit;
ADODataSet1.Post;

end;

procedure Tfrm_cliente.sbUltimoClick(Sender: TObject);
begin
ADODataSet1.Last;
end;

end.
