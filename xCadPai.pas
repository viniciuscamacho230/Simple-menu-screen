unit xCadPai;

{$mode ObjFPC}{$H+}

interface

uses
  Classes, SysUtils, Forms, Controls, Graphics, Dialogs, ComCtrls, ExtCtrls,
  Buttons, StdCtrls, DBGrids;

type

  { TxCadPaiF }

  TxCadPaiF = class(TForm)
    btnCancelar: TBitBtn;
    btnEditar: TBitBtn;
    btnExcluir: TBitBtn;
    btnGravar: TBitBtn;
    btnSair: TBitBtn;
    btnNovo: TBitBtn;
    DBGrid1: TDBGrid;
    edtPesq: TEdit;
    Label1: TLabel;
    PageControl1: TPageControl;
    Panel1: TPanel;
    Panel2: TPanel;
    Panel3: TPanel;
    tbConsulta: TTabSheet;
    tbCadastro: TTabSheet;
    procedure btnCancelarClick(Sender: TObject);
    procedure btnEditarClick(Sender: TObject);
    procedure btnExcluirClick(Sender: TObject);
    procedure btnGravarClick(Sender: TObject);
    procedure btnNovoClick(Sender: TObject);
    procedure btnSairClick(Sender: TObject);
    procedure FormClose(Sender: TObject; var CloseAction: TCloseAction);
    procedure FormShow(Sender: TObject);
  private

  public

  end;

var
  xCadPaiF: TxCadPaiF;

implementation

{$R *.lfm}

{ TxCadPaiF }

procedure TxCadPaiF.btnNovoClick(Sender: TObject);
begin
   PageControl1.activePage:= tbCadastro;
end;

procedure TxCadPaiF.btnSairClick(Sender: TObject);
begin
  close;
end;

procedure TxCadPaiF.btnGravarClick(Sender: TObject);
begin
  PageControl1.activePage:= tbConsulta;
end;

procedure TxCadPaiF.btnExcluirClick(Sender: TObject);
begin
  PageControl1.activePage:= tbConsulta;
end;

procedure TxCadPaiF.btnCancelarClick(Sender: TObject);
begin
  PageControl1.activePage:= tbConsulta;
end;

procedure TxCadPaiF.btnEditarClick(Sender: TObject);
begin
  PageControl1.activePage:= tbCadastro;
end;

procedure TxCadPaiF.FormClose(Sender: TObject; var CloseAction: TCloseAction);
begin
  showmessage('Estou saindo');
end;

procedure TxCadPaiF.FormShow(Sender: TObject);
begin
   PageControl1.activePage:= tbConsulta;
end;

end.

