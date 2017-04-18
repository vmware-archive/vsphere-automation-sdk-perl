@echo off
setlocal ENABLEDELAYEDEXPANSION
:: Clear the command-prompt screen
cls
set SRCDIR=%cd%\..\
set RUNTIMEDIR=%cd%\..\lib\runtime
set SDKDIR=%cd%\..\lib\sdk
set PERL5LIB=%PERL5LIB%;%SRCDIR%samples;%RUNTIMEDIR%;%SDKDIR%
setlocal DisableDelayedExpansion
:: Run the sample
perl %*
endlocal