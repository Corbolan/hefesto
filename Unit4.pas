unit Unit4;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Vcl.StdCtrls, Data.DB, Vcl.Grids,
  Vcl.DBGrids, Vcl.DBCtrls, Vcl.ExtCtrls, Data.Win.ADODB,ShellApi,midaslib;

type
  Tfrm_oficina = class(TForm)
    GroupBox2: TGroupBox;
    Button4: TButton;
    DBComboBox1: TDBComboBox;
    Label1: TLabel;
    Edit1: TEdit;
    Label2: TLabel;
    Label3: TLabel;
    lbHora: TLabel;
    Label5: TLabel;
    lbData: TLabel;
    Timer1: TTimer;
    ADOConnection1: TADOConnection;
    DBGrid1: TDBGrid;
    GroupBox3: TGroupBox;
    Button5: TButton;
    Button6: TButton;
    Button7: TButton;
    Button8: TButton;
    Button9: TButton;
    Button10: TButton;
    GroupBox1: TGroupBox;
    Button1: TButton;
    Button3: TButton;
    GroupBox4: TGroupBox;
    Button2: TButton;
    Button11: TButton;
    Button12: TButton;
    Button13: TButton;
    GroupBox5: TGroupBox;
    DBMemo1: TDBMemo;
    DBComboBox2: TDBComboBox;
    Button14: TButton;
    Button15: TButton;
    procedure FormActivate(Sender: TObject);
    procedure Timer1Timer(Sender: TObject);
    procedure Button1Click(Sender: TObject);
    procedure Button3Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
    procedure Button11Click(Sender: TObject);
    procedure Button12Click(Sender: TObject);
    procedure Button13Click(Sender: TObject);
    procedure Button5Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  frm_oficina: Tfrm_oficina;

implementation

{$R *.dfm}

uses frm_listarComputadores;



procedure Tfrm_oficina.Button11Click(Sender: TObject);
begin
ShellExecute(Application.HANDLE, 'open', PChar(ExtractFilePath('C:\Hefesto\Bios\tablet\')),nil,nil,SW_SHOWNORMAL);
end;

procedure Tfrm_oficina.Button12Click(Sender: TObject);
begin
ShellExecute(Application.HANDLE, 'open', PChar(ExtractFilePath('C:\Hefesto\iphone\pc\')),nil,nil,SW_SHOWNORMAL);
end;

procedure Tfrm_oficina.Button13Click(Sender: TObject);
begin
ShellExecute(Application.HANDLE, 'open', PChar(ExtractFilePath('C:\Hefesto\ipad\pc\')),nil,nil,SW_SHOWNORMAL);
end;

procedure Tfrm_oficina.Button1Click(Sender: TObject);
begin
ShellExecute(Application.HANDLE, 'open', PChar(ExtractFilePath('C:\Hefesto\Bios\pc\')),nil,nil,SW_SHOWNORMAL);
end;

procedure Tfrm_oficina.Button2Click(Sender: TObject);
begin
ShellExecute(Application.HANDLE, 'open', PChar(ExtractFilePath('C:\Hefesto\Bios\celular\')),nil,nil,SW_SHOWNORMAL);
end;

procedure Tfrm_oficina.Button3Click(Sender: TObject);
begin
ShellExecute(Application.HANDLE, 'open', PChar(ExtractFilePath('C:\Hefesto\Bios\notebook\')),nil,nil,SW_SHOWNORMAL);
end;

procedure Tfrm_oficina.Button5Click(Sender: TObject);
begin
//frmComputador

Application.CreateForm(TfrmComputador,frmComputador)   ;
frmComputador.ShowModal;
frmComputador.FREE;
end;

procedure Tfrm_oficina.FormActivate(Sender: TObject);
begin
lbData.Caption := DateToStr(Date);
lbHora.Caption := TimeToStr(Time);
end;

procedure Tfrm_oficina.Timer1Timer(Sender: TObject);
begin
lbData.Caption := DateToStr(Date);
lbHora.Caption := TimeToStr(Time);
end;

end.
