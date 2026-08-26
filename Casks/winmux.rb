cask "winmux" do
  version "0.4.0"
  sha256 "5d7d3890f3ca6410a841a3b522fa92f919aea94c1218c40e62036a7078dd02fa"

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
