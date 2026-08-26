class Kheeper < Formula
  desc "Smart OCI registry client for bootable container images"
  homepage "https://kheeper.com"
  version "0.21.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/kheepercom/homebrew-tap/releases/download/v0.21.0/kheeper_v0.21.0_darwin_arm64.tar.gz"
      sha256 "8196a586948a1ee49342925c4c6df2a79d46ae97f831373e47dc1af54f41fb37"
    else
      url "https://github.com/kheepercom/homebrew-tap/releases/download/v0.21.0/kheeper_v0.21.0_darwin_amd64.tar.gz"
      sha256 "8124303fad57cdf7be07b760c3a724dce795dd797c2acee90f37aefed5bc1384"
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
