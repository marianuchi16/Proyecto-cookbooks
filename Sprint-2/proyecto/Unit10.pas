unit Unit10;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, StdCtrls, Mask;

type
  TForm10 = class(TForm)
    Image1: TImage;
    Label1: TLabel;
    Label2: TLabel;
    Label3: TLabel;
    Label4: TLabel;
    Label5: TLabel;
    Label6: TLabel;
    Memo1: TMemo;
    Label7: TLabel;
    Label8: TLabel;
    Label9: TLabel;
    Label10: TLabel;
    Label11: TLabel;
    Label12: TLabel;
    Label13: TLabel;
    Label14: TLabel;
    Label15: TLabel;
    Label16: TLabel;
    Label17: TLabel;
    Button1: TButton;
    Memo2: TMemo;
    Label18: TLabel;
    procedure Button1Click(Sender: TObject);
    procedure FormClose(Sender: TObject; var Action: TCloseAction);
    procedure Label18Click(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form10: TForm10;

implementation

uses Unit5, Unit3, Unit6;

{$R *.dfm}

procedure TForm10.Button1Click(Sender: TObject);
begin
if (FORM3.adolista.locate('ISBN',label14.caption,[]) )then
begin
  form3.adolista.edit;
  form3.adolista.fieldbyname('Cantidad').asinteger:= form3.adolista.fieldbyname('Cantidad').asinteger + 1;
  form3.adolista.post;
  form3.adolista.refresh;
  form5.dbgrid1.refresh;
  form5.edit1.text:= inttostr((strtoint(form5.edit1.text) + form3.adolista.fieldbyname('Precio').asinteger));
end
else
begin
    FORM3.ADOLISTA.OPEN;
    form3.adolista.append;
    form3.adolista.fieldbyname('ISBN').asstring:= label14.caption;
    form3.adolista.fieldbyname('Precio').asstring:= label5.caption;
    form3.adolista.fieldbyname('Cantidad').asinteger:= 1;
    form3.adolista.fieldbyname('Id_Cliente').asinteger:= form3.adocliente.fieldbyname('Id_Cliente').asinteger;
    form3.adolista.post;
    form3.adolista.refresh;
    form5.edit1.text:= inttostr((strtoint(form5.edit1.text) + form3.adolista.fieldbyname('Precio').asinteger));
    form5.dbgrid1.refresh;
end;
form10.close;
end;

procedure TForm10.FormClose(Sender: TObject; var Action: TCloseAction);
begin
label4.caption:='';
label2.caption:='';
label16.caption:='';
label10.caption:='';
label5.caption:='';
label8.caption:='';
label14.caption:='';
memo1.lines.text:= '';
image1.picture:= nil;
button1.Visible:= true;
memo2.Visible:= false;
Label18.Visible:= false;
end;

procedure TForm10.Label18Click(Sender: TObject);
begin
 form6.Image4.Visible:= true;
 form6.Image1.Visible:= false;
 form6.Image2.Visible:= false;
 form6.Image3.Visible:= false;
 form6.ShowModal;
end;

end.
