unit Unit3;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Data.DB, Vcl.ExtCtrls, Vcl.DBCtrls,
  Vcl.Grids, Vcl.DBGrids, Data.Win.ADODB, Vcl.ComCtrls, Vcl.StdCtrls, Vcl.Mask,
  System.Rtti, System.Bindings.Outputs, Vcl.Bind.Editors, Data.Bind.EngExt,
  Vcl.Bind.DBEngExt, Data.Bind.Components, Data.Bind.DBScope, frxClass, frxDBSet,
  FireDAC.Stan.Intf, FireDAC.Stan.Option, FireDAC.Stan.Error, FireDAC.UI.Intf,
  FireDAC.Phys.Intf, FireDAC.Stan.Def, FireDAC.Stan.Pool, FireDAC.Stan.Async,
  FireDAC.Phys, FireDAC.Phys.MSAcc, FireDAC.Phys.MSAccDef, FireDAC.Stan.Param,
  FireDAC.DatS, FireDAC.DApt.Intf, FireDAC.DApt, FireDAC.Comp.DataSet,
  FireDAC.Comp.Client, FireDAC.VCLUI.Wait, FireDAC.Comp.UI, FireDAC.Phys.MySQL,
  FireDAC.Phys.MySQLDef, FireDAC.Phys.TDataDef, FireDAC.Phys.ODBCBase,
  FireDAC.Phys.TData, FireDAC.Phys.ODBC, FireDAC.Phys.ODBCDef, Vcl.Buttons,
  frxExportPDF;

type
  Tfrm_agenda = class(TForm)
    DataSource1: TDataSource;
    DBGrid1: TDBGrid;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    memDescricao: TDBMemo;
    Label5: TLabel;
    memEndereco: TDBMemo;
    cbCidade: TDBComboBox;
    cbUF: TDBComboBox;
    cbSituacao: TDBComboBox;
    cbUrgencia: TDBComboBox;
    Label6: TLabel;
    Label7: TLabel;
    Label8: TLabel;
    Label9: TLabel;
    FDQuery1: TFDQuery;
    FDConnection1: TFDConnection;
    FDGUIxWaitCursor1: TFDGUIxWaitCursor;
    sbPrimeiro: TSpeedButton;
    sbAnterior: TSpeedButton;
    sbProximo: TSpeedButton;
    sbUltimo: TSpeedButton;
    sbNovo: TSpeedButton;
    sbAlterar: TSpeedButton;
    sbExcluir: TSpeedButton;
    sbSalvar: TSpeedButton;
    sbRelPendente: TSpeedButton;
    sbRelFinalizado: TSpeedButton;
    txtId: TDBEdit;
    Label11: TLabel;
    DataSetCliente: TFDQuery;
    DataSetClienteidcliente: TLargeintField;
    DataSetClientenome: TStringField;
    DataSetClienterg: TStringField;
    DataSetClientecpf: TStringField;
    DataSetClienteendereco: TMemoField;
    DataSetClientecidade: TStringField;
    DataSetClienteuf: TStringField;
    DataSetClientetelefone: TStringField;
    DataSetClientetelefone2: TStringField;
    SourceCliente: TDataSource;
    txtData: TDBEdit;
    txtHora: TDBEdit;
    cbNome: TDBLookupComboBox;
    frxPDFExport1: TfrxPDFExport;
    frxDBDataset1: TfrxDBDataset;
    RelatórioPendente: TfrxReport;
    FDQuery2: TFDQuery;
    FDQuery3: TFDQuery;
    frxDBDataset2: TfrxDBDataset;
    frxReport1: TfrxReport;
    procedure sbPrimeiroClick(Sender: TObject);
    procedure sbAnteriorClick(Sender: TObject);
    procedure sbProximoClick(Sender: TObject);
    procedure sbUltimoClick(Sender: TObject);
    procedure sbNovoClick(Sender: TObject);
    procedure sbAlterarClick(Sender: TObject);
    procedure sbExcluirClick(Sender: TObject);
    procedure sbSalvarClick(Sender: TObject);
    procedure cbNomeClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frm_agenda: Tfrm_agenda;

