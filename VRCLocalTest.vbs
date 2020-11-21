'This software is sold and provided under an MIT License.
'Contact https://twitter.com/aoi3192

Dim strVRCReg, strComOpt, boolIsNoVR

Set objShell = CreateObject("WScript.Shell")
strVRCReg = "HKEY_LOCAL_MACHINE\SOFTWARE\Microsoft\Windows\CurrentVersion\Uninstall\Steam App 438100\InstallLocation"
strComOpt = " --enable-debug-gui --enable-sdk-log-levels --enable-udon-debug-logging"
boolIsNoVR=false
For Each Variable In Wscript.Arguments
    If StrComp(Variable,"--no-vr") = 0 Then
        boolIsNoVR = true
    End If
Next

If boolIsNoVR Then
    Set objExec = objShell.Exec("""" & objShell.RegRead(strVRCReg) & "\VRChat.exe" & """ " &  "  --no-vr" & strComOpt)
Else
    Set objExec = objShell.Exec("""" & objShell.RegRead(strVRCReg) & "\VRChat.exe" & """ " &   " " & strComOpt)
End If