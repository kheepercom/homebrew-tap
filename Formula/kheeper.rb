class Kheeper < Formula
  desc "Smart OCI registry client for bootable container images"
  homepage "https://kheeper.com"
  version "0.8.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/kheepercom/homebrew-tap/releases/download/v0.8.0/kheeper_v0.8.0_darwin_arm64.tar.gz"
      sha256 "e94d9d4d17725b9043660a9e9bc6cc7562a4b8a5c77a5fcce7f64972f73ff027"
    else
      url "https://github.com/kheepercom/homebrew-tap/releases/download/v0.8.0/kheeper_v0.8.0_darwin_amd64.tar.gz"
      sha256 "3199a77e6999a0074a0065ff135add49ca44876d9ece1272c79ff60aa14c91fa"
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
