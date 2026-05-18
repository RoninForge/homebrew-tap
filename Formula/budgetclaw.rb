class Budgetclaw < Formula
  desc "Local spend monitor and budget enforcer for Claude Code"
  homepage "https://roninforge.org/budgetclaw"
  version "0.1.6"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/RoninForge/budgetclaw/releases/download/v0.1.6/budgetclaw_0.1.6_darwin_arm64.tar.gz"
      sha256 "a204b243b74f83329525e1dcd223d099800d5bb2b8c7c8a78684e43247a626c5"
    end
    on_intel do
      url "https://github.com/RoninForge/budgetclaw/releases/download/v0.1.6/budgetclaw_0.1.6_darwin_amd64.tar.gz"
      sha256 "ba34751c861fd0887a1afcb80e60c41a5e82c8b9d78dc7ac995689dc489aa9da"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/RoninForge/budgetclaw/releases/download/v0.1.6/budgetclaw_0.1.6_linux_arm64.tar.gz"
      sha256 "a2da9f05ea43be1db13d02d9f71b51ac1487a7702244b2d5203c2d38aab8ac7c"
    end
    on_intel do
      url "https://github.com/RoninForge/budgetclaw/releases/download/v0.1.6/budgetclaw_0.1.6_linux_amd64.tar.gz"
      sha256 "5d6560732864a7ddba31bd3a6d14a70881262c5b82a406391111faf25373472a"
    end
  end

  def install
    bin.install "budgetclaw"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/budgetclaw version")
  end
end
