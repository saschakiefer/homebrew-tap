# Generated with JReleaser 1.0.0 at 2022-07-11T20:58:57.981709Z
class Zl < Formula
  desc "My Zettelkasten interpretation"
  homepage "https://github.com/saschakiefer/zettelkasten/application"
  url "https://github.com/saschakiefer/zettelkasten/releases/download/0.1.3/zettelkasten-0.1.3-osx-x86_64.zip"
  version "0.1.3"
  sha256 "7eff7c9cc98de6fa5d655c1ee73743ed501c4906673f262e77627b3312bb715d"
  license "Apache-2.0"


  def install
    libexec.install Dir["*"]
    bin.install_symlink "#{libexec}/bin/zl" => "zl"
  end

  test do
    output = shell_output("#{bin}/zl --version")
    assert_match "0.1.3", output
  end
end
