cask "winmux" do
  version "0.5.4"
  sha256 "d4ab708c391ac4b045396c4f9585d4c5dfaabe5d340c62e55bb3f3462a98b05b"

  url "https://github.com/ZimengXiong/winmux/releases/download/v#{version}/WinMux-#{version}.zip"
  name "WinMux"
  desc "Tiling window manager for macOS"
  homepage "https://github.com/ZimengXiong/winmux"

  depends_on macos: :ventura

  app "WinMux.app"

  zap trash: [
    "~/.config/winmux",
    "~/.winmux.toml",
    "~/Library/LaunchAgents/com.zimengxiong.winmux.plist",
  ]
end
