class Tsuba < Formula
  desc "Scaffold marketplace-ready Claude Code skills, plugins, hooks, and agents"
  homepage "https://roninforge.org/tsuba"
  version "0.2.1"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/RoninForge/tsuba/releases/download/v0.2.1/tsuba_0.2.1_darwin_arm64.tar.gz"
      sha256 "8bce4e15606572e876a1dd71679184d07284f91466479cca96635fdda0166b80"
    end
    on_intel do
      url "https://github.com/RoninForge/tsuba/releases/download/v0.2.1/tsuba_0.2.1_darwin_amd64.tar.gz"
      sha256 "a26df800f611c589965f8624d926f354f9127c924201948a2ca9b48fdd7fc95b"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/RoninForge/tsuba/releases/download/v0.2.1/tsuba_0.2.1_linux_arm64.tar.gz"
      sha256 "2803aa53786e888d1b12abf285e14708f15a0e1689452d56762f7973366ae969"
    end
    on_intel do
      url "https://github.com/RoninForge/tsuba/releases/download/v0.2.1/tsuba_0.2.1_linux_amd64.tar.gz"
      sha256 "ec7350cbf0ba789d6a800dfe1b0cc276f2c734529205b1ee6425cabc5eeb84d4"
    end
  end

  def install
    bin.install "tsuba"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/tsuba version")
  end
end
