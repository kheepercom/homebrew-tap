class Kheeper < Formula
  desc "Smart OCI registry client for bootable container images"
  homepage "https://kheeper.com"
  version "0.15.1"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/kheepercom/homebrew-tap/releases/download/v0.15.1/kheeper_v0.15.1_darwin_arm64.tar.gz"
      sha256 "2b67977fc46ae650081c204dc02609f771d7b2520947519057179d988e15ff5f"
    else
      url "https://github.com/kheepercom/homebrew-tap/releases/download/v0.15.1/kheeper_v0.15.1_darwin_amd64.tar.gz"
      sha256 "468210a6e4809b509d979777db2a29dedfd038ba1d449a6a99a42bb23531b8c1"
    end
  end

  def install
    bin.install "kheeper"
    bin.install "docker-credential-kheeper"
  end

  test do
    assert_match version.to_s, shell_output("#{bin}/kheeper --version")
  end
end