implementation

{$R *.dfm}

uses Unit2;



procedure Tfrm_agenda.cbNomeClick(Sender: TObject);
var
sql:String ;

begin



end;

procedure Tfrm_agenda.sbAlterarClick(Sender: TObject);
begin
txtHora.Enabled:=True;
txtData.Enabled:=True;
txtId.Enabled:=True;

cbNome.Enabled:=True;
cbCidade.Enabled:=True;
cbUF.Enabled:=True;
cbSituacao.Enabled:=True;
cbUrgencia.Enabled:=True;
memDescricao.Enabled:=True;
memEndereco.Enabled:=True;

sbSalvar.Enabled:=true;
sbExcluir.Enabled:=true;
sbAlterar.Enabled:=false;
sbNovo.Enabled:=false;


FDQuery1.Edit;
end;

procedure Tfrm_agenda.sbAnteriorClick(Sender: TObject);
begin
FDQuery1.Prior;
end;

procedure Tfrm_agenda.sbExcluirClick(Sender: TObject);
begin
txtHora.Enabled:=False;
txtData.Enabled:=False;
txtId.Enabled:=False;

cbNome.Enabled:=False;
cbCidade.Enabled:=False;
cbUF.Enabled:=False;
cbSituacao.Enabled:=False;
cbUrgencia.Enabled:=False;
memDescricao.Enabled:=false;
memEndereco.Enabled:=false;



sbSalvar.Enabled:=False;
sbExcluir.Enabled:=False;
sbAlterar.Enabled:=true;
sbNovo.Enabled:=true;


FDQuery1.Edit;
FDQuery1.Delete;
end;

procedure Tfrm_agenda.sbNovoClick(Sender: TObject);
begin





txtHora.Enabled:=True;
txtData.Enabled:=True;
txtId.Enabled:=True;

cbNome.Enabled:=True;
cbCidade.Enabled:=True;
cbUF.Enabled:=True;
cbSituacao.Enabled:=True;
cbUrgencia.Enabled:=True;
memDescricao.Enabled:=True;
memEndereco.Enabled:=True;












sbSalvar.Enabled:=True;
sbExcluir.Enabled:=True;
sbAlterar.Enabled:=false;
sbNovo.Enabled:=False;



txtId.SetFocus;

FDQuery1.Insert;
FDQuery1.Append;

txtId.Text:='';
txtData.Text:='';
txtHora.Text:='';
cbCidade.Text:='';
cbUF.Text:='';
cbSituacao.Text:='';
cbUrgencia.Text:='';
memDescricao.Text:='';
memEndereco.Text:='';


end;

procedure Tfrm_agenda.sbPrimeiroClick(Sender: TObject);
begin
FDQuery1.First;
end;

procedure Tfrm_agenda.sbProximoClick(Sender: TObject);
begin
FDQuery1.Next;
end;

procedure Tfrm_agenda.sbSalvarClick(Sender: TObject);
begin



txtHora.Enabled:=True;
txtData.Enabled:=True;
txtId.Enabled:=True;

cbNome.Enabled:=True;
cbCidade.Enabled:=True;
cbUF.Enabled:=True;
cbSituacao.Enabled:=True;
cbUrgencia.Enabled:=True;


sbSalvar.Enabled:=False;
sbExcluir.Enabled:=False;
sbAlterar.Enabled:=true;
sbNovo.Enabled:=true;

FDQuery1.Edit;
FDQuery1.Post;

FDQuery1.Active:=False;
FDQuery1.Active:=True;
end;

procedure Tfrm_agenda.sbUltimoClick(Sender: TObject);
begin
FDQuery1.Last;
end;

end.
