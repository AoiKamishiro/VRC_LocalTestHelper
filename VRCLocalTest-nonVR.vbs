'This software is sold and provided under an MIT License.
'Contact https://twitter.com/aoi3192

Dim strVRCReg, strComOpt

Set objShell = CreateObject("WScript.Shell")
strVRCReg = "HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows\CurrentVersion\Uninstall\Steam App 438100\InstallLocation"
strComOpt = " --enable-debug-gui --enable-sdk-log-levels --enable-udon-debug-logging"

Set objExec = objShell.Exec("""" & objShell.RegRead(strVRCReg) & "\VRChat.exe" & """ " &  "  --no-vr" & strComOpt)