unit UMain;

interface

uses
  Windows, Messages, SysUtils, Classes, Graphics, Controls, Forms,
  Dialogs, Grids, CustomHints;

type
  TForm1 = class(TForm)
    StringGrid1: TStringGrid;
    procedure FormCreate(Sender: TObject);
  private

  public

  end;

var
  Form1: TForm1;

implementation

{$R *.dfm}

procedure TForm1.FormCreate(Sender: TObject);
var
 C, R, I: Integer;
begin
 with StringGrid1 do
  begin
   I:=0;
   for C:=0 to ColCount - 1 do
   for R:=0 To RowCount - 1 do
    begin
     Cells[C, R]:=Format('Cell %d: [%d, %d]', [I, C, R]);
     inc(I);
    end;
  end;
end;

end.
