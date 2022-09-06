unit Unit2;

interface

uses
  Windows, Messages, SysUtils, Variants, Classes, Graphics, Controls, Forms,
  Dialogs, ExtCtrls, StdCtrls, MMsystem, MCIPlayers;

type
  TForm2 = class(TForm)
    Fon2: TImage;
    game: TImage;
    summa: TLabel;
    HP: TLabel;
    cena: TLabel;
    name: TLabel;
    opis: TLabel;
    elka: TImage;
    Home: TImage;
    Girlanda: TImage;
    boti: TImage;
    rudnik: TImage;
    stol: TImage;
    Oplata: TImage;
    opis1: TLabel;
    opis2: TLabel;
    opis3: TLabel;
    XPelka: TLabel;
    Nastroenie: TLabel;
    menu: TImage;
    procedure FormActivate(Sender: TObject);
    procedure gameClick(Sender: TObject);
    procedure elkaClick(Sender: TObject);
    procedure HomeClick(Sender: TObject);
    procedure GirlandaClick(Sender: TObject);
    procedure botiClick(Sender: TObject);
    procedure rudnikClick(Sender: TObject);
    procedure stolClick(Sender: TObject);
    procedure OplataClick(Sender: TObject);
    procedure menuClick(Sender: TObject);
  private
    { Private declarations }
  public
    { Public declarations }
  end;

var
  Form2: TForm2;
  t:integer;
implementation
uses unit1,unit3;
{$R *.dfm}

procedure TForm2.FormActivate(Sender: TObject);
begin
Fon2.SendToBack;
Fon2.Left:=0;
Fon2.top:=0;
form2.Left:=form1.Left;
form2.Top:=form1.Top;
Fon2.Width:=form2.Width;
Fon2.Height:=form2.Height;
t:=0;
end;

procedure TForm2.gameClick(Sender: TObject);
begin
playsound(PChar('click.wav'),0,snd_Async);
form1.Visible:=true;
form2.Visible:=false;
form1.player.Left:=form1.player.Left-10000;
form1.IIZap.Enabled:=true;

form1.II1.Enabled:=true;
form1.II2.Enabled:=true;
form1.II3.Enabled:=true;
form1.II4.Enabled:=true;
form1.II5.Enabled:=true;

if strtoint(Nastroenie.Caption)=100 then begin form1.shop.Visible:=false;
 form1.menu.Visible:=false; end;
end;

procedure TForm2.elkaClick(Sender: TObject);
begin
playsound(PChar('click.wav'),0,snd_Async);
 name.Caption:='           Елка';
 opis.Caption:='Красивый интерьер';
 opis1.Caption:='для ёлки, который';
 opis2.Caption:='поднимает новогоднее';
 opis3.Caption:='настроение.';
 cena.Caption:='100';
 t:=1;
end;

procedure TForm2.HomeClick(Sender: TObject);
begin
playsound(PChar('click.wav'),0,snd_Async);
 name.Caption:='           Дом';
 opis.Caption:='Красивый интерьер';
 opis1.Caption:='местности, который';
 opis2.Caption:='поднимает новогоднее';
 opis3.Caption:='настроение.';
 cena.Caption:='200';
 t:=2;
end;

procedure TForm2.GirlandaClick(Sender: TObject);
begin
playsound(PChar('click.wav'),0,snd_Async);
 name.Caption:='           Гирлянда';
 opis.Caption:='Красивый интерьер';
 opis1.Caption:='местности, который';
 opis2.Caption:='поднимает новогоднее';
 opis3.Caption:='настроение.';
 cena.Caption:='150';
 t:=3;
end;

procedure TForm2.botiClick(Sender: TObject);
begin
playsound(PChar('click.wav'),0,snd_Async);
 name.Caption:='Легкие ботинки';
 opis.Caption:='Улучшение персонажа,';
 opis1.Caption:='которое повышает';
 opis2.Caption:='скорость перемещения';
 opis3.Caption:='на 50%.';
 cena.Caption:='175';
 t:=4;
end;

procedure TForm2.rudnikClick(Sender: TObject);
begin
playsound(PChar('click.wav'),0,snd_Async);
 name.Caption:='Улучшение рудника';
 opis.Caption:='Улучшение здания,';
 opis1.Caption:='которое повышает';
 opis2.Caption:='скорость добычи';
 opis3.Caption:='монет в 4 раза.';
 cena.Caption:='300';
 t:=5;
end;

procedure TForm2.stolClick(Sender: TObject);
begin
playsound(PChar('click.wav'),0,snd_Async);
 name.Caption:='Новогодний стол';
 opis.Caption:='Красивый интерьер';
 opis1.Caption:='для местности, который';
 opis2.Caption:='поднимает новогоднее';
 opis3.Caption:='настроение.';
 cena.Caption:='150';
 t:=6;
end;

procedure TForm2.OplataClick(Sender: TObject);
begin
case t of
1:if strtoint(summa.Caption)>=100 then begin form1.elka.Visible:=true; elka.Visible:=false;
summa.Caption:=inttostr(strtoint(summa.Caption)-100); t:=0;
Nastroenie.Caption:=inttostr(strtoint(Nastroenie.Caption)+20);
playsound(PChar('kerchunk.wav'),0,snd_Async);
end;

2:if strtoint(summa.Caption)>=200 then begin form1.dom.Visible:=true; home.Visible:=false;
summa.Caption:=inttostr(strtoint(summa.Caption)-200); t:=0;
Nastroenie.Caption:=inttostr(strtoint(Nastroenie.Caption)+30);
playsound(PChar('kerchunk.wav'),0,snd_Async); end;

3:if strtoint(summa.Caption)>=150 then begin girlanda.Visible:=false;
form1.Fon.Picture.LoadFromFile('GFon.bmp');
summa.Caption:=inttostr(strtoint(summa.Caption)-150); t:=0;
Nastroenie.Caption:=inttostr(strtoint(Nastroenie.Caption)+25);
mtip:=1;
playsound(PChar('kerchunk.wav'),0,snd_Async); end;

4:if strtoint(summa.Caption)>=175 then begin skor:=1; boti.Visible:=false;
summa.Caption:=inttostr(strtoint(summa.Caption)-175); t:=0;
playsound(PChar('kerchunk.wav'),0,snd_Async); end;

5:if strtoint(summa.Caption)>=300 then begin dob:=3; rudnik.Visible:=false;
summa.Caption:=inttostr(strtoint(summa.Caption)-300); t:=0;
playsound(PChar('kerchunk.wav'),0,snd_Async); end;

6:if strtoint(summa.Caption)>=150 then begin form1.stol.Visible:=true; stol.Visible:=false;
summa.Caption:=inttostr(strtoint(summa.Caption)-150); t:=0;
Nastroenie.Caption:=inttostr(strtoint(Nastroenie.Caption)+25);
playsound(PChar('kerchunk.wav'),0,snd_Async); end;
end;
 if t=0 then begin
 opis.Caption:='Описание предмета';
 opis1.Caption:='';
 opis2.Caption:='';
 opis3.Caption:='';
 name.Caption:='Название предмета';
 cena.Caption:='0';

 end;
form1.summa.Caption:=summa.Caption;
form1.Nastroenie.Caption:=Nastroenie.Caption;
end;
procedure TForm2.menuClick(Sender: TObject);
begin
playsound(PChar('click.wav'),0,snd_Async);
form3.Visible:=true;
form2.Visible:=false;
ft:=2;
form3.gback.Visible:=true;
end;

end.
