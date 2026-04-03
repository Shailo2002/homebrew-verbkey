cask "verbkey" do
  version "1.0.0"
  sha256 "747ad842e6ed7491b878b0d795a9b12d148c0675d94d4d6692b0e58528b98a94"

  url "https://github.com/shailo2002/verbkey-releases/releases/download/v#{version}/GrammarImprover.dmg"

  name "VerbKey"
  desc "Menu bar app that improves your text using AI"
  homepage "https://github.com/shailo2002/verbkey-releases"

  app "Grammar Improver.app"

  zap trash: [
    "~/Library/Application Support/GrammarImprover",
    "~/Library/Preferences/com.nishit.grammarimprover.plist",
    "~/Library/Caches/com.nishit.grammarimprover",
  ]
end
