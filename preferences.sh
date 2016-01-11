# Hush Last login
touch ~/.hushlogin

# Turn off spotlight
sudo launchctl unload -w /System/Library/LaunchDaemons/com.apple.metadata.mds.plist

# Enable the debug menu in Reminders (for manual refreshing)
defaults write com.apple.reminders RemindersDebugMenu -boolean true
