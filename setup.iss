; Script generated by the Inno Setup Script Wizard.
; SEE THE DOCUMENTATION FOR DETAILS ON CREATING INNO SETUP SCRIPT FILES!

#define MyAppName "HIGH SHELL"
#define MyAppVersion "1.1"
#define MyAppPublisher "MiSoft"
#define MyAppExeName "main.exe"
#define MyAppAssocName MyAppName + " File"
#define MyAppAssocExt ".myp"
#define MyAppAssocKey StringChange(MyAppAssocName, " ", "") + MyAppAssocExt

[Setup]
; NOTE: The value of AppId uniquely identifies this application. Do not use the same AppId value in installers for other applications.
; (To generate a new GUID, click Tools | Generate GUID inside the IDE.)
AppId={{BC1D1F52-0A62-443D-99D0-0096639DE766}
AppName={#MyAppName}
AppVersion={#MyAppVersion}
;AppVerName={#MyAppName} {#MyAppVersion}
AppPublisher={#MyAppPublisher}
DefaultDirName={autopf}\{#MyAppName}
ChangesAssociations=yes
DisableProgramGroupPage=yes
; Uncomment the following line to run in non administrative install mode (install for current user only.)
;PrivilegesRequired=lowest
OutputDir=C:\Users\Mirk337\Desktop\HIGH SHELL\Setups
OutputBaseFilename=HIGH SHELL 1.1 Setup
SetupIconFile=C:\Users\Mirk337\Desktop\HIGH SHELL\icon.ico
Compression=lzma
SolidCompression=yes
WizardStyle=modern

[Languages]
Name: "english"; MessagesFile: "compiler:Default.isl"
Name: "russian"; MessagesFile: "compiler:Languages\Russian.isl"

[Tasks]
Name: "desktopicon"; Description: "{cm:CreateDesktopIcon}"; GroupDescription: "{cm:AdditionalIcons}"; Flags: unchecked

[Files]
Source: "C:\Users\Mirk337\Desktop\HIGH SHELL\dist\main\{#MyAppExeName}"; DestDir: "{app}"; Flags: ignoreversion
Source: "C:\Users\Mirk337\Desktop\HIGH SHELL\dist\main\_asyncio.pyd"; DestDir: "{app}"; Flags: ignoreversion
Source: "C:\Users\Mirk337\Desktop\HIGH SHELL\dist\main\_bz2.pyd"; DestDir: "{app}"; Flags: ignoreversion
Source: "C:\Users\Mirk337\Desktop\HIGH SHELL\dist\main\_ctypes.pyd"; DestDir: "{app}"; Flags: ignoreversion
Source: "C:\Users\Mirk337\Desktop\HIGH SHELL\dist\main\_decimal.pyd"; DestDir: "{app}"; Flags: ignoreversion
Source: "C:\Users\Mirk337\Desktop\HIGH SHELL\dist\main\_hashlib.pyd"; DestDir: "{app}"; Flags: ignoreversion
Source: "C:\Users\Mirk337\Desktop\HIGH SHELL\dist\main\_lzma.pyd"; DestDir: "{app}"; Flags: ignoreversion
Source: "C:\Users\Mirk337\Desktop\HIGH SHELL\dist\main\_multiprocessing.pyd"; DestDir: "{app}"; Flags: ignoreversion
Source: "C:\Users\Mirk337\Desktop\HIGH SHELL\dist\main\_overlapped.pyd"; DestDir: "{app}"; Flags: ignoreversion
Source: "C:\Users\Mirk337\Desktop\HIGH SHELL\dist\main\_queue.pyd"; DestDir: "{app}"; Flags: ignoreversion
Source: "C:\Users\Mirk337\Desktop\HIGH SHELL\dist\main\_socket.pyd"; DestDir: "{app}"; Flags: ignoreversion
Source: "C:\Users\Mirk337\Desktop\HIGH SHELL\dist\main\_ssl.pyd"; DestDir: "{app}"; Flags: ignoreversion
Source: "C:\Users\Mirk337\Desktop\HIGH SHELL\dist\main\base_library.zip"; DestDir: "{app}"; Flags: ignoreversion
Source: "C:\Users\Mirk337\Desktop\HIGH SHELL\dist\main\libcrypto-1_1.dll"; DestDir: "{app}"; Flags: ignoreversion
Source: "C:\Users\Mirk337\Desktop\HIGH SHELL\dist\main\libffi-7.dll"; DestDir: "{app}"; Flags: ignoreversion
Source: "C:\Users\Mirk337\Desktop\HIGH SHELL\dist\main\libssl-1_1.dll"; DestDir: "{app}"; Flags: ignoreversion
Source: "C:\Users\Mirk337\Desktop\HIGH SHELL\dist\main\pyexpat.pyd"; DestDir: "{app}"; Flags: ignoreversion
Source: "C:\Users\Mirk337\Desktop\HIGH SHELL\dist\main\python310.dll"; DestDir: "{app}"; Flags: ignoreversion
Source: "C:\Users\Mirk337\Desktop\HIGH SHELL\dist\main\select.pyd"; DestDir: "{app}"; Flags: ignoreversion
Source: "C:\Users\Mirk337\Desktop\HIGH SHELL\dist\main\unicodedata.pyd"; DestDir: "{app}"; Flags: ignoreversion
Source: "C:\Users\Mirk337\Desktop\HIGH SHELL\dist\main\VCRUNTIME140.dll"; DestDir: "{app}"; Flags: ignoreversion
Source: "C:\Users\Mirk337\Desktop\HIGH SHELL\dist\main\main.exe"; DestDir: "{app}"; Flags: ignoreversion
; NOTE: Don't use "Flags: ignoreversion" on any shared system files

[Registry]
Root: HKA; Subkey: "Software\Classes\{#MyAppAssocExt}\OpenWithProgids"; ValueType: string; ValueName: "{#MyAppAssocKey}"; ValueData: ""; Flags: uninsdeletevalue
Root: HKA; Subkey: "Software\Classes\{#MyAppAssocKey}"; ValueType: string; ValueName: ""; ValueData: "{#MyAppAssocName}"; Flags: uninsdeletekey
Root: HKA; Subkey: "Software\Classes\{#MyAppAssocKey}\DefaultIcon"; ValueType: string; ValueName: ""; ValueData: "{app}\{#MyAppExeName},0"
Root: HKA; Subkey: "Software\Classes\{#MyAppAssocKey}\shell\open\command"; ValueType: string; ValueName: ""; ValueData: """{app}\{#MyAppExeName}"" ""%1"""
Root: HKA; Subkey: "Software\Classes\Applications\{#MyAppExeName}\SupportedTypes"; ValueType: string; ValueName: ".myp"; ValueData: ""

[Icons]
Name: "{autoprograms}\{#MyAppName}"; Filename: "{app}\{#MyAppExeName}"
Name: "{autodesktop}\{#MyAppName}"; Filename: "{app}\{#MyAppExeName}"; Tasks: desktopicon

[Run]
Filename: "{app}\{#MyAppExeName}"; Description: "{cm:LaunchProgram,{#StringChange(MyAppName, '&', '&&')}}"; Flags: nowait postinstall skipifsilent

