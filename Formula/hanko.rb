class Hanko < Formula
  desc "Validate Claude Code plugin manifests before submission"
  homepage "https://roninforge.org/hanko"
  version "0.2.1"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/RoninForge/hanko/releases/download/v0.2.1/hanko_0.2.1_darwin_arm64.tar.gz"
      sha256 "4e211b5f57ac1b24453dbac1fe2253cebb8fca251288d855ae60ac214c45d624"
    end
    on_intel do
      url "https://github.com/RoninForge/hanko/releases/download/v0.2.1/hanko_0.2.1_darwin_amd64.tar.gz"
      sha256 "634795a55694f8b18ba288a2f93fa3107614f250b2b11217d0381f2b1868c34e"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/RoninForge/hanko/releases/download/v0.2.1/hanko_0.2.1_linux_arm64.tar.gz"
      sha256 "874c0831979281340caed515146a38b3eb0aa6470968174314912b084cff929f"
    end
    on_intel do
      url "https://github.com/RoninForge/hanko/releases/download/v0.2.1/hanko_0.2.1_linux_amd64.tar.gz"
      sha256 "ad065bf744fc6b3f2648cbf9429e6af5fb64c60eecf7805f9955664cbcb0c5e1"
    end
  end

  def install
    bin.install "hanko"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/hanko version")
  end
end
