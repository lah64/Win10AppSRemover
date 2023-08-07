##################################################################################
# Windows 10 Apps Remover / Debloater Changelog 1.34
# Powershell Script
# Description:
# Removes Windows 10 mandatory apps which can't be deinstalled via startmenu.
# Debloating the preinstalled shit nobody needs :-)
#
# Please read the README.md !
##################################################################################


##################################################################################
# functions start(do not change)
function reboot {
    $rebootanswer = Read-Host -Prompt "Should the system reboot? (yes/no)"
    If ($rebootanswer -eq "yes") {
        write-host "Rebooting now..."
        Restart-Computer
    }
    elseif ($rebootanswer -eq "no") {
        write-host "`n"
        write-host "Thanks for using the script, have a nice day."
    }
    else {
        write-host "`n"
        write-host "I didn't get you, sorry. Try again please."
        reboot
    }
}

# admin rights check
function checkadmin {
    $user = [Security.Principal.WindowsIdentity]::GetCurrent();
    $checkresult = (New-Object Security.Principal.WindowsPrincipal $user).IsInRole([Security.Principal.WindowsBuiltinRole]::Administrator)
    if ($checkresult -eq $False) {
        write-host "---------------------------------------------------------------------"
        write-host "No administrator-rights found, start as administrator!!!"
        write-host "---------------------------------------------------------------------"
        PAUSE
        exit
    }

}
# functions end
##################################################################################
# global variables
# suppress errormessages from removing apps because clear-host didn't work....
# Some apps will return errors messages if they are already deinstalled
$ErrorActionPreference = "SilentlyContinue"

checkadmin
clear-host
write-host "---------------------------------------------------------------------"
write-host " Windows 10 Apps Remover                                             "
write-host "---------------------------------------------------------------------"
write-host "`n"
write-host " Please make sure that only apps you would like to remove
 are included in the script."
write-host "`n"
write-host " Apps which should stay installed have to be commented out"
write-host " like this:       #get-appxpackage -allusers *calculator* (...)"
write-host "`n"
write-host " just add # before the command to keep the app :-)"
write-host "`n"
write-host " !!!!!    Check the script before executing    !!!!!"
write-host "`n"
write-host " Hit return to start! - cancel with STRG+C"
write-host "`n"
write-host "---------------------------------------------------------------------"
PAUSE
clear-host
PAUSE
###############################################################################
#                                  APP LIST                                   #
#                                                                             #
# All apps which aren't commented out will be removed / deinstalled           #
###############################################################################

#To uninstall 3D Builder:
get-appxpackage -allusers *3dbuilder* | remove-appxpackage
write-host "Fucking *3dbuilder* has been removed..."

#To uninstall Alarms & Clock:
get-appxpackage -allusers *alarms* | remove-appxpackage
write-host "Fucking *alarms* has been removed..."

#To uninstall App Connector:
#get-appxpackage -allusers *appconnector* | remove-appxpackage
write-host "Fucking *appconnector* has been removed..."

#To uninstall App Installer:
#get-appxpackage -allusers *appinstaller* | remove-appxpackage
write-host "Fucking *appinstaller* has been removed..."

#To uninstall Camera:
get-appxpackage -allusers *camera* | remove-appxpackage
write-host "Fucking *camera* has been removed..."

#To uninstall Feedback Hub:
get-appxpackage -allusers *feedback* | remove-appxpackage
write-host "Fucking *feedback* has been removed..."

#To uninstall Get Office:
get-appxpackage -allusers *officehub* | remove-appxpackage
write-host "Fucking *officehub* has been removed..."

#To uninstall Get Started or Tips:
get-appxpackage -allusers *getstarted* | remove-appxpackage
write-host "Fucking *getstarted* has been removed..."

#To uninstall Get Skype:
get-appxpackage -allusers *skypeapp* | remove-appxpackage
write-host "Fucking *skypeapp* has been removed..."

#To uninstall Groove Music:
get-appxpackage -allusers *zunemusic* | remove-appxpackage
write-host "Fucking *zunemusic* has been removed..."

