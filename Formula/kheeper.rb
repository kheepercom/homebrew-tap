class Kheeper < Formula
  desc "Smart OCI registry client for bootable container images"
  homepage "https://kheeper.com"
  version "0.18.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/kheepercom/homebrew-tap/releases/download/v0.18.0/kheeper_v0.18.0_darwin_arm64.tar.gz"
      sha256 "254ccbb10cb3e96fcfdda44bbc41cbe08f08d99b73a46719eeeb17a7c96b5d52"
    else
      url "https://github.com/kheepercom/homebrew-tap/releases/download/v0.18.0/kheeper_v0.18.0_darwin_amd64.tar.gz"
      sha256 "d94fc7109822a9e6e24a3267a5e17f774601a6d5dd7aefc655d4ca559e3e9146"
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
