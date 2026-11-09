class Kheeper < Formula
  desc "Smart OCI registry client for bootable container images"
  homepage "https://kheeper.com"
  version "0.26.1"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/kheepercom/homebrew-tap/releases/download/v0.26.1/kheeper_v0.26.1_darwin_arm64.tar.gz"
      sha256 "935cbbfa24c36f979a9881f3c0d92f95249e116bd9e6860cfc211b480b8e0076"
    else
      url "https://github.com/kheepercom/homebrew-tap/releases/download/v0.26.1/kheeper_v0.26.1_darwin_amd64.tar.gz"
      sha256 "4af0a4bbf79f21454b05d9830b61d4bc1c6f7e972867c45838cd6951c462aaac"
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
