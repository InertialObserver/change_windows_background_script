
REM ######################################
REM #
REM # Script to change Wallpaper
REM # Written by BLiebowitz on 10/12/2017
REM #
REM ####################################

REM #############################################3###
REM #
REM # Script modified by InertialObserver in Oct 2019
REM #
REM ##################################################
 
dim shell 
dim user
Set shell = WScript.CreateObject("WScript.Shell") 
user = shell.ExpandEnvironmentStrings("%USERNAME%")
Set fso = CreateObject("Scripting.FileSystemObject")
windowsDir = fso.GetSpecialFolder(0) 
wallpaper = "C:\Users\Jessi\Pictures\Desktop Photos\lakepic201907.bmp"
shell.RegWrite "HKCU\Control Panel\Desktop\Wallpaper", wallpaper
shell.Run "%systemRoot%\System32\RUNDLL32.EXE user32.dll,UpdatePerUserSystemParameters", 1, True


REM #NOTES# currently when I run this, nothing happens that I can see. No wallpaper changes, and no errors either. I'm going to focus on the other file because the last change I made there resulted in a change of the wallpaper. Not the change I was expecting but still. 