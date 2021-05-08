unit Unit1;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.Menus, Vcl.Imaging.jpeg,
  Vcl.ExtCtrls, Vcl.Imaging.pngimage, Vcl.StdCtrls, Vcl.ToolWin, Vcl.ComCtrls,
  Vcl.Buttons, midaslib;

type
  TForm1 = class(TForm)
    Image1: TImage;
    ToolBar1: TToolBar;
    sbOrcamento: TSpeedButton;
    SpeedButton2: TSpeedButton;
    SpeedButton3: TSpeedButton;
    SpeedButton4: TSpeedButton;
    SpeedButton5: TSpeedButton;
    SpeedButton6: TSpeedButton;
    SpeedButton7: TSpeedButton;
    SpeedButton8: TSpeedButton;
    procedure Sair1Click(Sender: TObject);
    procedure SpeedButton6Click(Sender: TObject);
    procedure sbOrcamentoClick(Sender: TObject);
    procedure SpeedButton2Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

{$R *.dfm}

uses Unit2, modulo_conexao, Unit3, Unit4;

procedure TForm1.Sair1Click(Sender: TObject);
begin
   Application.Terminate;
end;

procedure TForm1.sbOrcamentoClick(Sender: TObject);
begin
 Application.CreateForm(Tfrm_agenda,frm_agenda)   ;
frm_agenda.ShowModal;
frm_agenda.FREE;
end;

procedure TForm1.SpeedButton2Click(Sender: TObject);
begin
Application.CreateForm(Tfrm_oficina,frm_oficina);
frm_oficina.ShowModal;
frm_oficina.FREE;
end;

procedure TForm1.SpeedButton6Click(Sender: TObject);
begin
Application.CreateForm(Tfrm_cliente,frm_cliente);
frm_cliente.ShowModal;
frm_cliente.FREE;
end;

end.
