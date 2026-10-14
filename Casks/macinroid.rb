cask "macinroid" do
  version "1.0.0"
  sha256 "fc9838c52619bb9db1fb27705703f2c4cb091be91bb2b60acd53bafe49e9b055"

  url "https://github.com/ajakka/macinroid/releases/download/v#{version}/Macinroid-#{version}.zip"
  name "Macinroid"
  desc "Transfer files to and from Android devices over USB"
  homepage "https://github.com/ajakka/macinroid"

  livecheck do
    url :url
    strategy :github_latest
  end

  depends_on macos: ">= :sonoma"

  app "Macinroid.app"

  zap trash: [
    "~/Library/Caches/com.macinroid",
    "~/Library/Caches/Macinroid",
    "~/Library/HTTPStorages/com.macinroid",
    "~/Library/Preferences/com.macinroid.plist",
    "~/Library/Saved Application State/com.macinroid.savedState",
  ]
end
