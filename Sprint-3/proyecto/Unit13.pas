unit Unit13;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, StdCtrls, Grids, DBGrids;

type
  TForm13 = class(TForm)
    Button1: TButton;
    Button2: TButton;
    Label1: TLabel;
    procedure Button1Click(Sender: TObject);
    procedure Button2Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
    ok:boolean;
  end;

var
  Form13: TForm13;

implementation

uses Unit3, Unit9;

{$R *.dfm}

procedure TForm13.Button1Click(Sender: TObject);
begin
ok:= true;
form13.Close;
end;

procedure TForm13.Button2Click(Sender: TObject);
begin
form13.Close;
end;

end.
