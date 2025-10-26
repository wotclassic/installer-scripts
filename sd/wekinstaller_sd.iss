#define GameMajorVer "38"
#define GameMiddleVer "0"
#define GameMinorVer "0"
#define BuildNumber "8"

#define GameVer "1."+GameMajorVer+"."+GameMiddleVer+"."+GameMinorVer
#define MyAppName "SD-модели «Мир Танков Истоки»"
#define MyAppVersion GameVer+"#"+BuildNumber
#define AppBuild GameVer+"_"+BuildNumber
#define MyAppPublisher "Mr. Bendy"
#define MyAppURL "https://wot-classic.ru/"

[Setup]
AppId={{4957D31B-E1A7-4790-AD4C-9F465109336E}
AppName={cm:AppName}
AppVersion={#MyAppVersion}
AppPublisher={#MyAppPublisher}
AppPublisherURL={#MyAppURL}
AppSupportURL={#MyAppURL}
AppUpdatesURL={#MyAppURL}
OutputBaseFilename=mto_install_sd_{#AppBuild}
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
WizardImageFile=wizard_sd.png
WizardSmallImageFile=..\small_mt.png
SetupIconFile=..\mt.ico

Uninstallable=no
DirExistsWarning=no
DisableDirPage=no
ShowLanguageDialog=yes
DisableWelcomePage=no
FlatComponentsList=no
RestartIfNeededByRun=no
AppendDefaultDirName=no

[Languages]
Name: "ru"; MessagesFile: "Russian.isl"; InfoBeforeFile: "infobefore.txt"
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
Name: "custom"; Description: {cm:CustomInstall}; Flags: iscustom

[Components]
Name: "flags"; Description: {cm:Flags}; Types: default
Name: "ussr"; Description: {cm:USSR}; Types: default
Name: "germany"; Description: {cm:Germany}; Types: default
Name: "usa"; Description: {cm:USA}; Types: default
Name: "france"; Description: {cm:France}; Types: default
Name: "uk"; Description: {cm:UK}; Types: default
Name: "china"; Description: {cm:China}; Types: default

[Files]
Source: "..\files\graphics\models\mods\*"; DestDir: "{app}\mods\{code:GetVersion}\mt_origins\sd_models"; Flags: ignoreversion recursesubdirs createallsubdirs skipifsourcedoesntexist
Source: "..\files\graphics\models\res_mods\*"; DestDir: "{app}\res_mods\{code:GetVersion}"; Flags: ignoreversion recursesubdirs createallsubdirs skipifsourcedoesntexist

Source: "..\files\graphics\models\flags\mods\*"; DestDir: "{app}\mods\{code:GetVersion}\mt_origins\sd_models\flags"; Flags: ignoreversion recursesubdirs createallsubdirs skipifsourcedoesntexist; Components: flags
Source: "..\files\graphics\models\ussr\mods\*"; DestDir: "{app}\mods\{code:GetVersion}\mt_origins\sd_models\ussr"; Flags: ignoreversion recursesubdirs createallsubdirs skipifsourcedoesntexist; Components: ussr
Source: "..\files\graphics\models\germany\mods\*"; DestDir: "{app}\mods\{code:GetVersion}\mt_origins\sd_models\germany"; Flags: ignoreversion recursesubdirs createallsubdirs skipifsourcedoesntexist; Components: germany
Source: "..\files\graphics\models\usa\mods\*"; DestDir: "{app}\mods\{code:GetVersion}\mt_origins\sd_models\usa"; Flags: ignoreversion recursesubdirs createallsubdirs skipifsourcedoesntexist; Components: usa
Source: "..\files\graphics\models\france\mods\*"; DestDir: "{app}\mods\{code:GetVersion}\mt_origins\sd_models\france"; Flags: ignoreversion recursesubdirs createallsubdirs skipifsourcedoesntexist; Components: france
Source: "..\files\graphics\models\uk\mods\*"; DestDir: "{app}\mods\{code:GetVersion}\mt_origins\sd_models\uk"; Flags: ignoreversion recursesubdirs createallsubdirs skipifsourcedoesntexist; Components: uk
Source: "..\files\graphics\models\china\mods\*"; DestDir: "{app}\mods\{code:GetVersion}\mt_origins\sd_models\china"; Flags: ignoreversion recursesubdirs createallsubdirs skipifsourcedoesntexist; Components: china
; NOTE: Don't use "Flags: ignoreversion" on any shared system files

[Run]
Filename: "{app}\{code:GetExecutableName}"; Description: {cm:RunGame}; Flags: nowait postinstall skipifsilent unchecked

[Messages]
ru.WelcomeLabel2=Программа установит SD-модели «Мир Танков Истоки» версии {#MyAppVersion} для «Мира Танков».%n%nРекомендуется закрыть клиент игры перед тем, как продолжить.
en.WelcomeLabel2=This will install «MT Origins» — SD-models Pack version {#MyAppVersion} for your «Mir Tankov» client.%n%nIt is recommended that you close the game before continuing.

[CustomMessages]
ru.AppName={#MyAppName}
en.AppName=«MT Origins» — SD-models Pack

ru.DefaultInstall=Стандартная установка
en.DefaultInstall=Default installation
ru.CustomInstall=Выборочная установка
en.CustomInstall=Custom installation

ru.Flags=Старые флагштоки
en.Flags=Old flagpoles
ru.USSR=SD-модели СССР
en.USSR=Soviet SD-models
ru.Germany=SD-модели Германии
en.Germany=German SD-models
ru.USA=SD-модели США
en.USA=American SD-models
ru.France=SD-модели Франции
en.France=French SD-models
ru.UK=SD-модели Великобритании
en.UK=British SD-models
ru.China=SD-модели Китая (тизер)
en.China=Chinese SD-models (preview)

ru.RunGame=Запустить игру
en.RunGame=Run «Mir Tankov»

ru.FoundVersion=Найден клиент «Мира Танков» версии %s.
en.FoundVersion=«Mir Tankov» client version %s detected.
ru.MajVerMismatch=Моды создавались для версии %s, и их работоспособность не%nгарантируется. Рекомендуем проверить наличие более свежей версии на нашем%nпортале.
en.MajVerMismatch=Mods were designed to run on version %s, and there's no%nguarantee they will work. It is recommended to check for a newer version%non our website.
ru.MidVerMismatch=Моды создавались для версии %s, поэтому есть вероятность%nвозникновения проблем совместимости.
en.MidVerMismatch=Mods were designed to run on version %s, so you might%nencounter some compatibility issues.
ru.MinVerMismatch=Моды создавались для версии %s, но шанс возникновения проблем%nминимален.
en.MinVerMismatch=Mods were designed to run on version %s, but you should%nbe fine.
ru.VerMatch=Моды полностью совместимы с данной версией игры.
en.VerMatch=Mods are fully compatible with your game client.
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
    LatestMajorVersion := StrToInt(LoadValueFromXMLString(RequestText, '//root/sd_models/major'));
    LatestMiddleVersion := StrToInt(LoadValueFromXMLString(RequestText, '//root/sd_models/middle'));
    LatestMinorVersion := StrToInt(LoadValueFromXMLString(RequestText, '//root/sd_models/minor'));
    LatestBuild := StrToInt(LoadValueFromXMLString(RequestText, '//root/sd_models/build'));
    LatestLink := LoadValueFromXMLString(RequestText, '//root/sd_models/link');
    ModsStatus := StrToInt(LoadValueFromXMLString(RequestText, '//root/sd_models/mods'));
    
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
end;
