cask "ferry" do
  version "1.0.8"
  sha256 "b6dafcb9a5c66c9607f20d071befe2ad14146bc5351bc50991f9f09ba6e5536d"

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
