unit Unit3;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, MMsystem, MCIPlayers;

type
  TForm3 = class(TForm)
    Image1: TImage;
    NawGame: TImage;
    Aftor: TImage;
    vixod: TImage;
    gback: TImage;
    Image2: TImage;
    Help: TImage;
    procedure NawGameClick(Sender: TObject);
    procedure gbackClick(Sender: TObject);
    procedure vixodClick(Sender: TObject);
    procedure AftorClick(Sender: TObject);
    procedure HelpClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form3: TForm3;

implementation
uses unit1,unit2,unit4,unit5;
{$R *.dfm}
procedure TForm3.NawGameClick(Sender: TObject);
begin
pnapr:=0;
playsound(PChar('click.wav'),0,snd_Async);
 form1.II1.Enabled:=false;
 form1.II2.Enabled:=false;
 form1.II3.Enabled:=false;
 form1.II4.Enabled:=false;
 form1.II5.Enabled:=false;

 form1.IIK1.Left:=968;
 form1.IIK2.Left:=1000;
 form1.IIK3.Left:=1016;
 form1.IIK4.Left:=1032;
 form1.IIK5.Left:=1048;

 form1.iizap.Enabled:=true;

 gback.Visible:=false;
 mp:=0;
 dob:=0;
 skor:=0;
 form1.XPprov.Enabled:=true;
 form1.nadpis.Visible:=false;
 form1.HAPPYEND.Enabled:=false;
 form1.HP.Caption:='25';
 form1.XPelka.Caption:='50';
 form1.summa.Caption:='10000';
 form1.Player.Left:=8;
 form1.Player.Top:=324;
 form1.Player.Width:=100;
 form1.Player.Height:=137;
 form1.Player.Picture.LoadFromFile('PlayerR.bmp');
 form1.shar.Visible:=false;
 form1.Nastroenie.Caption:='0';
 form1.shop.Visible:=true;
 form1.Fon.Picture.LoadFromFile('fon.bmp');
 form1.testshop.Enabled:=true;

 form1.feyverk1.Visible:=false;
 form1.feyverk2.Visible:=false;
 form1.feyverk3.Visible:=false;

 form1.KHit1.Visible:=false;
 form1.KHit2.Visible:=false;
 form1.KHit3.Visible:=false;
 form1.KHit4.Visible:=false;
 form1.KHit5.Visible:=false;
 form1.KHit6.Visible:=false;

 form1.oleni.Left:=-335;

 form1.nadpis.Caption:='Happy End  ';

 form1.Feyverktime.Enabled:=false;
 form1.feyverk1.Visible:=false;
 form1.feyverk2.Visible:=false;
 form1.feyverk3.Visible:=false;

 form1.Giftime.Enabled:=false;
 form1.gift1.Top:=128;
 form1.gift2.Top:=128;
 form1.gift3.Top:=128;
 form1.gift4.Top:=128;
 form1.gift5.Top:=128;
 form1.gift6.Top:=128;
 form1.gift7.Top:=128;
 form1.gift8.Top:=128;
 form1.gift9.Top:=128;

 form1.gift1.Visible:=false;
 form1.gift2.Visible:=false;
 form1.gift3.Visible:=false;
 form1.gift4.Visible:=false;
 form1.gift5.Visible:=false;
 form1.gift6.Visible:=false;
 form1.gift7.Visible:=false;
 form1.gift8.Visible:=false;
 form1.gift9.Visible:=false;

 form1.dom.Visible:=false;
 form1.elka.Visible:=false;
 form1.Stol.Visible:=false;

 Hit:=1;
 form1.KHit1.Visible:=false;
 form1.KHit2.Visible:=false;
 form1.KHit3.Visible:=false;
 form1.KHit4.Visible:=false;
 form1.KHit5.Visible:=false;
 form1.KHit6.Visible:=false;
 form1.Nav2.Enabled:=false;

 form1.Nav1.Enabled:=false;

 form2.elka.Visible:=true;
 form2.rudnik.Visible:=true;
 form2.Home.Visible:=true;
 form2.stol.Visible:=true;
 form2.boti.Visible:=true;
 form2.Girlanda.Visible:=true;
 form2.Nastroenie.Caption:='0';
 form2.summa.Caption:='0';
 form2.HP.Caption:='0';
 form2.XPelka.Caption:='0';

 form1.Left:=form3.Left;
 form1.Top:=form3.Top;
 form1.Visible:=true;
 form3.Visible:=false;

 form1.XPprov.Enabled:=true;
 form1.nadpis.Font.Color:=CLYellow;


 end;

procedure TForm3.gbackClick(Sender: TObject);
begin
playsound(PChar('click.wav'),0,snd_Async);
  if ft=2 then    begin
      form2.Visible:=true;
      form3.Visible:=false; end;
  if ft=1 then    begin
      form1.Visible:=true;
      form3.Visible:=false;
      form1.player.Left:=form1.player.Left-10000;
      form1.II1.Enabled:=true;
      form1.II2.Enabled:=true;
      form1.II3.Enabled:=true;
      form1.II4.Enabled:=true;
      form1.II5.Enabled:=true;  end;
  gback.Visible:=false;
end;
procedure TForm3.vixodClick(Sender: TObject);
begin
playsound(PChar('click.wav'),0,snd_Async);
Application.Terminate;
end;

procedure TForm3.AftorClick(Sender: TObject);
begin
playsound(PChar('click.wav'),0,snd_Async);
form4.Left:=form3.Left;
form4.Top:=form3.Top;
form4.tip.Picture.LoadFromFile('T1.bmp');
form4.nam.Picture.LoadFromFile('A1.bmp');
form4.Visible:=true;
form3.Visible:=false;
sf:=0;
form4.spisok.Enabled:=true;
end;

procedure TForm3.HelpClick(Sender: TObject);
begin
playsound(PChar('click.wav'),0,snd_Async);
form5.Left:=form3.Left;
form5.Top:=form3.Top;
form5.Visible:=true;
form3.Visible:=false;
end;

end.
