dim myShell 
dim thisUser

Set myShell = WScript.CreateObject("WScript.Shell") 
thisUser = myShell.ExpandEnvironmentStrings("%USERNAME%")

Set thisFso = CreateObject("Scripting.FileSystemObject")

windowsDir = thisFso.GetSpecialFolder(0) 
wallpaper = "C:\Users\Jessi\Pictures\Desktop Photos\lakepic201907bitmap.bmp"

myShell.RegWrite "HKCU\Control Panel\Desktop\Wallpaper\Theme1", wallpaper

myShell.Run "%windowsDir%\System32\RUNDLL32.EXE user32.dll,UpdatePerUserSystemParameters",1, True

REM ## NOTES ## I've moved the image file back to its original location. Next step is to work on the GetSpecialFolder method, see if that's the key.

REM ## MORE NOTES ##I had changed line 14 before I started using version control. Previously "SystemRoot" was "windowsDir" and before I made that change I kept getting an error.

REM # Changed "SystemRoot" back on "windowsDir" on line 14. The resultant error reads:

REM Script:
REM C:Users\Jessi\Desktop\change_windows_background_script\changedesktopwallpaperscript.VBS
REM Line: 14
REM Char: 1
REM Error: The system cannot find the file specified.
REM Code: 80070002
REM Source: (null)

REM ## What now? ## I did confirm that rundll32.exe does exist
REM # Committing this without making new changes to the code so I can look at it again tomorrow.  

