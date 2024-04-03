unit ConnectionModule;

interface

uses
  SysUtils, Classes, DB, ADODB, IniFiles;

function GetADOConnection: TADOConnection;

implementation

function GetADOConnection: TADOConnection;
var
  IniFile: TIniFile;
  DLLFolder: string;
begin
  Result := TADOConnection.Create(nil);
  try
    // Get the DLL folder path
    DLLFolder := ExtractFilePath(GetModuleName(HInstance));

    // Read connection string from INI file
    IniFile := TIniFile.Create(IncludeTrailingPathDelimiter(DLLFolder) + 'MyConfig.ini');
    try
      Result.ConnectionString := IniFile.ReadString('RTWEBAPIDatabase', 'ConnectionString', '');
    finally
      IniFile.Free;
    end;
    Result.LoginPrompt := False;
    Result.Connected := True;

  except
    on E: Exception do
    begin
      // Handle any exceptions here
      //ShowMessage('Error initializing database connection: ' + E.Message);
      Result.Free;
      Result := nil;
    end;
  end;
end;

end.

