$appList = "googlechrome,adobereader,jre8,7zip,notepadplusplus,skype,dotnetfx,spotify,slack,everything,vcredist2017,cmder,whatsapp,lightshot,nodejs,dotnetcore-sdk,vscode,sql-server-express,sql-server-management-studio,urlrewrite,postman"

$dismAppList = "Microsoft-Windows-Subsystem-Linux,NetFx4-AdvSrvs,IIS-WebServerRole,IIS-WebServer,IIS-ASPNET45,IIS-CertProvider,IIS-ManagementService,NetFx3"

choco install explorer-winconfig --params "'/SHOWHIDDEN:yes /SHOWEXTENSIONS:yes /SHOWFULLPATH:yes /SHOWENCRYPTED:no /SHOWCHECKBOXES:yes /USESHARINGWIZARD:no /USEVIEW:details'"
choco install desktopicons-winconfig --params "'/Desktop:NO /UserFiles:NO /ControlPanel:NO /Network:NO /RecycleBin:YES /OneDrive:NO'"
choco install taskbar-winconfig --params "' /AUTOTRAY:YES /CORTANA:no /COMBINED:yes /AUTOTRAY:YES /STORE:yes /TASKVIEW:no /KEYBOARD:no /USEPOWERSHELL:yes'"

Invoke-Expression "InstallApps.ps1 ""$appList"" ""$dismAppList"""


choco-cleaner

git config --global user.name "Lucas Floriani"
git config --global user.email "lucas.costa@ndd.com.br"