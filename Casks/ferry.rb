cask "ferry" do
  version "1.0.7"
  sha256 "3e2f62049bf0176bf68683ee6bab0209ee33e30c6aef3a14f23a6f98c4d50638"

  url "https://download.ferrynotes.com/mac/Ferry_#{version}_universal.dmg"
  name "Ferry"
  desc "Sticky notes on the desktop, in sync on every device you own"
  homepage "https://ferrynotes.com/"

  livecheck do
    url "https://download.ferrynotes.com/mac/latest.json"
    strategy :json do |json|
      json["version"]
    end
  end

  auto_updates true
  depends_on macos: :monterey

  app "Ferry.app"

  zap trash: [
    "~/Library/Application Support/sk8.nollie.ferry",
    "~/Library/Caches/sk8.nollie.ferry",
    "~/Library/Preferences/sk8.nollie.ferry.plist",
    "~/Library/WebKit/sk8.nollie.ferry",
  ]
end
