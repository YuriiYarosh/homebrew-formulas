require 'formula'

class Coursier < Formula
  desc "CM-Well-Ingest tool."
  homepage "https://https://github.com/YuriiYarosh/CM-Well-Ingest"
  version "1.0.0-RC1"
  url "https://https://github.com/YuriiYarosh/CM-Well-Ingest/download/1.0.0-RC1/cmwell_ingest.tar.gz"
  sha256 "ac8f5a19476219063a422f5726fc0110744eb014e11945736193123906c76e55"
  bottle :unneeded

  def install
    bin.install 'cmwell_ingest'
  end

  test do
    output = shell_output("#{bin}/cmwell_ingest version")
    assert_equal ["1.0.0-RC1\n"], output.lines
  end
end
