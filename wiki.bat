@ECHO OFF
SET Port=%1
IF "%~1"=="" SET Port=8080
SET IP=%2
IF "%~2"=="" SET IP=127.0.0.1
SET Root=$:/core/save/all
IF "%~3"=="lazy" SET Root=$:/core/save/lazy-all
tiddlywiki . --listen host=%IP% port=%Port% root-tiddler=%Root%
