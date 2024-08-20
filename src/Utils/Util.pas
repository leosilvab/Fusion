unit Util;

interface
  type TUtil = class
    class function GetID : Integer;
  end;

implementation

uses
System.SysUtils, System.Hash;

{ TuFusion }

class function TUtil.GetID: Integer;
var
  GUIDString : String;
  HashValue : Integer;
begin
   GUIDString := TGUID.NewGuid.ToString;
   HashValue := THashBobJenkins.GetHashValue(GUIDString);
   Result := HashValue;
end;

end.
