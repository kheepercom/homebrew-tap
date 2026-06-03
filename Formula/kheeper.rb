class Kheeper < Formula
  desc "Smart OCI registry client for bootable container images"
  homepage "https://kheeper.com"
  version "0.12.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/kheepercom/homebrew-tap/releases/download/v0.12.0/kheeper_v0.12.0_darwin_arm64.tar.gz"
      sha256 "b69ad27e41ca7fa779ede401ca64dce17c52473682506b1ab0e706c62617f7a7"
    else
      url "https://github.com/kheepercom/homebrew-tap/releases/download/v0.12.0/kheeper_v0.12.0_darwin_amd64.tar.gz"
      sha256 "4b96917bc821985c6deaf647d18de45f99ade2b4bd4c134141b08a66fc58e73c"
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
