class Discordo < Formula
  desc "Lightweight Discord terminal client"
  homepage "https://github.com/ayn2op/discordo"
  license "GPL-3.0-only"
  head "https://github.com/ayn2op/discordo.git", branch: "main"

  depends_on "go" => :build

  def install
    system "go", "build", *std_go_args, "."
  end

  test do
    assert_match(/^v\d+\.\d+\.\d+/, shell_output("#{bin}/discordo --version").strip)
    assert_match "Usage of", shell_output("#{bin}/discordo --help 2>&1")
  end
end
