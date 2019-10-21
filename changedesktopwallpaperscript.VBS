dim myShell 
dim thisUser

Set myShell = WScript.CreateObject("WScript.Shell") 
thisUser = myShell.ExpandEnvironmentStrings("%USERNAME%")

Set thisFso = CreateObject("Scripting.FileSystemObject")

windowsDir = thisFso.GetSpecialFolder(0) 
wallpaper = "C:\Users\Jessi\Pictures\Desktop Photos\lakepic201907.bmp"

myShell.RegWrite "HKCU\Control Panel\Desktop\Wallpaper", wallpaper

myShell.Run "%systemRoot%\System32\RUNDLL32.EXE user32.dll,UpdatePerUserSystemParameters",1, True

REM ## NOTES ## This script changed the wallpaper to black. I think the problem is the location of the photo that I'm wanting as wallpaper. It may need to be in a different file, or I need to do a better job here of pointing to its current location. 