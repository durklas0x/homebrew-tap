cask "robin" do
  version "1.1.0"
  sha256 "45ed397f6bfd2292fd9c6b01f822c92e72f8ebd65a56926fece82e3ec533609a"

  url "https://github.com/durklas0x/robin/releases/download/v#{version}/Robin-#{version}-universal.zip"
  name "Robin"
  desc "Finder's little sidekick with an editable path bar and quick folder actions"
  homepage "https://github.com/durklas0x/robin"

  livecheck do
    url :url
    strategy :github_latest
  end

  depends_on macos: :sonoma

  app "Robin.app"

  uninstall quit: "com.durklas0x.Robin"

  caveats do
    <<~EOS
      Robin is ad-hoc signed and not notarized.
      See https://github.com/durklas0x/robin#first-launch for macOS approval
      and enabling the Finder extension.
    EOS
  end
end
