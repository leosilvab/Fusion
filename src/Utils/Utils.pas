unit Utils;

interface

uses
Data.DB, Fusiosn.Model.Conexao, Vcl.DBGrids;

procedure LimparDBGrid(DataSet: TDataSet);
procedure RefreshDataSet(DataSet: TDataSet);
function FusionSequence(ColumnName, TableName: String): Integer ;
function Crypt(Action, Src: String; sChave: String=''): String;
function GetFileVersion(const FileName: string): string;
function LikeFind(Pesquisa : String; Grid : TDBGrid) : String;

implementation

uses   System.SysUtils, Vcl.Grids, Windows, Forms, Classes;



  procedure LimparDBGrid(DataSet: TDataSet);
    begin
      DataSet.DisableControls;
      try
        DataSet.First;
        while not DataSet.Eof do
        begin
          DataSet.Delete;
        end;
      finally
         DataSet.EnableControls;
      end;
    end;


   procedure RefreshDataSet(DataSet :TDataSet);
   begin
        DataSet.DisableControls;
      Try
          DataSet.Close;
          DataSet.Open;
      Finally
        DataSet.EnableControls;
      End;
   end;


   function FusionSequence(ColumnName, TableName : String): Integer;
      var sQuery: String;
   begin
       sQuery := 'select max(' + ColumnName + ') +1 from ' + TableName;

       with dmConexao.sqlObject do
       begin
         SQL.Text := sQuery;
         Open;
         try
            if not Fields[0].IsNull then
                Result := Fields[0].AsInteger
            else
                Result := 1;
         finally
             Close;
         end;
       end;
   end;



  function Crypt(Action, Src: String; sChave: String=''): String;

  Label Fim;
  var KeyLen : Integer;
    KeyPos : Integer;
    OffSet : Integer;
    Dest, Key : String;
    SrcPos : Integer;
    SrcAsc : Integer;
    TmpSrcAsc : Integer;
    Range : Integer;
  begin
    if (Src = '') Then
    begin
      Result:= '';
      Goto Fim;
    end;
    if sChave <> '' then
       Key := sChave
    else
       Key := '05553082609 S839J3SKLJWFOJ  SLDKFO939(O)#2MSO234~@U0IDIIJJ*JKS698ZXCVZX9A_15.123.456/9991-99';

    Dest := '';
    KeyLen := Length(Key);
    KeyPos := 0;
    SrcPos := 0;
    SrcAsc := 0;
    Range := 256;
    if (Action = UpperCase('C')) then
    begin
      Randomize;
      OffSet := Random(Range);
      Dest := Format('%1.2x',[OffSet]);
      for SrcPos := 1 to Length(Src) do
      begin
        SrcAsc := (Ord(Src[SrcPos]) + OffSet) Mod 255;
        if KeyPos < KeyLen then KeyPos := KeyPos + 1 else KeyPos := 1;
        SrcAsc := SrcAsc Xor Ord(Key[KeyPos]);
        Dest := Dest + Format('%1.2x',[SrcAsc]);
        OffSet := SrcAsc;
      end;
    end
    Else if (Action = UpperCase('D')) then
    begin
      OffSet := StrToInt('$'+ copy(Src,1,2));
      SrcPos := 3;
    repeat
      SrcAsc := StrToInt('$'+ copy(Src,SrcPos,2));
      if (KeyPos < KeyLen) Then KeyPos := KeyPos + 1 else KeyPos := 1;
      TmpSrcAsc := SrcAsc Xor Ord(Key[KeyPos]);
      if TmpSrcAsc <= OffSet then TmpSrcAsc := 255 + TmpSrcAsc - OffSet
      else TmpSrcAsc := TmpSrcAsc - OffSet;
      Dest := Dest + Chr(TmpSrcAsc);
      OffSet := SrcAsc;
      SrcPos := SrcPos + 2;
    until (SrcPos >= Length(Src));
    end;
    Result:= Dest;
    Fim:
  end;

  function GetFileVersion(const FileName: string): string;
var
  Size, Handle: DWORD;
  Buffer: TBytes;
  FileInfo: PVSFixedFileInfo;
  FileInfoSize: UINT;
begin
  Result := '';
  Size := GetFileVersionInfoSize(PChar(FileName), Handle);
  if Size > 0 then
  begin
    SetLength(Buffer, Size);
    if GetFileVersionInfo(PChar(FileName), Handle, Size, Buffer) and
      VerQueryValue(Buffer, '\', Pointer(FileInfo), FileInfoSize) then
    begin
      Result := Format('%d.%d.%d.%d', [
        HiWord(FileInfo.dwFileVersionMS), // Major
        LoWord(FileInfo.dwFileVersionMS), // Minor
        HiWord(FileInfo.dwFileVersionLS), // Release
        LoWord(FileInfo.dwFileVersionLS)  // Build
      ]);
    end;
  end;
end;


  function LikeFind(Pesquisa : String; Grid : TDBGrid) : String;
var
  iContador : Integer;
begin
  Result := '';
  if Pesquisa.Trim.IsEmpty then
    exit;

  for iContador := 0 to Pred(Grid.Columns.Count) do
  begin
    Result := Result + Grid.Columns.Items[iContador].FieldName +
              ' LIKE ' + QuotedStr('%' + Trim(Pesquisa) + '%') + ' OR ';
  end;

  Result := ' WHERE ' + Copy(Result, 1, Length(Result) - 4);
end;

end.
