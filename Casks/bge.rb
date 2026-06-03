cask "bge" do
  version "0.1.1"
  sha256 "6028cb819f77869c05d711847e8034bf956cce23a39fbb18af07488ce42710b5"

  url "https://github.com/dotbge/bge-cli/releases/download/v#{version}/bge-#{version}-macos-universal.zip",
      verified: "github.com/dotbge/bge-cli/"
  name "bge"
  desc "Encrypt files and folders with a key or a password (open .bge format)"
  homepage "https://dotbge.com/"

  livecheck do
    url :url
    strategy :github_latest
  end

  depends_on macos: ">= :ventura"

  binary "bge-#{version}-macos/bge"
  manpage "bge-#{version}-macos/bge.1"
end
