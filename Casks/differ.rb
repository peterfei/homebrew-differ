cask "differ" do
  version "0.2.0"

  on_arm do
    url "https://github.com/peterfei/differ/releases/download/v#{version}/Differ_#{version}_aarch64.dmg"
    sha256 "b0dcf83b60adf0ac5b02f56de1bf61750bb8c2ff54daa10f7ec3e2f7862b619e"
  end
  on_intel do
    url "https://github.com/peterfei/differ/releases/download/v#{version}/Differ_#{version}_x64.dmg"
    sha256 "c3a02286dae2aecfa3e2936b6b4da3f5eb80ba5b241976f4c0f97f6d0502fff1"
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
