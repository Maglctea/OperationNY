unit Unit5;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, MMsystem, StdCtrls;

type
  TForm5 = class(TForm)
    Image1: TImage;
    vixod: TImage;
    he1: TLabel;
    Nad: TTimer;
    Label1: TLabel;
    procedure vixodClick(Sender: TObject);
    procedure NadTimer(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form5: TForm5;
  sf:integer;

implementation
uses unit3;
{$R *.dfm}

procedure TForm5.vixodClick(Sender: TObject);
begin
playsound(PChar('click.wav'),0,snd_Async);
form3.Left:=form5.Left;
form3.Top:=form5.Top;
form3.Visible:=true;
form5.Visible:=false;
end;

procedure TForm5.NadTimer(Sender: TObject);
begin
he1.Color:=rgb(224,181,29);

sf:=sf+1;
case sf of
1:begin he1.Left:=344; he1.Top:=35; he1.Caption:='Цель:' end;
5:
10:
15:
20:
24:sf:=0;
end;
end;

end.
