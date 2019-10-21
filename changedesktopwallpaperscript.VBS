dim myShell 
dim thisUser

Set myShell = WScript.CreateObject("WScript.Shell") 
thisUser = myShell.ExpandEnvironmentStrings("%USERNAME%")

Set thisFso = CreateObject("Scripting.FileSystemObject")

windowsDir = thisFso.GetSpecialFolder(0) 
wallpaper = "C:\Windows\Web\Wallpaper\lakepic201907bitmap.bmp"

myShell.RegWrite "HKCU\Control Panel\Desktop\Wallpaper\Theme1", wallpaper

myShell.Run "%systemRoot%\System32\RUNDLL32.EXE user32.dll,UpdatePerUserSystemParameters",1, True

REM ## NOTES ## I moved the photo from documents\photos to windows\web\wallpaper\Theme1 to see if that makes a difference. Right now I don't think the script is using the GetSpecialFolder method at all. 

REM ## MORE NOTES ##I had changed line 14 before I started using version control. Previously "SystemRoot" was "windowsDir" and before I made that change I kept getting an error.

