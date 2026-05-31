[Setup]
AppName=Oktopios
AppVersion=0.0.2
DefaultDirName={pf}\Oktopios
DefaultGroupName=Oktopios
UninstallDisplayIcon={app}\bin\okp.exe
OutputDir=.
OutputBaseFilename=OktopiosInstaller
Compression=lzma
SolidCompression=yes
SetupIconFile=bin\oktopios.ico

[Languages]
Name: "french"; MessagesFile: "compiler:Languages\French.isl"

[Files]
Source: "bin\okp.exe"; DestDir: "{app}\bin"; Flags: ignoreversion
Source: "metadata\version.txt"; DestDir: "{app}\metadata"; Flags: ignoreversion
Source: "metadata\keywords.txt"; DestDir: "{app}\metadata"; Flags: ignoreversion
Source: "README.md"; DestDir: "{app}"; Flags: ignoreversion
Source: "bin\oktopios.ico"; DestDir: "{app}"; Flags: ignoreversion

[Icons]
Name: "{group}\Oktopios"; Filename: "{app}\bin\okp.exe"
Name: "{group}\Désinstaller Oktopios"; Filename: "{uninstallexe}"

[Registry]
; Ajoute {app}\bin au PATH utilisateur
Root: HKCU; Subkey: "Environment"; ValueType: expandsz; ValueName: "Path"; \
      ValueData: "{olddata};{app}\bin"; Flags: preservestringtype

; Association de fichier .okp
Root: HKCR; Subkey: ".okp"; ValueType: string; ValueName: ""; ValueData: "OktopiosFile"; Flags: uninsdeletevalue
Root: HKCR; Subkey: "OktopiosFile"; ValueType: string; ValueName: ""; ValueData: "Fichier Source Oktopios"; Flags: uninsdeletekey
Root: HKCR; Subkey: "OktopiosFile\DefaultIcon"; ValueType: string; ValueData: "{app}\oktopios.ico"
Root: HKCR; Subkey: "OktopiosFile\shell\open\command"; ValueType: string; ValueData: "code.exe ""%1"""

[Run]
Filename: "{cmd}"; Parameters: "/C echo Installation terminée. Redémarre ta session pour que 'okp' fonctionne dans le terminal."; Flags: runhidden
