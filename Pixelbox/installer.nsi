; Scaffolding by https://github.com/idleberg/NSIS-Sublime-Text

; Settings ---------------------------------
Name "Pixelbox"
OutFile "Pixelbox.exe"
RequestExecutionLevel admin
InstallDir $PROGRAMFILES\NSIS
InstallDirRegKey HKLM Software\NSIS ""

; Interface --------------------------------
Icon "Pixelbox 2011 Installer.ico"
CheckBitmap "Pixelbox 2011 Checkboxes (red).bmp"

; Pages ------------------------------------
Page components
Page directory
Page instfiles

; Sections ---------------------------------
Section "Icons"

	SetOutPath "$INSTDIR\Contrib\Graphics\Icons"
	File "Pixelbox 2002 Installer.ico"
	File "Pixelbox 2002 Uninstaller.ico"
	File "Pixelbox 2007 Installer.ico"
	File "Pixelbox 2007 Uninstaller.ico"
	File "Pixelbox 2011 Installer.ico"
	File "Pixelbox 2011 Uninstaller.ico"

SectionEnd

Section "Checkboxes"

	SetOutPath "$INSTDIR\Contrib\Graphics\Checks"
	File "Pixelbox 2002 Checkboxes.bmp"
	File "Pixelbox 2007 Checkboxes.bmp"
	File "Pixelbox 2011 Checkboxes (grey).bmp"
	File "Pixelbox 2011 Checkboxes (red).bmp"

SectionEnd

; Functions --------------------------------
