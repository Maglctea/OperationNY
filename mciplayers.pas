unit MCIPlayers;

interface

uses
  Windows, SysUtils, MMSystem;
 
type
  TMCIPlayer = class
  private
    fDeviceID: Cardinal;
  public
    constructor Create(FileName : String);
    destructor Destroy; override;
    procedure Play;
    procedure Stop;
    procedure Rewind;
  end;

implementation
  
{ TMCIPlayer }
 
constructor TMCIPlayer.Create(FileName : String);
var
  OpenParms : TMCI_Open_Parms;
  FFlags    : Longint;
  FError    : Longint;
  Buffer    : array[Byte] of Char;
begin
  inherited Create;
  OpenParms.dwCallback := 0;
  OpenParms.wDeviceID  := 0;
  OpenParms.lpstrDeviceType := '';
  OpenParms.lpstrElementName := PChar(FileName);
  OpenParms.lpstrAlias := PChar(IntToStr(GetTickCount) + #0);
  FFlags := MCI_WAIT or MCI_OPEN_ELEMENT or MCI_OPEN_ALIAS;
  FError := mciSendCommand(0, MCI_OPEN, FFlags, Longint(@OpenParms));
  if FError = 0 then
    FDeviceID := OpenParms.wDeviceID
  else
  begin
    FDeviceID := 0;
    mciGetErrorString(FError, @Buffer[0], Length(Buffer));
    MessageBox(0, @Buffer[0], 'Error', IDOK);
  end;
end;
 
destructor TMCIPlayer.Destroy;
var
  GenericParms : TMCI_Generic_Parms;
  FFlags : Longint;
begin
  if FDeviceID <> 0 then
  begin
    GenericParms.dwCallback := 0;
    FFlags := MCI_WAIT;
    if mciSendCommand(FDeviceID, MCI_CLOSE, FFlags, Longint(@GenericParms)) = 0 then
      FDeviceID := 0;
  end;
  inherited Destroy;
end;
 
procedure TMCIPlayer.Play;
var
  PlayParms : TMCI_Play_Parms;
  FFlags : Longint;
begin
  if FDeviceID <> 0 then
  begin
    FFlags := MCI_NOTIFY;
    PlayParms.dwCallback := 0;
    PlayParms.dwFrom := 0;
    PlayParms.dwTo := 0;
    mciSendCommand(FDeviceID, MCI_PLAY, FFlags, Longint(@PlayParms));
  end;
end;
 
procedure TMCIPlayer.Stop;
var
  GenericParms : TMCI_Generic_Parms;
  FFlags : Longint;
begin
  if FDeviceID <> 0 then
  begin
    FFlags := MCI_WAIT;
    GenericParms.dwCallback := 0;
    mciSendCommand(FDeviceID, MCI_STOP, FFlags, Longint(@GenericParms));
  end;
end;

procedure TMCIPlayer.Rewind;
var
  SeekParm : TMCI_Seek_Parms;
begin
  mciSendCommand(FDeviceID, mci_Seek, mci_Wait or mci_Seek_To_Start, Integer(@SeekParm));
end;

end.
