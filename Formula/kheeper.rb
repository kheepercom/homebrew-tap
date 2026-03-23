class Kheeper < Formula
  desc "Smart OCI registry client for bootable container images"
  homepage "https://kheeper.com"
  version "0.1.0"

  on_macos do
    if Hardware::CPU.arm?
      url "https://github.com/kheepercom/homebrew-tap/releases/download/v0.1.0/kheeper_v0.1.0_darwin_arm64.tar.gz"
      sha256 "671283cd34b95077987537fcdc3cac95867952a5c6496784478152da0e9ab796"
    else
      url "https://github.com/kheepercom/homebrew-tap/releases/download/v0.1.0/kheeper_v0.1.0_darwin_amd64.tar.gz"
      sha256 "3a7cabd64d0d57b50408a8f8d813601d2bc30e7be2c4663fbd48fe876736ce8e"
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
