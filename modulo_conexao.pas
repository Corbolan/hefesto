unit modulo_conexao;

interface

uses
  System.SysUtils, System.Classes, Data.DB, Data.Win.ADODB;

type
  TfrmModulo_conexao = class(TDataModule)
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frmModulo_conexao: TfrmModulo_conexao;

implementation

{%CLASSGROUP 'Vcl.Controls.TControl'}

{$R *.dfm}

end.
