@echo off

:: VS2017
set VisualStudioVersion=14.1

:: �� ��ġ������ ��ġ�� ��η� �̵�
set SlnPath=%~dp0
cd "%SlnPath%"

call Build_Internal.bat Win32 Debug
call Build_Internal.bat Win32 Release
call Build_Internal.bat x64 Debug
call Build_Internal.bat x64 Release

xcopy /Y ..\source\include\iconv.h VC\include\