; Script generated by the Inno Script Studio Wizard.
; SEE THE DOCUMENTATION FOR DETAILS ON CREATING INNO SETUP SCRIPT FILES!

#define MyAppName "RaspberryJamMod"
#define MyAppVersion "0.75"
#define MyAppPublisher "Omega Centauri Software"
#define MyAppURL "http://github.com/arpruss/raspberryjammod"

[Setup]
; NOTE: The value of AppId uniquely identifies this application.
; Do not use the same AppId value in installers for other applications.
; (To generate a new GUID, click Tools | Generate GUID inside the IDE.)
AppId={{2AA2DFED-997D-4E6A-8FF3-4812440DB509}
AppName={#MyAppName}
AppVersion={#MyAppVersion}
;AppVerName={#MyAppName} {#MyAppVersion}
AppPublisher={#MyAppPublisher}
AppPublisherURL={#MyAppURL}
AppSupportURL={#MyAppURL}
AppUpdatesURL={#MyAppURL}
DefaultDirName={userpf}\{#MyAppName}
DisableDirPage=yes
DefaultGroupName={#MyAppName}
OutputDir=build\
OutputBaseFilename=RaspberryJamMod-Installer
Compression=lzma2
SolidCompression=yes
LicenseFile=py27\LICENSE.txt
PrivilegesRequired=lowest

[Languages]
Name: "english"; MessagesFile: "compiler:Default.isl"

[Files]
Source: "python2-scripts\mcpipy\*"; DestDir: "{userappdata}\.minecraft\mcpipy\"; Flags: confirmoverwrite recursesubdirs createallsubdirs uninsneveruninstall; Components: Python\Python27\Scripts
Source: "python3-scripts\mcpipy\*"; DestDir: "{userappdata}\.minecraft\mcpipy\"; Flags: confirmoverwrite recursesubdirs createallsubdirs uninsneveruninstall; Components: Python\Python3\Scripts
Source: "build\libs\RaspberryJamMod.jar"; DestDir: "{userappdata}\.minecraft\mods\1.8\"
Source: "build\libs\RaspberryJamMod.jar"; DestDir: "{userappdata}\.minecraft\mods\1.8.8\"
Source: "build\libs\RaspberryJamMod.jar"; DestDir: "{userappdata}\.minecraft\mods\1.8.9\"
Source: "19\build\libs\RaspberryJamMod.jar"; DestDir: "{userappdata}\.minecraft\mods\1.9\"
Source: "194\build\libs\RaspberryJamMod.jar"; DestDir: "{userappdata}\.minecraft\mods\1.9.4\"
Source: "110\build\libs\RaspberryJamMod.jar"; DestDir: "{userappdata}\.minecraft\mods\1.10\"
Source: "110\build\libs\RaspberryJamMod.jar"; DestDir: "{userappdata}\.minecraft\mods\1.10.2\"
Source: "config27\*"; DestDir: "{userappdata}\.minecraft\config"; Flags: createallsubdirs recursesubdirs confirmoverwrite; Components: Python\Python27\Config
Source: "config3\*"; DestDir: "{userappdata}\.minecraft\config"; Flags: createallsubdirs recursesubdirs confirmoverwrite; Components: Python\Python27\Config
Source: "py27\*"; DestDir: "{userappdata}\.minecraft\python27"; Flags: createallsubdirs recursesubdirs ignoreversion; Components: Python\Python27\Interpreter
Source: "py3\*"; DestDir: "{userappdata}\.minecraft\python3"; Flags: createallsubdirs recursesubdirs ignoreversion; Components: Python\Python3\Interpreter

[Components]
Name: "Mod"; Description: "Raspberry Jam Mod"; Types: full compact custom
Name: "Python"; Description: "Python interpreter and scripts";  Types: custom compact full
Name: "Python\Python27"; Description: "Python 2.7"; Flags: exclusive
Name: "Python\Python27\Interpreter"; Description: "Interpreter"
Name: "Python\Python27\Interpreter\Config"; Description: "Configure mod for interpreter"
Name: "Python\Python27\Scripts"; Description: "Scripts"
Name: "Python\Python3"; Description: "Python 3.x"; Flags: exclusive;  Types: custom compact full
Name: "Python\Python3\Interpreter"; Description: "Interpreter";  Types: custom compact full
Name: "Python\Python3\Interpreter\Config"; Description: "Configure mod for interpreter";  Types: custom compact full
Name: "Python\Python3\Scripts"; Description: "Scripts";  Types: custom compact full

[InstallDelete]
Type: files; Name: "{userappdata}\.minecraft\mods\RaspberryJamMod*.jar"; Components: Mod
Type: files; Name: "{userappdata}\.minecraft\mods\1.8\RaspberryJamMod*.jar"; Components: Mod
Type: files; Name: "{userappdata}\.minecraft\mods\1.8.8\RaspberryJamMod*.jar"; Components: Mod
Type: files; Name: "{userappdata}\.minecraft\mods\1.8.9\RaspberryJamMod*.jar"; Components: Mod
Type: files; Name: "{userappdata}\.minecraft\mods\1.9\RaspberryJamMod*.jar"; Components: Mod
Type: files; Name: "{userappdata}\.minecraft\mods\1.9.4\RaspberryJamMod*.jar"; Components: Mod
Type: files; Name: "{userappdata}\.minecraft\mods\1.10\RaspberryJamMod*.jar"; Components: Mod

[Messages]
WelcomeLabel2=MAKE SURE YOU HAVE FORGE FOR MINECRAFT 1.8/1.8.8/1.8.9/1.9/1.9.4/1.10/1.10.2 ALREADY INSTALLED. Otherwise, this won't work.
ConfirmUninstall=Are you sure you want to completely remove %1 and all of its components? (Note that the scripts in the mcpipy folder of your Minecraft folder should NOT get deleted, however, in case you made changes.)

[Icons]
Name: "{userdesktop}\IDLE for Minecraft Python 2.7"; Filename: "{userappdata}\.minecraft\python27\pythonw.exe"; WorkingDir: "{userappdata}\.minecraft\mcpipy"; IconFilename: "idlemcpipy"; Parameters: "..\Python27\Lib\idlelib\idle.py"; Components: Python\Python27\Interpreter; Tasks: Desktop
Name: "{userdesktop}\IDLE for Minecraft Python 3"; Filename: "{userappdata}\.minecraft\python27\pythonw.exe"; WorkingDir: "{userappdata}\.minecraft\mcpipy"; IconFilename: "idlemcpipy"; Parameters: "..\Python3\Lib\idlelib\idle.py"; Components: Python\Python3\Interpreter; Tasks: Desktop
Name: "{group}\IDLE for Minecraft Python 2.7"; Filename: "{userappdata}\.minecraft\python27\pythonw.exe"; WorkingDir: "{userappdata}\.minecraft\mcpipy"; IconFilename: "idlemcpipy"; Parameters: "..\Python27\Lib\idlelib\idle.py"; Components: Python\Python27\Interpreter; Tasks: Start
Name: "{group}\IDLE for Minecraft Python 3"; Filename: "{userappdata}\.minecraft\python3\pythonw.exe"; WorkingDir: "{userappdata}\.minecraft\mcpipy"; IconFilename: "idlemcpipy"; Parameters: "..\Python3\Lib\idlelib\idle.py"; Components: Python\Python3\Interpreter; Tasks: Start
Name: "{group}\Uninstall RaspberryJamMod files"; Filename: "{uninstallexe}"; Tasks: Start
Name: "{group}\{cm:UninstallProgram,{#MyAppName}}"; Filename: "{uninstallexe}"; Tasks: Start

[Tasks]
Name: "Desktop"; Description: "Desktop shortcut"; Components: Python\Python27\Interpreter Python\Python3\Interpreter
Name: "Start"; Description: "Start Menu shortcut"; Components: Python\Python27\Interpreter Python\Python3\Interpreter
