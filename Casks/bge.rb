cask "bge" do
  version "0.1.0"
  sha256 "b9431d16ecf0513fa61ff28cf76ea730eceae9d4595d85d5172dd8b52cfae932"

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
