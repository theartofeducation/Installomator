airtable)
    name="Airtable"
    type="dmg"
    downloadURL="https://static.airtable.com/download/AirtableInstaller.dmg"
    airtableJSON=$(curl -fsSL "https://airtable.com/desktopAppLatestVersion?version=0.0.0&platform=darwin")
    appNewVersion=$(getJSONValue "$airtableJSON" "version")
    expectedTeamID="E22RZMX62E"
    ;;
