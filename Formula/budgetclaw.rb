class Budgetclaw < Formula
  desc "Local spend monitor and budget enforcer for Claude Code"
  homepage "https://roninforge.org/budgetclaw"
  version "0.1.1"
  license "MIT"

  on_macos do
    on_arm do
      url "https://github.com/RoninForge/budgetclaw/releases/download/v0.1.1/budgetclaw_0.1.1_darwin_arm64.tar.gz"
      sha256 "c987ad126f9ca41daa5d58324677f542b68dc00c75b69726df5d10da4fc51e9e"
    end
    on_intel do
      url "https://github.com/RoninForge/budgetclaw/releases/download/v0.1.1/budgetclaw_0.1.1_darwin_amd64.tar.gz"
      sha256 "e4a746e8731a742042d61e9038bb3258057ce6787632e1f19bcdb088e44f986f"
    end
  end

  on_linux do
    on_arm do
      url "https://github.com/RoninForge/budgetclaw/releases/download/v0.1.1/budgetclaw_0.1.1_linux_arm64.tar.gz"
      sha256 "2c2e2b93e88702c47519c3c6a696cc25e7285b238ac720af66b533e7ce554db8"
    end
    on_intel do
      url "https://github.com/RoninForge/budgetclaw/releases/download/v0.1.1/budgetclaw_0.1.1_linux_amd64.tar.gz"
      sha256 "c4376a0a5429895dcf87b29c00069785be7cfb090bd0dc8ea8d4fb27d95b5b92"
    end
  end

  def install
    bin.install "budgetclaw"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/budgetclaw version")
  end
end
