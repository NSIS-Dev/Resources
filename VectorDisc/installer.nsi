; Scaffolding by https://github.com/idleberg/NSIS-Sublime-Text

; Settings ---------------------------------
Name "VectorDisc"
OutFile "VectorDisc.exe"
RequestExecutionLevel admin
InstallDir $PROGRAMFILES\NSIS
InstallDirRegKey HKLM Software\NSIS ""

; Pages ------------------------------------
Page components
Page directory
Page instfiles

; Sections ---------------------------------
Section "Icons" icons

	SetOutPath "$INSTDIR\Contrib\Graphics\Icons"
	File "VectorDisc Installer.ico"
	File "VectorDisc Uninstaller.ico"

SectionEnd

Section "Wizard Images"

	SetOutPath "$INSTDIR\Contrib\Graphics\Wizard"
	File "VectorDisc Installer.bmp"
	File "VectorDisc Uninstaller.bmp"

SectionEnd

; Functions --------------------------------
