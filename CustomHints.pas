{
  Unit Name: CustomHints;
  Autor    : Cirec 29/06/2007

  Utilisation/license : - libre de droit pour un usage privé et pour des
                          applications gratuites (Ne pas oublier de citer l'auteur
                          dans ce cas).
                        - utilisation et reproduction même partielle
                          INTERDITE sans la permission écrite de l'auteur
                          dans le cadre de logiciels commerciaux.
}

unit CustomHints;

interface

uses  SysUtils, {For :Format}
      Controls, {For :CM_HINTSHOW}
      Forms,    {For :TCMHintShow}
      Messages, {For :TMessage}
      Grids;    {For :TStringGrid, TCustomGrid}

type
  TStringGrid = class(Grids.TStringGrid)
  private
    procedure CMHintShow(var message: TMessage); message CM_HINTSHOW;
  end;

  THackedGrid = class(TCustomGrid);

implementation

const HintStrData = 'Cell: [%d, %d]'#13#10'Text: "%s"';

{ TStringGrid }
procedure TStringGrid.CMHintShow(var message: TMessage);
var
 DrawInfo: TGridDrawInfo;
 HRow, HCol: Integer;
begin
  // récupère les infos sur le Grid
  THackedGrid(Self).CalcDrawInfo(DrawInfo);
  with TCMHintShow(message).HintInfo^ do
   begin
    // Calcule des coordonnées de la cellule pointé
    with CursorPos do begin
      HCol:=X div (DefaultColWidth + GridLineWidth) +
               DrawInfo.Horz.FirstGridCell - FixedCols;
      HRow:=Y div (DefaultRowHeight + GridLineWidth) +
               DrawInfo.Vert.FirstGridCell - FixedRows;
    end;
    //pour obtenir un hint par cellule on limite
    //l'affichage à la cellule en cours
    CursorRect := CellRect(HCol, HRow);
    // on change le texte
    HintStr:=Format(HintStrData, [HCol, HRow, Cells[HCol, HRow]]);
  end;
 inherited;
end;

end.
