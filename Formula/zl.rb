# Generated with JReleaser 1.0.0 at 2022-07-11T18:24:38.653208Z
class Zl < Formula
  desc "My Zettelkasten interpretation"
  homepage "https://github.com/saschakiefer/zettelkasten/bootstrap"
  url "https://github.com/saschakiefer/zettelkasten/releases/download/0.1.2/zettelkasten-0.1.2-osx-x86_64.zip"
  version "0.1.2"
  sha256 "ad609f50e24eb8ccdb3084d236aff73b0cb326bf8797c266f3408027cdd2567f"
  license "Apache-2.0"


  def install
    libexec.install Dir["*"]
    bin.install_symlink "#{libexec}/bin/zl" => "zl"
  end

  test do
    output = shell_output("#{bin}/zl --version")
    assert_match "0.1.2", output
  end
end
