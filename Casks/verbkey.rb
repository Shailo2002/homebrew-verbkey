cask "verbkey" do
  version "1.0.1"
  sha256 "291b4d385d8e19d5f075732cbe22af07c395b9c009f6566012a1c210d7ee9a3d"

  url "https://github.com/shailo2002/verbkey-releases/releases/download/v#{version}/GrammarImprover.dmg"

  name "VerbKey"
  desc "Menu bar app that improves your text using AI"
  homepage "https://github.com/shailo2002/verbkey-releases"

  app "Grammar Improver.app"

  postflight do
    system_command "/usr/bin/xattr",
                   args: ["-r", "-d", "com.apple.quarantine", "#{appdir}/Grammar Improver.app"]
  end

  zap trash: [
    "~/Library/Application Support/GrammarImprover",
    "~/Library/Preferences/com.nishit.grammarimprover.plist",
    "~/Library/Caches/com.nishit.grammarimprover",
  ]
end
