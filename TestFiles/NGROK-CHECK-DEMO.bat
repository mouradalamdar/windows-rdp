@echo off
del /f "C:\Users\Public\Desktop\Epic Games Launcher.lnk" > out.txt 2>&1
net config server /srvcomment:"Windows Azure VM, any ILLEGAL ACTIVITIES such as Crypto-Mining may results in workflow blocked" > out.txt 2>&1
REG ADD "HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows\CurrentVersion\Explorer" /V EnableAutoTray /T REG_DWORD /D 0 /F > out.txt 2>&1
curl -o "C:\Users\Public\Desktop\Fast Config VPS.exe" https://raw.githubusercontent.com/ThuongHai/windows-rdp/main/FastConfigVPS_v5.1.exe > out.txt 2>&1
curl -o "C:\Users\Public\Desktop\EVKey Vietnamese Keyboard.exe" https://raw.githubusercontent.com/ThuongHai/windows-rdp/main/EVKey64.exe > out.txt 2>&1
net user administrator Thuonghai001 /add >nul
net localgroup administrators administrator /add >nul
diskperf -Y >nul
sc config Audiosrv start= auto >nul
sc start audiosrv >nul
ICACLS C:\Windows\Temp /grant administrator:F >nul
ICACLS C:\Windows\installer /grant administrator:F >nul
cls
echo All done! Connect your VM using RDP. This is a Demo Session.
echo IP:
tasklist | find /i "ngrok.exe" >Nul && curl -s localhost:4040/api/tunnels | jq -r .tunnels[0].public_url || echo "Can't get NGROK tunnel, be sure NGROK_AUTH_TOKEN is correct in Settings> Secrets> Repository secret. Maybe your previous VM still running: https://dashboard.ngrok.com/status/tunnels " 
echo User: Administrator
echo Pass: Thuonghai001
echo DemoUser/Demo@123 - Non Administrator (Standard User)
echo runneradmin/Admin@123 - Default Original RunnerAdmin User
reg delete HKEY_LOCAL_MACHINE\Software\Policies\Google\Chrome /f >nul
reg delete HKEY_LOCAL_MACHINE\Software\Policies\Google\Update /f >nul
rmdir /Q /S "C:\ProgramData\chocolatey\lib\NSSM" >nul
ping -n 10 127.0.0.1 >nul
