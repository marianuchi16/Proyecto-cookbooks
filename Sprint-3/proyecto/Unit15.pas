unit Unit15;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, QuickRpt, qrpBaseCtrls, QRCtrls;

type
  TForm15 = class(TForm)
    QRPQuickrep1: TQRPQuickrep;
    QRBand1: TQRBand;
    QRBand2: TQRBand;
    QRBand3: TQRBand;
    QRBand4: TQRBand;
    QRSysData1: TQRSysData;
    QRSysData2: TQRSysData;
    QRLabel1: TQRLabel;
    QRLabel2: TQRLabel;
    QRLabel3: TQRLabel;
    QRLabel4: TQRLabel;
    QRLabel5: TQRLabel;
    QRDBText1: TQRDBText;
    QRDBText2: TQRDBText;
    QRDBText3: TQRDBText;
    QRDBText4: TQRDBText;
    QRDBText5: TQRDBText;
    QRSysData3: TQRSysData;
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form15: TForm15;

implementation

uses Unit3;

{$R *.dfm}

end.
