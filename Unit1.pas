unit Unit1;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, StdCtrls, Buttons, MMsystem, MCIPlayers;

type
  TForm1 = class(TForm)
    Player: TImage;
    Fon: TImage;
    hr: TTimer;
    hl: TTimer;
    Gold: TTimer;
    summa: TLabel;
    HP: TLabel;
    elka: TImage;
    dom: TImage;
    ram: TShape;
    shop: TImage;
    menu: TImage;
    Stol: TImage;
    iizap: TTimer;
    II2: TTimer;
    II3: TTimer;
    II4: TTimer;
    II5: TTimer;
    IIK1: TImage;
    IIK2: TImage;
    IIK4: TImage;
    IIK5: TImage;
    IIK3: TImage;
    II1: TTimer;
    Nastroenie: TLabel;
    XPelka: TLabel;
    Nav2: TTimer;
    shar: TImage;
    Nav1: TTimer;
    KHit1: TShape;
    KHit2: TShape;
    KHit3: TShape;
    KHit4: TShape;
    KHit6: TShape;
    KHit5: TShape;
    oleni: TImage;
    HAPPYEND: TTimer;
    gift9: TImage;
    gift2: TImage;
    gift3: TImage;
    gift4: TImage;
    gift5: TImage;
    gift6: TImage;
    gift7: TImage;
    gift8: TImage;
    gift1: TImage;
    Giftime: TTimer;
    nadpis: TLabel;
    feyverk1: TImage;
    feyverk3: TImage;
    feyverk2: TImage;
    Feyverktime: TTimer;
    XPprov: TTimer;
    testshop: TTimer;
    povtorfona: TTimer;
    menushka: TTimer;
    procedure FormActivate(Sender: TObject);
    procedure hrTimer(Sender: TObject);
    procedure hlTimer(Sender: TObject);
    procedure FormKeyPress(Sender: TObject; var Key: Char);
    procedure GoldTimer(Sender: TObject);
    procedure shopClick(Sender: TObject);
    procedure iizapTimer(Sender: TObject);
    procedure II1Timer(Sender: TObject);
    procedure II2Timer(Sender: TObject);
    procedure II3Timer(Sender: TObject);
    procedure II4Timer(Sender: TObject);
    procedure II5Timer(Sender: TObject);
    procedure Nav1Timer(Sender: TObject);
    procedure Nav2Timer(Sender: TObject);
    procedure HAPPYENDTimer(Sender: TObject);
    procedure GiftimeTimer(Sender: TObject);
    procedure FeyverktimeTimer(Sender: TObject);
    procedure XPprovTimer(Sender: TObject);
    procedure menuClick(Sender: TObject);
    procedure testshopTimer(Sender: TObject);
    procedure menushkaTimer(Sender: TObject);
    procedure povtorfonaTimer(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form1: TForm1;
  x0,y0,i,sum,dob,skor,hit,raz,pad:integer;
  ran,ia,nav,sh,kill,napr,pnapr,ast,mp:integer;
  mk,fk,ft,mtip:integer;
  IIXP:array[1..5] of integer;
  IIK:array[1..5] of TImage;
  Mfon:TMCIPlayer;
implementation
uses unit2,unit3;
{$R *.dfm}

procedure TForm1.FormActivate(Sender: TObject);
begin
oleni.SendToBack;
player.SendToBack;
gift1.SendToBack;
gift2.SendToBack;
gift3.SendToBack;
gift4.SendToBack;
gift5.SendToBack;
gift6.SendToBack;
gift7.SendToBack;
gift8.SendToBack;
gift9.SendToBack;
KHit1.SendToBack;
KHit2.SendToBack;
KHit3.SendToBack;
KHit4.SendToBack;
KHit5.SendToBack;
KHit6.SendToBack;
dom.SendToBack;
stol.SendToBack;
elka.SendToBack;
Fon.SendToBack;
Fon.Left:=0;
Fon.top:=0;
Fon.Width:=form1.Width;
Fon.Height:=form1.Height;
ram.Left:=22;
nav:=1;
hit:=0;
mp:=0;
  if mk<>1 then begin
    Mfon:=TMCIPlayer.Create('Mfon.mp3');
    Mfon.Rewind;
    Mfon.Play;
   mk:=1;
  end;

  if fk<>1 then begin
menushka.Enabled:=true;
form3.Left:=form1.Left;
form3.Top:=form1.Top;
player.Left:=player.Left+10000;
mp:=1;
IIZap.Enabled:=false;
II1.Enabled:=false;
II2.Enabled:=false;
II3.Enabled:=false;
II4.Enabled:=false;
II5.Enabled:=false;
fk:=1;
end;

if strtoint(Nastroenie.Caption)=100 then begin
ia:=0;

shop.Visible:=false;
IIzap.Enabled:=false;
II1.Enabled:=false; IIK1.Left:=1000;
II2.Enabled:=false; IIK2.Left:=1000;
II3.Enabled:=false; IIK3.Left:=1000;
II4.Enabled:=false; IIK4.Left:=1000;
II5.Enabled:=false; IIK5.Left:=1000;
pad:=0;
feyverk1.Visible:=true;
feyverk2.Visible:=true;
feyverk3.Visible:=true;
HAPPYEND.Enabled:=true;
Feyverktime.Enabled:=true;
nadpis.Visible:=true;


end; end;

procedure TForm1.hrTimer(Sender: TObject);
begin
i:=i+1;
case i of
1:begin player.Picture.LoadFromFile('PlayerR1.bmp');
  player.Left:=player.Left+2+skor; end;
2:player.Left:=player.Left+2+skor;
3:begin player.Picture.LoadFromFile('PlayerR2.bmp');
  player.Left:=player.Left+2+skor; end;
4:player.Left:=player.Left+2+skor;
5:begin player.Picture.LoadFromFile('PlayerR.bmp');
  player.Left:=player.Left+2+skor; i:=0; hr.Enabled:=false; end;
end;
end;

procedure TForm1.hlTimer(Sender: TObject);
begin
i:=i+1;
case i of
1:begin player.Picture.LoadFromFile('PlayerL1.bmp');
  player.Left:=player.Left-2-skor; end;
2:player.Left:=player.Left-2-skor;
3:begin player.Picture.LoadFromFile('PlayerL2.bmp');
  player.Left:=player.Left-2-skor; end;
4:player.Left:=player.Left-2-skor;
5:begin player.Picture.LoadFromFile('PlayerL.bmp');
  player.Left:=player.Left-2-skor; i:=0; hl.Enabled:=false; end;
end;
end;

procedure TForm1.FormKeyPress(Sender: TObject; var Key: Char);
begin
if mp=0 then begin
  case key of
   'd','D','â','Â':if Player.left<=form1.Width-115 then
               begin hr.Enabled:=true;
                     pnapr:=0;
                    end;
   'a','A','ô','Ô':if Player.left>=0 then
               begin hl.Enabled:=true;
                     pnapr:=1; end;
   '1':begin ram.Left:=22; nav:=1; end;
   '2':begin ram.Left:=71; nav:=2; end;
   '3':begin ram.Left:=120; nav:=3; end;
   '4':begin ram.Left:=170; nav:=4; end;
   #13:begin
            case nav of
             1:begin if raz=0 then begin
                playsound(PChar('fair.WAV'),0, SND_ASYNC);
                 if pnapr=0 then shar.Left:=player.Left+96
                              else shar.Left:=player.Left-3;
                     raz:=1;
                     shar.Top:=player.Top+44;
                     napr:=pnapr;
                     shar.Visible:=true;
                     Nav1.Enabled:=true;
                     end;
                         end;

             2:if (strtoint(summa.Caption)>=20) and (hit<>1) then begin
               summa.Caption:=inttostr(strtoint(summa.Caption)-20);
               playsound(PChar('hit.wav'),0,snd_Async);
               Hit:=1;
               KHit1.Visible:=true;
               KHit2.Visible:=true;
               KHit3.Visible:=true;
               KHit4.Visible:=true;
               KHit5.Visible:=true;
               KHit6.Visible:=true;
               Nav2.Enabled:=true;
               end;

             3:if strtoint(summa.Caption)>=40 then begin
                     summa.Caption:=inttostr(strtoint(summa.Caption)-40);
                     playsound(PChar('harp.wav'),0,snd_Async);
                     XPelka.Caption:='50' end;
             4:if strtoint(summa.Caption)>=30 then begin
                     summa.Caption:=inttostr(strtoint(summa.Caption)-30);
                      playsound(PChar('harp.wav'),0,snd_Async);
                     HP.Caption:='25' end;
            end;
       end;

   end;
end;
end;

procedure TForm1.GoldTimer(Sender: TObject);
begin
if Player.Left<=50 then begin
summa.Caption:=inttostr(strtoint(summa.Caption)+1+dob);
form2.summa.Caption:=inttostr(strtoint(summa.Caption)+1+dob);
end;
end;

procedure TForm1.shopClick(Sender: TObject);
begin
form2.HP.Caption:=form1.HP.Caption;
form2.XPelka.Caption:=XPelka.Caption;
form2.Visible:=true;
form1.Visible:=false;
player.Left:=player.Left+10000;
playsound(PChar('click.wav'),0,snd_Async);
IIZap.Enabled:=false;

II1.Enabled:=false;
II2.Enabled:=false;
II3.Enabled:=false;
II4.Enabled:=false;
II5.Enabled:=false;
end;

procedure TForm1.iizapTimer(Sender: TObject);
VAR
sh:integer;
begin
randomize;
ran:=random(5)+1;

kill:=ran;

 for sh:=1 to ran do
 begin
 IIXP[sh]:=85;
  case sh of
  1:begin II1.Enabled:=true;
  IIK1.Picture.LoadFromFile('SnegovikL.bmp');
  IIK1.Transparent:=true;
  IIK1.Width:=100;
  IIK1.Height:=138;
  IIK1.Top:=324;
  IIK1.Left:=random(600)+887;
  IIK1.visible:=true; end;

  2:begin II2.Enabled:=true;
  IIK2.Picture.LoadFromFile('SnegovikL.bmp');
  IIK2.Transparent:=true;
  IIK2.Width:=100;
  IIK2.Height:=138;
  IIK2.Top:=320;
  IIK2.Left:=random(600)+887;
  IIK2.visible:=true;  end;

  3:begin II3.Enabled:=true;
  IIK3.Picture.LoadFromFile('SnegovikL.bmp');
  IIK3.Transparent:=true;
  IIK3.Width:=100;
  IIK3.Height:=138;
  IIK3.Top:=324;
  IIK3.Left:=random(600)+887;
  IIK3.visible:=true;    end;

  4:begin II4.Enabled:=true;
  IIK4.Picture.LoadFromFile('SnegovikL.bmp');
  IIK4.Transparent:=true;
  IIK4.Width:=100;
  IIK4.Height:=138;
  IIK4.Top:=328;
  IIK4.Left:=random(600)+887;
  IIK4.visible:=true;  end;

  5:begin II5.Enabled:=true;
  IIK5.Picture.LoadFromFile('SnegovikL.bmp');
  IIK5.Transparent:=true;
  IIK5.Width:=100;
  IIK5.Height:=138;
  IIK5.Top:=324;
  IIK5.Left:=random(600)+887;
  IIK5.visible:=true; end;
end;
end;
iizap.Enabled:=false
end;

procedure TForm1.II1Timer(Sender: TObject);
begin
 if IIK1.Left>=340 then begin
  ia:=ia+1;
 case ia of
  1:begin   IIK1.Picture.LoadFromFile('SnegovikL1.bmp');
   IIK1.Left:=IIK1.Left-3; end;
  2:IIK1.Left:=IIK1.Left-3;
  3:begin IIK1.Picture.LoadFromFile('SnegovikL2.bmp');
   IIK1.Left:=IIK1.Left-3; end;
 4:IIK1.Left:=IIK1.Left-3;
 5:begin IIK1.Picture.LoadFromFile('SnegovikL.bmp');
  IIK1.Left:=IIK1.Left-3; ia:=0; end;
end;
end;
if (IIK1.Left<=340) and (hit=0) then begin Xpelka.Caption:=inttostr(strtoint(XPelka.Caption)-1);
case ia of
  1: IIK1.Picture.LoadFromFile('SnegovikL1.bmp');
  3: IIK1.Picture.LoadFromFile('SnegovikL2.bmp');
  5: IIK1.Picture.LoadFromFile('SnegovikL.bmp');
  6: ia:=0;   end;
 end;

if ((IIK1.Left+22>=player.Left+15) and (IIK1.Left+22<=player.Left+85)) or ((IIK1.Left+80>=player.Left+15) and (IIK1.Left+80<=player.Left+85)) then
 HP.Caption:=inttostr(strtoint(HP.Caption)-1);
end;

procedure TForm1.II2Timer(Sender: TObject);
begin
if IIK2.Left>=400 then begin
  ia:=ia+1;
 case ia of
  1:begin   IIK2.Picture.LoadFromFile('SnegovikL1.bmp');
   IIK2.Left:=IIK2.Left-3; end;
  2:IIK2.Left:=IIK2.Left-3;
  3:begin IIK2.picture.LoadFromFile('SnegovikL2.bmp');
   IIK2.Left:=IIK2.Left-3; end;
 4:IIK2.Left:=IIK2.Left-3;
 5:begin IIK2.Picture.LoadFromFile('SnegovikL.bmp');
  IIK2.Left:=IIK2.Left-3; ia:=0; end;
end;
end;
if (IIK2.Left<=400) and (hit=0) then begin Xpelka.Caption:=inttostr(strtoint(XPelka.Caption)-1);
case ia of
  1: IIK2.Picture.LoadFromFile('SnegovikL1.bmp');
  3: IIK2.Picture.LoadFromFile('SnegovikL2.bmp');
  5: IIK2.Picture.LoadFromFile('SnegovikL.bmp');
  6: ia:=0;   end;
 end;

if ((IIK2.Left+22>=player.Left+15) and (IIK2.Left+22<=player.Left+85)) or ((IIK2.Left+80>=player.Left+15) and (IIK2.Left+80<=player.Left+85)) then
 HP.Caption:=inttostr(strtoint(HP.Caption)-1);
end;

procedure TForm1.II3Timer(Sender: TObject);
begin
if IIK3.Left>=360 then begin
  ia:=ia+1;
 case ia of
  1:begin   IIK3.Picture.LoadFromFile('SnegovikL1.bmp');
   IIK3.Left:=IIK3.Left-3; end;
  2:IIK3.Left:=IIK3.Left-3;
  3:begin IIK3.Picture.LoadFromFile('SnegovikL2.bmp');
   IIK3.Left:=IIK3.Left-3; end;
 4:IIK3.Left:=IIK3.Left-3;
 5:begin IIK3.Picture.LoadFromFile('SnegovikL.bmp');
  IIK3.Left:=IIK3.Left-3; ia:=0; end;
end;
end;
if (IIK3.Left<=360) and (hit=0) then begin Xpelka.Caption:=inttostr(strtoint(XPelka.Caption)-1);
case ia of
  1: IIK3.Picture.LoadFromFile('SnegovikL1.bmp');
  3: IIK3.Picture.LoadFromFile('SnegovikL2.bmp');
  5: IIK3.Picture.LoadFromFile('SnegovikL.bmp');
  6: ia:=0; end;
 end;
if ((IIK3.Left+22>=player.Left+15) and (IIK3.Left+22<=player.Left+85)) or ((IIK3.Left+80>=player.Left+15) and (IIK3.Left+80<=player.Left+85)) then
 HP.Caption:=inttostr(strtoint(HP.Caption)-1);
end;

procedure TForm1.II4Timer(Sender: TObject);
begin
if IIK4.Left>=370 then begin
  ia:=ia+1;
 case ia of
  1:begin   IIK4.Picture.LoadFromFile('SnegovikL1.bmp');
   IIK4.Left:=IIK4.Left-3; end;
  2:IIK4.Left:=IIK4.Left-3;
  3:begin IIK4.Picture.LoadFromFile('SnegovikL2.bmp');
   IIK4.Left:=IIK4.Left-3; end;
 4:IIK4.Left:=IIK4.Left-3;
 5:begin IIK4.Picture.LoadFromFile('SnegovikL.bmp');
  IIK4.Left:=IIK4.Left-3; ia:=0;
   end;
end;
end;
if (IIK4.Left<=370) and (hit=0) then begin
Xpelka.Caption:=inttostr(strtoint(XPelka.Caption)-1);
case ia of
  1: IIK4.Picture.LoadFromFile('SnegovikL1.bmp');
  3: IIK4.Picture.LoadFromFile('SnegovikL2.bmp');
  5: IIK4.Picture.LoadFromFile('SnegovikL.bmp');
  6: ia:=0;  end;
 end;
if ((IIK4.Left+22>=player.Left+15) and (IIK4.Left+22<=player.Left+85)) or ((IIK4.Left+80>=player.Left+15) and (IIK4.Left+80<=player.Left+85)) then
 HP.Caption:=inttostr(strtoint(HP.Caption)-1);
end;

procedure TForm1.II5Timer(Sender: TObject);
begin
  ia:=ia+1;
if IIK5.Left>=340
then begin
 case ia of
  1:begin   IIK5.Picture.LoadFromFile('SnegovikL1.bmp');
   IIK5.Left:=IIK5.Left-3; end;
  2:IIK5.Left:=IIK5.Left-3;
  3:begin IIK5.Picture.LoadFromFile('SnegovikL2.bmp');
   IIK5.Left:=IIK5.Left-3; end;
 4:IIK5.Left:=IIK5.Left-3;
 5:begin IIK1.Picture.LoadFromFile('SnegovikL.bmp');
  IIK5.Left:=IIK5.Left-3; ia:=0; end;
end;
end;
if (IIK5.Left<=340) and (hit=0) then begin
 Xpelka.Caption:=inttostr(strtoint(XPelka.Caption)-1);
 case ia of
  1: IIK5.Picture.LoadFromFile('SnegovikL1.bmp');
  3: IIK5.Picture.LoadFromFile('SnegovikL2.bmp');
  5: IIK5.Picture.LoadFromFile('SnegovikL.bmp');
  6: ia:=0;  end;
 end;

if ((IIK5.Left+22>=player.Left+15) and (IIK5.Left+22<=player.Left+85)) or ((IIK5.Left+80>=player.Left+15) and (IIK5.Left+80<=player.Left+85)) then
 HP.Caption:=inttostr(strtoint(HP.Caption)-1);
end;

procedure TForm1.Nav1Timer(Sender: TObject);
begin
if napr=0 then begin
sh:=sh+1;
if sh<=40 then shar.Left:=shar.Left+2
 else begin
  sh:=0;
  shar.Visible:=false;
  shar.Left:=0;
  Nav1.Enabled:=false;
  raz:=0;
      end;
                               end;
if napr=1 then begin
sh:=sh+1;
if sh<=40 then shar.Left:=shar.Left-2
 else begin
  sh:=0;
  shar.Visible:=false;
  shar.Left:=0;
  Nav1.Enabled:=false;
  raz:=0;
      end;                         end;


if ((shar.Left+21>=IIK1.left+32) and (shar.Left+21<=IIK1.left+79)) or ((shar.Left+1>=IIK1.left+32) and (shar.Left+1<=IIK1.left+79)) then
IIXP[1]:=IIXP[1]-1;
if IIXP[1]<=0 then begin IIK1.Visible:=false; IIk1.Left:=1000; II1.Enabled:=false; end;

if ((shar.Left+21>=IIK2.left+32) and (shar.Left+21<=IIK2.left+79)) or ((shar.Left+1>=IIK2.left+32) and (shar.Left+1<=IIK2.left+79)) then
IIXP[2]:=IIXP[2]-1;
if IIXP[2]<=0 then begin IIK2.Visible:=false; IIk2.left:=1000; II2.Enabled:=false; end;

if ((shar.Left+21>=IIK3.left+32) and (shar.Left+21<=IIK3.left+79)) or ((shar.Left+1>=IIK3.left+32) and (shar.Left+1<=IIK3.left+79)) then
 IIXP[3]:=IIXP[3]-1;
if IIXP[3]<=0 then begin IIK3.Visible:=false; IIk3.Left:=1000; II3.Enabled:=false; end;

if ((shar.Left+21>=IIK4.left+32) and (shar.Left+21<=IIK4.left+79)) or ((shar.Left+1>=IIK4.left+32) and (shar.Left+1<=IIK4.left+79)) then
IIXP[4]:=IIXP[4]-1;
if IIXP[4]<=0 then begin IIK4.Visible:=false; IIk4.Left:=1000; II4.Enabled:=false; end;

if ((shar.Left+21>=IIK5.left+32) and (shar.Left+21<=IIK5.left+79)) or ((shar.Left+1>=IIK5.left+32) and (shar.Left+1<=IIK5.left+79)) then
IIXP[5]:=IIXP[5]-1;
if IIXP[5]<=0 then begin IIK5.Visible:=false; IIK5.Left:=1000; II5.Enabled:=false; end;

If (II1.Enabled=false) and (II2.Enabled=false) and (II3.Enabled=false) and (II4.Enabled=false) and (II5.Enabled=false) then iizap.Enabled:=true;
end;

procedure TForm1.Nav2Timer(Sender: TObject);
begin
hit:=0;
KHit1.Visible:=false;
KHit2.Visible:=false;
KHit3.Visible:=false;
KHit4.Visible:=false;
KHit5.Visible:=false;
KHit6.Visible:=false;
Nav2.Enabled:=false;
end;

procedure TForm1.HAPPYENDTimer(Sender: TObject);
begin
menu.Visible:=false;
shop.Visible:=false;
if oleni.Left<1000 then oleni.Left:=oleni.Left+5;
                   { else HAPPYEND.Enabled:=false;   }
case oleni.Left of
65:begin gift1.Visible:=true; pad:=pad+1; end;
120:begin gift2.Visible:=true; pad:=pad+1; end;
215:begin gift3.Visible:=true; pad:=pad+1; end;
320:begin gift4.Visible:=true; pad:=pad+1; end;
415:begin gift5.Visible:=true; pad:=pad+1; end;
520:begin gift6.Visible:=true; pad:=pad+1; end;
615:begin gift7.Visible:=true; pad:=pad+1; end;
755:begin gift8.Visible:=true; pad:=pad+1; end;
825:begin gift9.Visible:=true; pad:=pad+1; end;
end;
giftime.Enabled:=true;
end;

procedure TForm1.GiftimeTimer(Sender: TObject);
begin
case pad of
 1: if gift1.top<408 then gift1.Top:=gift1.Top+2;
 2: begin if gift1.top<408 then gift1.Top:=gift1.Top+2;
          if gift2.top<408 then gift2.Top:=gift2.Top+2; end;
 3: begin if gift1.top<408 then gift1.Top:=gift1.Top+2;
          if gift2.top<408 then gift2.Top:=gift2.Top+2;
          if gift3.top<408 then gift3.Top:=gift3.Top+2; end;
 4: begin if gift1.top<408 then gift1.Top:=gift1.Top+2;
          if gift2.top<408 then gift2.Top:=gift2.Top+2;
          if gift3.top<408 then gift3.Top:=gift3.Top+2;
          if gift4.top<408 then gift4.Top:=gift4.Top+2; end;
 5: begin if gift1.top<408 then gift1.Top:=gift1.Top+2;
          if gift2.top<408 then gift2.Top:=gift2.Top+2;
          if gift3.top<408 then gift3.Top:=gift3.Top+2;
          if gift4.top<408 then gift4.Top:=gift4.Top+2;
          if gift5.top<408 then gift5.Top:=gift5.Top+2; end;
 6: begin if gift1.top<408 then gift1.Top:=gift1.Top+2;
          if gift2.top<408 then gift2.Top:=gift2.Top+2;
          if gift3.top<408 then gift3.Top:=gift3.Top+2;
          if gift4.top<408 then gift4.Top:=gift4.Top+2;
          if gift5.top<408 then gift5.Top:=gift5.Top+2;
          if gift6.top<408 then gift6.Top:=gift6.Top+2; end;
 7: begin if gift1.top<408 then gift1.Top:=gift1.Top+2;
          if gift2.top<408 then gift2.Top:=gift2.Top+2;
          if gift3.top<408 then gift3.Top:=gift3.Top+2;
          if gift4.top<408 then gift4.Top:=gift4.Top+2;
          if gift5.top<408 then gift5.Top:=gift5.Top+2;
          if gift6.top<408 then gift6.Top:=gift6.Top+2;
          if gift7.top<408 then gift7.Top:=gift7.Top+2; end;
 8: begin if gift1.top<408 then gift1.Top:=gift1.Top+2;
          if gift2.top<408 then gift2.Top:=gift2.Top+2;
          if gift3.top<408 then gift3.Top:=gift3.Top+2;
          if gift4.top<408 then gift4.Top:=gift4.Top+2;
          if gift5.top<408 then gift5.Top:=gift5.Top+2;
          if gift6.top<408 then gift6.Top:=gift6.Top+2;
          if gift7.top<408 then gift7.Top:=gift7.Top+2;
          if gift8.top<408 then gift8.Top:=gift8.Top+2; end;
 9: begin if gift1.top<408 then gift1.Top:=gift1.Top+2;
          if gift2.top<410 then gift2.Top:=gift2.Top+2;
          if gift3.top<408 then gift3.Top:=gift3.Top+2;
          if gift4.top<420then gift4.Top:=gift4.Top+2;
          if gift5.top<415 then gift5.Top:=gift5.Top+2;
          if gift6.top<405 then gift6.Top:=gift6.Top+2;
          if gift7.top<410 then gift7.Top:=gift7.Top+2;
          if gift8.top<420 then gift8.Top:=gift8.Top+2;
          if gift9.top<415 then gift9.Top:=gift9.Top+2
                            else menu.Visible:=true; end;
end;
 giftime.Enabled:=false;
end;
procedure TForm1.FeyverktimeTimer(Sender: TObject);
begin
ia:=ia+1;
IIK1.Left:=1000;
IIK2.Left:=1000;
IIK3.Left:=1000;
IIK4.Left:=1000;
IIK5.Left:=1000;
          case ia of
          1:begin feyverk1.Picture.LoadFromFile('feyrverk.bmp');
           feyverk2.Picture.LoadFromFile('feyrverk.bmp');
           feyverk3.Picture.LoadFromFile('feyrverk.bmp'); end;
          2:begin feyverk1.Picture.LoadFromFile('feyrverk1.bmp');
           feyverk2.Picture.LoadFromFile('feyrverk1.bmp');
           feyverk3.Picture.LoadFromFile('feyrverk2.bmp'); end;
          3:begin feyverk1.Picture.LoadFromFile('feyrverk2.bmp');
           feyverk2.Picture.LoadFromFile('feyrverk2.bmp');
           feyverk3.Picture.LoadFromFile('feyrverk2.bmp');
           ia:=0; end;
          end;
end;
procedure TForm1.XPprovTimer(Sender: TObject);
begin
 if (strtoint(HP.Caption)<=0) or (strtoint(XPelka.Caption)<=0) then begin
  mp:=1;
IIzap.Enabled:=false;
II1.Enabled:=false; IIK1.Left:=10000;
II2.Enabled:=false; IIK2.Left:=10000;
II3.Enabled:=false; IIK3.Left:=10000;
II4.Enabled:=false; IIK4.Left:=10000;
II5.Enabled:=false; IIK5.Left:=10000;
summa.Caption:='0';
nastroenie.Caption:='0';
Nadpis.Font.Color:=clred;
Nadpis.Caption:='   Bad End     ';
nadpis.Visible:=true;
shop.Visible:=false;
end;

if strtoint(HP.Caption)<=0 then begin
  player.Height:=100;
  player.Width:=137;
  player.top:=359;
 if (pnapr=0) and (ast<>1) then begin ast:=1; player.Picture.LoadFromFile('PlayerMR.bmp'); end;
 if (pnapr=1) and (ast<>1) then begin ast:=1; player.Picture.LoadFromFile('PlayerML.bmp');
 Hp.Caption:='0';
 end;
end;
if (strtoint(XPelka.Caption)<=0 ) and (ast<>1) then begin
 ast:=1;
if mtip<>1 then begin elka.Picture.LoadFromFile('MElka.bmp');
 elka.Visible:=true;
          end;
 if mtip=1 then begin fon.Picture.LoadFromFile('MFon.bmp');
 elka.Visible:=false; end;
 XPelka.Caption:='0';
 end;
end;
procedure TForm1.menuClick(Sender: TObject);
begin
playsound(PChar('click.wav'),0,snd_Async);
form3.Visible:=true;
form1.Visible:=false;
player.Left:=player.Left+10000;
IIZap.Enabled:=false;

II1.Enabled:=false;
II2.Enabled:=false;
II3.Enabled:=false;
II4.Enabled:=false;
II5.Enabled:=false;
ft:=1;
form3.gback.Visible:=true;

if (strtoint(HP.Caption)<=0) or (strtoint(XPelka.Caption)<=0) or (strtoint(Nastroenie.Caption)=100) then
   form3.gback.Visible:=false;


end;

procedure TForm1.testshopTimer(Sender: TObject);
begin
if (IIK1.Left<=860) or (IIK2.Left<=860) or (IIK3.Left<=860) or (IIK4.Left<=860) or (IIK5.Left<=860) then
 shop.Visible:=false
  else
   shop.Visible:=true;
end;
procedure TForm1.menushkaTimer(Sender: TObject);
begin
form3.Visible:=true;
form1.Visible:=false;
ft:=1;
menushka.Enabled:=false;
end;

procedure TForm1.povtorfonaTimer(Sender: TObject);
begin
    Mfon.Rewind;
    Mfon.Play;
end;

end.


