@rem ***************************************************************************
@rem The variable BASEPATH must be changed if ICarDMS reside in other folder
@rem La variable BASEPATH debe ser cambiada si ICarDMS reside en otro directorio
@rem *
@rem The variable REGASMPATH must be changed if regAsm.exe reside in other folder
@rem La variable REGASMPATH debe ser cambiada si regAsm.exe reside en otro directorio
@rem ***************************************************************************

@SET BASEPATH=C:\Program Files (x86)\Ceniber\Autonet
@SET REGASMPATH=C:\WINDOWS\Microsoft.NET\Framework\v4.0.30319

@echo off
@echo InstallICarDMS_WebServer.bat executing ...

%REGASMPATH%\regAsm "%BASEPATH%\ICarDMS_ServiceBusClient.dll" /unregister
del "%BASEPATH%\ICarDMS_ServiceBusClient.tlb"
%REGASMPATH%\regAsm "%BASEPATH%\ICarDMS_ServiceBusClient.dll" /register /codebase /tlb

IF %ERRORLEVEL% == 0 GOTO PROCESSOK 

Echo.%
@echo ERROR al registrar ICarDMS_ServiceBusClient.dll
pause
Echo.%

:PROCESSOK
@echo InstallICarDMS_WebServer finish.
PAUSE
