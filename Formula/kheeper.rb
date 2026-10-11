class Kheeper < Formula
  desc "Smart OCI registry client for bootable container images"
  homepage "https://kheeper.com"
  version "0.25.1"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/kheepercom/homebrew-tap/releases/download/v0.25.1/kheeper_v0.25.1_darwin_arm64.tar.gz"
      sha256 "4020630f597c327a9776893fa3a02bbb03f1dbebba11c82e4c32ed6f12ab2f4b"
    else
      url "https://github.com/kheepercom/homebrew-tap/releases/download/v0.25.1/kheeper_v0.25.1_darwin_amd64.tar.gz"
      sha256 "34363a5c799dd9aa00861dd2f3809045409de69c850b9717fbc150e1e84203f6"
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
