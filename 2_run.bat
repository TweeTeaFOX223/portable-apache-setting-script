@echo off
REM run.bat - Apacheサーバー起動（フォアグラウンド実行）

echo Starting Apache server in foreground mode...
echo Press Ctrl+C to stop the server.
echo.
echo Server running at 
echo http://localhost:8080/
echo.
echo test CGI at
echo http://localhost:8080/cgi-bin/test.bat
echo.
start http://localhost:8080/
start http://localhost:8080/cgi-bin/test.bat
echo.

REM -k start ではなく -X を使用してフォアグラウンドで実行
Apache24\bin\httpd.exe -X -f "%~dp0Apache24\conf\httpd.conf"

REM このコマンドはサーバーが終了するまで戻らない
echo Apache server has been stopped.
pause