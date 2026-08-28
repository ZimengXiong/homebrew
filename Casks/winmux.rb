cask "winmux" do
  version "0.5.2"
  sha256 "b0b8acfeb4d41a8c75bd2186b89f29a1514adeba1ffbd8d6409e8a520e95eed4"

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
