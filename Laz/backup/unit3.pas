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

end;

procedure TForm3.Edit1Change(Sender: TObject);
begin

end;



end.

