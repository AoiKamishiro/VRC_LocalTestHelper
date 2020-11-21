'This software is sold and provided under an MIT License.
'Contact https://twitter.com/aoi3192

Set objShell = CreateObject("WScript.Shell")
Set objExec = objShell.Exec("""" & objShell.RegRead("HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows\CurrentVersion\Uninstall\Steam App 438100\InstallLocation") & "\VRChat.exe" & """ " & Wscript.Arguments(0) & " --no-vr --enable-debug-gui --enable-sdk-log-levels --enable-udon-debug-logging")