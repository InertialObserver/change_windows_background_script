dim myShell 
dim thisUser

Set myShell = WScript.CreateObject("WScript.Shell") 
thisUser = myShell.ExpandEnvironmentStrings("%USERNAME%")

Set thisFso = CreateObject("Scripting.FileSystemObject")

windowsDir = thisFso.GetSpecialFolder(0) 
wallpaper = "C:\Users\Jessi\Pictures\Desktop Photos\lakepic201907.bmp"

myShell.RegWrite "HKCU\Control Panel\Desktop\Wallpaper", wallpaper

myShell.Run "%systemRoot%\System32\RUNDLL32.EXE user32.dll,UpdatePerUserSystemParameters",1, True