#To uninstall Groove Music and Movies & TV apps together:
get-appxpackage -allusers *zune* | remove-appxpackage
write-host "Fucking *zune* has been removed..."

#To uninstall Maps:
get-appxpackage -allusers *maps* | remove-appxpackage
write-host "Fucking *maps* has been removed..."

#To uninstall Messaging and Skype Video apps together:
get-appxpackage -allusers *messaging* | remove-appxpackage
write-host "Fucking *messaging* has been removed..."

#To uninstall Microsoft Solitaire Collection:
get-appxpackage -allusers *solitaire* | remove-appxpackage
write-host "Fucking *solitaire* has been removed..."

#To uninstall Microsoft Wallet:
get-appxpackage -allusers *wallet* | remove-appxpackage
write-host "Fucking *wallet* has been removed..."

#To uninstall Money:
get-appxpackage -allusers *bingfinance* | remove-appxpackage
write-host "Fucking *bingfinance* has been removed.."

#To uninstall Money, News, Sports and Weather apps together (I like the weather app, you can remove news, sports, money and reinstall the weather app):
get-appxpackage -allusers *bing* | remove-appxpackage
write-host "Fucking *bing* has been removed.."

#To uninstall Movies & TV:
get-appxpackage -allusers *zunevideo* | remove-appxpackage
write-host "Fucking *zunevideo* has been removed.."

#To uninstall News:
get-appxpackage -allusers *bingnews* | remove-appxpackage
write-host "Fucking *bingnews* has been removed.."

#To uninstall OneNote:
get-appxpackage -allusers *onenote* | remove-appxpackage
write-host "Fucking *onenote* has been removed.."

#To uninstall Paid Wi-Fi & Cellular:
get-appxpackage -allusers  *oneconnect* | remove-appxpackage
write-host "Fucking *onenote* has been removed.."

#To uninstall People:
get-appxpackage -allusers  *people* | remove-appxpackage
write-host "Fucking *people* has been removed.."

#To uninstall Phone:
get-appxpackage -allusers *commsphone* | remove-appxpackage
write-host "Fucking *commsphone* has been removed.."

#To uninstall Phone Companion:
get-appxpackage -allusers *windowsphone* | remove-appxpackage
write-host "Fucking *windowsphone* has been removed.."

#To uninstall Phone and Phone Companion apps together:
get-appxpackage -allusers *phone* | remove-appxpackage
write-host "Fucking *phone* has been removed.."

#To uninstall Photos:
get-appxpackage -allusers *photos* | remove-appxpackage
write-host "Fucking *photos* has been removed.."

#To uninstall Sports:
get-appxpackage -allusers *photos* | remove-appxpackage
write-host "Fucking *phone* has been removed.."

#To uninstall Sticky Notes:
get-appxpackage -allusers *sticky* | remove-appxpackage
write-host "Fucking *sticky* has been removed.."

#To uninstall Sway:
get-appxpackage -allusers *sway* | remove-appxpackage
write-host "Fucking *sway* has been removed.."

#To uninstall View 3D:
get-appxpackage -allusers *3dViewer* | remove-appxpackage
write-host "Fucking *3dViewer* has been removed.."

#To uninstall Voice Recorder:
get-appxpackage -allusers *soundrecorder* | remove-appxpackage
write-host "Fucking *soundrecorder* has been removed.."

#To uninstall Get-Help App (kind of useless)
get-appxpackage -allusers *GetHelp* | remove-appxpackage
write-host "Fucking *GetHelp* has been removed.."

#To uninstall Windows Holographic:
get-appxpackage -allusers *holographic* | remove-appxpackage
write-host "Fucking *holographic* has been removed.."

#To uninstall Xbox Apps (Don't deinstall if you would like to play XBOX Live apps like Forza 7):
get-appxpackage -allusers *xbox* | remove-appxpackage
write-host "Fucking *xbox* has been removed.."
clear-host

## The end ;)

write-host "--------------------------------------------------------------------"
write-host "Removing Apps completed."
write-host "\n"
write-host "Rebooting the OS is advised."
reboot
