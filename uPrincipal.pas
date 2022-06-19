unit uPrincipal;

interface

uses
  Winapi.Windows, Winapi.Messages, System.SysUtils, System.Variants, System.Classes, Vcl.Graphics,
  Vcl.Controls, Vcl.Forms, Vcl.Dialogs, Data.DB, Vcl.Grids, Vcl.DBGrids,
  Vcl.StdCtrls, Vcl.ExtCtrls;

type
  TForm1 = class(TForm)
    RdgOpcoes: TRadioGroup;
    EdtConsulta: TEdit;
    LblConsulta: TLabel;
    BTNConsulta: TButton;
    DBGrid1: TDBGrid;
    procedure RdgOpcoesClick(Sender: TObject);
    procedure BTNConsultaClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;

implementation

{$R *.dfm}

uses uDM;

procedure TForm1.BTNConsultaClick(Sender: TObject);
begin
 DM.sqlconsulta.Close;
 DM.sqlconsulta.SQL.Clear;

 if (RdgOpcoes.ItemIndex = 0) then
 begin
  DM.sqlconsulta.SQL.Add('SELECT* FROM clientes WHERE nome LIKE :pConsulta');
  DM.sqlconsulta.ParamByName('pConsulta').AsString := EdtConsulta.text+'%';
 end;

 if (RdgOpcoes.ItemIndex = 1) then
 begin
  DM.sqlconsulta.SQL.Add('SELECT* FROM clientes WHERE bairro LIKE :pConsulta');
  DM.sqlconsulta.ParamByName('pConsulta').AsString := EdtConsulta.text+'%';
 end;



 DM.sqlconsulta.Open;
end;

procedure TForm1.RdgOpcoesClick(Sender: TObject);
begin
 if (RdgOpcoes.ItemIndex = 0) then
 begin
   LblConsulta.Caption := 'Digite o Nome';
 end;

 if (RdgOpcoes.ItemIndex = 1) then
 begin
   LblConsulta.Caption := 'Digite o Bairro';
 end;

end;

end.
