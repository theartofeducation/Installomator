miro)
    # credit: @matins
    name="Miro"
    type="dmg"
    if [[ $(arch) == arm64 ]]; then
        downloadURL="https://desktop.miro.com/platforms/darwin-arm64/Install-Miro.dmg"
        updateURL="https://desktop.miro.com/platforms/darwin-arm64/update.json"
    elif [[ $(arch) == i386 ]]; then
        downloadURL="https://desktop.miro.com/platforms/darwin/Install-Miro.dmg"
        updateURL="https://desktop.miro.com/platforms/darwin/update.json"
    fi
    miroJSON=$(curl -fsSL "$updateURL")
    appNewVersion=$(getJSONValue "$miroJSON" "version")
    expectedTeamID="M3GM7MFY7U"
    ;;
