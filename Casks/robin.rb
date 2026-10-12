cask "robin" do
  version "1.0.1"
  sha256 "48f7d83306d56a5ba31bffc25f760eee326df74687837f14666e0ca544414783"

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
