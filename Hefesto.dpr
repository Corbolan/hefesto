program Hefesto;

uses
  Vcl.Forms,
  Unit1 in 'Unit1.pas' {Form1},
  Vcl.Themes,
  Vcl.Styles,
  Unit2 in 'Unit2.pas' {frm_cliente},
  modulo_conexao in 'modulo_conexao.pas' {frmModulo_conexao: TDataModule},
  Unit3 in 'Unit3.pas' {frm_agenda},
  Unit4 in 'Unit4.pas' {frm_oficina},
  frm_listarComputadores in 'frm_listarComputadores.pas' {frmComputador};

{$R *.res}

begin
  Application.Initialize;
  Application.MainFormOnTaskbar := True;
  TStyleManager.TrySetStyle('Aqua Light Slate');
  Application.Title := 'Hefesto - CorbolanTech';
  Application.CreateForm(TForm1, Form1);
  Application.CreateForm(Tfrm_cliente, frm_cliente);
  Application.CreateForm(TfrmModulo_conexao, frmModulo_conexao);
  Application.CreateForm(Tfrm_agenda, frm_agenda);
  Application.CreateForm(Tfrm_oficina, frm_oficina);
  Application.CreateForm(TfrmComputador, frmComputador);
  Application.Run;
end.
