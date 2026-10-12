cask "chomp" do
  version "1.0.1"
  sha256 "d2984337e9d910fd136c1c9d2f3e4dd6ca3b0a62195fe58b1beb66f54976c764"

  url "https://github.com/durklas0x/chomp/releases/download/v#{version}/Chomp-#{version}-universal.zip"
  name "Chomp"
  desc "Cat that holds files for convenient drag and drop"
  homepage "https://github.com/durklas0x/chomp"

  depends_on macos: :tahoe

  app "Chomp.app"
end
