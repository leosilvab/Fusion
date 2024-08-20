unit Fusion;

interface
  type TUtil = class
    class function GetID : String;
  end;

implementation

uses
System.SysUtils;

{ TuFusion }

class function TUtil.GetID: String;
begin
   Result := TGUID.NewGuid.ToString;
   Result := StringReplace(Result, '{', '', [rfReplaceAll]);
   Result := StringReplace(Result, '}', '', [rfReplaceAll]);
end;

end.
