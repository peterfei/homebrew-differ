cask "differ" do
  version "0.2.0"

  on_arm do
    url "https://github.com/peterfei/differ/releases/download/v#{version}/Differ_#{version}_aarch64.dmg"
    sha256 "315cc93f4a97209cb4a531f13e036893de962494d8864bc08c2674362213e4f4"
  end
  on_intel do
    url "https://github.com/peterfei/differ/releases/download/v#{version}/Differ_#{version}_x64.dmg"
    sha256 "16d977364ba2b736a24ed92e1f56310c457082fe51fdd394831a3751cdee14ce"
  end

  name "Differ"
  desc "A visual diff tool with syntax-aware diffing, directory comparison, and three-way merge support"
  homepage "https://github.com/peterfei/differ"

  app "Differ.app"

  zap trash: [
    "~/Library/Preferences/com.differ.app.plist",
    "~/Library/Saved Application State/com.differ.app.savedState",
  ]
end
