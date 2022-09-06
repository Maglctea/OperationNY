unit Unit4;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, StdCtrls, MMsystem, MCIPlayers;

type
  TForm4 = class(TForm)
    afon: TImage;
    aknop: TImage;
    spisok: TTimer;
    tip: TImage;
    nam: TImage;
    procedure aknopClick(Sender: TObject);
    procedure spisokTimer(Sender: TObject);
    procedure FormActivate(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form4: TForm4;
  sf:integer;
implementation
uses unit3, unit1;
{$R *.dfm}

procedure TForm4.aknopClick(Sender: TObject);
begin
playsound(PChar('click.wav'),0,snd_Async);
form3.Left:=form4.Left;
form3.Top:=form4.Top;
form3.Visible:=true;
form4.Visible:=false;
spisok.Enabled:=false;
end;

procedure TForm4.spisokTimer(Sender: TObject);
begin
sf:=sf+1;
case sf of
1:begin tip.Picture.LoadFromFile('T1.bmp'); nam.Picture.LoadFromFile('A1.bmp'); end;
5:begin tip.Picture.LoadFromFile('T2.bmp'); nam.Picture.LoadFromFile('A2.bmp'); end;
10:nam.Picture.LoadFromFile('A3.bmp');
15:nam.Picture.LoadFromFile('A4.bmp');
20:nam.Picture.LoadFromFile('A5.bmp');
24:sf:=0;
end;
end;
procedure TForm4.FormActivate(Sender: TObject);
begin
sf:=0;
end;

end.
