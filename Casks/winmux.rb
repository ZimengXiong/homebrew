cask "winmux" do
  version "0.5.1"
  sha256 "051cd03301fcf1a1ac43f1ec01a906bae51330bf3e784f8c231869e5aa95dfcb"

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
