:: author @ctrndk
:: Ping with color

echo off & cls
TITLE PingLatecy @ctrndk
:loop
PING  -n 1 google.com | FIND "TTL="
IF ERRORLEVEL 1 (SET OUT=04  & echo Request timed out.) ELSE (SET OUT=0A)
color %OUT%
ping -n 2 -l 10 127.0.0.1 >nul
GoTo loop
