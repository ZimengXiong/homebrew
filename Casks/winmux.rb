cask "winmux" do
  version "0.5.7"
  sha256 "8a4721f3c5ac0f453873ca00d3a2247596dedcc85fa6ff18fdbb29f48e6713c2"

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
