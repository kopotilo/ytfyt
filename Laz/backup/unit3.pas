unit Unit3;

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils, Forms, Controls, Graphics, Dialogs, StdCtrls;

type

  { TForm3 }

  TForm3 = class(TForm)
    Button1: TButton;
    Edit1: TEdit;
    procedure Button1Click(Sender: TObject);
    procedure Edit1Change(Sender: TObject);
    procedure FormCreate(Sender: TObject);
  private

  public

  end;

var
  Form3: TForm3;

implementation
uses Unit1;
{$R *.lfm}

{ TForm3 }

procedure TForm3.Button1Click(Sender: TObject);
var
  Find: string;
  i: integer;

begin
  Find:=Edit1.Text;
  For i:=0 to Form1.SynEdit1.Lines.Count-1 do
  If Pos(Find, Form1.SynEdit1.Lines.Text)<>0
  then begin
    Form1.SynEdit1.SetFocus;
    Form1.SynEdit1.SelStart:=Pos(Find, Form1.SynEdit1.Lines.Text);
    Form1.SynEdit1.SelEnd:=Pos(Find, Form1.SynEdit1.Lines.Text)+Length(find);
end else MessageDlg ('Строка ' + Find + ' не найдена!', mtConfirmation, [mbYes], 0);
end;

procedure TForm3.Edit1Change(Sender: TObject);
begin

end;

procedure TForm3.FormCreate(Sender: TObject);
begin

end;



end.

