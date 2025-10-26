#define GameMajorVer "38"
#define GameMiddleVer "0"
#define GameMinorVer "0"
#define BuildNumber "23"

#define GameVer "1."+GameMajorVer+"."+GameMiddleVer+"."+GameMinorVer
#define MyAppName "«Мир Танков Истоки»"
#define MyAppVersion GameVer+"#"+BuildNumber
#define AppBuild GameVer+"_"+BuildNumber
#define MyAppPublisher "Mr. Bendy"
#define MyAppURL "https://wot-classic.ru/"

[Setup]
AppId={{53805469-D534-4B72-823F-234B8F14B998}
AppName={cm:AppName}
AppVersion={#MyAppVersion}
AppPublisher={#MyAppPublisher}
AppPublisherURL={#MyAppURL}
AppSupportURL={#MyAppURL}
AppUpdatesURL={#MyAppURL}
OutputBaseFilename=mto_install_{#AppBuild}
ArchitecturesAllowed=x64compatible

VersionInfoProductName={#MyAppName}

DefaultDirName={code:GetLestaGamePath}

DefaultGroupName={cm:AppName}
DisableProgramGroupPage=yes
PrivilegesRequired=lowest
Compression=lzma2/max
;Compression=none
SolidCompression=no
LZMAUseSeparateProcess=yes
LZMANumBlockThreads=6
DiskSpanning=no

WizardStyle=classic
WizardImageFile=wizard_mt.png
WizardSmallImageFile=small_mt.png
SetupIconFile=mt.ico

Uninstallable=no
DirExistsWarning=no
DisableDirPage=no
ShowLanguageDialog=yes
DisableWelcomePage=no
FlatComponentsList=no
RestartIfNeededByRun=no
AppendDefaultDirName=no

[Languages]
Name: "ru"; MessagesFile: "Russian.isl"
Name: "en"; MessagesFile: "English.isl"; InfoBeforeFile: "infobefore_en.txt"

;; Возврат старого шрифта для Inno Setup 6.6+
; [LangOptions]
; DialogFontName=Tahoma
; DialogFontSize=8
; DialogFontBaseScaleHeight=13
; DialogFontBaseScaleWidth=6
; WelcomeFontName=Verdana
; WelcomeFontSize=12

[Types]
Name: "default"; Description: {cm:DefaultInstall}
; Name: "full"; Description: {cm:FullInstall}
Name: "custom"; Description: {cm:CustomInstall}; Flags: iscustom

[Components]
Name: "sounds"; Description: {cm:Sounds}; Types: default
Name: "interface"; Description: {cm:Interface}; Types: default
Name: "interface/login"; Description: {cm:InterfaceLogin}; Types: default
Name: "interface/hangar"; Description: {cm:InterfaceHangar}; Types: default
Name: "interface/battle"; Description: {cm:InterfaceBattle}; Types: default
Name: "graphics"; Description: {cm:Graphics}; Types: default
Name: "graphics/maps"; Description: {cm:GraphicsMaps}; Types: default
Name: "graphics/effects"; Description: {cm:GraphicsEffects}; Types: default
Name: "hangars"; Description: {cm:Hangars}; Types: default
Name: "hangars/v1basic"; Description: {cm:HangarsV1Basic}; Types: default
; Name: "hangars/v1premium"; Description: {cm:HangarsV1Premium}; Types: default
Name: "hangars/v1halloween"; Description: {cm:HangarsV1Halloween}; Types: default
; Name: "hangars/v2basic"; Description: {cm:HangarsV2Basic}; Types: default
Name: "hangars/v2halloween"; Description: {cm:HangarsV2Halloween}; Types: default
Name: "hangars/v2premium"; Description: {cm:HangarsV2Premium}; Types: default
Name: "l10n"; Description: {cm:L10n}; Types: default custom; Flags: fixed
Name: "l10n/ru"; Description: {cm:L10nRu}; Flags: exclusive
Name: "l10n/en"; Description: {cm:L10nEn}; Flags: exclusive

[Tasks]
Name: "cleanmods"; Description: {cm:CleanMods}

[InstallDelete]
Type: filesandordirs; Name: "{app}\mods\{code:GetVersion}\*"; Tasks: "cleanmods"
Type: filesandordirs; Name: "{app}\mods\configs"; Tasks: "cleanmods"
Type: filesandordirs; Name: "{app}\res_mods\{code:GetVersion}\*"; Tasks: "cleanmods"

[Files]
Source: "files\mods\*"; DestDir: "{app}\mods\{code:GetVersion}\mt_origins\core"; Flags: ignoreversion recursesubdirs createallsubdirs skipifsourcedoesntexist
Source: "files\configs\*"; DestDir: "{app}\mods\configs"; Flags: ignoreversion recursesubdirs createallsubdirs skipifsourcedoesntexist

Source: "files\sounds\mods\*"; DestDir: "{app}\mods\{code:GetVersion}\mt_origins\sounds"; Flags: ignoreversion recursesubdirs createallsubdirs skipifsourcedoesntexist; Components: sounds
Source: "files\sounds\res_mods\*"; DestDir: "{app}\res_mods\{code:GetVersion}"; Flags: ignoreversion recursesubdirs createallsubdirs skipifsourcedoesntexist; Components: sounds
Source: "files\sounds\configs\*"; DestDir: "{app}\mods\configs"; Flags: ignoreversion recursesubdirs createallsubdirs skipifsourcedoesntexist; Components: sounds

Source: "files\interface\login\mods\*"; DestDir: "{app}\mods\{code:GetVersion}\mt_origins\login"; Flags: ignoreversion recursesubdirs createallsubdirs skipifsourcedoesntexist; Components: interface/login
Source: "files\interface\login\res_mods\*"; DestDir: "{app}\res_mods\{code:GetVersion}"; Flags: ignoreversion recursesubdirs createallsubdirs skipifsourcedoesntexist; Components: interface/login

Source: "files\interface\hangar\mods\*"; DestDir: "{app}\mods\{code:GetVersion}\mt_origins\hangar_gui"; Flags: ignoreversion recursesubdirs createallsubdirs skipifsourcedoesntexist; Components: interface/hangar
Source: "files\interface\hangar\res_mods\*"; DestDir: "{app}\res_mods\{code:GetVersion}"; Flags: ignoreversion recursesubdirs createallsubdirs skipifsourcedoesntexist; Components: interface/hangar
Source: "files\interface\hangar\configs\*"; DestDir: "{app}\mods\configs"; Flags: ignoreversion recursesubdirs createallsubdirs skipifsourcedoesntexist; Components: interface/hangar

Source: "files\interface\battle\mods\*"; DestDir: "{app}\mods\{code:GetVersion}\mt_origins\battle_gui"; Flags: ignoreversion recursesubdirs createallsubdirs skipifsourcedoesntexist; Components: interface/battle
Source: "files\interface\battle\res_mods\*"; DestDir: "{app}\res_mods\{code:GetVersion}"; Flags: ignoreversion recursesubdirs createallsubdirs skipifsourcedoesntexist; Components: interface/battle
Source: "files\interface\battle\configs\*"; DestDir: "{app}\mods\configs"; Flags: ignoreversion recursesubdirs createallsubdirs skipifsourcedoesntexist; Components: interface/battle

Source: "files\graphics\maps\mods\*"; DestDir: "{app}\mods\{code:GetVersion}\mt_origins\maps"; Flags: ignoreversion recursesubdirs createallsubdirs skipifsourcedoesntexist; Components: graphics/maps
Source: "files\graphics\maps\res_mods\*"; DestDir: "{app}\res_mods\{code:GetVersion}"; Flags: ignoreversion recursesubdirs createallsubdirs skipifsourcedoesntexist; Components: graphics/maps

Source: "files\graphics\effects\mods\*"; DestDir: "{app}\mods\{code:GetVersion}\mt_origins\effects"; Flags: ignoreversion recursesubdirs createallsubdirs skipifsourcedoesntexist; Components: graphics/effects
Source: "files\graphics\effects\res_mods\*"; DestDir: "{app}\res_mods\{code:GetVersion}"; Flags: ignoreversion recursesubdirs createallsubdirs skipifsourcedoesntexist; Components: graphics/effects

Source: "files\hangars\mods\*"; DestDir: "{app}\mods\{code:GetVersion}\mt_origins\hangars"; Flags: ignoreversion recursesubdirs createallsubdirs skipifsourcedoesntexist; Components: hangars
Source: "files\hangars\configs\*"; DestDir: "{app}\mods\configs"; Flags: ignoreversion recursesubdirs createallsubdirs skipifsourcedoesntexist; Components: hangars
Source: "files\hangars\v1basic\mods\*"; DestDir: "{app}\mods\{code:GetVersion}\mt_origins\hangars"; Flags: ignoreversion recursesubdirs createallsubdirs skipifsourcedoesntexist; Components: hangars/v1basic
; Source: "files\hangars\v1premium\mods\*"; DestDir: "{app}\mods\{code:GetVersion}\mt_origins\hangars"; Flags: ignoreversion recursesubdirs createallsubdirs skipifsourcedoesntexist; Components: hangars/v1premium
Source: "files\hangars\v1halloween\mods\*"; DestDir: "{app}\mods\{code:GetVersion}\mt_origins\hangars"; Flags: ignoreversion recursesubdirs createallsubdirs skipifsourcedoesntexist; Components: hangars/v1halloween
; Source: "files\hangars\v2basic\mods\*"; DestDir: "{app}\mods\{code:GetVersion}\mt_origins\hangars"; Flags: ignoreversion recursesubdirs createallsubdirs skipifsourcedoesntexist; Components: hangars/v2basic
Source: "files\hangars\v2halloween\mods\*"; DestDir: "{app}\mods\{code:GetVersion}\mt_origins\hangars"; Flags: ignoreversion recursesubdirs createallsubdirs skipifsourcedoesntexist; Components: hangars/v2halloween
Source: "files\hangars\v2premium\mods\*"; DestDir: "{app}\mods\{code:GetVersion}\mt_origins\hangars"; Flags: ignoreversion recursesubdirs createallsubdirs skipifsourcedoesntexist; Components: hangars/v2premium

Source: "files\l10n\ru\mods\*"; DestDir: "{app}\mods\{code:GetVersion}\mt_origins\locale_ru"; Flags: ignoreversion recursesubdirs createallsubdirs skipifsourcedoesntexist; Components: l10n/ru
Source: "files\l10n\ru\res_mods\*"; DestDir: "{app}\res_mods\{code:GetVersion}"; Flags: ignoreversion recursesubdirs createallsubdirs skipifsourcedoesntexist; Components: l10n/ru

Source: "files\l10n\en\mods\*"; DestDir: "{app}\mods\{code:GetVersion}\mt_origins\locale_en"; Flags: ignoreversion recursesubdirs createallsubdirs skipifsourcedoesntexist; Components: l10n/en
Source: "files\l10n\en\res_mods\*"; DestDir: "{app}\res_mods\{code:GetVersion}"; Flags: ignoreversion recursesubdirs createallsubdirs skipifsourcedoesntexist; Components: l10n/en
; NOTE: Don't use "Flags: ignoreversion" on any shared system files

[Run]
Filename: "{app}\{code:GetExecutableName}"; Description: {cm:RunGame}; Flags: nowait postinstall skipifsilent unchecked

[Messages]
ru.WelcomeLabel2=Программа установит моды «Мир Танков Истоки» версии {#MyAppVersion} для «Мира Танков».%n%nРекомендуется закрыть клиент игры перед тем, как продолжить.
en.WelcomeLabel2=This will install «MT Origins» modpack version {#MyAppVersion} for your «Mir Tankov» client.%n%nIt is recommended that you close the game before continuing.

[CustomMessages]
ru.AppName={#MyAppName}
en.AppName=«MT Origins»

ru.DefaultInstall=Стандартная установка
en.DefaultInstall=Default installation
ru.FullInstall=Полная установка
en.FullInstall=Full installation
ru.CustomInstall=Выборочная установка
en.CustomInstall=Custom installation

ru.CleanMods=Удалить все установленные моды (настоятельно рекомендуется)
en.CleanMods=Remove all currently installed mods (highly recommended)

ru.Sounds=Старые звуки
en.Sounds=Classic sounds
ru.Interface=Старые интерфейсы
en.Interface=Classic UI
ru.InterfaceLogin=Экран логина
en.InterfaceLogin=Login screen
ru.InterfaceHangar=Интерфейс ангара
en.InterfaceHangar=Garage UI
ru.InterfaceBattle=Интерфейс боя
en.InterfaceBattle=Battle UI
ru.L10n=Старый текст
en.L10n=Classic localization
ru.L10nRu=Русский
en.L10nRu=Russian
ru.L10nEn=Английский
en.L10nEn=English
ru.Graphics=Старая графика
en.Graphics=Classic visuals
ru.GraphicsMaps=Старые карты
en.GraphicsMaps=Classic maps
ru.GraphicsEffects=Старые эффекты
en.GraphicsEffects=Classic effects
ru.Hangars=Старые ангары
en.Hangars=Classic garages
ru.HangarsV1Basic=Базовый 1-го поколения
en.HangarsV1Basic=1st Gen Standard
ru.HangarsV1Premium=Премиум 1-го поколения
en.HangarsV1Premium=1st Gen Premium
ru.HangarsV1Halloween=Хэллоуинский премиум 1-го поколения
en.HangarsV1Halloween=1nd Gen Premium Halloween
ru.HangarsV2Basic=Базовый 2-го поколения
en.HangarsV2Basic=2nd Gen Standard
ru.HangarsV2Halloween=Хэллоуинский базовый 2-го поколения
en.HangarsV2Halloween=2nd Gen Standard Halloween
ru.HangarsV2Premium=Премиум 2-го поколения
en.HangarsV2Premium=2nd Gen Premium

ru.RunGame=Запустить игру
en.RunGame=Launch «Mir Tankov»

ru.FoundVersion=Найден клиент «Мира Танков» версии %s.
en.FoundVersion=«Mir Tankov» client version %s detected.
ru.MajVerMismatch=Моды создавались для версии %s, и их работоспособность не%nгарантируется. Рекомендуем проверить наличие более свежей версии на нашем%nпортале.
en.MajVerMismatch=The mods were designed to run on version %s, and there's no%nguarantee they will work. It is recommended to check for a newer version%non our website.
ru.MidVerMismatch=Моды создавались для версии %s, поэтому есть вероятность%nвозникновения проблем совместимости.
en.MidVerMismatch=The mods were designed to run on version %s, so you might%nencounter some compatibility issues.
ru.MinVerMismatch=Моды создавались для версии %s, но шанс возникновения проблем%nминимален.
en.MinVerMismatch=The mods were designed to run on version %s, but you should%nbe fine.
ru.VerMatch=Моды полностью совместимы с данной версией игры.
en.VerMatch=The mods are fully compatible with your game client.
ru.OldVer=Ваша игра устарела. Обновите клиент перед установкой модов.
en.OldVer=Your game client is outdated. Please update it before proceeding.
ru.ClientNotFound=Клиент игры не найден. Пожалуйста, проверьте указанный путь.
en.ClientNotFound=The game client could not be found. Please make sure the path is set correctly.
ru.WebsiteButton=Наш сайт
en.WebsiteButton=Website
ru.NotFoundConfirm=Установщик не смог найти файлы игры по указанному пути.%n%nВы уверны, что хотите продолжить установку?
en.NotFoundConfirm=The installer could not detect a game client in the specified folder.%n%nAre you sure you want to install anyway?
ru.NewVerAvailable=Доступна новая версия установщика. Хотите скачать её?
en.NewVerAvailable=A new version is available. Do you want to download it?
ru.DevBuild=Вы используете раннюю сборку! Пожалуйста, дождитесь официального релиза перед установкой, чтобы избежать проблем.%n%nТехподдержка НЕ будет предоставлена, если вы установите моды сейчас.
en.DevBuild=You're using an early version of the installer! Please wait until the final release to avoid issues with your modded game.%n%nWe will NOT provide any kind of tech support if you install now.
ru.ThirdPartyMods=Использование модов из серии «Мир Танков Истоки» вместе с модами от других%nразработчиков может привести к ошибкам в работе модификаций и даже к%nотказу работоспособности игры.
en.ThirdPartyMods=Using this modpack together with third-party mods can lead to unexpected behavior,%nerrors, and even game crashes.

[Code]
const
  CurVersion = '{#GameVer}';
  CurMajorVersion = {#GameMajorVer};
  CurMiddleVersion = {#GameMiddleVer};
  CurMinorVersion = {#GameMinorVer};
  CurBuild = {#BuildNumber};
  
var
  FileStatusLabel: TLabel;
  VersionStatusLabel: TLabel;
  IsWoTExecFound: Boolean;
  SiteButton: TButton;
  DiscordButton: TButton;
  CleanModsLabel: TLabel;
  LatestMajorVersion: Integer;
  LatestMiddleVersion: Integer;
  LatestMinorVersion: Integer;
  LatestBuild: Integer;
  LatestLink: String;
  ModsStatus: Integer;
  IsDevBuild: Boolean;

function StrSplit(Text: String; Separator: String): TArrayOfString;
begin
  Result := StringSplit(Text, [Separator], stAll);
end;

function LoadValueFromXML(const AFileName, APath: string): string;
var
  XMLNode: Variant;
  XMLDocument: Variant;  
begin
  Result := '';
  XMLDocument := CreateOleObject('Msxml2.DOMDocument.6.0');
  try
    XMLDocument.async := False;
    XMLDocument.load(AFileName);
    if (XMLDocument.parseError.errorCode <> 0) then
      MsgBox('Файл XML повреждён. ' + 
        XMLDocument.parseError.reason, mbError, MB_OK)
    else
    begin
      XMLDocument.setProperty('SelectionLanguage', 'XPath');
      XMLNode := XMLDocument.selectSingleNode(APath);
      try Result := XMLNode.text except Log('WARNING: Game client was not found in the XML.') end;
    end;
  except
    MsgBox('An error occured!' + #13#10 + GetExceptionMessage, mbError, MB_OK);
  end;
end;

function LoadValueFromXMLString(const AString, APath: string): string;
var
  XMLNode: Variant;
  XMLDocument: Variant;  
begin
  Result := '';
  XMLDocument := CreateOleObject('Msxml2.DOMDocument.6.0');
  try
    XMLDocument.async := False;
    XMLDocument.loadXML(AString);
    if (XMLDocument.parseError.errorCode <> 0) then
      MsgBox('Файл XML повреждён. ' + 
        XMLDocument.parseError.reason, mbError, MB_OK)
    else
    begin
      XMLDocument.setProperty('SelectionLanguage', 'XPath');
      XMLNode := XMLDocument.selectSingleNode(APath);
      Result := XMLNode.text;
    end;
  except
    MsgBox('An error occured!' + #13#10 + GetExceptionMessage, mbError, MB_OK);
  end;
end;

function GetVersion(Param: String): String;
var
  FilePath: String;
begin
  FilePath := ExpandConstant('{app}\paths.xml');
  if FileExists(FilePath) then
    Result := ExtractFileName(LoadValueFromXML(FilePath, '//root/Paths/Path'))
  else Result := CurVersion;
end;

function GetExecutableName(Param: String): String;
var
  FilePath: String;
begin
  FilePath := ExpandConstant('{app}\Tanki.exe');
  if FileExists(FilePath) then
    Result := 'Tanki.exe'
  else Result := 'WorldOfTanks.exe';
end;

procedure CheckForFile(SelectedDir: String);
var
  FilePath: String;
  FoundVersion: String;
  VerArray: TArrayOfString;
  MajorVersion: Integer;
  MiddleVersion: Integer;
  MinorVersion: Integer;
begin
  FilePath := ExpandConstant(SelectedDir + '\paths.xml');
  if FileExists(FilePath) then
  begin
    FoundVersion := ExtractFileName(LoadValueFromXML(FilePath, '//root/Paths/Path'));
    VerArray := StrSplit(FoundVersion, '.');
    MajorVersion := StrToInt(VerArray[1]);
    MiddleVersion := StrToInt(VerArray[2]);
    MinorVersion := StrToInt(VerArray[3]);
    IsWoTExecFound := true;
    FileStatusLabel.Caption := Format(CustomMessage('FoundVersion'), [FoundVersion]);
    FileStatusLabel.Font.Color := clBlack
    
    if MajorVersion > CurMajorVersion then
    begin
      VersionStatusLabel.Caption := Format(CustomMessage('MajVerMismatch'), [CurVersion]);
      VersionStatusLabel.Font.Color := clRed;
    end
    else if (MiddleVersion > CurMiddleVersion) and (MajorVersion = CurMajorVersion) then
    begin
      VersionStatusLabel.Caption := Format(CustomMessage('MidVerMismatch'), [CurVersion]);
      VersionStatusLabel.Font.Color := $0060FF;
    end
    else if (MinorVersion > CurMinorVersion) and (MiddleVersion = CurMiddleVersion) and (MajorVersion = CurMajorVersion) then
    begin
      VersionStatusLabel.Caption := Format(CustomMessage('MinVerMismatch'), [CurVersion]);
      VersionStatusLabel.Font.Color := clGreen;
    end
    else if (MinorVersion = CurMinorVersion) and (MiddleVersion = CurMiddleVersion) and (MajorVersion = CurMajorVersion) then
    begin
      VersionStatusLabel.Caption := CustomMessage('VerMatch');
      VersionStatusLabel.Font.Color := clGreen;
    end
    else
    begin
      VersionStatusLabel.Caption := CustomMessage('OldVer');
      VersionStatusLabel.Font.Color := clRed;
    end;
  end
  else
  begin
    IsWoTExecFound := false;
    FileStatusLabel.Caption := CustomMessage('ClientNotFound');
    FileStatusLabel.Font.Color := clRed;
    VersionStatusLabel.Caption := '';
  end;
end;

procedure OpenBrowser(Sender: TObject);
var
  ErrorCode: Integer;
  Button: TButton;
begin
  Button := Sender as TButton;
  if Button.Caption = CustomMessage('WebsiteButton') then
    ShellExec('open', 'https://wot-classic.ru', '', '', SW_SHOWNORMAL, ewNoWait, ErrorCode)
  else if Button.Caption = 'Discord' then
    ShellExec('open', 'https://discord.gg/36mrMDeFMJ', '', '', SW_SHOWNORMAL, ewNoWait, ErrorCode);
end;

procedure CreateWelcomeButtons;
begin
  if (SiteButton = nil) and (DiscordButton = nil) then
  begin
    SiteButton := TButton.Create(WizardForm);
    with SiteButton do
    begin
      Parent := WizardForm;
      Left := ScaleX(16);
      Top := WizardForm.NextButton.Top;
      Width := WizardForm.NextButton.Width;
      Height := WizardForm.NextButton.Height;
      Caption := CustomMessage('WebsiteButton')
      OnClick := @OpenBrowser;
    end;
    
    DiscordButton := TButton.Create(WizardForm);
    with DiscordButton do
    begin
      Parent := WizardForm;
      Left := SiteButton.Left + SiteButton.Width + 8;
      Top := WizardForm.NextButton.Top;
      Width := WizardForm.NextButton.Width;
      Height := WizardForm.NextButton.Height;
      Caption := 'Discord'
      OnClick := @OpenBrowser;
    end;
  end;
end;

procedure DestroyWelcomeButtons;
begin
  if (SiteButton <> nil) and (DiscordButton <> nil) then
  begin
    SiteButton.Free;
    SiteButton := nil;
    DiscordButton.Free;
    DiscordButton := nil;
  end;
end;

function GetLestaGamePath(Param: String): String;
var
  LGCPath: String;
begin
  try
    if not RegQueryStringValue(HKEY_CURRENT_USER, 'Software\Microsoft\Windows\CurrentVersion\Uninstall\Lesta Game Center', 'DisplayIcon', LGCPath) then begin
      if not RegQueryStringValue(HKEY_LOCAL_MACHINE, 'Software\Microsoft\Windows\CurrentVersion\Uninstall\Lesta Game Center', 'DisplayIcon', LGCPath) then
        Result := 'C:\Games\Tanki';
        Exit;
    end;
    LGCPath := ExtractFileDir(LGCPath);
    Result := LoadValueFromXML(LGCPath+'\preferences.xml', '//protocol/application/games_manager/selectedGames/WOT');
  except
    Result := 'C:\Games\Tanki';
  end;
end;

procedure CurPageChanged(CurPageID: Integer);
begin
  if (CurPageID = wpWelcome) or (CurPageID = wpFinished) then
    CreateWelcomeButtons
  else
    DestroyWelcomeButtons;
  if CurPageID = wpSelectDir then
  begin
    CheckForFile(WizardForm.DirEdit.Text);
  end;
end;

function NextButtonClick(CurPageID: Integer): Boolean;
begin
  if (CurPageID = wpSelectDir) and (not IsWoTExecFound) then
  begin
    if MsgBox(CustomMessage('NotFoundConfirm'),
              mbError,
              MB_YESNO or MB_DEFBUTTON2) = IDYES
      then Result := True
    else Result := False;
  end
  else Result := True;
end;

procedure DirEditChange(Sender: TObject);
begin
  CheckForFile(WizardForm.DirEdit.Text);
end;

function CheckLatestVersion: String;
var
  WinHttpReq: Variant;
begin
  WinHttpReq := CreateOleObject('WinHttp.WinHttpRequest.5.1');
  WinHttpReq.Open('GET', 'https://wot-classic.ru/installer.xml', false);
  WinHttpReq.Send();
  // WinHttpReq.ResponseText will hold the server response
  Result := WinHttpReq.ResponseText;
end;

function InitializeSetup: Boolean;
var
  ErrorCode: Integer;
  RequestText: String;
begin
  Result := True;
  try
    RequestText := CheckLatestVersion();
    LatestMajorVersion := StrToInt(LoadValueFromXMLString(RequestText, '//root/latest/major'));
    LatestMiddleVersion := StrToInt(LoadValueFromXMLString(RequestText, '//root/latest/middle'));
    LatestMinorVersion := StrToInt(LoadValueFromXMLString(RequestText, '//root/latest/minor'));
    LatestBuild := StrToInt(LoadValueFromXMLString(RequestText, '//root/latest/build'));
    LatestLink := LoadValueFromXMLString(RequestText, '//root/latest/link');
    ModsStatus := StrToInt(LoadValueFromXMLString(RequestText, '//root/latest/mods'));
    
    if LatestBuild > CurBuild then
    begin
      case MsgBox(CustomMessage('NewVerAvailable'), mbConfirmation, MB_YESNO) of 
        IDYES:
          begin
            ShellExec('open', LatestLink, '', '', SW_SHOWNORMAL, ewNoWait, ErrorCode);
            Result := False;
          end;
      end;
    end
    else if LatestBuild < CurBuild then
    begin
      IsDevBuild := true;
      SuppressibleMsgBox(CustomMessage('DevBuild'), mbError, MB_OK, IDOK);
    end;
  except
  end;
end;

procedure InitializeWizard;
var i: Integer;
begin
  WizardForm.DirEdit.OnChange := @DirEditChange;
  
  if ModsStatus >= 0 then
  begin
    for i := 0 to WizardForm.ComponentsList.Items.Count-1 do
    begin
      if ModsStatus mod 2 = 0 then
      begin
        WizardForm.ComponentsList.Checked[i] := False;
        WizardForm.ComponentsList.ItemEnabled[i] := False;
      end;
      ModsStatus := ModsStatus div 2;
    end;
  end;
  
  if ActiveLanguage = 'en' then WizardSelectComponents('l10n/en');
  
  Log(WizardForm.BackButton.Caption);
  
  FileStatusLabel := TLabel.Create(WizardForm);
  with FileStatusLabel do
  begin
    Parent := WizardForm.SelectDirPage;
    Top := WizardForm.DirEdit.Top + WizardForm.DirEdit.Height + 8;
    Left := WizardForm.DirEdit.Left;
  end;

  VersionStatusLabel := TLabel.Create(WizardForm);
  with VersionStatusLabel do
  begin
    Parent := WizardForm.SelectDirPage;
    Top := WizardForm.DirEdit.Top + WizardForm.DirEdit.Height + 8 + FileStatusLabel.Height + 8;
    Left := WizardForm.DirEdit.Left;
  end;

  WizardForm.TasksList.Height := 24;

  CleanModsLabel := TLabel.Create(WizardForm);
  with CleanModsLabel do
  begin
    Parent := WizardForm.SelectTasksPage;
    Top := 180;
    Left := WizardForm.TasksList.Left;
    Caption := ExpandConstant(CustomMessage('ThirdPartyMods'));
    Font.Color := clRed;
  end;
end;
