unit Unit1;

{$mode objfpc}{$H+}

interface

uses
  Classes, SysUtils, Forms, Controls, Graphics, Dialogs, Menus, StdCtrls, Grids,
  SynEdit, SynHighlighterPas, SynHighlighterCpp, SynHighlighterHTML;

type

  { TForm1 }

  TForm1 = class(TForm)
    FontDialog1: TFontDialog;
    MainMenu1: TMainMenu;
    MenuItem1: TMenuItem;
    MenuItem10: TMenuItem;
    MenuItem11: TMenuItem;
    MenuItem12: TMenuItem;
    MenuItem13: TMenuItem;
    MenuItem14: TMenuItem;
    MenuItem15: TMenuItem;
    MenuItem16: TMenuItem;
    MenuItem17: TMenuItem;
    MenuItem18: TMenuItem;
    MenuItem19: TMenuItem;
    MenuItem2: TMenuItem;
    MenuItem20: TMenuItem;
    MenuItem21: TMenuItem;
    MenuItem22: TMenuItem;
    MenuItem23: TMenuItem;
    MenuItem24: TMenuItem;
    MenuItem25: TMenuItem;
    MenuItem26: TMenuItem;
    MenuItem27: TMenuItem;
    MenuItem28: TMenuItem;
    MenuItem3: TMenuItem;
    MenuItem4: TMenuItem;
    MenuItem5: TMenuItem;
    MenuItem6: TMenuItem;
    MenuItem7: TMenuItem;
    MenuItem8: TMenuItem;
    MenuItem9: TMenuItem;
    OpenDialog1: TOpenDialog;
    SaveDialog1: TSaveDialog;
    SynCppSyn1: TSynCppSyn;
    SynEdit1: TSynEdit;
    SynHTMLSyn1: TSynHTMLSyn;
    SynPasSyn1: TSynPasSyn;
    procedure FormCreate(Sender: TObject);

    procedure MenuItem10Click(Sender: TObject);
    procedure MenuItem11Click(Sender: TObject);
    procedure MenuItem12Click(Sender: TObject);
    procedure MenuItem13Click(Sender: TObject);
    procedure MenuItem15Click(Sender: TObject);
    procedure MenuItem16Click(Sender: TObject);
    procedure MenuItem18Click(Sender: TObject);
    procedure MenuItem19Click(Sender: TObject);
    procedure MenuItem20Click(Sender: TObject);
    procedure MenuItem21Click(Sender: TObject);
    procedure MenuItem22Click(Sender: TObject);
    procedure MenuItem23Click(Sender: TObject);
    procedure MenuItem24Click(Sender: TObject);
    procedure MenuItem25Click(Sender: TObject);
    procedure MenuItem26Click(Sender: TObject);
    procedure MenuItem27Click(Sender: TObject);
    procedure MenuItem28Click(Sender: TObject);
    procedure MenuItem4Click(Sender: TObject);
    procedure MenuItem5Click(Sender: TObject);
    procedure MenuItem6Click(Sender: TObject);
    procedure MenuItem7Click(Sender: TObject);
    procedure MenuItem8Click(Sender: TObject);
    procedure MenuItem9Click(Sender: TObject);
    procedure SynEdit1Change(Sender: TObject);
  private

  public


  end;

var
  Form1: TForm1;
  FileWork: String;

implementation
 uses Unit2, Unit3, Unit4, Unit5;  // юзаем вторую форму
{$R *.lfm}


Procedure SaveAs;
begin
  if Form1.SaveDialog1.Execute then
  begin
    Form1.SynEdit1.Lines.SaveToFile(Form1.SaveDialog1.FileName);
    FileWork:=Form1.SaveDialog1.FileName;
  end;
end;




{ TForm1 }

procedure TForm1.MenuItem4Click(Sender: TObject);
begin
     FileWork:='';
     SynEdit1.Clear;
end;

procedure TForm1.MenuItem12Click(Sender: TObject);
begin
  SynEdit1.PasteFromClipboard;
end;

procedure TForm1.MenuItem13Click(Sender: TObject);
begin
  if FontDialog1.Execute then SynEdit1.Font:=FontDialog1.Font;
end;

procedure TForm1.MenuItem11Click(Sender: TObject);
begin
  SynEdit1.CopyToClipboard;
end;

procedure TForm1.MenuItem10Click(Sender: TObject);
begin
  SynEdit1.SelectAll;
end;



procedure TForm1.FormCreate(Sender: TObject);
begin

end;


procedure TForm1.MenuItem15Click(Sender: TObject);
begin
     if OpenDialog1.Execute then
     begin
       SynEdit1.Lines.LoadFromFile(OpenDialog1.FileName);
       FileWork:=OpenDialog1.FileName;
     end;
end;

procedure TForm1.MenuItem16Click(Sender: TObject);
begin

end;

procedure TForm1.MenuItem18Click(Sender: TObject);
begin
  Unit3.Form3.Show;
end;


procedure TForm1.MenuItem19Click(Sender: TObject);
begin
  Unit2.Form2.Show;
end;

procedure TForm1.MenuItem20Click(Sender: TObject);
begin
   Unit4.Form4.Show;
end;

procedure TForm1.MenuItem21Click(Sender: TObject);
begin
  Unit5.Form5.Show;
end;

procedure TForm1.MenuItem22Click(Sender: TObject);
begin
  SynEdit1.color:=clblack;
end;

procedure TForm1.MenuItem23Click(Sender: TObject);
begin
  SynEdit1.color:=clwhite;
end;

procedure TForm1.MenuItem24Click(Sender: TObject);
begin
  SynEdit1.color:=clred;
end;

procedure TForm1.MenuItem25Click(Sender: TObject);
begin

end;

procedure TForm1.MenuItem26Click(Sender: TObject);
begin
Form1.SynEdit1.Highlighter:=SynPasSyn1;
end;

procedure TForm1.MenuItem27Click(Sender: TObject);
begin
  Form1.SynEdit1.Highlighter:=SynCppSyn1;
end;

procedure TForm1.MenuItem28Click(Sender: TObject);
begin
  Form1.SynEdit1.Highlighter:=SynHTMLSyn1;
end;

procedure TForm1.MenuItem5Click(Sender: TObject);
begin
//Закрывает текущий файл, с выводом сообщения о том следует ли сохранить сделанные изменения.
if MessageDlg('Сохранить?', mtInformation, [mbYes, mbNo], 0) = mrYes then
begin if SaveDialog1.Execute then
SynEdit1.Lines.SaveToFile(SaveDialog1.FileName) end
else
SynEdit1.Clear;
end;


procedure TForm1.MenuItem6Click(Sender: TObject);
begin
     If FileWork='' then SaveAs else SynEdit1.Lines.SavetoFile(FileWork);
end;

procedure TForm1.MenuItem7Click(Sender: TObject);
begin
  SaveAs;
end;

procedure TForm1.MenuItem8Click(Sender: TObject);
begin
  Close;
end;

procedure TForm1.MenuItem9Click(Sender: TObject);
begin
   SynEdit1.CutToClipboard;
end;

procedure TForm1.SynEdit1Change(Sender: TObject);
begin

end;




end.

