class Kheeper < Formula
  desc "Smart OCI registry client for bootable container images"
  homepage "https://kheeper.com"
  version "0.16.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/kheepercom/homebrew-tap/releases/download/v0.16.0/kheeper_v0.16.0_darwin_arm64.tar.gz"
      sha256 "5f35295c1a05aba3a6d9e8c843e91eb7146ec1e74460d0fb353de879f31855d5"
    else
      url "https://github.com/kheepercom/homebrew-tap/releases/download/v0.16.0/kheeper_v0.16.0_darwin_amd64.tar.gz"
      sha256 "c10b0acffacab519388bf289bf02203f7d538a11372b3c7a645eb9e93b799ba7"
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
