@echo off
echo ===============================================================================
echo.
echo      Eclipse WeiXin
echo.
echo ===============================================================================
@cd ..
call mvn eclipse:eclipse -DdownloadSources=true -U
@pause