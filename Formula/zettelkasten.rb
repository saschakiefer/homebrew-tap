# Generated with JReleaser 1.0.0 at 2022-07-11T17:22:15.003037Z
class Zettelkasten < Formula
  desc "My Zettelkasten interpretation"
  homepage "https://github.com/saschakiefer/zettelkasten"
  url "https://github.com/saschakiefer/zettelkasten/releases/download/0.1.1/zettelkasten-0.1.1-osx-x86_64.zip"
  version "0.1.1"
  sha256 "005759ac5c0592c28294efc8ee262708c588c2324288005b98d1355c64574bb8"
  license "Apache-2.0"


  def install
    libexec.install Dir["*"]
    bin.install_symlink "#{libexec}/bin/zettelkasten" => "zettelkasten"
  end

  test do
    output = shell_output("#{bin}/zettelkasten --version")
    assert_match "0.1.1", output
  end
end
