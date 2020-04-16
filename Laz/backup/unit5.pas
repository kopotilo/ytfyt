unit Unit5;

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils, Forms, Controls, Graphics, Dialogs, StdCtrls;

type

  { TForm5 }

  TForm5 = class(TForm)
    Edit1: TEdit;
    procedure Edit1Change(Sender: TObject);
  private

  public

  end;

var
  Form5: TForm5;

implementation
uses Unit1;
{$R *.lfm}

{ TForm5 }

procedure TForm5.Edit1Change(Sender: TObject);
begin

end;

end.

