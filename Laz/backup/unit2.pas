unit Unit2;

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils, Forms, Controls, Graphics, Dialogs, StdCtrls, Menus;

type

  { TForm2 }

  TForm2 = class(TForm)
    Button1: TButton;
    Edit1: TEdit;
    Edit2: TEdit;
    procedure Button1Click(Sender: TObject);
    procedure Edit1Change(Sender: TObject);
    procedure Edit2Change(Sender: TObject);
    procedure FormCreate(Sender: TObject);
  private

  public

  end;

var
  Form2: TForm2;

implementation
uses Unit1;

{$R *.lfm}

{ TForm2 }

procedure TForm2.Button1Click(Sender: TObject);
        var
  s1,s2,s3, ts : String;
begin
  s1 := form1.SynEdit1.Text;       // Заменяем текст
  s2 := Form2.Edit1.Text;
  s3 := Form2.Edit2.Text;
  ts := StringReplace(s1, s2, s3, []);
  form1.SynEdit1.Text:=ts;
end;

procedure TForm2.Edit1Change(Sender: TObject);
begin

end;

procedure TForm2.Edit2Change(Sender: TObject);
begin

end;

procedure TForm2.FormCreate(Sender: TObject);
begin

end;

end.

