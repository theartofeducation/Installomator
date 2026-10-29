grammarly)
     name="Grammarly Desktop"
     type="dmg"
     packageID="com.grammarly.ProjectLlama"
     downloadURL="https://download-mac.grammarly.com/Grammarly.dmg"
     grammarlyAppcast=$(curl -fsSL "https://download-mac.grammarly.com/grammarly_gorebranded/appcast.xml")
     appNewVersion=$(echo "$grammarlyAppcast" | xmllint --xpath 'string((//*[local-name()="item"])[1]/*[local-name()="enclosure"]/@*[local-name()="shortVersionString"])' -)
     expectedTeamID="W8F64X92K3"
     # appName="Grammarly Installer.app"
     installerTool="Grammarly Installer.app"
     CLIInstaller="Grammarly Installer.app/Contents/MacOS/Grammarly Desktop"
;;
