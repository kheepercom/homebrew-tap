class Kheeper < Formula
  desc "Smart OCI registry client for bootable container images"
  homepage "https://kheeper.com"
  version "0.20.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/kheepercom/homebrew-tap/releases/download/v0.20.0/kheeper_v0.20.0_darwin_arm64.tar.gz"
      sha256 "08537d95693c7d61301d5f52775ad2d9a58b5bed68b22998a48b0a3bd1ba461a"
    else
      url "https://github.com/kheepercom/homebrew-tap/releases/download/v0.20.0/kheeper_v0.20.0_darwin_amd64.tar.gz"
      sha256 "f6c9848910af3694acb49eaa4bdb629881b09b73a3c4352cc7219d25bfd7e4df"
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
