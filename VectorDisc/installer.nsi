; Scaffolding by https://github.com/idleberg/NSIS-Sublime-Text

; Includes ---------------------------------
!include MUI2.nsh

; Settings ---------------------------------
Name "VectorDisc"
OutFile "VectorDisc.exe"
RequestExecutionLevel admin
InstallDir $PROGRAMFILES\NSIS
InstallDirRegKey HKLM Software\NSIS ""

; Interface --------------------------------
!define MUI_WELCOMEFINISHPAGE_BITMAP "VectorDisc Installer.bmp"
!define MUI_ICON "VectorDisc Installer.ico"

; Pages ------------------------------------
!insertmacro MUI_PAGE_WELCOME
!insertmacro MUI_PAGE_COMPONENTS 
!insertmacro MUI_PAGE_DIRECTORY
!insertmacro MUI_PAGE_INSTFILES

; Languages --------------------------------
!insertmacro MUI_LANGUAGE "English"

; Sections ---------------------------------
; Sections ---------------------------------
Section "Icons" secIcons
	SetOutPath "$INSTDIR\Contrib\Graphics\Icons"
	File "VectorDisc Installer.ico"
	File "VectorDisc Uninstaller.ico"
SectionEnd

Section "Wizard Images" secWizard
	SetOutPath "$INSTDIR\Contrib\Graphics\Wizard"
	File "VectorDisc Installer.bmp"
	File "VectorDisc Uninstaller.bmp"
SectionEnd

; Descriptions -----------------------------
LangString DESC_secIcons ${LANG_English} "Install VectorDisc icons"
LangString DESC_secWizard ${LANG_English} "Install VectorDisc wizard images"

!insertmacro MUI_FUNCTION_DESCRIPTION_BEGIN
	!insertmacro MUI_DESCRIPTION_TEXT ${secIcons} $(DESC_secIcons)
	!insertmacro MUI_DESCRIPTION_TEXT ${secWizard} $(DESC_secWizard)
!insertmacro MUI_FUNCTION_DESCRIPTION_END

; Functions --------------------------------
