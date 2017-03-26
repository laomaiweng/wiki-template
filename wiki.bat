@ECHO OFF
SET Port=%1
IF "%~1"=="" SET Port=8080
SET IP=%2
IF "%~2"=="" SET IP=127.0.0.1
tiddlywiki . --server %Port% $:/core/save/all text/plain text/html "" "" %IP%