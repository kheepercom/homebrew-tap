class Kheeper < Formula
  desc "Smart OCI registry client for bootable container images"
  homepage "https://kheeper.com"
  version "0.19.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/kheepercom/homebrew-tap/releases/download/v0.19.0/kheeper_v0.19.0_darwin_arm64.tar.gz"
      sha256 "c31cc2e46f361a614d51d219b9cac0e7b0e94949397188e88c1fb95885aee828"
    else
      url "https://github.com/kheepercom/homebrew-tap/releases/download/v0.19.0/kheeper_v0.19.0_darwin_amd64.tar.gz"
      sha256 "5a446ae5eebeee270dcf2c2953645efa00a4bd3764590e1112791c18333c19da"
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
