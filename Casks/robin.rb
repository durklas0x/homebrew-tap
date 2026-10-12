cask "robin" do
  version "1.0.0"
  sha256 "ef53eec0df7d9314ab8eaf305a3c128fac11e83c0a79116e41963ff3ca8790fb"

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
